.class public final h
.super java.lang.Object

.field private c:I
.field private a:[Ljavax/microedition/lcdui/Image;
.field private a:[[I
.field private a:[[B
.field private d:I
.field public a:I
.field public b:I
.field private a:[Ljava/lang/String;
.field public static a:Z
.field private e:I
.field private f:I
.field static a:[I
.field static final a:[B
.field static final b:[B
.field static final c:[B
.field static final d:[B
.field private static b:Z

.method private <init>()V
    .limit stack 2
    .limit locals 1
    aload_0
    invokespecial java/lang/Object-><init>()V
    aload_0
    iconst_0
    putfield h->c:I
    aload_0
    iconst_0
    putfield h->d:I
    aload_0
    iconst_0
    putfield h->a:I
    aload_0
    ldc 16777215
    putfield h->b:I
    aload_0
    iconst_0
    putfield h->e:I
    aload_0
    iconst_0
    putfield h->f:I
    return
.end method

.method public static a(Ljava/lang/String;II)Lh;
    .limit stack 5
    .limit locals 8
    new h
    dup
    invokespecial h-><init>()V
    dup
    astore_1
    iconst_0
    putfield h->e:I
    getstatic h->a:Z
    ifne 0x142
    aload_1
    iconst_2
    anewarray java/lang/String
    putfield h->a:[Ljava/lang/String;
    aload_1
    iconst_2
    anewarray javax/microedition/lcdui/Image
    putfield h->a:[Ljavax/microedition/lcdui/Image;
    aload_1
    iconst_2
    anewarray [I
    putfield h->a:[[I
    aload_1
    iconst_2
    anewarray [B
    putfield h->a:[[B
    iconst_0
    istore_2
    iload_2
    iconst_2
    if_icmpge 0x105
    aload_1
    getfield h->a:[Ljavax/microedition/lcdui/Image;
    iload_2
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    aload_0
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    ldc '_'
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    iload_2
    invokevirtual java/lang/StringBuffer->append(I)Ljava/lang/StringBuffer;
    ldc 'p'
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    invokestatic javax/microedition/lcdui/Image->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;
    aastore
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    astore 0x4
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    aload_0
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    ldc '_'
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    iload_2
    invokevirtual java/lang/StringBuffer->append(I)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    invokestatic a->a(Ljava/lang/String;)Ljava/io/InputStream;
    invokestatic a->a(Ljava/io/InputStream;)Ljava/io/DataInputStream;
    astore 0x5
    aload 0x5
    invokevirtual java/io/DataInputStream->readByte()B
    istore 0x6
    iload_2
    ifne 0xf
    aload_1
    aload 0x5
    invokevirtual java/io/DataInputStream->readByte()B
    putfield h->d:I
    goto 0x9
    aload 0x5
    invokevirtual java/io/DataInputStream->readByte()B
    pop
    aload_1
    getfield h->a:[[I
    iload_2
    iload 0x6
    iconst_1
    iadd
    newarray 0xa
    aastore
    aload_1
    getfield h->a:[[B
    iload_2
    iload 0x6
    iconst_1
    iadd
    newarray 0x8
    aastore
    iconst_0
    istore 0x7
    iload 0x7
    iload 0x6
    if_icmpge 0x5f
    aload 0x5
    invokevirtual java/io/DataInputStream->readUTF()Ljava/lang/String;
    astore_3
    aload 0x4
    aload_3
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    pop
    aload_1
    getfield h->a:[[B
    iload_2
    aaload
    iload 0x7
    aload 0x5
    invokevirtual java/io/DataInputStream->readByte()B
    bastore
    aload_1
    getfield h->c:I
    aload_1
    getfield h->a:[[B
    iload_2
    aaload
    iload 0x7
    baload
    if_icmpge 0x10
    aload_1
    aload_1
    getfield h->a:[[B
    iload_2
    aaload
    iload 0x7
    baload
    putfield h->c:I
    aload_1
    getfield h->a:[[I
    iload_2
    aaload
    iload 0x7
    iconst_1
    iadd
    aload_1
    getfield h->a:[[I
    iload_2
    aaload
    iload 0x7
    iaload
    aload_1
    getfield h->a:[[B
    iload_2
    aaload
    iload 0x7
    baload
    iadd
    iastore
    iinc 0x7 0x1
    goto -0x60
    aload 0x5
    invokevirtual java/io/DataInputStream->close()V
    aload_1
    getfield h->a:[Ljava/lang/String;
    iload_2
    aload 0x4
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    aastore
    goto 0x4
    pop
    iinc 0x2 0x1
    goto -0x104
    goto 0x16
    pop
    aload_1
    getfield h->a:[Ljavax/microedition/lcdui/Image;
    ifnull 0xc
    aload_1
    getfield h->a:[Ljavax/microedition/lcdui/Image;
    iconst_0
    aaload
    ifnonnull 0x5
    aconst_null
    astore_1
    getstatic h->b:Z
    ifne 0xf
    getstatic h->a:[I
    iconst_3
    invokestatic a->a()I
    iastore
    iconst_1
    putstatic h->b:Z
    aload_1
    areturn
.end method

.method public final a(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;III)V
    .limit stack 6
    .limit locals 12
    iload 0x4
    aload_0
    getfield h->a:I
    iadd
    istore 0x4
    getstatic h->a:Z
    ifeq 0x28
    aload_0
    aload_1
    invokevirtual javax/microedition/lcdui/Graphics->getColor()I
    putfield h->f:I
    aload_1
    aload_0
    getfield h->b:I
    invokevirtual javax/microedition/lcdui/Graphics->setColor(I)V
    aload_1
    aload_2
    iload_3
    iload 0x4
    iload 0x5
    invokevirtual javax/microedition/lcdui/Graphics->drawString(Ljava/lang/String;III)V
    aload_1
    aload_0
    getfield h->f:I
    invokevirtual javax/microedition/lcdui/Graphics->setColor(I)V
    return
    pop
    return
    aload_1
    invokevirtual javax/microedition/lcdui/Graphics->getClipX()I
    istore 0x6
    aload_1
    invokevirtual javax/microedition/lcdui/Graphics->getClipY()I
    istore 0x7
    aload_1
    invokevirtual javax/microedition/lcdui/Graphics->getClipWidth()I
    istore 0x8
    aload_1
    invokevirtual javax/microedition/lcdui/Graphics->getClipHeight()I
    istore 0x9
    iload 0x5
    iconst_1
    iand
    iconst_1
    if_icmpne 0x10
    iload_3
    aload_0
    aload_2
    invokevirtual h->a(Ljava/lang/String;)I
    iconst_1
    ishr
    isub
    istore_3
    goto 0x15
    iload 0x5
    bipush 0x8
    iand
    bipush 0x8
    if_icmpne 0xb
    iload_3
    aload_0
    aload_2
    invokevirtual h->a(Ljava/lang/String;)I
    isub
    istore_3
    iload 0x5
    bipush 0x40
    iand
    bipush 0x40
    if_icmpeq 0xb
    iload 0x5
    iconst_2
    iand
    iconst_2
    if_icmpne 0x11
    iload 0x4
    aload_0
    invokevirtual h->a()I
    iconst_1
    ishr
    isub
    istore 0x4
    goto 0x16
    iload 0x5
    bipush 0x20
    iand
    bipush 0x20
    if_icmpne 0xc
    iload 0x4
    aload_0
    invokevirtual h->a()I
    isub
    istore 0x4
    iconst_m1
    istore 0x5
    iload_3
    istore_3
    iconst_0
    istore 0xa
    iload 0xa
    aload_2
    invokevirtual java/lang/String->length()I
    if_icmpge 0xe1
    aload_2
    iload 0xa
    invokevirtual java/lang/String->charAt(I)C
    bipush 0x20
    if_icmpne 0x1a
    iload_3
    aload_0
    getfield h->a:[[B
    iconst_0
    aaload
    iconst_0
    baload
    iconst_2
    isub
    iadd
    dup
    istore_3
    aload_0
    getfield h->d:I
    iadd
    istore_3
    goto 0xb9
    iconst_0
    istore 0xb
    iload 0xb
    aload_0
    getfield h->a:[Ljava/lang/String;
    arraylength
    if_icmpge 0x7c
    aload_0
    getfield h->a:[Ljava/lang/String;
    iload 0xb
    aaload
    ifnull 0x6c
    aload_0
    getfield h->a:[Ljava/lang/String;
    iload 0xb
    aaload
    aload_2
    iload 0xa
    invokevirtual java/lang/String->charAt(I)C
    invokevirtual java/lang/String->indexOf(I)I
    dup
    istore 0x5
    iconst_m1
    if_icmpeq 0x55
    aload_1
    iload_3
    iload 0x4
    aload_0
    getfield h->a:[[B
    iload 0xb
    aaload
    iload 0x5
    baload
    aload_0
    getfield h->a:[Ljavax/microedition/lcdui/Image;
    iload 0xb
    aaload
    invokevirtual javax/microedition/lcdui/Image->getHeight()I
    invokevirtual javax/microedition/lcdui/Graphics->setClip(IIII)V
    aload_1
    aload_0
    getfield h->a:[Ljavax/microedition/lcdui/Image;
    iload 0xb
    aaload
    iload_3
    aload_0
    getfield h->a:[[I
    iload 0xb
    aaload
    iload 0x5
    iaload
    isub
    iload 0x4
    bipush 0x14
    invokevirtual javax/microedition/lcdui/Graphics->drawImage(Ljavax/microedition/lcdui/Image;III)V
    iload_3
    aload_0
    getfield h->a:[[B
    iload 0xb
    aaload
    iload 0x5
    baload
    aload_0
    getfield h->e:I
    iadd
    iadd
    dup
    istore_3
    aload_0
    getfield h->d:I
    iadd
    istore_3
    goto 0x9
    iinc 0xb 0x1
    goto -0x80
    aload_1
    iload 0x6
    iload 0x7
    iload 0x8
    iload 0x9
    invokevirtual javax/microedition/lcdui/Graphics->setClip(IIII)V
    iload 0x5
    iconst_m1
    if_icmpne 0x21
    getstatic java/lang/System->out:Ljava/io/PrintStream;
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    ldc 'Not_found: '
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    aload_2
    iload 0xa
    invokevirtual java/lang/String->charAt(I)C
    invokevirtual java/lang/StringBuffer->append(C)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    invokevirtual java/io/PrintStream->println(Ljava/lang/String;)V
    iinc 0xa 0x1
    goto -0xe4
    return
.end method

.method public final a()I
    .limit stack 2
    .limit locals 1
    getstatic h->a:Z
    ifeq 0xa
    invokestatic javax/microedition/lcdui/Font->getDefaultFont()Ljavax/microedition/lcdui/Font;
    invokevirtual javax/microedition/lcdui/Font->getHeight()I
    ireturn
    aload_0
    getfield h->a:[Ljavax/microedition/lcdui/Image;
    iconst_0
    aaload
    invokevirtual javax/microedition/lcdui/Image->getHeight()I
    ireturn
.end method

.method public final a(Ljava/lang/String;)I
    .limit stack 3
    .limit locals 6
    getstatic h->a:Z
    ifeq 0xb
    invokestatic javax/microedition/lcdui/Font->getDefaultFont()Ljavax/microedition/lcdui/Font;
    aload_1
    invokevirtual javax/microedition/lcdui/Font->stringWidth(Ljava/lang/String;)I
    ireturn
    iconst_0
    istore_2
    iconst_0
    istore 0x4
    iload 0x4
    aload_1
    invokevirtual java/lang/String->length()I
    if_icmpge 0x79
    aload_1
    iload 0x4
    invokevirtual java/lang/String->charAt(I)C
    bipush 0x20
    if_icmpne 0x1a
    iload_2
    aload_0
    getfield h->a:[[B
    iconst_0
    aaload
    iconst_0
    baload
    iconst_2
    isub
    iadd
    dup
    istore_2
    aload_0
    getfield h->d:I
    iadd
    istore_2
    goto 0x51
    iconst_0
    istore 0x5
    iload 0x5
    aload_0
    getfield h->a:[Ljava/lang/String;
    arraylength
    if_icmpge 0x44
    aload_0
    getfield h->a:[Ljava/lang/String;
    iload 0x5
    aaload
    ifnull 0x34
    aload_0
    getfield h->a:[Ljava/lang/String;
    iload 0x5
    aaload
    aload_1
    iload 0x4
    invokevirtual java/lang/String->charAt(I)C
    invokevirtual java/lang/String->indexOf(I)I
    dup
    istore_3
    iconst_m1
    if_icmpeq 0x1e
    iload_2
    aload_0
    getfield h->a:[[B
    iload 0x5
    aaload
    iload_3
    baload
    aload_0
    getfield h->e:I
    iadd
    iadd
    dup
    istore_2
    aload_0
    getfield h->d:I
    iadd
    istore_2
    goto 0x9
    iinc 0x5 0x1
    goto -0x48
    iinc 0x4 0x1
    goto -0x7c
    iload_2
    ireturn
.end method

.method static <clinit>()V
    .limit stack 4
    .limit locals 0
    iconst_0
    putstatic h->a:Z
    iconst_5
    newarray 0xa
    dup
    iconst_0
    ldc 199474
    iastore
    dup
    iconst_1
    ldc 155452
    iastore
    dup
    iconst_2
    ldc 183318
    iastore
    dup
    iconst_3
    ldc 99657
    iastore
    dup
    iconst_4
    ldc 150160
    iastore
    putstatic h->a:[I
    iconst_3
    newarray 0x8
    dup
    iconst_0
    bipush 0x5a
    bastore
    dup
    iconst_1
    bipush 0x4c
    bastore
    dup
    iconst_2
    bipush 0x50
    bastore
    putstatic h->a:[B
    iconst_3
    newarray 0x8
    dup
    iconst_0
    bipush 0x59
    bastore
    dup
    iconst_1
    bipush 0x55
    bastore
    dup
    iconst_2
    bipush 0x48
    bastore
    putstatic h->b:[B
    iconst_3
    newarray 0x8
    dup
    iconst_0
    bipush 0x50
    bastore
    dup
    iconst_1
    bipush 0x5a
    bastore
    dup
    iconst_2
    bipush 0x44
    bastore
    putstatic h->c:[B
    iconst_3
    newarray 0x8
    dup
    iconst_0
    bipush 0x41
    bastore
    dup
    iconst_1
    bipush 0x53
    bastore
    dup
    iconst_2
    bipush 0x53
    bastore
    putstatic h->d:[B
    iconst_0
    putstatic h->b:Z
    return
.end method
