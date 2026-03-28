.class public final a
.super java.lang.Object

.field private static final a:[B
.field private static a:Laow2;
.field private static i:Ljava/lang/String;
.field private static j:Ljava/lang/String;
.field public static a:Ljava/lang/String;
.field public static b:Ljava/lang/String;
.field public static c:Ljava/lang/String;
.field public static a:Z
.field public static b:Z
.field public static d:Ljava/lang/String;
.field public static e:Ljava/lang/String;
.field public static a:[Ljava/lang/String;
.field public static b:[Ljava/lang/String;
.field private static k:Ljava/lang/String;
.field private static l:Ljava/lang/String;
.field private static m:Ljava/lang/String;
.field public static f:Ljava/lang/String;
.field public static g:Ljava/lang/String;
.field public static a:I
.field public static c:Z
.field public static d:Z
.field private static n:Ljava/lang/String;
.field public static final a:Ljava/util/Hashtable;
.field private static b:[B
.field private static c:[B
.field private static final d:[B
.field private static e:[B
.field public static c:[Ljava/lang/String;
.field private static f:[B
.field public static h:Ljava/lang/String;

.method public <init>()V
    .limit stack 1
    .limit locals 1
    aload_0
    invokespecial java/lang/Object-><init>()V
    return
.end method

.method public static a(Laow2;)V
    .limit stack 3
    .limit locals 1
    aload_0
    putstatic a->a:Laow2;
    new java/lang/String
    dup
    getstatic i->a:Ljava/lang/Object;
    checkcast [B
    invokespecial java/lang/String-><init>([B)V
    putstatic i->a:Ljava/lang/Object;
    new java/lang/String
    dup
    getstatic a->f:[B
    invokespecial java/lang/String-><init>([B)V
    putstatic a->h:Ljava/lang/String;
    return
.end method

.method public static a()V
    .limit stack 10
    .limit locals 2
    new java/lang/String
    dup
    bipush 0x8
    newarray 0x8
    dup
    iconst_0
    bipush 0x53
    bastore
    dup
    iconst_1
    bipush 0x4d
    bastore
    dup
    iconst_2
    bipush 0x53
    bastore
    dup
    iconst_3
    bipush 0x5f
    bastore
    dup
    iconst_4
    bipush 0x4a
    bastore
    dup
    iconst_5
    bipush 0x41
    bastore
    dup
    bipush 0x6
    bipush 0x56
    bastore
    dup
    bipush 0x7
    bipush 0x41
    bastore
    invokespecial java/lang/String-><init>([B)V
    iconst_0
    invokestatic a->a(Ljava/lang/String;I)I
    ifle 0x7
    iconst_1
    goto 0x4
    iconst_0
    dup
    putstatic a->b:Z
    ifeq 0xc1
    invokestatic a->c()Ljava/lang/String;
    dup
    putstatic a->i:Ljava/lang/String;
    ifnull 0x18
    getstatic a->i:Ljava/lang/String;
    ldc '+'
    invokevirtual java/lang/String->startsWith(Ljava/lang/String;)Z
    ifeq 0xd
    getstatic a->i:Ljava/lang/String;
    iconst_1
    invokevirtual java/lang/String->substring(I)Ljava/lang/String;
    putstatic a->i:Ljava/lang/String;
    ldc 'TAFSMS'
    invokestatic a->b(Ljava/lang/String;)Ljava/lang/String;
    putstatic a->e:Ljava/lang/String;
    ldc '[USER_AGENT]'
    astore_0
    ldc 'SMSUA'
    astore_1
    ldc 'UNLKS'
    invokestatic a->a(Ljava/lang/String;)Ljava/lang/String;
    getstatic a->i:Ljava/lang/String;
    invokestatic a->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    dup
    putstatic a->a:[Ljava/lang/String;
    ifnull 0x15
    getstatic a->a:[Ljava/lang/String;
    iconst_2
    getstatic a->a:[Ljava/lang/String;
    iconst_2
    aaload
    aload_0
    aload_1
    invokestatic a->a(Ljava/lang/String;)Ljava/lang/String;
    invokestatic a->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    aastore
    ldc 'ADDMS'
    invokestatic a->a(Ljava/lang/String;)Ljava/lang/String;
    getstatic a->i:Ljava/lang/String;
    invokestatic a->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    dup
    putstatic a->b:[Ljava/lang/String;
    ifnull 0x5e
    getstatic a->b:[Ljava/lang/String;
    iconst_2
    getstatic a->b:[Ljava/lang/String;
    iconst_2
    aaload
    aload_0
    aload_1
    invokestatic a->a(Ljava/lang/String;)Ljava/lang/String;
    invokestatic a->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    aastore
    new java/lang/String
    dup
    ldc 'ADDCRD'
    invokestatic a->a(Ljava/lang/String;)Ljava/lang/String;
    getstatic i->h:I
    iconst_0
    invokestatic e->a(Ljava/lang/String;IZ)[B
    invokespecial java/lang/String-><init>([B)V
    dup
    astore_0
    invokestatic java/lang/Integer->parseInt(Ljava/lang/String;)I
    putstatic a->a:I
    goto 0x4
    pop
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x22
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x22
    aaload
    ldc '[CRD]'
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    ldc ''
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    getstatic a->a:I
    invokevirtual java/lang/StringBuffer->append(I)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    invokestatic a->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    aastore
    new java/lang/String
    dup
    bipush 0x8
    newarray 0x8
    dup
    iconst_0
    bipush 0x57
    bastore
    dup
    iconst_1
    bipush 0x41
    bastore
    dup
    iconst_2
    bipush 0x50
    bastore
    dup
    iconst_3
    bipush 0x5f
    bastore
    dup
    iconst_4
    bipush 0x4a
    bastore
    dup
    iconst_5
    bipush 0x41
    bastore
    dup
    bipush 0x6
    bipush 0x56
    bastore
    dup
    bipush 0x7
    bipush 0x41
    bastore
    invokespecial java/lang/String-><init>([B)V
    iconst_0
    invokestatic a->a(Ljava/lang/String;Z)Z
    dup
    putstatic a->a:Z
    ifeq 0x1d5
    invokestatic a->b()Ljava/lang/String;
    putstatic a->d:Ljava/lang/String;
    ldc 'UMG'
    dup
    astore_0
    invokestatic a->b(Ljava/lang/String;)Ljava/lang/String;
    dup
    putstatic a->b:Ljava/lang/String;
    ifnull 0x37
    getstatic a->b:Ljava/lang/String;
    new java/lang/String
    dup
    getstatic f->r:[B
    invokespecial java/lang/String-><init>([B)V
    invokevirtual java/lang/String->startsWith(Ljava/lang/String;)Z
    ifne 0x24
    aload_0
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    getstatic a->n:Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    getstatic a->b:Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    invokestatic a->a(Ljava/lang/String;Ljava/lang/String;)V
    aload_0
    invokestatic a->b(Ljava/lang/String;)Ljava/lang/String;
    putstatic a->b:Ljava/lang/String;
    getstatic a->b:Ljava/lang/String;
    putstatic a->c:Ljava/lang/String;
    iconst_0
    putstatic a->d:Z
    invokestatic f->a()Z
    ifne 0x17d
    ldc 'HCOC'
    iconst_0
    invokestatic a->a(Ljava/lang/String;Z)Z
    ifeq 0x174
    getstatic a->b:[Ljava/lang/String;
    ifnull 0x16e
    new java/lang/String
    dup
    getstatic a->a:[B
    invokespecial java/lang/String-><init>([B)V
    dup
    astore_1
    invokestatic a->a(Ljava/lang/String;)Ljava/lang/String;
    ifnonnull 0x7
    aconst_null
    goto 0x15
    new java/lang/String
    dup
    aload_1
    invokestatic a->a(Ljava/lang/String;)Ljava/lang/String;
    getstatic i->h:I
    iconst_0
    invokestatic e->a(Ljava/lang/String;IZ)[B
    invokespecial java/lang/String-><init>([B)V
    astore_0
    getstatic a->a:Ljava/util/Hashtable;
    aload_1
    invokevirtual java/util/Hashtable->remove(Ljava/lang/Object;)Ljava/lang/Object;
    pop
    getstatic a->a:Laow2;
    bipush 0xe
    anewarray java/lang/String
    dup
    iconst_0
    getstatic k->a:[[Ljava/lang/String;
    iconst_1
    aaload
    bipush 0x32
    aaload
    aastore
    dup
    iconst_1
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x17
    aaload
    aastore
    dup
    iconst_2
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x18
    aaload
    aastore
    dup
    iconst_3
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x19
    aaload
    aastore
    dup
    iconst_4
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x1a
    aaload
    aastore
    dup
    iconst_5
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x1b
    aaload
    aastore
    dup
    bipush 0x6
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x1c
    aaload
    aastore
    dup
    bipush 0x7
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x1d
    aaload
    aastore
    dup
    bipush 0x8
    aconst_null
    aastore
    dup
    bipush 0x9
    aconst_null
    aastore
    dup
    bipush 0xa
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x2c
    aaload
    aastore
    dup
    bipush 0xb
    aconst_null
    aastore
    dup
    bipush 0xc
    aconst_null
    aastore
    dup
    bipush 0xd
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x31
    aaload
    aastore
    bipush 0xb
    anewarray java/lang/String
    dup
    iconst_0
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0xe
    aaload
    aastore
    dup
    iconst_1
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0xf
    aaload
    aastore
    dup
    iconst_2
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    iconst_2
    aaload
    aastore
    dup
    iconst_3
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    iconst_3
    aaload
    aastore
    dup
    iconst_4
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x10
    aaload
    aastore
    dup
    iconst_5
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x11
    aaload
    aastore
    dup
    bipush 0x6
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x27
    aaload
    aastore
    dup
    bipush 0x7
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x28
    aaload
    aastore
    dup
    bipush 0x8
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x2d
    aaload
    aastore
    dup
    bipush 0x9
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x2e
    aaload
    aastore
    dup
    bipush 0xa
    getstatic k->a:[[Ljava/lang/String;
    iconst_3
    aaload
    bipush 0x30
    aaload
    aastore
    getstatic a->m:Ljava/lang/String;
    new java/lang/String
    dup
    getstatic a->c:[B
    invokespecial java/lang/String-><init>([B)V
    getstatic a->k:Ljava/lang/String;
    ldc 'HCOCG'
    iconst_0
    invokestatic a->a(Ljava/lang/String;Z)Z
    ldc 'HCOCL'
    iconst_0
    invokestatic a->a(Ljava/lang/String;Z)Z
    iconst_2
    aload_0
    invokestatic e->a(Ljavax/microedition/midlet/MIDlet;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V
    getstatic e->e:Z
    ifeq 0x7
    aconst_null
    putstatic a->d:Ljava/lang/String;
    new java/lang/String
    dup
    iconst_3
    newarray 0x8
    dup
    iconst_0
    bipush 0x59
    bastore
    dup
    iconst_1
    bipush 0x41
    bastore
    dup
    iconst_2
    bipush 0x59
    bastore
    invokespecial java/lang/String-><init>([B)V
    invokestatic a->b(Ljava/lang/String;)Ljava/lang/String;
    invokestatic a->a(Ljava/lang/String;)[Ljava/lang/String;
    putstatic a->c:[Ljava/lang/String;
    return
    pop
    return
.end method

.method public static b()V
    .limit stack 3
    .limit locals 7
    ldc 'SL'
    astore_0
    ldc '/sn8p'  # resource: assets/sn8p.props
    iconst_1
    aload_0
    invokestatic a->a(Ljava/lang/String;ZLjava/lang/String;)V
    goto 0x4
    pop
    invokestatic java/lang/System->gc()V
    ldc2_w 10
    invokestatic a->a(J)V
    new java/util/Vector
    dup
    sipush 0xc8
    invokespecial java/util/Vector-><init>(I)V
    astore_1
    iconst_0
    istore_2
    iload_2
    getstatic k->a:[[Ljava/lang/String;
    arraylength
    if_icmpge 0x60
    iconst_0
    istore_3
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    ldc 'T'
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    iload_2
    invokevirtual java/lang/StringBuffer->append(I)Ljava/lang/StringBuffer;
    ldc '_'
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    iload_3
    invokevirtual java/lang/StringBuffer->append(I)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    astore 0x4
    getstatic a->a:Ljava/util/Hashtable;
    aload 0x4
    invokevirtual java/util/Hashtable->get(Ljava/lang/Object;)Ljava/lang/Object;
    dup
    astore_0
    ifnull 0x17
    getstatic a->a:Ljava/util/Hashtable;
    aload 0x4
    invokevirtual java/util/Hashtable->remove(Ljava/lang/Object;)Ljava/lang/Object;
    pop
    aload_1
    aload_0
    invokevirtual java/util/Vector->addElement(Ljava/lang/Object;)V
    iinc 0x3 0x1
    goto -0x3c
    getstatic k->a:[[Ljava/lang/String;
    iload_2
    aload_1
    invokestatic a->a(Ljava/util/Vector;)[Ljava/lang/String;
    aastore
    aload_1
    invokevirtual java/util/Vector->removeAllElements()V
    invokestatic java/lang/System->gc()V
    ldc2_w 10
    invokestatic a->a(J)V
    iinc 0x2 0x1
    goto -0x62
    ldc 'GAME_ID'
    invokestatic a->a(Ljava/lang/String;)Ljava/lang/String;
    putstatic a->k:Ljava/lang/String;
    ldc 'PROV_ID'
    invokestatic a->a(Ljava/lang/String;)Ljava/lang/String;
    putstatic a->l:Ljava/lang/String;
    ldc 'LANG_ID'
    invokestatic a->a(Ljava/lang/String;)Ljava/lang/String;
    putstatic a->m:Ljava/lang/String;
    ldc 'PROD_ID'
    invokestatic a->a(Ljava/lang/String;)Ljava/lang/String;
    putstatic a->f:Ljava/lang/String;
    ldc 'PORT_ID'
    invokestatic a->a(Ljava/lang/String;)Ljava/lang/String;
    putstatic a->g:Ljava/lang/String;
    ldc 'SP'
    iconst_0
    invokestatic a->a(Ljava/lang/String;Z)Z
    putstatic a->c:Z
    ldc 'DEFFNT'
    iconst_0
    invokestatic a->a(Ljava/lang/String;Z)Z
    putstatic h->a:Z
    invokestatic a->e()V
    ldc 'gmgPlayerX'
    iconst_0
    invokestatic a->a(Ljava/lang/String;I)I
    iconst_1
    if_icmpne 0xec
    iconst_0
    istore_2
    ldc ''
    astore_3
    new java/io/DataInputStream
    dup
    ldc '/GMG/GMG_settings.txt'
    invokestatic a->a(Ljava/lang/String;)Ljava/io/InputStream;
    invokespecial java/io/DataInputStream-><init>(Ljava/io/InputStream;)V
    astore 0x4
    aload 0x4
    iconst_0
    invokestatic a->a(Ljava/io/DataInputStream;Z)Ljava/lang/String;
    dup
    astore_0
    ifnull 0x5f
    aload_0
    bipush 0x3a
    invokevirtual java/lang/String->indexOf(I)I
    dup
    istore_1
    iflt 0x51
    aload_0
    iconst_0
    iload_1
    invokevirtual java/lang/String->substring(II)Ljava/lang/String;
    dup
    astore 0x5
    ldc 'GMG-Mode'
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifeq 0x2a
    aload_0
    iload_1
    iconst_2
    iadd
    aload_0
    invokevirtual java/lang/String->length()I
    invokevirtual java/lang/String->substring(II)Ljava/lang/String;
    dup
    astore 0x6
    ldc 'Off'
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifeq 0x8
    iconst_0
    istore_2
    goto 0xf
    aload 0x6
    ldc 'On'
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifeq 0x5
    iconst_1
    istore_2
    aload 0x5
    ldc 'GMG-URL'
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifeq 0xf
    aload_0
    iload_1
    iconst_2
    iadd
    aload_0
    invokevirtual java/lang/String->length()I
    invokevirtual java/lang/String->substring(II)Ljava/lang/String;
    astore_3
    goto -0x64
    goto 0x4
    pop
    aload 0x4
    invokevirtual java/io/DataInputStream->close()V
    goto 0x4
    pop
    getstatic a->a:Laow2;
    ldc 'GMG-Mode'
    invokevirtual javax/microedition/midlet/MIDlet->getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    dup
    astore_0
    ifnonnull 0x9
    ldc 'GMG-Mode'
    invokestatic java/lang/System->getProperty(Ljava/lang/String;)Ljava/lang/String;
    astore_0
    aload_0
    ifnull 0x35
    aload_0
    ldc 'Off'
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifeq 0x8
    iconst_0
    istore_2
    goto 0x27
    aload_0
    ldc 'On'
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifeq 0x1e
    getstatic a->a:Laow2;
    ldc 'GMG-URL'
    invokevirtual javax/microedition/midlet/MIDlet->getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    dup
    astore_0
    ifnonnull 0x9
    ldc 'GMG-URL'
    invokestatic java/lang/System->getProperty(Ljava/lang/String;)Ljava/lang/String;
    astore_0
    aload_0
    ifnull 0x7
    iconst_1
    istore_2
    aload_0
    astore_3
    iload_2
    ifeq 0x11
    aload_3
    invokevirtual java/lang/String->length()I
    ifle 0xa
    ldc 'UMG'
    aload_3
    invokestatic a->a(Ljava/lang/String;Ljava/lang/String;)V
    return
    ldc 'UMG'
    ldc ''
    invokestatic a->a(Ljava/lang/String;Ljava/lang/String;)V
    return
.end method

.method public static final c()V
    .limit stack 7
    .limit locals 1
    getstatic i->h:I
    iconst_2
    iadd
    putstatic i->h:I
    getstatic a->a:Laow2;
    new java/lang/String
    dup
    bipush 0xe
    newarray 0x8
    dup
    iconst_0
    bipush 0x4d
    bastore
    dup
    iconst_1
    bipush 0x49
    bastore
    dup
    iconst_2
    bipush 0x44
    bastore
    dup
    iconst_3
    bipush 0x6c
    bastore
    dup
    iconst_4
    bipush 0x65
    bastore
    dup
    iconst_5
    bipush 0x74
    bastore
    dup
    bipush 0x6
    bipush 0x2d
    bastore
    dup
    bipush 0x7
    bipush 0x56
    bastore
    dup
    bipush 0x8
    bipush 0x65
    bastore
    dup
    bipush 0x9
    bipush 0x72
    bastore
    dup
    bipush 0xa
    bipush 0x73
    bastore
    dup
    bipush 0xb
    bipush 0x69
    bastore
    dup
    bipush 0xc
    bipush 0x6f
    bastore
    dup
    bipush 0xd
    bipush 0x6e
    bastore
    invokespecial java/lang/String-><init>([B)V
    invokevirtual javax/microedition/midlet/MIDlet->getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    dup
    astore_0
    ifnull 0x7
    aload_0
    putstatic a->j:Ljava/lang/String;
    getstatic a->j:Ljava/lang/String;
    putstatic a->a:Ljava/lang/String;
    getstatic a->l:Ljava/lang/String;
    ifnull 0x26
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    getstatic a->a:Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    ldc ' ('
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    getstatic a->l:Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    ldc ')'
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    putstatic a->a:Ljava/lang/String;
    return
.end method

.method public static d()V
    .limit stack 1
    .limit locals 0
    aconst_null
    putstatic a->a:Laow2;
    return
.end method

.method public static final a(Ljava/io/DataInputStream;Z)Ljava/lang/String;
    .limit stack 2
    .limit locals 3
    iload_1
    ifeq 0x8
    aload_0
    invokevirtual java/io/DataInputStream->readUTF()Ljava/lang/String;
    areturn
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    astore_1
    aload_0
    invokevirtual java/io/DataInputStream->readByte()B
    dup
    istore_2
    bipush 0xd
    if_icmpeq 0xd
    aload_1
    iload_2
    i2c
    invokevirtual java/lang/StringBuffer->append(C)Ljava/lang/StringBuffer;
    pop
    goto -0x12
    aload_0
    invokevirtual java/io/DataInputStream->readByte()B
    pop
    goto 0x4
    pop
    aload_1
    invokevirtual java/lang/StringBuffer->length()I
    ifle 0x8
    aload_1
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    areturn
    aconst_null
    areturn
.end method

.method public static a(Ljava/lang/String;ZLjava/lang/String;)V
    .limit stack 5
    .limit locals 7
    ldc 'SO'
    aload_2
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    istore_1
    ldc 'SL'
    aload_2
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    istore_3
    getstatic a->a:Ljava/util/Hashtable;
    invokevirtual java/util/Hashtable->size()I
    ifne 0x2a
    getstatic a->a:Ljava/util/Hashtable;
    getstatic a->a:Laow2;
    new java/lang/String
    dup
    getstatic f->t:[B
    invokespecial java/lang/String-><init>([B)V
    invokevirtual java/util/Hashtable->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    pop
    getstatic a->a:Ljava/util/Hashtable;
    getstatic i->a:Ljava/lang/Object;
    getstatic i->a:[J
    invokevirtual java/util/Hashtable->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    pop
    getstatic a->a:Ljava/util/Hashtable;
    putstatic f->a:Ljava/util/Hashtable;
    aload_0
    invokestatic a->a(Ljava/lang/String;)Ljava/io/InputStream;
    invokestatic a->a(Ljava/io/InputStream;)Ljava/io/DataInputStream;
    dup
    astore_0
    ifnull 0xae
    aload_0
    iconst_1
    invokestatic a->a(Ljava/io/DataInputStream;Z)Ljava/lang/String;
    dup
    astore 0x4
    ifnull 0x85
    aload 0x4
    bipush 0x3a
    invokevirtual java/lang/String->indexOf(I)I
    dup
    istore 0x5
    iflt 0x75
    aload 0x4
    iconst_0
    iload 0x5
    invokevirtual java/lang/String->substring(II)Ljava/lang/String;
    astore 0x6
    aload 0x4
    iload 0x5
    iconst_2
    iadd
    aload 0x4
    invokevirtual java/lang/String->length()I
    invokevirtual java/lang/String->substring(II)Ljava/lang/String;
    astore 0x5
    aload 0x6
    iconst_0
    invokevirtual java/lang/String->charAt(I)C
    bipush 0x54
    if_icmpne 0x12
    aload 0x6
    iconst_2
    invokevirtual java/lang/String->charAt(I)C
    bipush 0x5f
    if_icmpne 0x7
    iconst_1
    goto 0x4
    iconst_0
    istore 0x4
    iload_1
    ifeq 0xb
    iload 0x4
    ifeq 0x2a
    goto 0x35
    iload 0x4
    ifeq -0x5d
    iload_3
    ifne 0x1e
    aload 0x6
    aload_2
    invokevirtual java/lang/String->endsWith(Ljava/lang/String;)Z
    ifeq -0x6a
    aload 0x6
    iconst_0
    aload 0x6
    invokevirtual java/lang/String->length()I
    aload_2
    invokevirtual java/lang/String->length()I
    isub
    invokevirtual java/lang/String->substring(II)Ljava/lang/String;
    astore 0x6
    getstatic a->a:Ljava/util/Hashtable;
    aload 0x6
    aload 0x5
    invokevirtual java/util/Hashtable->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    pop
    goto -0x8a
    aload_0
    ifnull 0x7
    aload_0
    invokevirtual java/io/DataInputStream->close()V
    return
    pop
    aload_0
    ifnull 0x7
    aload_0
    invokevirtual java/io/DataInputStream->close()V
    return
    astore_1
    aload_0
    ifnull 0x7
    aload_0
    invokevirtual java/io/DataInputStream->close()V
    aload_1
    athrow
    return
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .limit stack 3
    .limit locals 1
    getstatic a->a:Ljava/util/Hashtable;
    aload_0
    invokevirtual java/util/Hashtable->get(Ljava/lang/Object;)Ljava/lang/Object;
    checkcast java/lang/String
    dup
    astore_0
    ifnull 0x27
    aload_0
    getstatic a->n:Ljava/lang/String;
    invokevirtual java/lang/String->startsWith(Ljava/lang/String;)Z
    ifeq 0x1d
    getstatic a->a:Laow2;
    aload_0
    getstatic a->n:Ljava/lang/String;
    invokevirtual java/lang/String->length()I
    invokevirtual java/lang/String->substring(I)Ljava/lang/String;
    invokevirtual java/lang/String->trim()Ljava/lang/String;
    invokevirtual javax/microedition/midlet/MIDlet->getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    astore_0
    goto 0x6
    pop
    aconst_null
    astore_0
    aload_0
    areturn
.end method

.method public static a(Ljava/lang/String;I)I
    .limit stack 5
    .limit locals 2
    aload_0
    getstatic l->a:[Ljava/lang/String;
    iconst_3
    aaload
    if_acmpne 0x20
    getstatic a->a:Laow2;
    getfield aow2->a:Li;
    getfield i->a:Ll;
    dup
    getfield l->d:J
    getstatic a->a:Laow2;
    getfield aow2->a:Li;
    getfield i->a:Ll;
    getfield l->d:J
    lsub
    putfield l->d:J
    goto 0x4
    pop
    aload_0
    invokestatic a->a(Ljava/lang/String;)Ljava/lang/String;
    astore_0
    iload_1
    istore_1
    aload_0
    ifnull 0xc
    aload_0
    invokestatic java/lang/Integer->parseInt(Ljava/lang/String;)I
    istore_1
    goto 0x4
    pop
    iload_1
    ireturn
.end method

.method public static a(Ljava/lang/String;Z)Z
    .limit stack 2
    .limit locals 2
    aload_0
    invokestatic a->a(Ljava/lang/String;)Ljava/lang/String;
    astore_0
    iload_1
    istore_1
    aload_0
    ifnull 0x24
    ldc 'true'
    aload_0
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifne 0x15
    ldc 'TRUE'
    aload_0
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifne 0xc
    ldc '1'
    aload_0
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifeq 0x7
    iconst_1
    goto 0x4
    iconst_0
    istore_1
    iload_1
    ireturn
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .limit stack 3
    .limit locals 2
    getstatic a->a:Ljava/util/Hashtable;
    aload_0
    aload_1
    invokevirtual java/util/Hashtable->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    pop
    return
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .limit stack 2
    .limit locals 1
    aload_0
    invokestatic a->a(Ljava/lang/String;)Ljava/lang/String;
    dup
    astore_0
    ifnull 0xf
    aload_0
    invokevirtual java/lang/String->trim()Ljava/lang/String;
    invokevirtual java/lang/String->length()I
    ifgt 0x5
    aconst_null
    astore_0
    aload_0
    areturn
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .limit stack 5
    .limit locals 7
    aconst_null
    astore_2
    aload_0
    ifnull 0x14
    aload_0
    bipush 0x25
    invokestatic a->a(Ljava/lang/String;C)[Ljava/lang/String;
    dup
    astore_0
    ifnull 0x9
    aload_0
    arraylength
    iconst_4
    if_icmpeq 0x5
    aconst_null
    areturn
    aload_0
    iconst_0
    aaload
    bipush 0x7c
    invokestatic a->a(Ljava/lang/String;C)[Ljava/lang/String;
    astore_3
    aload_0
    iconst_1
    aaload
    bipush 0x7c
    invokestatic a->a(Ljava/lang/String;C)[Ljava/lang/String;
    astore 0x4
    aload_0
    iconst_2
    aaload
    bipush 0x7c
    invokestatic a->a(Ljava/lang/String;C)[Ljava/lang/String;
    astore 0x5
    aload_0
    iconst_3
    aaload
    bipush 0x7c
    invokestatic a->a(Ljava/lang/String;C)[Ljava/lang/String;
    astore_0
    aload_3
    arraylength
    istore 0x6
    aload 0x4
    arraylength
    iload 0x6
    if_icmpne 0x12
    aload 0x5
    arraylength
    iload 0x6
    if_icmpne 0xa
    aload_0
    arraylength
    iload 0x6
    if_icmpeq 0x5
    aconst_null
    areturn
    aload_3
    arraylength
    iconst_1
    if_icmpne 0x40
    aload 0x4
    iconst_0
    aaload
    invokevirtual java/lang/String->length()I
    ifle 0xa2
    aload 0x5
    iconst_0
    aaload
    invokevirtual java/lang/String->length()I
    ifle 0x98
    aload_0
    iconst_0
    aaload
    invokevirtual java/lang/String->length()I
    ifle 0x8f
    iconst_4
    anewarray java/lang/String
    dup
    iconst_0
    aconst_null
    aastore
    dup
    iconst_1
    aload 0x4
    iconst_0
    aaload
    aastore
    dup
    iconst_2
    aload 0x5
    iconst_0
    aaload
    aastore
    dup
    iconst_3
    aload_0
    iconst_0
    aaload
    aastore
    astore_2
    goto 0x6f
    aload_1
    ifnull 0x6b
    aload_1
    invokevirtual java/lang/String->length()I
    ifle 0x64
    iconst_0
    istore 0x6
    iload 0x6
    aload_3
    arraylength
    if_icmpge 0x5a
    aload_1
    aload_3
    iload 0x6
    aaload
    invokevirtual java/lang/String->startsWith(Ljava/lang/String;)Z
    ifeq 0x49
    aload 0x4
    iload 0x6
    aaload
    invokevirtual java/lang/String->length()I
    ifle 0x44
    aload 0x5
    iload 0x6
    aaload
    invokevirtual java/lang/String->length()I
    ifle 0x39
    aload_0
    iload 0x6
    aaload
    invokevirtual java/lang/String->length()I
    ifle 0x2f
    iconst_4
    anewarray java/lang/String
    dup
    iconst_0
    aload_3
    iload 0x6
    aaload
    aastore
    dup
    iconst_1
    aload 0x4
    iload 0x6
    aaload
    aastore
    dup
    iconst_2
    aload 0x5
    iload 0x6
    aaload
    aastore
    dup
    iconst_3
    aload_0
    iload 0x6
    aaload
    aastore
    astore_2
    goto 0x9
    iinc 0x6 0x1
    goto -0x5b
    aload_2
    ifnull 0x39
    getstatic a->a:Laow2;
    ldc 'HC-MP-suffix'
    invokevirtual javax/microedition/midlet/MIDlet->getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    dup
    astore 0x6
    ifnull 0x27
    aload 0x6
    invokevirtual java/lang/String->length()I
    ifle 0x1f
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    aload_2
    iconst_2
    dup2_x1
    aaload
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    ldc ' '
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    aload 0x6
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    aastore
    goto 0x4
    pop
    aload_2
    areturn
.end method

.method public static a(ILjava/lang/String;Lh;)Ljava/util/Vector;
    .limit stack 5
    .limit locals 11
    bipush 0x6
    newarray 0x5
    dup
    iconst_0
    bipush 0x2e
    castore
    dup
    iconst_1
    bipush 0x2d
    castore
    dup
    iconst_2
    bipush 0x2c
    castore
    dup
    iconst_3
    bipush 0x40
    castore
    dup
    iconst_4
    bipush 0x2f
    castore
    dup
    iconst_5
    bipush 0x3a
    castore
    astore_3
    aload_1
    bipush 0x26
    bipush 0xa
    invokevirtual java/lang/String->replace(CC)Ljava/lang/String;
    astore_1
    new java/util/Vector
    dup
    invokespecial java/util/Vector-><init>()V
    astore 0x4
    iload_0
    ifgt 0x6
    aload 0x4
    areturn
    iconst_m1
    istore 0x6
    iconst_0
    istore 0x7
    iload 0x7
    ifne 0xc
    iload 0x6
    iconst_1
    iadd
    istore 0x5
    goto 0xd
    iconst_0
    istore 0x7
    iload 0x6
    istore 0x5
    iinc 0x6 -0x1
    aload_1
    ldc ' '
    iload 0x6
    iconst_1
    iadd
    invokevirtual java/lang/String->indexOf(Ljava/lang/String;I)I
    dup
    istore 0x8
    iconst_m1
    if_icmpeq 0x8
    iload 0x8
    goto 0x7
    aload_1
    invokevirtual java/lang/String->length()I
    istore 0x8
    aload_1
    ldc '\n'
    iload 0x6
    iconst_1
    iadd
    invokevirtual java/lang/String->indexOf(Ljava/lang/String;I)I
    dup
    istore 0x9
    iconst_m1
    if_icmpeq 0x8
    iload 0x9
    goto 0x7
    aload_1
    invokevirtual java/lang/String->length()I
    dup
    istore 0x9
    iload 0x8
    if_icmpge 0x7
    iload 0x9
    istore 0x8
    aload_2
    aload_1
    iload 0x5
    iload 0x8
    invokevirtual java/lang/String->substring(II)Ljava/lang/String;
    invokevirtual h->a(Ljava/lang/String;)I
    dup
    istore 0xa
    iload_0
    if_icmple 0x8d
    iload 0x6
    iload 0x5
    if_icmpge 0x9c
    iconst_0
    istore 0x6
    iload 0x5
    iload 0x6
    iadd
    aload_1
    invokevirtual java/lang/String->length()I
    if_icmpge 0x1c
    aload_2
    aload_1
    iload 0x5
    iload 0x5
    iload 0x6
    iadd
    invokevirtual java/lang/String->substring(II)Ljava/lang/String;
    invokevirtual h->a(Ljava/lang/String;)I
    iload_0
    if_icmpge 0x9
    iinc 0x6 0x1
    goto -0x22
    aload_1
    iload 0x5
    iload 0x5
    iload 0x6
    iadd
    iconst_1
    isub
    invokevirtual java/lang/String->substring(II)Ljava/lang/String;
    astore 0x7
    iload 0x6
    iconst_1
    isub
    istore 0x8
    iload 0x8
    ifle 0x35
    iconst_0
    istore 0x9
    iload 0x9
    aload_3
    arraylength
    if_icmpge 0x25
    aload 0x7
    iload 0x8
    iconst_1
    isub
    invokevirtual java/lang/String->charAt(I)C
    aload_3
    iload 0x9
    caload
    if_icmpne 0xf
    iload 0x8
    iconst_1
    iadd
    istore 0x6
    iconst_0
    istore 0x8
    goto 0x9
    iinc 0x9 0x1
    goto -0x26
    iinc 0x8 -0x1
    goto -0x34
    iload 0x5
    iload 0x6
    iconst_1
    isub
    iadd
    istore 0x6
    iconst_1
    istore 0x7
    goto 0x19
    iload 0x8
    dup
    istore 0x6
    iload 0x9
    if_icmpeq 0xf
    iload 0x6
    aload_1
    invokevirtual java/lang/String->length()I
    if_icmpeq 0x6
    goto -0xf2
    aload 0x4
    aload_1
    iload 0x5
    iload 0x6
    invokevirtual java/lang/String->substring(II)Ljava/lang/String;
    invokevirtual java/util/Vector->addElement(Ljava/lang/Object;)V
    iload 0x6
    aload_1
    invokevirtual java/lang/String->length()I
    if_icmplt -0x120
    goto 0x4
    pop
    aload 0x4
    areturn
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .limit stack 4
    .limit locals 4
    aload_0
    ifnonnull 0x5
    aconst_null
    areturn
    aload_0
    astore_0
    aload_1
    ifnonnull 0x5
    aload_0
    areturn
    aload_2
    ifnonnull 0x6
    ldc ''
    astore_2
    aload_0
    aload_1
    invokevirtual java/lang/String->indexOf(Ljava/lang/String;)I
    dup
    istore_3
    iflt 0x2b
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    aload_0
    iconst_0
    iload_3
    invokevirtual java/lang/String->substring(II)Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    aload_2
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    aload_0
    iload_3
    aload_1
    invokevirtual java/lang/String->length()I
    iadd
    invokevirtual java/lang/String->substring(I)Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    astore_0
    goto -0x2f
    goto 0x4
    pop
    aload_0
    areturn
.end method

.method public static a(Ljava/lang/String;C)[Ljava/lang/String;
    .limit stack 5
    .limit locals 4
    iconst_1
    istore_3
    iconst_0
    istore_2
    iload_2
    aload_0
    invokevirtual java/lang/String->length()I
    if_icmpge 0x15
    aload_0
    iload_2
    invokevirtual java/lang/String->charAt(I)C
    iload_1
    if_icmpne 0x6
    iinc 0x3 0x1
    iinc 0x2 0x1
    goto -0x17
    iload_3
    anewarray java/lang/String
    astore_2
    iinc 0x3 -0x1
    iload_3
    ifle 0x1f
    aload_2
    iload_3
    aload_0
    aload_0
    iload_1
    invokevirtual java/lang/String->lastIndexOf(I)I
    iconst_1
    iadd
    invokevirtual java/lang/String->substring(I)Ljava/lang/String;
    aastore
    aload_0
    iconst_0
    aload_0
    iload_1
    invokevirtual java/lang/String->lastIndexOf(I)I
    invokevirtual java/lang/String->substring(II)Ljava/lang/String;
    astore_0
    goto -0x20
    aload_2
    iconst_0
    aload_0
    aastore
    aload_2
    areturn
.end method

.method public static a(Ljava/lang/String;)Z
    .limit stack 2
    .limit locals 1
    aload_0
    ifnonnull 0x5
    iconst_0
    ireturn
    ldc2_w 20
    invokestatic a->a(J)V
    getstatic a->a:Laow2;
    aload_0
    invokevirtual javax/microedition/midlet/MIDlet->platformRequest(Ljava/lang/String;)Z
    istore_0
    goto 0x6
    pop
    iconst_0
    istore_0
    iload_0
    ireturn
.end method

.method private static b()Ljava/lang/String;
    .limit stack 3
    .limit locals 6
    ldc 'SPRT'
    iconst_0
    invokestatic a->a(Ljava/lang/String;Z)Z
    ifne 0x5
    aconst_null
    areturn
    getstatic a->k:Ljava/lang/String;
    ifnull 0xf
    getstatic a->l:Ljava/lang/String;
    ifnull 0x9
    getstatic a->m:Ljava/lang/String;
    ifnonnull 0x5
    aconst_null
    areturn
    ldc 'SPRTURL'
    invokestatic a->b(Ljava/lang/String;)Ljava/lang/String;
    dup
    astore_0
    ifnonnull 0xe
    new java/lang/String
    dup
    getstatic a->d:[B
    invokespecial java/lang/String-><init>([B)V
    astore_0
    new java/lang/String
    dup
    getstatic a->b:[B
    invokespecial java/lang/String-><init>([B)V
    astore_1
    invokestatic java/lang/System->currentTimeMillis()J
    lstore_2
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    aload_1
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    getstatic a->k:Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    getstatic a->m:Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    getstatic a->l:Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    lload_2
    invokevirtual java/lang/StringBuffer->append(J)Ljava/lang/StringBuffer;
    getstatic a->j:Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    dup
    astore_1
    invokestatic d->a(Ljava/lang/String;)J
    lstore 0x4
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    ldc 'id='
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    getstatic a->k:Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    ldc '&lng='
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    getstatic a->m:Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    ldc '&p='
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    getstatic a->l:Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    ldc '&port='
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    lload 0x4
    invokevirtual java/lang/StringBuffer->append(J)Ljava/lang/StringBuffer;
    ldc '&ts='
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    lload_2
    invokevirtual java/lang/StringBuffer->append(J)Ljava/lang/StringBuffer;
    ldc '&v='
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    getstatic a->j:Ljava/lang/String;
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    dup
    astore_1
    invokestatic b->a(Ljava/lang/String;)Ljava/lang/String;
    astore_1
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    aload_0
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    aload_1
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    areturn
    pop
    aconst_null
    areturn
.end method

.method public static a(Ljava/lang/String;)Ljava/io/InputStream;
    .limit stack 2
    .limit locals 2
    getstatic a->a:Laow2;
    ifnonnull 0x5
    aconst_null
    areturn
    aload_0
    getstatic a->a:Laow2;
    astore_1
    astore_0
    aload_1
    invokevirtual java/lang/Object->getClass()Ljava/lang/Class;
    aload_0
    invokevirtual java/lang/Class->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    areturn
.end method

.method private static c()Ljava/lang/String;
    .limit stack 3
    .limit locals 1
    aconst_null
    astore_0
    new java/lang/String
    dup
    getstatic a->e:[B
    invokespecial java/lang/String-><init>([B)V
    invokestatic java/lang/System->getProperty(Ljava/lang/String;)Ljava/lang/String;
    astore_0
    goto 0x4
    pop
    aload_0
    areturn
.end method

.method public static a(J)V
    .limit stack 4
    .limit locals 2
    lload_0
    ldc2_w 3
    lcmp
    ifge 0x7
    ldc2_w 3
    lstore_0
    lload_0
    invokestatic java/lang/Thread->sleep(J)V
    return
    pop
    return
.end method

.method public static e()V
    .limit stack 2
    .limit locals 0
    invokestatic java/lang/System->gc()V
    ldc2_w 50
    invokestatic a->a(J)V
    return
.end method

.method public static final a(Ljava/io/InputStream;)Ljava/io/DataInputStream;
    .limit stack 5
    .limit locals 4
    ldc 'BUFRD'
    iconst_0
    invokestatic a->a(Ljava/lang/String;Z)Z
    ifeq 0x3d
    sipush 0x400
    newarray 0x8
    astore_1
    new java/io/ByteArrayOutputStream
    dup
    invokespecial java/io/ByteArrayOutputStream-><init>()V
    astore_2
    aload_0
    aload_1
    invokevirtual java/io/InputStream->read([B)I
    dup
    istore_3
    iconst_m1
    if_icmpeq 0xd
    aload_2
    aload_1
    iconst_0
    iload_3
    invokevirtual java/io/ByteArrayOutputStream->write([BII)V
    goto -0x12
    goto 0x4
    pop
    new java/io/DataInputStream
    dup
    new java/io/ByteArrayInputStream
    dup
    aload_2
    invokevirtual java/io/ByteArrayOutputStream->toByteArray()[B
    invokespecial java/io/ByteArrayInputStream-><init>([B)V
    invokespecial java/io/DataInputStream-><init>(Ljava/io/InputStream;)V
    areturn
    new java/io/DataInputStream
    dup
    aload_0
    invokespecial java/io/DataInputStream-><init>(Ljava/io/InputStream;)V
    areturn
.end method

.method public static a(Ljava/util/Vector;)[Ljava/lang/String;
    .limit stack 4
    .limit locals 4
    aload_0
    invokevirtual java/util/Vector->size()I
    dup
    istore_1
    anewarray java/lang/String
    astore_2
    iconst_0
    istore_3
    iload_3
    iload_1
    if_icmpge 0x14
    aload_2
    iload_3
    aload_0
    iload_3
    invokevirtual java/util/Vector->elementAt(I)Ljava/lang/Object;
    checkcast java/lang/String
    aastore
    iinc 0x3 0x1
    goto -0x13
    aload_2
    areturn
.end method

.method public static a(Ljava/util/Vector;)[I
    .limit stack 4
    .limit locals 4
    aload_0
    invokevirtual java/util/Vector->size()I
    dup
    istore_1
    newarray 0xa
    astore_2
    iconst_0
    istore_3
    iload_3
    iload_1
    if_icmpge 0x17
    aload_2
    iload_3
    aload_0
    iload_3
    invokevirtual java/util/Vector->elementAt(I)Ljava/lang/Object;
    checkcast java/lang/Integer
    invokevirtual java/lang/Integer->intValue()I
    iastore
    iinc 0x3 0x1
    goto -0x16
    aload_2
    areturn
.end method

.method public static final a([BZ)Ljava/lang/String;
    .limit stack 5
    .limit locals 2
    aload_0
    ifnonnull 0x6
    ldc ''
    areturn
    aconst_null
    astore_1
    new java/io/DataInputStream
    dup
    new java/io/ByteArrayInputStream
    dup
    aload_0
    invokespecial java/io/ByteArrayInputStream-><init>([B)V
    invokespecial java/io/DataInputStream-><init>(Ljava/io/InputStream;)V
    invokevirtual java/io/DataInputStream->readUTF()Ljava/lang/String;
    astore_1
    goto 0x4
    pop
    aload_1
    areturn
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .limit stack 5
    .limit locals 8
    aconst_null
    astore_1
    aload_0
    getstatic i->h:I
    iconst_1
    invokestatic e->a(Ljava/lang/String;IZ)[B
    astore_0
    new java/io/ByteArrayInputStream
    dup
    aload_0
    invokespecial java/io/ByteArrayInputStream-><init>([B)V
    astore_2
    new java/io/DataInputStream
    dup
    aload_2
    invokespecial java/io/DataInputStream-><init>(Ljava/io/InputStream;)V
    astore_3
    aload_3
    invokevirtual java/io/DataInputStream->readUTF()Ljava/lang/String;
    astore_0
    aload_3
    invokevirtual java/io/DataInputStream->close()V
    aload_2
    invokevirtual java/io/ByteArrayInputStream->close()V
    goto 0x27
    pop
    goto 0x23
    pop
    aload_3
    invokevirtual java/io/DataInputStream->close()V
    aload_2
    invokevirtual java/io/ByteArrayInputStream->close()V
    goto 0x4
    pop
    aconst_null
    areturn
    astore 0x4
    aload_3
    invokevirtual java/io/DataInputStream->close()V
    aload_2
    invokevirtual java/io/ByteArrayInputStream->close()V
    goto 0x4
    pop
    aload 0x4
    athrow
    aload_0
    bipush 0x7c
    invokestatic a->a(Ljava/lang/String;C)[Ljava/lang/String;
    dup
    astore_0
    arraylength
    bipush 0x7
    if_icmple 0x128
    bipush 0x6
    anewarray java/lang/String
    dup
    astore_1
    iconst_0
    aload_0
    iconst_0
    aaload
    aastore
    aload_1
    iconst_1
    aload_0
    iconst_1
    aaload
    aastore
    getstatic a->b:Z
    ifeq 0x13
    aload_1
    iconst_4
    aload_0
    iconst_5
    aaload
    aastore
    aload_1
    iconst_5
    aload_0
    bipush 0x6
    aaload
    aastore
    goto 0xa
    aload_1
    iconst_4
    aload_0
    bipush 0x7
    aaload
    aastore
    aload_0
    arraylength
    bipush 0xa
    if_icmpne 0xc3
    getstatic a->i:Ljava/lang/String;
    dup
    astore_2
    ifnonnull 0x5
    aconst_null
    areturn
    aload_2
    ldc '+'
    invokevirtual java/lang/String->startsWith(Ljava/lang/String;)Z
    ifeq 0x9
    aload_2
    iconst_1
    invokevirtual java/lang/String->substring(I)Ljava/lang/String;
    astore_2
    aload_0
    iconst_3
    aaload
    bipush 0x3b
    invokestatic a->a(Ljava/lang/String;C)[Ljava/lang/String;
    astore_3
    aload_0
    iconst_4
    aaload
    bipush 0x3b
    invokestatic a->a(Ljava/lang/String;C)[Ljava/lang/String;
    astore 0x4
    aload_0
    bipush 0x8
    aaload
    bipush 0x3b
    invokestatic a->a(Ljava/lang/String;C)[Ljava/lang/String;
    astore 0x5
    aload_0
    bipush 0x9
    aaload
    bipush 0x3b
    invokestatic a->a(Ljava/lang/String;C)[Ljava/lang/String;
    astore 0x6
    iconst_0
    istore 0x7
    iload 0x7
    aload 0x5
    arraylength
    if_icmpge 0x74
    aload_2
    aload 0x5
    iload 0x7
    aaload
    invokevirtual java/lang/String->startsWith(Ljava/lang/String;)Z
    ifeq 0x62
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    aload_1
    iconst_1
    dup2_x1
    aaload
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    aload_3
    iload 0x7
    aaload
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    ldc ' ('
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    aload 0x6
    iload 0x7
    aaload
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    ldc ').'
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    aastore
    getstatic a->b:Z
    ifeq 0x20
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    aload_1
    iconst_1
    dup2_x1
    aaload
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    ldc ' '
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    aload_0
    iconst_2
    aaload
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    aastore
    aload_1
    iconst_2
    aload_3
    iload 0x7
    aaload
    aastore
    aload_1
    iconst_3
    aload 0x4
    iload 0x7
    aaload
    aastore
    aload_1
    areturn
    iinc 0x7 0x1
    goto -0x76
    aconst_null
    areturn
    getstatic a->b:Z
    ifeq 0x2c
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    aload_1
    iconst_1
    dup2_x1
    aaload
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    ldc ' '
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    aload_0
    iconst_2
    aaload
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    aastore
    aload_1
    iconst_2
    aload_0
    iconst_3
    aaload
    aastore
    aload_1
    iconst_3
    aload_0
    iconst_4
    aaload
    aastore
    aload_1
    areturn
.end method

.method static a()I
    .limit stack 5
    .limit locals 8
    invokestatic f->a()I
    istore_0
    getstatic a->a:Ljava/util/Hashtable;
    new java/lang/String
    dup
    getstatic h->d:[B
    invokespecial java/lang/String-><init>([B)V
    invokevirtual java/util/Hashtable->get(Ljava/lang/Object;)Ljava/lang/Object;
    checkcast java/lang/String
    dup
    astore_1
    ifnonnull 0x2c
    iload_0
    ineg
    istore_0
    getstatic a->a:Ljava/util/Hashtable;
    new java/lang/String
    dup
    getstatic f->m:[B
    invokespecial java/lang/String-><init>([B)V
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    ldc ''
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    iload_0
    invokevirtual java/lang/StringBuffer->append(I)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    invokevirtual java/util/Hashtable->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    pop
    iload_0
    ireturn
    new java/lang/String
    dup
    getstatic f->m:[B
    invokespecial java/lang/String-><init>([B)V
    astore_2
    getstatic a->a:Laow2;
    aload_2
    invokevirtual javax/microedition/midlet/MIDlet->getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    astore_3
    new java/lang/String
    dup
    aload_1
    getstatic i->g:I
    iconst_0
    invokestatic e->a(Ljava/lang/String;IZ)[B
    invokespecial java/lang/String-><init>([B)V
    astore 0x4
    iconst_0
    istore 0x5
    aload 0x4
    new java/lang/String
    dup
    getstatic f->q:[B
    invokespecial java/lang/String-><init>([B)V
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    dup
    istore_1
    ifne 0x92
    aload_3
    new java/lang/String
    dup
    getstatic f->r:[B
    invokespecial java/lang/String-><init>([B)V
    invokevirtual java/lang/String->startsWith(Ljava/lang/String;)Z
    ifeq 0x83
    aload_3
    new java/lang/String
    dup
    getstatic f->r:[B
    invokespecial java/lang/String-><init>([B)V
    invokevirtual java/lang/String->startsWith(Ljava/lang/String;)Z
    ifeq 0x72
    aload_3
    new java/lang/String
    dup
    getstatic f->r:[B
    invokespecial java/lang/String-><init>([B)V
    invokevirtual java/lang/String->startsWith(Ljava/lang/String;)Z
    ifeq 0xc
    aload_3
    getstatic f->r:[B
    arraylength
    invokevirtual java/lang/String->substring(I)Ljava/lang/String;
    astore_3
    aload_3
    new java/lang/String
    dup
    getstatic f->s:[B
    invokespecial java/lang/String-><init>([B)V
    invokevirtual java/lang/String->startsWith(Ljava/lang/String;)Z
    ifeq 0xc
    aload_3
    getstatic f->s:[B
    arraylength
    invokevirtual java/lang/String->substring(I)Ljava/lang/String;
    astore_3
    aload_3
    bipush 0x2f
    invokestatic a->a(Ljava/lang/String;C)[Ljava/lang/String;
    astore 0x6
    aload 0x4
    bipush 0x24
    invokestatic a->a(Ljava/lang/String;C)[Ljava/lang/String;
    astore 0x4
    iconst_0
    istore 0x7
    iload 0x7
    aload 0x4
    arraylength
    if_icmpge 0x1d
    aload 0x6
    iconst_0
    aaload
    aload 0x4
    iload 0x7
    aaload
    invokevirtual java/lang/String->indexOf(Ljava/lang/String;)I
    iflt 0x8
    iconst_1
    istore_1
    goto 0xe
    iinc 0x7 0x1
    goto -0x1f
    goto 0x5
    iload_0
    ireturn
    aload_3
    invokevirtual java/lang/String->length()I
    newarray 0x8
    astore 0x6
    iconst_0
    istore 0x4
    iconst_0
    istore 0x7
    iload 0x4
    aload 0x6
    arraylength
    if_icmpge 0x36
    iload 0x7
    aload_2
    invokevirtual java/lang/String->length()I
    if_icmplt 0x6
    iconst_0
    istore 0x7
    aload 0x6
    iload 0x4
    aload_2
    iload 0x7
    invokevirtual java/lang/String->charAt(I)C
    aload_3
    iload 0x4
    invokevirtual java/lang/String->charAt(I)C
    iand
    i2b
    bastore
    aload 0x6
    iload 0x4
    baload
    ifne 0x6
    iinc 0x5 0x1
    iinc 0x4 0x1
    iinc 0x7 0x1
    goto -0x38
    iload_1
    ifeq 0xe
    iload 0x5
    aload_2
    invokevirtual java/lang/String->length()I
    imul
    ineg
    iload_0
    isub
    istore_0
    getstatic a->a:Ljava/util/Hashtable;
    aload_2
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    ldc ''
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    iload_0
    invokevirtual java/lang/StringBuffer->append(I)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    invokevirtual java/util/Hashtable->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    pop
    goto 0x4
    pop
    iload_0
    ireturn
.end method

.method public static a()Ljava/lang/String;
    .limit stack 4
    .limit locals 2
    ldc 'a'  # resource: assets/a.props
    astore_0
    iconst_0
    istore_1
    iload_1
    getstatic l->a:[Ljava/lang/String;
    arraylength
    if_icmpge 0x2e
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    aload_0
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    getstatic l->a:[Ljava/lang/String;
    iload_1
    aaload
    iload_1
    iconst_3
    iadd
    invokestatic a->a(Ljava/lang/String;I)I
    ifle 0x7
    iconst_1
    goto 0x4
    iconst_0
    invokevirtual java/lang/StringBuffer->append(I)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    astore_0
    iinc 0x1 0x1
    goto -0x30
    aload_0
    areturn
.end method

.method static <clinit>()V
    .limit stack 4
    .limit locals 0
    iconst_5
    newarray 0x8
    dup
    iconst_0
    bipush 0x59
    bastore
    dup
    iconst_1
    bipush 0x43
    bastore
    dup
    iconst_2
    bipush 0x50
    bastore
    dup
    iconst_3
    bipush 0x52
    bastore
    dup
    iconst_4
    bipush 0x50
    bastore
    putstatic a->a:[B
    aconst_null
    putstatic a->a:Laow2;
    aconst_null
    putstatic a->i:Ljava/lang/String;
    ldc '1.0.0'
    dup
    putstatic a->j:Ljava/lang/String;
    putstatic a->a:Ljava/lang/String;
    aconst_null
    putstatic a->b:Ljava/lang/String;
    aconst_null
    putstatic a->c:Ljava/lang/String;
    iconst_0
    putstatic a->a:Z
    iconst_0
    putstatic a->b:Z
    aconst_null
    putstatic a->d:Ljava/lang/String;
    aconst_null
    putstatic a->e:Ljava/lang/String;
    aconst_null
    putstatic a->a:[Ljava/lang/String;
    aconst_null
    putstatic a->b:[Ljava/lang/String;
    aconst_null
    putstatic a->k:Ljava/lang/String;
    aconst_null
    putstatic a->l:Ljava/lang/String;
    aconst_null
    putstatic a->m:Ljava/lang/String;
    aconst_null
    putstatic a->f:Ljava/lang/String;
    aconst_null
    putstatic a->g:Ljava/lang/String;
    iconst_1
    putstatic a->a:I
    iconst_0
    putstatic a->c:Z
    iconst_0
    putstatic a->d:Z
    ldc 'JADPRP-'
    putstatic a->n:Ljava/lang/String;
    new java/util/Hashtable
    dup
    invokespecial java/util/Hashtable-><init>()V
    putstatic a->a:Ljava/util/Hashtable;
    bipush 0x9
    newarray 0x8
    dup
    iconst_0
    bipush 0x41
    bastore
    dup
    iconst_1
    bipush 0x72
    bastore
    dup
    iconst_2
    bipush 0x74
    bastore
    dup
    iconst_3
    bipush 0x4f
    bastore
    dup
    iconst_4
    bipush 0x66
    bastore
    dup
    iconst_5
    bipush 0x57
    bastore
    dup
    bipush 0x6
    bipush 0x61
    bastore
    dup
    bipush 0x7
    bipush 0x72
    bastore
    dup
    bipush 0x8
    bipush 0x32
    bastore
    putstatic a->b:[B
    bipush 0x9
    newarray 0x8
    dup
    iconst_0
    bipush 0x61
    bastore
    dup
    iconst_1
    bipush 0x72
    bastore
    dup
    iconst_2
    bipush 0x74
    bastore
    dup
    iconst_3
    bipush 0x6f
    bastore
    dup
    iconst_4
    bipush 0x66
    bastore
    dup
    iconst_5
    bipush 0x77
    bastore
    dup
    bipush 0x6
    bipush 0x61
    bastore
    dup
    bipush 0x7
    bipush 0x72
    bastore
    dup
    bipush 0x8
    bipush 0x32
    bastore
    putstatic a->c:[B
    bipush 0x20
    newarray 0x8
    dup
    iconst_0
    bipush 0x68
    bastore
    dup
    iconst_1
    bipush 0x74
    bastore
    dup
    iconst_2
    bipush 0x74
    bastore
    dup
    iconst_3
    bipush 0x70
    bastore
    dup
    iconst_4
    bipush 0x3a
    bastore
    dup
    iconst_5
    bipush 0x2f
    bastore
    dup
    bipush 0x6
    bipush 0x2f
    bastore
    dup
    bipush 0x7
    bipush 0x75
    bastore
    dup
    bipush 0x8
    bipush 0x70
    bastore
    dup
    bipush 0x9
    bipush 0x64
    bastore
    dup
    bipush 0xa
    bipush 0x61
    bastore
    dup
    bipush 0xb
    bipush 0x74
    bastore
    dup
    bipush 0xc
    bipush 0x65
    bastore
    dup
    bipush 0xd
    bipush 0x2e
    bastore
    dup
    bipush 0xe
    bipush 0x68
    bastore
    dup
    bipush 0xf
    bipush 0x65
    bastore
    dup
    bipush 0x10
    bipush 0x72
    bastore
    dup
    bipush 0x11
    bipush 0x6f
    bastore
    dup
    bipush 0x12
    bipush 0x63
    bastore
    dup
    bipush 0x13
    bipush 0x72
    bastore
    dup
    bipush 0x14
    bipush 0x61
    bastore
    dup
    bipush 0x15
    bipush 0x66
    bastore
    dup
    bipush 0x16
    bipush 0x74
    bastore
    dup
    bipush 0x17
    bipush 0x2e
    bastore
    dup
    bipush 0x18
    bipush 0x63
    bastore
    dup
    bipush 0x19
    bipush 0x6f
    bastore
    dup
    bipush 0x1a
    bipush 0x6d
    bastore
    dup
    bipush 0x1b
    bipush 0x2f
    bastore
    dup
    bipush 0x1c
    bipush 0x6a
    bastore
    dup
    bipush 0x1d
    bipush 0x61
    bastore
    dup
    bipush 0x1e
    bipush 0x64
    bastore
    dup
    bipush 0x1f
    bipush 0x2f
    bastore
    putstatic a->d:[B
    bipush 0x1b
    newarray 0x8
    dup
    iconst_0
    bipush 0x77
    bastore
    dup
    iconst_1
    bipush 0x69
    bastore
    dup
    iconst_2
    bipush 0x72
    bastore
    dup
    iconst_3
    bipush 0x65
    bastore
    dup
    iconst_4
    bipush 0x6c
    bastore
    dup
    iconst_5
    bipush 0x65
    bastore
    dup
    bipush 0x6
    bipush 0x73
    bastore
    dup
    bipush 0x7
    bipush 0x73
    bastore
    dup
    bipush 0x8
    bipush 0x2e
    bastore
    dup
    bipush 0x9
    bipush 0x6d
    bastore
    dup
    bipush 0xa
    bipush 0x65
    bastore
    dup
    bipush 0xb
    bipush 0x73
    bastore
    dup
    bipush 0xc
    bipush 0x73
    bastore
    dup
    bipush 0xd
    bipush 0x61
    bastore
    dup
    bipush 0xe
    bipush 0x67
    bastore
    dup
    bipush 0xf
    bipush 0x69
    bastore
    dup
    bipush 0x10
    bipush 0x6e
    bastore
    dup
    bipush 0x11
    bipush 0x67
    bastore
    dup
    bipush 0x12
    bipush 0x2e
    bastore
    dup
    bipush 0x13
    bipush 0x73
    bastore
    dup
    bipush 0x14
    bipush 0x6d
    bastore
    dup
    bipush 0x15
    bipush 0x73
    bastore
    dup
    bipush 0x16
    bipush 0x2e
    bastore
    dup
    bipush 0x17
    bipush 0x73
    bastore
    dup
    bipush 0x18
    bipush 0x6d
    bastore
    dup
    bipush 0x19
    bipush 0x73
    bastore
    dup
    bipush 0x1a
    bipush 0x63
    bastore
    putstatic a->e:[B
    aconst_null
    putstatic a->c:[Ljava/lang/String;
    iconst_4
    newarray 0x8
    dup
    iconst_0
    bipush 0x55
    bastore
    dup
    iconst_1
    bipush 0x4d
    bastore
    dup
    iconst_2
    bipush 0x47
    bastore
    dup
    iconst_3
    bipush 0x44
    bastore
    putstatic a->f:[B
    aconst_null
    putstatic a->h:Ljava/lang/String;
    return
.end method
