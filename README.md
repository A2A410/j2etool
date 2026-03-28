# j2etool

`j2etool` is a Python-based utility for reverse engineering J2ME (Java 2 Micro Edition) applications. It decompiles JAR files into a human-readable format, disassembling JVM bytecode into Smali-like syntax and extracting/categorizing resources.

Inspired by `apktool` for Android.

## Features

- **Smali-like Disassembly**: Converts JVM bytecode into a readable format similar to Android's Smali or Jasmin syntax.
- **Resource Identification**: Automatically identifies and fixes file extensions for resources (images, audio, etc.) using magic bytes and entropy analysis.
- **Layered Output**: Organizes extracted files into logical categories (`res`, `assets`, `smali`, `unknown`).
- **Obfuscation Detection**: Detects common J2ME obfuscators (e.g., ProGuard) based on class naming patterns and metadata.
- **Resource Cross-Reference (Xref)**: Maps string constants in code to identified resource files, helping you understand how assets are used.
- **Metadata Extraction**: Generates a comprehensive `j2etool.yml` file and a reconstructed `.jad` file.

## Installation

To install `j2etool` and its dependencies, run:

```bash
pip install .
```

Dependencies include `javatools` and `PyYAML`.

## Usage

### Decompile a JAR

The primary command is `d` (decode):

```bash
j2etool d <file.jar> [options]
```

**Options:**
- `-j`, `--jad <file.jad>`: Provide an optional JAD file to include additional metadata.
- `-o`, `--output <directory>`: Specify the output directory (defaults to the JAR filename).

### Run Tests

If you have a `test.jar` in the current directory, you can run a quick verification:

```bash
j2etool test [-o <output_dir>]
```

## Output Directory Structure

The decompiled output is organized as follows:

- **`smali/`**: Contains the disassembled JVM bytecode in `.smali` files. The directory structure mirrors the Java package hierarchy.
- **`res/`**: Image resources identified by magic bytes (PNG, GIF, JPG, BMP).
- **`assets/`**: Audio files (MIDI, WAV, 3GP) and property files identified during analysis.
- **`unknown/`**: Files that couldn't be definitively categorized. Subfolders include:
    - `binary/`: High-entropy or non-printable files.
    - `text/`: Printable plain-text files.
    - `structured/`: XML or JSON-like files.
- **`original/`**: Contains the original `META-INF/MANIFEST.MF` and other metadata.
- **`j2etool.yml`**: A configuration and summary file containing resource maps, entropy scores, and obfuscation info.
- **`<filename>.jad`**: A reconstructed JAD file for the application.

## Example

```bash
j2etool d mygame.jar -o mygame_decompiled
```

This will create a `mygame_decompiled` folder containing the disassembled code and extracted assets.
