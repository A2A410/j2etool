import os
import javatools
from javatools import opcodes

class Disassembler:
    def __init__(self, class_data=None, filepath=None, resource_paths=None):
        self.resource_paths = resource_paths or set()
        if filepath:
            self.cf = javatools.unpack_classfile(filepath)
        elif class_data:
            self.cf = javatools.JavaClassInfo()
            with javatools.unpack(class_data) as unpacker:
                self.cf.unpack(unpacker)
        else:
            raise ValueError("Either class_data or filepath must be provided")

    def _format_arg(self, arg):
        if isinstance(arg, list):
            return "[" + ", ".join(self._format_arg(x) for x in arg) + "]"
        try:
            return hex(arg)
        except (TypeError, ValueError):
            return str(arg)

    def format_instruction(self, offset, opcode, args):
        name = opcodes.get_opname_by_code(opcode)
        if not args:
            return f"    {name}"

        # Handle arguments based on opcode
        formatted_args = []
        try:
            # Some opcodes like ldc, getstatic, etc. have constant pool references
            # We use deref_const to get the human-readable value
            if opcode in (opcodes.OP_ldc, opcodes.OP_ldc_w, opcodes.OP_ldc2_w):
                val = self.cf.deref_const(args[0])
                formatted_args.append(repr(val))

                # Add resource hint if it looks like a resource path
                if isinstance(val, str):
                    clean_val = val.lstrip('/')
                    for res_path in self.resource_paths:
                        # Extract the filename part of the resource path and compare with clean_val
                        # res_path is like 'res/path/to/file.ext'
                        res_filename_with_ext = os.path.basename(res_path)
                        res_filename_no_ext = os.path.splitext(res_filename_with_ext)[0]

                        if clean_val == res_filename_with_ext or clean_val == res_filename_no_ext:
                            formatted_args.append(f" # resource: {res_path}")
                            break
            elif opcode in (opcodes.OP_getstatic, opcodes.OP_putstatic, opcodes.OP_getfield, opcodes.OP_putfield):
                # deref_const returns (class_name, (field_name, field_type))
                val = self.cf.deref_const(args[0])
                formatted_args.append(f"{val[0]}->{val[1][0]}:{val[1][1]}")
            elif opcode in (opcodes.OP_invokevirtual, opcodes.OP_invokespecial, opcodes.OP_invokestatic, opcodes.OP_invokeinterface):
                # deref_const returns (class_name, (method_name, method_type))
                val = self.cf.deref_const(args[0])
                formatted_args.append(f"{val[0]}->{val[1][0]}{val[1][1]}")
            elif opcode in (opcodes.OP_new, opcodes.OP_checkcast, opcodes.OP_instanceof, opcodes.OP_anewarray):
                val = self.cf.deref_const(args[0])
                formatted_args.append(val)
            elif opcode == opcodes.OP_multianewarray:
                val = self.cf.deref_const(args[0])
                formatted_args.append(val)
                formatted_args.append(hex(args[1]))
            else:
                formatted_args.extend(self._format_arg(a) for a in args)
        except Exception:
            formatted_args.extend(self._format_arg(a) for a in args)

        return f"    {name} {' '.join(formatted_args)}"

    def disassemble_method(self, method):
        lines = []
        access = " ".join(list(method.pretty_access_flags()))
        name = method.get_name()
        descriptor = method.get_descriptor()

        lines.append(f".method {access} {name}{descriptor}")

        code = method.get_code()
        if code:
            lines.append(f"    .limit stack {code.max_stack}")
            lines.append(f"    .limit locals {code.max_locals}")

            for offset, opcode, args in code.disassemble():
                lines.append(self.format_instruction(offset, opcode, args))

        lines.append(".end method")
        return lines

    def disassemble_class(self):
        lines = []

        # Class Header
        access = " ".join(list(self.cf.pretty_access_flags()))
        this_class = self.cf.pretty_this()
        super_class = self.cf.pretty_super()

        lines.append(f".class {access} {this_class}")
        lines.append(f".super {super_class}")

        # Interfaces
        for interface in self.cf.pretty_interfaces():
            lines.append(f".implements {interface}")

        lines.append("")

        # Fields
        for field in self.cf.fields:
            f_access = " ".join(list(field.pretty_access_flags()))
            f_name = field.get_name()
            f_desc = field.get_descriptor()
            lines.append(f".field {f_access} {f_name}:{f_desc}")

        lines.append("")

        # Methods
        for method in self.cf.methods:
            lines.extend(self.disassemble_method(method))
            lines.append("")

        return "\n".join(lines)
