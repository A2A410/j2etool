import os
import zipfile
import shutil
from .disassembler import Disassembler

class J2METool:
    def __init__(self, jar_path):
        self.jar_path = jar_path

    def decompile(self, output_dir):
        if os.path.exists(output_dir):
            shutil.rmtree(output_dir)
        os.makedirs(output_dir)

        smali_dir = os.path.join(output_dir, "smali")
        os.makedirs(smali_dir)

        res_dir = os.path.join(output_dir, "res")
        os.makedirs(res_dir)

        with zipfile.ZipFile(self.jar_path, 'r') as jar:
            for file_info in jar.infolist():
                if file_info.filename.endswith('.class'):
                    self._decompile_class(jar, file_info, smali_dir)
                else:
                    self._extract_resource(jar, file_info, output_dir)

    def _decompile_class(self, jar, file_info, smali_dir):
        class_data = jar.read(file_info.filename)
        dis = Disassembler(class_data=class_data)
        smali_content = dis.disassemble_class()

        # Determine output path based on class name (which might differ from filename but let's use filename as base)
        # Better: use the package name from the class itself if possible, but javatools.pretty_this() gives us the name.
        class_name = dis.cf.pretty_this().replace('.', '/')
        output_path = os.path.join(smali_dir, class_name + ".smali")

        os.makedirs(os.path.dirname(output_path), exist_ok=True)
        with open(output_path, 'w') as f:
            f.write(smali_content)

    def _extract_resource(self, jar, file_info, output_dir):
        if file_info.is_dir():
            return

        # Special handling for MANIFEST.MF if we want it in a specific place
        if file_info.filename == 'META-INF/MANIFEST.MF':
            dest = os.path.join(output_dir, "original", "META-INF", "MANIFEST.MF")
        else:
            dest = os.path.join(output_dir, "res", file_info.filename)

        os.makedirs(os.path.dirname(dest), exist_ok=True)
        with jar.open(file_info) as source, open(dest, "wb") as target:
            shutil.copyfileobj(source, target)
