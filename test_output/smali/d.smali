.class public final d
.super java.lang.Object

.field private a:I
.field private static a:[I
.field private static a:[C

.method public <init>()V
    .limit stack 2
    .limit locals 1
    aload_0
    invokespecial java/lang/Object-><init>()V
    aload_0
    iconst_0
    putfield d->a:I
    return
.end method

.method private a()J
    .limit stack 4
    .limit locals 1
    aload_0
    getfield d->a:I
    i2l
    ldc2_w 4294967295
    land
    lreturn
.end method

.method private a([B)V
    .limit stack 4
    .limit locals 6
    aload_0
    aload_1
    iconst_0
    aload_1
    arraylength
    istore 0x4
    istore_3
    astore_2
    dup
    astore_1
    getfield d->a:I
    iconst_m1
    ixor
    istore 0x5
    iinc 0x4 -0x1
    iload 0x4
    iflt 0x1f
    getstatic d->a:[I
    iload 0x5
    aload_2
    iload_3
    iinc 0x3 0x1
    baload
    ixor
    sipush 0xff
    iand
    iaload
    iload 0x5
    bipush 0x8
    iushr
    ixor
    istore 0x5
    goto -0x21
    aload_1
    iload 0x5
    iconst_m1
    ixor
    putfield d->a:I
    return
.end method

.method public static final a([B)Ljava/lang/String;
    .limit stack 7
    .limit locals 3
    new d
    dup
    invokespecial d-><init>()V
    dup
    astore_1
    dup
    astore_2
    iconst_0
    putfield d->a:I
    aload_1
    aload_0
    invokespecial d->a([B)V
    aload_1
    invokespecial d->a()J
    invokestatic java/lang/Math->abs(J)J
    getstatic d->a:[C
    arraylength
    i2l
    lrem
    l2i
    istore_0
    aload_1
    invokespecial d->a()J
    invokestatic java/lang/Math->abs(J)J
    bipush 0x9
    lshr
    getstatic d->a:[C
    arraylength
    i2l
    lrem
    l2i
    istore_2
    aload_1
    invokespecial d->a()J
    invokestatic java/lang/Math->abs(J)J
    bipush 0x12
    lshr
    getstatic d->a:[C
    arraylength
    i2l
    lrem
    l2i
    istore_1
    new java/lang/String
    dup
    iconst_3
    newarray 0x5
    dup
    iconst_0
    getstatic d->a:[C
    iload_0
    caload
    castore
    dup
    iconst_1
    getstatic d->a:[C
    iload_2
    caload
    castore
    dup
    iconst_2
    getstatic d->a:[C
    iload_1
    caload
    castore
    invokespecial java/lang/String-><init>([C)V
    dup
    astore_0
    areturn
.end method

.method public static a(Ljava/lang/String;)J
    .limit stack 2
    .limit locals 3
    new d
    dup
    invokespecial d-><init>()V
    dup
    astore_1
    dup
    astore_2
    iconst_0
    putfield d->a:I
    aload_1
    aload_0
    invokevirtual java/lang/String->getBytes()[B
    invokespecial d->a([B)V
    aload_1
    invokespecial d->a()J
    lreturn
.end method

.method static <clinit>()V
    .limit stack 4
    .limit locals 4
    sipush 0x100
    newarray 0xa
    astore_0
    iconst_0
    istore_1
    iload_1
    sipush 0x100
    if_icmpge 0x30
    iload_1
    istore_2
    bipush 0x8
    istore_3
    iinc 0x3 -0x1
    iload_3
    iflt 0x1a
    iload_2
    iconst_1
    iand
    ifeq 0xd
    ldc -306674912
    iload_2
    iconst_1
    iushr
    ixor
    istore_2
    goto -0x14
    iload_2
    iconst_1
    iushr
    istore_2
    goto -0x1b
    aload_0
    iload_1
    iload_2
    iastore
    iinc 0x1 0x1
    goto -0x31
    aload_0
    putstatic d->a:[I
    bipush 0x3e
    newarray 0x5
    dup
    iconst_0
    bipush 0x61
    castore
    dup
    iconst_1
    bipush 0x62
    castore
    dup
    iconst_2
    bipush 0x63
    castore
    dup
    iconst_3
    bipush 0x64
    castore
    dup
    iconst_4
    bipush 0x65
    castore
    dup
    iconst_5
    bipush 0x66
    castore
    dup
    bipush 0x6
    bipush 0x67
    castore
    dup
    bipush 0x7
    bipush 0x68
    castore
    dup
    bipush 0x8
    bipush 0x69
    castore
    dup
    bipush 0x9
    bipush 0x6a
    castore
    dup
    bipush 0xa
    bipush 0x6b
    castore
    dup
    bipush 0xb
    bipush 0x6c
    castore
    dup
    bipush 0xc
    bipush 0x6d
    castore
    dup
    bipush 0xd
    bipush 0x6e
    castore
    dup
    bipush 0xe
    bipush 0x6f
    castore
    dup
    bipush 0xf
    bipush 0x70
    castore
    dup
    bipush 0x10
    bipush 0x71
    castore
    dup
    bipush 0x11
    bipush 0x72
    castore
    dup
    bipush 0x12
    bipush 0x73
    castore
    dup
    bipush 0x13
    bipush 0x74
    castore
    dup
    bipush 0x14
    bipush 0x75
    castore
    dup
    bipush 0x15
    bipush 0x76
    castore
    dup
    bipush 0x16
    bipush 0x77
    castore
    dup
    bipush 0x17
    bipush 0x78
    castore
    dup
    bipush 0x18
    bipush 0x79
    castore
    dup
    bipush 0x19
    bipush 0x7a
    castore
    dup
    bipush 0x1a
    bipush 0x41
    castore
    dup
    bipush 0x1b
    bipush 0x42
    castore
    dup
    bipush 0x1c
    bipush 0x43
    castore
    dup
    bipush 0x1d
    bipush 0x44
    castore
    dup
    bipush 0x1e
    bipush 0x45
    castore
    dup
    bipush 0x1f
    bipush 0x46
    castore
    dup
    bipush 0x20
    bipush 0x47
    castore
    dup
    bipush 0x21
    bipush 0x48
    castore
    dup
    bipush 0x22
    bipush 0x49
    castore
    dup
    bipush 0x23
    bipush 0x4a
    castore
    dup
    bipush 0x24
    bipush 0x4b
    castore
    dup
    bipush 0x25
    bipush 0x4c
    castore
    dup
    bipush 0x26
    bipush 0x4d
    castore
    dup
    bipush 0x27
    bipush 0x4e
    castore
    dup
    bipush 0x28
    bipush 0x4f
    castore
    dup
    bipush 0x29
    bipush 0x50
    castore
    dup
    bipush 0x2a
    bipush 0x51
    castore
    dup
    bipush 0x2b
    bipush 0x52
    castore
    dup
    bipush 0x2c
    bipush 0x53
    castore
    dup
    bipush 0x2d
    bipush 0x54
    castore
    dup
    bipush 0x2e
    bipush 0x55
    castore
    dup
    bipush 0x2f
    bipush 0x56
    castore
    dup
    bipush 0x30
    bipush 0x57
    castore
    dup
    bipush 0x31
    bipush 0x58
    castore
    dup
    bipush 0x32
    bipush 0x59
    castore
    dup
    bipush 0x33
    bipush 0x5a
    castore
    dup
    bipush 0x34
    bipush 0x30
    castore
    dup
    bipush 0x35
    bipush 0x31
    castore
    dup
    bipush 0x36
    bipush 0x32
    castore
    dup
    bipush 0x37
    bipush 0x33
    castore
    dup
    bipush 0x38
    bipush 0x34
    castore
    dup
    bipush 0x39
    bipush 0x35
    castore
    dup
    bipush 0x3a
    bipush 0x36
    castore
    dup
    bipush 0x3b
    bipush 0x37
    castore
    dup
    bipush 0x3c
    bipush 0x38
    castore
    dup
    bipush 0x3d
    bipush 0x39
    castore
    putstatic d->a:[C
    return
.end method
