.class public final k
.super java.lang.Object

.field private a:Li;
.field public static a:[[Ljava/lang/String;
.field public static a:[Lh;
.field private static a:[[I
.field public static a:I
.field private static a:[Ljava/lang/String;
.field private static e:I
.field private static b:[Ljava/lang/String;
.field private static b:[[I
.field private static f:I
.field private g:I
.field private h:I
.field private i:I
.field private j:I
.field private k:I
.field private l:I
.field private m:I
.field private a:Ljava/lang/String;
.field private n:I
.field  b:I
.field  c:I
.field  d:I
.field  a:Z
.field  b:Z
.field static a:B
.field private static b:Ljava/lang/String;
.field private static c:Ljava/lang/String;
.field private static a:[I

.method public <init>(Li;)V
    .limit stack 2
    .limit locals 2
    aload_0
    invokespecial java/lang/Object-><init>()V
    aload_0
    aload_1
    putfield k->a:Li;
    getstatic h->a:Z
    ifeq 0xd
    invokestatic javax/microedition/lcdui/Font->getDefaultFont()Ljavax/microedition/lcdui/Font;
    invokevirtual javax/microedition/lcdui/Font->getHeight()I
    i2b
    putstatic k->a:B
    return
.end method

.method static a(IIILjava/lang/String;I)V
    .limit stack 6
    .limit locals 6
    iconst_0
    istore 0x5
    iload 0x4
    iflt 0x9
    iload 0x4
    iconst_1
    iadd
    istore 0x5
    aload_3
    iload_0
    iload_1
    getstatic k->a:[I
    iload_2
    iaload
    iload 0x5
    istore 0x4
    istore_3
    istore_2
    istore_1
    dup
    astore_0
    ifnull 0x1d
    iconst_4
    getstatic k->e:I
    iload_1
    iload_2
    iload_3
    iload 0x4
    invokestatic k->a(IIIIII)V
    getstatic k->a:[Ljava/lang/String;
    getstatic k->e:I
    dup
    iconst_1
    iadd
    putstatic k->e:I
    aload_0
    aastore
    return
.end method

.method static a(IIII)V
    .limit stack 6
    .limit locals 4
    iconst_3
    iload_3
    iload_0
    iload_1
    getstatic k->a:[I
    iconst_1
    iaload
    iconst_0
    invokestatic k->a(IIIIII)V
    return
.end method

.method static b(IIII)V
    .limit stack 6
    .limit locals 4
    iconst_0
    iload_3
    iload_0
    iload_1
    getstatic k->a:[I
    iload_2
    iaload
    iconst_0
    invokestatic k->a(IIIIII)V
    return
.end method

.method final a(Ljavax/microedition/lcdui/Graphics;)V
    .limit stack 6
    .limit locals 3
    getstatic k->a:I
    ifle 0x13e
    iconst_0
    istore_2
    iload_2
    getstatic k->a:I
    if_icmpge 0x10c
    aload_0
    getstatic k->a:[[I
    iload_2
    aaload
    iconst_4
    iaload
    putfield k->h:I
    aload_0
    getstatic k->a:[[I
    iload_2
    aaload
    iconst_5
    iaload
    putfield k->i:I
    aload_0
    getstatic k->a:[[I
    iload_2
    aaload
    iconst_0
    iaload
    putfield k->j:I
    aload_0
    getstatic k->a:[[I
    iload_2
    aaload
    iconst_1
    iaload
    putfield k->k:I
    aload_0
    getstatic k->a:[[I
    iload_2
    aaload
    iconst_2
    iaload
    putfield k->l:I
    aload_0
    getstatic k->a:[[I
    iload_2
    aaload
    iconst_3
    iaload
    putfield k->m:I
    aload_0
    aload_0
    getfield k->h:I
    iconst_4
    if_icmpne 0xe
    getstatic k->a:[Ljava/lang/String;
    aload_0
    getfield k->i:I
    aaload
    goto 0x10
    getstatic k->a:[[Ljava/lang/String;
    aload_0
    getfield k->h:I
    aaload
    aload_0
    getfield k->i:I
    aaload
    putfield k->a:Ljava/lang/String;
    aload_0
    dup
    getfield k->j:I
    bipush 0xf
    aload_0
    getfield k->a:Li;
    getfield i->a:Lf;
    getfield f->k:I
    iadd
    iadd
    putfield k->j:I
    aload_0
    dup
    getfield k->k:I
    bipush 0xa
    aload_0
    getfield k->a:Li;
    getfield i->a:Lf;
    getfield f->l:I
    iadd
    iadd
    putfield k->k:I
    aload_0
    getfield k->a:Li;
    getfield i->a:Z
    ifeq 0x30
    aload_0
    getfield k->a:Li;
    getfield i->a:Lf;
    getfield f->c:Z
    ifne 0x23
    aload_0
    dup
    getfield k->j:I
    aload_0
    getfield k->a:Li;
    getfield i->b:I
    isub
    putfield k->j:I
    aload_0
    dup
    getfield k->k:I
    aload_0
    getfield k->a:Li;
    getfield i->c:I
    isub
    putfield k->k:I
    getstatic k->a:[Lh;
    aload_0
    getfield k->m:I
    aaload
    aload_1
    aload_0
    getfield k->a:Ljava/lang/String;
    aload_0
    getfield k->j:I
    aload_0
    getfield k->k:I
    aload_0
    getfield k->l:I
    invokevirtual h->a(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;III)V
    goto 0x1e
    pop
    aload_1
    ldc 16777215
    invokevirtual javax/microedition/lcdui/Graphics->setColor(I)V
    aload_1
    aload_0
    getfield k->a:Ljava/lang/String;
    aload_0
    getfield k->j:I
    aload_0
    getfield k->k:I
    aload_0
    getfield k->l:I
    invokevirtual javax/microedition/lcdui/Graphics->drawString(Ljava/lang/String;III)V
    iinc 0x2 0x1
    goto -0x10d
    getstatic k->a:I
    ifle 0x26
    iconst_0
    putstatic k->a:I
    getstatic k->e:I
    ifle 0x1c
    iconst_0
    istore_1
    iload_1
    getstatic k->e:I
    if_icmpge 0xf
    getstatic k->a:[Ljava/lang/String;
    iload_1
    aconst_null
    aastore
    iinc 0x1 0x1
    goto -0x10
    iconst_0
    putstatic k->e:I
    return
.end method

.method final a(IIIIIII)V
    .limit stack 7
    .limit locals 8
    aload_0
    iload_1
    iload_2
    iload_3
    iload 0x4
    getstatic k->a:[[Ljava/lang/String;
    iload 0x5
    aaload
    iload 0x6
    aaload
    iload 0x7
    invokevirtual k->a(IIIILjava/lang/String;I)V
    return
.end method

.method final a(IIIILjava/lang/String;I)V
    .limit stack 5
    .limit locals 12
    invokestatic k->a()V
    aload 0x5
    getstatic k->a:[[Ljava/lang/String;
    iconst_1
    aaload
    iconst_0
    aaload
    if_acmpne 0x2d
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    aload 0x5
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    ldc ''
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    iload_1
    invokevirtual java/lang/StringBuffer->append(I)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    invokestatic f->b(Ljava/lang/String;)Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    astore 0x5
    aload_0
    aload 0x5
    invokespecial k->a(Ljava/lang/String;)Ljava/lang/String;
    dup
    putstatic k->b:Ljava/lang/String;
    ifnonnull 0x4
    return
    iload_3
    getstatic k->b:Ljava/lang/String;
    getstatic k->a:[Lh;
    iconst_0
    aaload
    invokestatic a->a(ILjava/lang/String;Lh;)Ljava/util/Vector;
    dup
    astore 0x5
    ifnull 0xb
    aload 0x5
    invokevirtual java/util/Vector->size()I
    ifgt 0x4
    return
    bipush 0x11
    istore 0x7
    iload 0x6
    iconst_3
    if_icmpge 0xb
    getstatic k->a:[I
    iload 0x6
    iaload
    istore 0x7
    iload 0x7
    bipush 0x11
    if_icmpne 0xc
    iload_1
    iload_3
    iconst_1
    ishr
    iadd
    istore_1
    goto 0xe
    iload 0x7
    bipush 0x18
    if_icmpne 0x7
    iload_1
    iload_3
    iadd
    istore_1
    aload 0x5
    invokevirtual java/util/Vector->size()I
    istore_3
    iconst_0
    istore 0x8
    iload 0x8
    iload_3
    if_icmpge 0x5d
    aload 0x5
    iload 0x8
    invokevirtual java/util/Vector->elementAt(I)Ljava/lang/Object;
    checkcast java/lang/String
    iload_1
    iconst_0
    iload 0x7
    iconst_0
    istore 0x9
    istore 0xb
    istore 0x9
    istore 0xa
    astore 0x9
    getstatic k->b:[[I
    getstatic k->f:I
    aaload
    iconst_0
    iload 0xa
    iastore
    getstatic k->b:[[I
    getstatic k->f:I
    aaload
    iconst_1
    iconst_0
    iastore
    getstatic k->b:[[I
    getstatic k->f:I
    aaload
    iconst_2
    iload 0xb
    iastore
    getstatic k->b:[[I
    getstatic k->f:I
    aaload
    iconst_3
    iconst_0
    iastore
    getstatic k->b:[Ljava/lang/String;
    getstatic k->f:I
    aload 0x9
    aastore
    getstatic k->f:I
    iconst_1
    iadd
    putstatic k->f:I
    iinc 0x8 0x1
    goto -0x5d
    aload_0
    iload_3
    putfield k->c:I
    aload_0
    iload_2
    iload 0x6
    iconst_3
    if_icmpne 0x20
    aload_0
    getfield k->c:I
    getstatic k->a:B
    imul
    iload 0x4
    if_icmpge 0x13
    iload 0x4
    aload_0
    getfield k->c:I
    getstatic k->a:B
    imul
    isub
    iconst_2
    idiv
    goto 0x4
    iconst_0
    iadd
    putfield k->n:I
    aload_0
    iload 0x4
    getstatic k->a:B
    idiv
    putfield k->b:I
    aload_0
    iconst_0
    putfield k->d:I
    return
.end method

.method final b(Ljavax/microedition/lcdui/Graphics;)V
    .limit stack 6
    .limit locals 2
    getstatic k->f:I
    ifle 0x145
    aload_0
    aload_0
    getfield k->d:I
    putfield k->g:I
    aload_0
    getfield k->g:I
    aload_0
    getfield k->d:I
    aload_0
    getfield k->b:I
    iadd
    if_icmpge 0x104
    aload_0
    getfield k->g:I
    aload_0
    getfield k->c:I
    if_icmpge 0xf9
    aload_0
    getstatic k->b:[[I
    aload_0
    getfield k->g:I
    aaload
    iconst_0
    iaload
    putfield k->j:I
    aload_0
    aload_0
    getfield k->n:I
    aload_0
    getfield k->g:I
    aload_0
    getfield k->d:I
    isub
    getstatic k->a:B
    imul
    iadd
    putfield k->k:I
    aload_0
    getstatic k->b:[[I
    aload_0
    getfield k->g:I
    aaload
    iconst_2
    iaload
    putfield k->l:I
    aload_0
    getstatic k->b:[[I
    aload_0
    getfield k->g:I
    aaload
    iconst_3
    iaload
    putfield k->m:I
    aload_0
    getstatic k->b:[Ljava/lang/String;
    aload_0
    getfield k->g:I
    aaload
    putfield k->a:Ljava/lang/String;
    aload_0
    dup
    getfield k->j:I
    bipush 0xf
    aload_0
    getfield k->a:Li;
    getfield i->a:Lf;
    getfield f->k:I
    iadd
    iadd
    putfield k->j:I
    aload_0
    dup
    getfield k->k:I
    bipush 0xa
    aload_0
    getfield k->a:Li;
    getfield i->a:Lf;
    getfield f->l:I
    iadd
    iadd
    putfield k->k:I
    aload_0
    getfield k->a:Li;
    getfield i->a:Z
    ifeq 0x30
    aload_0
    getfield k->a:Li;
    getfield i->a:Lf;
    getfield f->c:Z
    ifne 0x23
    aload_0
    dup
    getfield k->j:I
    aload_0
    getfield k->a:Li;
    getfield i->b:I
    isub
    putfield k->j:I
    aload_0
    dup
    getfield k->k:I
    aload_0
    getfield k->a:Li;
    getfield i->c:I
    isub
    putfield k->k:I
    getstatic k->a:[Lh;
    aload_0
    getfield k->m:I
    aaload
    aload_1
    aload_0
    getfield k->a:Ljava/lang/String;
    aload_0
    getfield k->j:I
    aload_0
    getfield k->k:I
    aload_0
    getfield k->l:I
    invokevirtual h->a(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;III)V
    goto 0x1e
    pop
    aload_1
    ldc 16777215
    invokevirtual javax/microedition/lcdui/Graphics->setColor(I)V
    aload_1
    aload_0
    getfield k->a:Ljava/lang/String;
    aload_0
    getfield k->j:I
    aload_0
    getfield k->k:I
    aload_0
    getfield k->l:I
    invokevirtual javax/microedition/lcdui/Graphics->drawString(Ljava/lang/String;III)V
    aload_0
    dup
    getfield k->g:I
    iconst_1
    iadd
    putfield k->g:I
    goto -0x10e
    aload_0
    aload_0
    getfield k->d:I
    ifne 0x7
    iconst_1
    goto 0x4
    iconst_0
    putfield k->a:Z
    aload_0
    aload_0
    getfield k->d:I
    aload_0
    getfield k->b:I
    iadd
    aload_0
    getfield k->c:I
    if_icmplt 0x7
    iconst_1
    goto 0x4
    iconst_0
    putfield k->b:Z
    return
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .limit stack 5
    .limit locals 2
    aload_1
    dup
    putstatic k->c:Ljava/lang/String;
    ldc '[RANK]'
    getstatic k->a:[[Ljava/lang/String;
    iconst_0
    aaload
    bipush 0x5e
    aload_0
    getfield k->a:Li;
    getfield i->a:Lf;
    getfield f->c:I
    iadd
    aaload
    invokestatic a->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    dup
    putstatic k->c:Ljava/lang/String;
    ldc '[VER]'
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    getstatic a->a:Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    getstatic a->a:Ljava/lang/String;
    invokestatic f->a(Ljava/lang/String;)Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    invokestatic a->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    dup
    putstatic k->c:Ljava/lang/String;
    ldc '[M_ID]'
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    ldc ''
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    aload_0
    getfield k->a:Li;
    getfield i->a:Lf;
    getfield f->a:I
    invokevirtual java/lang/StringBuffer->append(I)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    invokestatic a->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    putstatic k->c:Ljava/lang/String;
    goto 0x4
    pop
    getstatic k->c:Ljava/lang/String;
    areturn
.end method

.method private static final a(IIIIII)V
    .limit stack 3
    .limit locals 6
    getstatic k->a:[[I
    getstatic k->a:I
    aaload
    iconst_4
    iload_0
    iastore
    getstatic k->a:[[I
    getstatic k->a:I
    aaload
    iconst_5
    iload_1
    iastore
    getstatic k->a:[[I
    getstatic k->a:I
    aaload
    iconst_0
    iload_2
    iastore
    getstatic k->a:[[I
    getstatic k->a:I
    aaload
    iconst_1
    iload_3
    iastore
    getstatic k->a:[[I
    getstatic k->a:I
    aaload
    iconst_2
    iload 0x4
    iastore
    getstatic k->a:[[I
    getstatic k->a:I
    aaload
    iconst_3
    iload 0x5
    iastore
    getstatic k->a:I
    iconst_1
    iadd
    putstatic k->a:I
    return
.end method

.method public static final a()V
    .limit stack 3
    .limit locals 1
    getstatic k->f:I
    ifle 0x1c
    iconst_0
    istore_0
    iload_0
    getstatic k->f:I
    if_icmpge 0xf
    getstatic k->b:[Ljava/lang/String;
    iload_0
    aconst_null
    aastore
    iinc 0x0 0x1
    goto -0x10
    iconst_0
    putstatic k->f:I
    return
.end method

.method static a(Ljavax/microedition/midlet/MIDlet;Ljava/util/Hashtable;Ljava/lang/String;I)I
    .limit stack 4
    .limit locals 12
    invokestatic f->a()I
    istore 0x4
    new java/lang/String
    dup
    getstatic f->l:[B
    invokespecial java/lang/String-><init>([B)V
    astore 0x5
    aload_0
    aload 0x5
    invokevirtual javax/microedition/midlet/MIDlet->getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    astore 0x6
    aload_0
    aload_2
    invokevirtual javax/microedition/midlet/MIDlet->getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    dup
    astore 0x7
    ifnonnull 0x9
    aload_2
    invokestatic java/lang/System->getProperty(Ljava/lang/String;)Ljava/lang/String;
    astore 0x7
    aload 0x7
    ifnonnull 0x66
    new java/lang/String
    dup
    getstatic f->p:[B
    invokespecial java/lang/String-><init>([B)V
    invokestatic a->a(Ljava/lang/String;)Ljava/io/InputStream;
    dup
    astore 0x8
    invokestatic a->a(Ljava/io/InputStream;)Ljava/io/DataInputStream;
    dup
    astore 0x9
    ifnull 0x4d
    aload 0x9
    iconst_0
    invokestatic a->a(Ljava/io/DataInputStream;Z)Ljava/lang/String;
    dup
    astore 0x8
    ifnull 0x38
    aload 0x8
    bipush 0x3a
    invokevirtual java/lang/String->indexOf(I)I
    dup
    istore 0xa
    iflt 0x28
    aload 0x8
    iconst_0
    iload 0xa
    invokevirtual java/lang/String->substring(II)Ljava/lang/String;
    dup
    astore 0xb
    aload_2
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifeq 0x16
    aload 0x8
    iload 0xa
    iconst_2
    iadd
    aload 0x8
    invokevirtual java/lang/String->length()I
    invokevirtual java/lang/String->substring(II)Ljava/lang/String;
    astore 0x7
    goto 0xa
    goto -0x3e
    goto 0x4
    pop
    aload 0x9
    invokevirtual java/io/DataInputStream->close()V
    aload 0x7
    ifnonnull 0x26
    iload 0x4
    ineg
    istore 0x4
    aload_1
    aload 0x5
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    ldc ''
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    iload 0x4
    invokevirtual java/lang/StringBuffer->append(I)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    invokevirtual java/util/Hashtable->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    pop
    iload 0x4
    ireturn
    aload 0x7
    ifnull 0x6
    iload 0x4
    ireturn
    aload 0x7
    iload_3
    iconst_0
    invokestatic e->a(Ljava/lang/String;IZ)[B
    astore 0x8
    aload 0x6
    ifnonnull 0x7
    iconst_m1
    goto 0x8
    aload 0x6
    invokestatic java/lang/Integer->parseInt(Ljava/lang/String;)I
    istore 0x9
    aload 0x8
    iconst_0
    baload
    sipush 0xff
    iand
    bipush 0x18
    ishl
    aload 0x8
    iconst_1
    baload
    sipush 0xff
    iand
    bipush 0x10
    ishl
    ior
    aload 0x8
    iconst_2
    baload
    sipush 0xff
    iand
    bipush 0x8
    ishl
    ior
    aload 0x8
    iconst_3
    baload
    sipush 0xff
    iand
    ior
    istore 0x8
    new java/lang/String
    dup
    invokespecial java/lang/String-><init>()V
    astore 0xa
    iload 0x9
    iload 0x8
    isub
    invokestatic java/lang/Math->abs(I)I
    iconst_3
    if_icmpge 0x34
    iload 0x9
    iconst_2
    ishr
    iload 0x8
    iconst_2
    ishr
    isub
    invokestatic java/lang/Math->abs(I)I
    iconst_2
    if_icmpge 0x24
    invokestatic f->a()I
    ineg
    istore 0x4
    aload_1
    aload 0x5
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    ldc ''
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    iload 0x4
    invokevirtual java/lang/StringBuffer->append(I)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    invokevirtual java/util/Hashtable->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    pop
    new java/lang/String
    dup
    getstatic f->n:[B
    invokespecial java/lang/String-><init>([B)V
    astore 0x5
    aload_0
    aload 0x5
    invokevirtual javax/microedition/midlet/MIDlet->getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    dup
    astore 0x6
    aload 0xa
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifeq 0xf
    aload_1
    aload 0x5
    aload 0xa
    invokevirtual java/util/Hashtable->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    pop
    goto 0x95
    ldc ''
    astore 0x5
    aload 0x6
    invokevirtual java/lang/String->length()I
    iconst_1
    isub
    istore 0xb
    iload 0xb
    iflt 0x24
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    aload 0x5
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    aload 0x6
    iload 0xb
    invokevirtual java/lang/String->charAt(I)C
    invokevirtual java/lang/StringBuffer->append(C)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    astore 0x5
    iinc 0xb -0x1
    goto -0x23
    aload 0x6
    aload 0x5
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifeq 0x31
    iload 0x4
    iload 0x4
    ldc 297987
    isub
    aload 0x6
    invokestatic java/lang/Integer->parseInt(Ljava/lang/String;)I
    bipush 0x8
    ishr
    isub
    isub
    istore 0x4
    aload_1
    aload 0x5
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    ldc ''
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    iload 0x4
    invokevirtual java/lang/StringBuffer->append(I)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    invokevirtual java/util/Hashtable->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    pop
    goto 0x27
    pop
    iload 0x4
    ineg
    istore 0x4
    aload_1
    aload 0x5
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    ldc ''
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    iload 0x4
    invokevirtual java/lang/StringBuffer->append(I)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    invokevirtual java/util/Hashtable->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    pop
    iload 0x4
    ireturn
    iload 0x4
    ireturn
.end method

.method static <clinit>()V
    .limit stack 4
    .limit locals 0
    iconst_4
    anewarray [Ljava/lang/String;
    putstatic k->a:[[Ljava/lang/String;
    iconst_4
    anewarray h
    putstatic k->a:[Lh;
    bipush 0x64
    bipush 0x6
    multianewarray [[I 0x2
    putstatic k->a:[[I
    iconst_0
    putstatic k->a:I
    bipush 0x32
    anewarray java/lang/String
    putstatic k->a:[Ljava/lang/String;
    iconst_0
    putstatic k->e:I
    bipush 0x64
    anewarray java/lang/String
    putstatic k->b:[Ljava/lang/String;
    bipush 0x64
    iconst_4
    multianewarray [[I 0x2
    putstatic k->b:[[I
    iconst_0
    putstatic k->f:I
    bipush 0xb
    putstatic k->a:B
    aconst_null
    putstatic k->b:Ljava/lang/String;
    aconst_null
    putstatic k->c:Ljava/lang/String;
    iconst_3
    newarray 0xa
    dup
    iconst_0
    bipush 0x14
    iastore
    dup
    iconst_1
    bipush 0x11
    iastore
    dup
    iconst_2
    bipush 0x18
    iastore
    putstatic k->a:[I
    return
.end method
