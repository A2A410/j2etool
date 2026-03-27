import argparse
import sys
import os
from .core import J2METool

def main():
    parser = argparse.ArgumentParser(description="J2METool - Decompile J2ME applications into Smali-like format")
    subparsers = parser.add_subparsers(dest="command", help="Commands")

    # decode command
    decode_parser = subparsers.add_parser("d", help="Decode/Decompile a JAR file")
    decode_parser.add_argument("jar", help="Path to the JAR file")
    decode_parser.add_argument("-j", "--jad", help="Optional path to a JAD file")
    decode_parser.add_argument("-o", "--output", help="Output directory")

    args = parser.parse_args()

    if args.command == "d":
        jar_path = args.jar
        if not os.path.exists(jar_path):
            print(f"Error: JAR file '{jar_path}' not found")
            sys.exit(1)

        output_dir = args.output
        if not output_dir:
            output_dir = os.path.splitext(os.path.basename(jar_path))[0]

        print(f"I: Using J2METool to decompile '{jar_path}' to '{output_dir}'")
        tool = J2METool(jar_path, jad_path=args.jad)
        tool.decompile(output_dir)
        print("I: Decompilation complete.")
    else:
        parser.print_help()

if __name__ == "__main__":
    main()
