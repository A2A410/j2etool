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

            # 3. Process files
            for file_info in jar.infolist():
                if file_info.filename.endswith('.class'):
                    self._decompile_class(jar, file_info, smali_dir)
                else:
                    self._extract_resource(jar, file_info, output_dir)

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
                f.write(f"{key}: {value}\n")

    def _decompile_class(self, jar, file_info, smali_dir):
        class_data = jar.read(file_info.filename)
        dis = Disassembler(class_data=class_data)
        smali_content = dis.disassemble_class()

        class_name = dis.cf.pretty_this().replace('.', '/')
        output_path = os.path.join(smali_dir, class_name + ".smali")

        os.makedirs(os.path.dirname(output_path), exist_ok=True)
        with open(output_path, 'w') as f:
            f.write(smali_content)

    def _extract_resource(self, jar, file_info, output_dir):
        if file_info.is_dir():
            return

        if file_info.filename == 'META-INF/MANIFEST.MF':
            dest = os.path.join(output_dir, "original", "META-INF", "MANIFEST.MF")
        else:
            dest = os.path.join(output_dir, "res", file_info.filename)

        os.makedirs(os.path.dirname(dest), exist_ok=True)
        with jar.open(file_info) as source, open(dest, "wb") as target:
            shutil.copyfileobj(source, target)
