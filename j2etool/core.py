import os
import zipfile
import shutil
import yaml
import math
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
        self.metadata['file_map'] = []
        self.metadata['nested_archives'] = []
        self.metadata['Resource-Xref'] = {}
        self._class_strings = {}

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

        # 4. Generate Resource Xref
        self._generate_resource_xref(output_dir)

        # 4. Save metadata to j2etool.yml
        self._save_metadata(output_dir)

        # 5. Generate JAD
        self._generate_jad(output_dir)

        # 6. Print Summary
        self._print_summary()

    def _print_summary(self):
        class_count = len(self._class_strings)
        res_count = len(self.metadata['file_map'])
        layers = {}
        for f in self.metadata['file_map']:
            l = f['assigned_layer']
            layers[l] = layers.get(l, 0) + 1

        print(f"\nSummary:")
        print(f"  Classes:    {class_count} disassembled")
        print(f"  Resources:  {res_count} (res: {layers.get('res', 0)}, assets: {layers.get('assets', 0)}, unknown: {layers.get('unknown', 0)})")
        print(f"  Obfuscated: {'yes' if self.metadata.get('Obfuscated') else 'no'}")
        print(f"  Compiler:   {self.metadata.get('Compiler', 'Unknown')}")

        nested_count = len(self.metadata.get('nested_archives', []))
        if nested_count > 0:
            print(f"  Nested ZIPs found: {nested_count}")

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
                if key in ('Resource-Mapping', 'Obfuscated', 'Compiler', 'file_map', 'nested_archives', 'Resource-Xref'):
                    continue
                f.write(f"{key}: {value}\n")

    def _generate_resource_xref(self, output_dir):
        xref = {}

        # Build mapping of filenames to their assigned paths
        filename_to_paths = {}
        # Also map original filenames to fixed paths if they differ
        orig_to_fixed = self.metadata.get('Resource-Mapping', {})

        for res_path in self.resource_paths:
            # res_path is like 'res/path/to/file.ext'
            # We want to match against what might appear in string constants
            fname_with_ext = os.path.basename(res_path)
            fname_no_ext = os.path.splitext(fname_with_ext)[0]

            keys = {fname_with_ext, fname_no_ext}

            # Find original filename(s) that mapped to this fixed path
            for orig, fixed in orig_to_fixed.items():
                if os.path.basename(fixed) == fname_with_ext:
                    keys.add(orig)
                    keys.add(os.path.splitext(orig)[0])

            # Map all variations to the full path
            for key in keys:
                if not key: continue
                if key not in filename_to_paths:
                    filename_to_paths[key] = set()
                filename_to_paths[key].add(res_path)

        for class_name, strings in self._class_strings.items():
            for s in strings:
                if not isinstance(s, str): continue
                clean_s = s.lstrip('/')
                if clean_s in filename_to_paths:
                    for res_path in filename_to_paths[clean_s]:
                        if res_path not in xref:
                            xref[res_path] = set()
                        xref[res_path].add(class_name)

        # Convert sets to sorted lists for YAML
        self.metadata['Resource-Xref'] = {k: sorted(list(v)) for k, v in sorted(xref.items())}

    def _decompile_class(self, jar, file_info, smali_dir):
        class_data = jar.read(file_info.filename)
        dis = Disassembler(class_data=class_data, resource_paths=self.resource_paths)
        smali_content = dis.disassemble_class()

        class_name = dis.cf.pretty_this().replace('.', '/')
        self._class_strings[class_name] = dis.get_string_constants()
        output_path = os.path.join(smali_dir, class_name + ".smali")

        os.makedirs(os.path.dirname(output_path), exist_ok=True)
        with open(output_path, 'w') as f:
            f.write(smali_content)

    def _calculate_entropy(self, data):
        if not data:
            return 0.0
        entropy = 0
        for x in range(256):
            p_x = data.count(x) / len(data)
            if p_x > 0:
                entropy += - p_x * math.log(p_x, 2)
        return entropy

    def _detect_extension(self, data):
        # Resource signatures and their expected start offsets or search range
        signatures = [
            (b'\x89PNG\r\n\x1a\n', '.png'),
            (b'GIF87a', '.gif'),
            (b'GIF89a', '.gif'),
            (b'MThd', '.mid'),
            (b'\xff\xd8\xff', '.jpg'),
            (b'BM', '.bmp'),
        ]

        for sig, ext in signatures:
            idx = data[:64].find(sig)
            if idx != -1:
                return ext, idx

        # RIFF/WAVE
        if b'RIFF' in data[:64]:
            idx = data[:64].find(b'RIFF')
            if data[idx+8:idx+12] == b'WAVE':
                return '.wav', idx

        # 3GP
        if b'ftyp3gp' in data[:64]:
            idx = data[:64].find(b'ftyp3gp')
            return '.3gp', max(0, idx - 4)

        # Text detection
        try:
            sample = data[:1024]
            if len(sample) > 0:
                printable = sum(1 for c in sample if 32 <= c <= 126 or c in b'\n\r\t')
                entropy = self._calculate_entropy(sample)
                # If entropy > 7.5, it's likely high-entropy binary (compressed or encrypted)
                # If it's mostly printable, it's likely text/props
                if (printable / len(sample)) > 0.6 and entropy < 7.5:
                    return '.props', 0
        except:
            pass

        return None, 0

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

        # Nested ZIP detection
        if data.startswith(b'PK\x03\x04'):
            self.metadata['nested_archives'].append(orig_filename)

        ext, offset = self._detect_extension(data)
        if offset > 0:
            data = data[offset:]

        entropy = self._calculate_entropy(data)

        fixed_filename = orig_filename
        # Fix: apply detection when original has no extension or generic extension
        base, old_ext = os.path.splitext(orig_filename)
        if ext and (not old_ext or len(old_ext) > 4 or old_ext.lower() in ('.dat', '.bin', '.data')):
            if not orig_filename.lower().endswith(ext):
                fixed_filename = base + ext
                self.metadata['Resource-Mapping'][orig_filename] = fixed_filename

        # Layering
        layer = "unknown"
        if ext in ('.png', '.gif', '.jpg', '.bmp'):
            layer = "res"
        elif ext in ('.mid', '.wav', '.3gp', '.props'):
            layer = "assets"

        assigned_path = fixed_filename
        if layer == "unknown":
            # Subcategorize unknown
            sample = data[:1024]
            printable_ratio = 0
            if len(sample) > 0:
                printable_ratio = sum(1 for c in sample if 32 <= c <= 126 or c in b'\n\r\t') / len(sample)

            if printable_ratio > 0.8:
                if sample.strip().startswith(b'<') or sample.strip().startswith(b'{'):
                    subcat = "structured"
                else:
                    subcat = "text"
            else:
                subcat = "binary"
            assigned_path = os.path.join(subcat, fixed_filename)

        dest = os.path.join(output_dir, layer, assigned_path)
        self.resource_paths.add(layer + "/" + assigned_path)

        # File Map metadata
        self.metadata['file_map'].append({
            'original_path': orig_filename,
            'detected_type': ext[1:] if ext else 'unknown',
            'assigned_layer': layer,
            'size_bytes': len(data),
            'magic_hex': data[:8].hex(),
            'entropy_score': float(f"{entropy:.3f}")
        })

        os.makedirs(os.path.dirname(dest), exist_ok=True)
        with open(dest, "wb") as target:
            target.write(data)
