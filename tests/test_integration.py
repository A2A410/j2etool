import unittest
import os
import shutil
from j2etool.core import J2METool

class TestJ2METool(unittest.TestCase):
    def setUp(self):
        self.jar_path = "test.jar"
        self.output_dir = "test_run"
        if os.path.exists(self.output_dir):
            shutil.rmtree(self.output_dir)

    def tearDown(self):
        if os.path.exists(self.output_dir):
            shutil.rmtree(self.output_dir)

    def test_decompilation(self):
        if not os.path.exists(self.jar_path):
            self.skipTest("test.jar not found")

        tool = J2METool(self.jar_path)
        tool.decompile(self.output_dir)

        # Verify output structure
        self.assertTrue(os.path.exists(os.path.join(self.output_dir, "smali")))
        self.assertTrue(os.path.exists(os.path.join(self.output_dir, "res")))
        self.assertTrue(os.path.exists(os.path.join(self.output_dir, "j2etool.yml")))

        # Verify specific class disassembly
        smali_file = os.path.join(self.output_dir, "smali", "aow2.smali")
        self.assertTrue(os.path.exists(smali_file))

        with open(smali_file, 'r') as f:
            content = f.read()
            self.assertIn(".class public aow2", content)
            self.assertIn(".method public startApp()V", content)

if __name__ == "__main__":
    unittest.main()
