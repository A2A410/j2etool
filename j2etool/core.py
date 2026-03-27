import os
import zipfile
import shutil
import yaml
from .disassembler import Disassembler

class J2METool:
    def __init__(self, jar_path, jad_path=None):
        self.jar_path = jar_path
        self.jad_path = jad_path
        self.metadata = {}

    def decompile(self, output_dir):
        if os.path.exists(output_dir):
            shutil.rmtree(output_dir)
        os.makedirs(output_dir)

        smali_dir = os.path.join(output_dir, "smali")
        os.makedirs(smali_dir)

        res_dir = os.path.join(output_dir, "res")
        os.makedirs(res_dir)

        # 1. Parse JAD if provided
        if self.jad_path and os.path.exists(self.jad_path):
            self.metadata.update(self._parse_manifest(self.jad_path))

        self.resource_paths = set()
        self.metadata['Resource-Mapping'] = {}

        with zipfile.ZipFile(self.jar_path, 'r') as jar:
            # 2. Parse MANIFEST.MF from JAR
            try:
                manifest_data = jar.read('META-INF/MANIFEST.MF').decode('utf-8')
                self.metadata.update(self._parse_manifest_content(manifest_data))
            except KeyError:
                pass

            # Update JAR size if not already set
            if 'MIDlet-Jar-Size' not in self.metadata:
                self.metadata['MIDlet-Jar-Size'] = str(os.path.getsize(self.jar_path))

            # Update JAR URL if not set
            if 'MIDlet-Jar-URL' not in self.metadata:
                self.metadata['MIDlet-Jar-URL'] = os.path.basename(self.jar_path)

            # 3. Process files (Pass 1: Resources & Settings Analysis)
            class_count = 0
            short_name_classes = 0
            has_sourcefile = 0

            for file_info in jar.infolist():
                if file_info.is_dir():
                    continue
                if file_info.filename.endswith('.class'):
                    class_count += 1
                    if len(os.path.basename(file_info.filename).replace('.class', '')) <= 2:
                        short_name_classes += 1

                    # Inspect class for settings
                    try:
                        class_data = jar.read(file_info.filename)
                        dis = Disassembler(class_data=class_data)
                        if dis.cf.get_sourcefile():
                            has_sourcefile += 1
                    except:
                        pass
                else:
                    self._extract_resource(jar, file_info, output_dir)

            # Obfuscation & Compiler Detection
            if class_count > 0:
                is_obfuscated = (short_name_classes / class_count) > 0.5
                self.metadata['Obfuscated'] = is_obfuscated
                if is_obfuscated and has_sourcefile == 0:
                    self.metadata['Compiler'] = 'ProGuard'
                elif is_obfuscated:
                    self.metadata['Compiler'] = 'Generic-Obfuscator'
                else:
                    self.metadata['Compiler'] = 'Standard'

            # 3. Process files (Pass 2: Classes)
            for file_info in jar.infolist():
                if file_info.filename.endswith('.class'):
                    self._decompile_class(jar, file_info, smali_dir)

        # 4. Save metadata to j2etool.yml
        self._save_metadata(output_dir)

        # 5. Generate JAD
        self._generate_jad(output_dir)

    def _parse_manifest(self, path):
        with open(path, 'r', encoding='utf-8') as f:
            return self._parse_manifest_content(f.read())

    def _parse_manifest_content(self, content):
        metadata = {}
        for line in content.splitlines():
            if ':' in line:
                key, value = line.split(':', 1)
                metadata[key.strip()] = value.strip()
        return metadata

    def _save_metadata(self, output_dir):
        with open(os.path.join(output_dir, "j2etool.yml"), 'w') as f:
            yaml.dump(self.metadata, f, sort_keys=False)

    def _generate_jad(self, output_dir):
        jad_name = os.path.splitext(os.path.basename(self.jar_path))[0] + ".jad"
        jad_path = os.path.join(output_dir, jad_name)

        with open(jad_path, 'w', encoding='utf-8') as f:
            for key, value in self.metadata.items():
                if key in ('Resource-Mapping', 'Obfuscated', 'Compiler'):
                    continue
                f.write(f"{key}: {value}\n")

    def _decompile_class(self, jar, file_info, smali_dir):
        class_data = jar.read(file_info.filename)
        dis = Disassembler(class_data=class_data, resource_paths=self.resource_paths)
        smali_content = dis.disassemble_class()

        class_name = dis.cf.pretty_this().replace('.', '/')
        output_path = os.path.join(smali_dir, class_name + ".smali")

        os.makedirs(os.path.dirname(output_path), exist_ok=True)
        with open(output_path, 'w') as f:
            f.write(smali_content)

    def _detect_extension(self, data):
        if data.startswith(b'\x89PNG\r\n\x1a\n'):
            return '.png'
        if data.startswith(b'GIF87a') or data.startswith(b'GIF89a'):
            return '.gif'
        if data.startswith(b'MThd'):
            return '.mid'
        if data.startswith(b'RIFF') and data[8:12] == b'WAVE':
            return '.wav'
        return None

    def _extract_resource(self, jar, file_info, output_dir):
        if file_info.is_dir():
            return

        with jar.open(file_info) as source:
            data = source.read()

        orig_filename = file_info.filename

        if orig_filename == 'META-INF/MANIFEST.MF':
            dest = os.path.join(output_dir, "original", "META-INF", "MANIFEST.MF")
            os.makedirs(os.path.dirname(dest), exist_ok=True)
            with open(dest, "wb") as target:
                target.write(data)
            return

        ext = self._detect_extension(data)

        fixed_filename = orig_filename
        if ext and not orig_filename.lower().endswith(ext):
            # Check if it has a generic extension or none
            base, old_ext = os.path.splitext(orig_filename)
            if not old_ext or len(old_ext) > 4 or old_ext.lower() in ('.dat', '.bin', '.data'):
                fixed_filename = base + ext
                self.metadata['Resource-Mapping'][orig_filename] = fixed_filename

        dest = os.path.join(output_dir, "res", fixed_filename)
        self.resource_paths.add("res/" + fixed_filename)

        os.makedirs(os.path.dirname(dest), exist_ok=True)
        with open(dest, "wb") as target:
            target.write(data)
