.class public final b
.super java.lang.Object

.field private static a:[C
.field private static a:[B

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .limit stack 3
    .limit locals 1
    new java/lang/String
    dup
    aload_0
    invokevirtual java/lang/String->getBytes()[B
    invokestatic b->a([B)[C
    invokespecial java/lang/String-><init>([C)V
    areturn
.end method

.method public static a([B)[C
    .limit stack 4
    .limit locals 10
    aload_0
    iconst_0
    aload_0
    arraylength
    istore_1
    istore_0
    astore_0
    iload_1
    iconst_2
    ishl
    iconst_2
    iadd
    iconst_3
    idiv
    istore_2
    iload_1
    iconst_2
    iadd
    iconst_3
    idiv
    iconst_2
    ishl
    dup
    istore_3
    newarray 0x5
    astore_3
    iconst_0
    istore 0x4
    iload_1
    iconst_0
    iadd
    istore_1
    iconst_0
    istore 0x5
    iload 0x4
    iload_1
    if_icmpge 0xb4
    aload_0
    iload 0x4
    iinc 0x4 0x1
    baload
    sipush 0xff
    iand
    istore 0x6
    iload 0x4
    iload_1
    if_icmpge 0x11
    aload_0
    iload 0x4
    iinc 0x4 0x1
    baload
    sipush 0xff
    iand
    goto 0x4
    iconst_0
    istore 0x7
    iload 0x4
    iload_1
    if_icmpge 0x11
    aload_0
    iload 0x4
    iinc 0x4 0x1
    baload
    sipush 0xff
    iand
    goto 0x4
    iconst_0
    istore 0x8
    iload 0x6
    iconst_2
    iushr
    istore 0x9
    iload 0x6
    iconst_3
    iand
    iconst_4
    ishl
    iload 0x7
    iconst_4
    iushr
    ior
    istore 0x6
    iload 0x7
    bipush 0xf
    iand
    iconst_2
    ishl
    iload 0x8
    bipush 0x6
    iushr
    ior
    istore 0x7
    iload 0x8
    bipush 0x3f
    iand
    istore 0x8
    aload_3
    iload 0x5
    iinc 0x5 0x1
    getstatic b->a:[C
    iload 0x9
    caload
    castore
    aload_3
    iload 0x5
    iinc 0x5 0x1
    getstatic b->a:[C
    iload 0x6
    caload
    castore
    aload_3
    iload 0x5
    iload 0x5
    iload_2
    if_icmpge 0xc
    getstatic b->a:[C
    iload 0x7
    caload
    goto 0x5
    bipush 0x3d
    castore
    iinc 0x5 0x1
    aload_3
    iload 0x5
    iload 0x5
    iload_2
    if_icmpge 0xc
    getstatic b->a:[C
    iload 0x8
    caload
    goto 0x5
    bipush 0x3d
    castore
    iinc 0x5 0x1
    goto -0xb4
    aload_3
    areturn
.end method

.method public static a(Ljava/lang/String;)[B
    .limit stack 3
    .limit locals 10
    aload_0
    invokevirtual java/lang/String->toCharArray()[C
    dup
    astore_0
    iconst_0
    aload_0
    arraylength
    istore_1
    istore_0
    astore_0
    iload_1
    iconst_4
    irem
    ifeq 0xd
    new java/lang/IllegalArgumentException
    dup
    ldc 'Length of Base64 encoded input string is not a multiple of 4.'
    invokespecial java/lang/IllegalArgumentException-><init>(Ljava/lang/String;)V
    athrow
    iload_1
    ifle 0x15
    aload_0
    iload_1
    iconst_0
    iadd
    iconst_1
    isub
    caload
    bipush 0x3d
    if_icmpne 0x9
    iinc 0x1 -0x1
    goto -0x13
    iload_1
    iconst_3
    imul
    iconst_4
    idiv
    dup
    istore_2
    newarray 0x8
    astore_3
    iconst_0
    istore 0x4
    iload_1
    iconst_0
    iadd
    istore_1
    iconst_0
    istore 0x5
    iload 0x4
    iload_1
    if_icmpge 0xf3
    aload_0
    iload 0x4
    iinc 0x4 0x1
    caload
    istore 0x6
    aload_0
    iload 0x4
    iinc 0x4 0x1
    caload
    istore 0x7
    iload 0x4
    iload_1
    if_icmpge 0xd
    aload_0
    iload 0x4
    iinc 0x4 0x1
    caload
    goto 0x5
    bipush 0x41
    istore 0x8
    iload 0x4
    iload_1
    if_icmpge 0xd
    aload_0
    iload 0x4
    iinc 0x4 0x1
    caload
    goto 0x5
    bipush 0x41
    istore 0x9
    iload 0x6
    bipush 0x7f
    if_icmpgt 0x18
    iload 0x7
    bipush 0x7f
    if_icmpgt 0x11
    iload 0x8
    bipush 0x7f
    if_icmpgt 0xa
    iload 0x9
    bipush 0x7f
    if_icmple 0xd
    new java/lang/IllegalArgumentException
    dup
    ldc 'Illegal character in Base64 encoded data.'
    invokespecial java/lang/IllegalArgumentException-><init>(Ljava/lang/String;)V
    athrow
    getstatic b->a:[B
    iload 0x6
    baload
    istore 0x6
    getstatic b->a:[B
    iload 0x7
    baload
    istore 0x7
    getstatic b->a:[B
    iload 0x8
    baload
    istore 0x8
    getstatic b->a:[B
    iload 0x9
    baload
    istore 0x9
    iload 0x6
    iflt 0x12
    iload 0x7
    iflt 0xd
    iload 0x8
    iflt 0x8
    iload 0x9
    ifge 0xd
    new java/lang/IllegalArgumentException
    dup
    ldc 'Illegal character in Base64 encoded data.'
    invokespecial java/lang/IllegalArgumentException-><init>(Ljava/lang/String;)V
    athrow
    iload 0x6
    iconst_2
    ishl
    iload 0x7
    iconst_4
    iushr
    ior
    istore 0x6
    iload 0x7
    bipush 0xf
    iand
    iconst_4
    ishl
    iload 0x8
    iconst_2
    iushr
    ior
    istore 0x7
    iload 0x8
    iconst_3
    iand
    bipush 0x6
    ishl
    iload 0x9
    ior
    istore 0x8
    aload_3
    iload 0x5
    iinc 0x5 0x1
    iload 0x6
    i2b
    bastore
    iload 0x5
    iload_2
    if_icmpge 0xd
    aload_3
    iload 0x5
    iinc 0x5 0x1
    iload 0x7
    i2b
    bastore
    iload 0x5
    iload_2
    if_icmpge 0xd
    aload_3
    iload 0x5
    iinc 0x5 0x1
    iload 0x8
    i2b
    bastore
    goto -0xf3
    aload_3
    areturn
.end method

.method private <init>()V
    .limit stack 1
    .limit locals 1
    aload_0
    invokespecial java/lang/Object-><init>()V
    return
.end method

.method static <clinit>()V
    .limit stack 3
    .limit locals 2
    ldc 'line.separator'
    invokestatic java/lang/System->getProperty(Ljava/lang/String;)Ljava/lang/String;
    pop
    bipush 0x40
    newarray 0x5
    putstatic b->a:[C
    iconst_0
    istore_0
    bipush 0x41
    istore_1
    iload_1
    bipush 0x5a
    if_icmpgt 0x14
    getstatic b->a:[C
    iload_0
    iinc 0x0 0x1
    iload_1
    castore
    iload_1
    iconst_1
    iadd
    i2c
    istore_1
    goto -0x14
    bipush 0x61
    istore_1
    iload_1
    bipush 0x7a
    if_icmpgt 0x14
    getstatic b->a:[C
    iload_0
    iinc 0x0 0x1
    iload_1
    castore
    iload_1
    iconst_1
    iadd
    i2c
    istore_1
    goto -0x14
    bipush 0x30
    istore_1
    iload_1
    bipush 0x39
    if_icmpgt 0x14
    getstatic b->a:[C
    iload_0
    iinc 0x0 0x1
    iload_1
    castore
    iload_1
    iconst_1
    iadd
    i2c
    istore_1
    goto -0x14
    getstatic b->a:[C
    iload_0
    iinc 0x0 0x1
    bipush 0x2b
    castore
    getstatic b->a:[C
    iload_0
    bipush 0x2f
    castore
    sipush 0x80
    newarray 0x8
    putstatic b->a:[B
    iconst_0
    istore_0
    iload_0
    getstatic b->a:[B
    arraylength
    if_icmpge 0xf
    getstatic b->a:[B
    iload_0
    iconst_m1
    bastore
    iinc 0x0 0x1
    goto -0x11
    iconst_0
    istore_0
    iload_0
    bipush 0x40
    if_icmpge 0x14
    getstatic b->a:[B
    getstatic b->a:[C
    iload_0
    caload
    iload_0
    i2b
    bastore
    iinc 0x0 0x1
    goto -0x14
    return
.end method
