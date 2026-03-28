.class public final c
.super java.lang.Object
.implements java.lang.Runnable
.implements javax.microedition.media.PlayerListener

.field private static a:I
.field private static b:I
.field private static c:I
.field private static d:I
.field private static e:I
.field private static f:I
.field private static b:Z
.field private a:Ljava/lang/Thread;
.field private c:Z
.field private a:[Ljavax/microedition/media/Player;
.field private a:Ljavax/microedition/media/Player;
.field private b:Ljavax/microedition/media/Player;
.field private g:I
.field private d:Z
.field private static e:Z
.field private static f:Z
.field public static a:Z
.field private a:Ljava/lang/Object;

.method public <init>([Ljava/lang/String;I)V
    .limit stack 6
    .limit locals 3
    aload_0
    aconst_null
    aconst_null
    aload_1
    iload_2
    iconst_0
    invokespecial c-><init>(Ljavax/microedition/midlet/MIDlet;Ljavax/microedition/lcdui/Canvas;[Ljava/lang/String;IZ)V
    return
.end method

.method private <init>(Ljavax/microedition/midlet/MIDlet;Ljavax/microedition/lcdui/Canvas;[Ljava/lang/String;IZ)V
    .limit stack 4
    .limit locals 6
    aload_0
    invokespecial java/lang/Object-><init>()V
    aload_0
    iconst_0
    putfield c->c:Z
    aload_0
    iconst_1
    putfield c->g:I
    aload_0
    new java/lang/Object
    dup
    invokespecial java/lang/Object-><init>()V
    putfield c->a:Ljava/lang/Object;
    iload 0x4
    dup
    putstatic c->f:I
    iflt 0xc
    getstatic c->f:I
    getstatic c->e:I
    if_icmple 0x7
    iconst_0
    putstatic c->f:I
    iconst_0
    putstatic c->b:Z
    aload_0
    aload_3
    arraylength
    anewarray javax/microedition/media/Player
    putfield c->a:[Ljavax/microedition/media/Player;
    iconst_0
    istore_1
    iload_1
    aload_3
    arraylength
    if_icmpge 0x15
    aload_0
    getfield c->a:[Ljavax/microedition/media/Player;
    iload_1
    aload_3
    iload_1
    aaload
    invokestatic c->a(Ljava/lang/String;)Ljavax/microedition/media/Player;
    aastore
    iinc 0x1 0x1
    goto -0x15
    getstatic c->f:I
    getstatic c->d:I
    if_icmpge 0x23
    aload_0
    iconst_1
    putfield c->d:Z
    aload_0
    new java/lang/Thread
    dup
    aload_0
    invokespecial java/lang/Thread-><init>(Ljava/lang/Runnable;)V
    putfield c->a:Ljava/lang/Thread;
    aload_0
    getfield c->a:Ljava/lang/Thread;
    iconst_1
    invokevirtual java/lang/Thread->setPriority(I)V
    aload_0
    getfield c->a:Ljava/lang/Thread;
    invokevirtual java/lang/Thread->start()V
    return
.end method

.method private c()V
    .limit stack 2
    .limit locals 3
    aload_0
    getfield c->a:Ljava/lang/Object;
    dup
    astore_1
    monitorentry
    aload_0
    getfield c->a:Ljava/lang/Object;
    invokevirtual java/lang/Object->notify()V
    aload_1
    monitorexit
    return
    astore_2
    aload_1
    monitorexit
    aload_2
    athrow
.end method

.method public final run()V
    .limit stack 2
    .limit locals 3
    aload_0
    getfield c->d:Z
    ifeq 0x57
    aload_0
    getfield c->c:Z
    ifne 0x27
    aload_0
    getfield c->a:Ljava/lang/Object;
    dup
    astore_1
    monitorentry
    aload_0
    getfield c->a:Ljava/lang/Object;
    invokevirtual java/lang/Object->wait()V
    goto 0x4
    pop
    aload_1
    monitorexit
    goto 0x8
    astore_2
    aload_1
    monitorexit
    aload_2
    athrow
    aload_0
    getfield c->d:Z
    ifne 0x4
    return
    aload_0
    getfield c->c:Z
    ifeq 0x18
    aload_0
    aload_0
    getfield c->b:Ljavax/microedition/media/Player;
    invokespecial c->a(Ljavax/microedition/media/Player;)Z
    ifeq 0xd
    aload_0
    iconst_0
    putfield c->c:Z
    aload_0
    aconst_null
    putfield c->b:Ljavax/microedition/media/Player;
    ldc2_w 10
    invokestatic java/lang/Thread->sleep(J)V
    goto -0x54
    pop
    goto -0x58
    return
.end method

.method public final playerUpdate(Ljavax/microedition/media/Player;Ljava/lang/String;Ljava/lang/Object;)V
    .limit stack 3
    .limit locals 4
    aload_2
    ldc 'endOfMedia'
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifne 0xc
    aload_2
    ldc 'stopped'
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifeq 0x3e
    aload_0
    getfield c->g:I
    iconst_m1
    if_icmpeq 0x11
    aload_0
    dup
    getfield c->g:I
    iconst_1
    isub
    dup_x1
    putfield c->g:I
    ifle 0x28
    aload_0
    aload_1
    putfield c->b:Ljavax/microedition/media/Player;
    aload_0
    iconst_1
    putfield c->c:Z
    getstatic c->f:I
    getstatic c->c:I
    if_icmple 0xf
    aload_0
    aload_0
    getfield c->b:Ljavax/microedition/media/Player;
    invokespecial c->a(Ljavax/microedition/media/Player;)Z
    pop
    goto 0x9
    aload_0
    invokespecial c->c()V
    return
    pop
    return
.end method

.method private static a(Ljava/lang/String;)Ljavax/microedition/media/Player;
    .limit stack 4
    .limit locals 5
    aconst_null
    astore_1
    iconst_0
    istore_2
    iconst_5
    anewarray java/lang/String
    dup
    iconst_0
    ldc 'audio/midi'
    aastore
    dup
    iconst_1
    ldc 'audio/mmf'
    aastore
    dup
    iconst_2
    ldc 'audio/mpeg'
    aastore
    dup
    iconst_3
    ldc 'audio/amr'
    aastore
    dup
    iconst_4
    ldc 'audio/x-wav'
    aastore
    astore_3
    iconst_5
    anewarray java/lang/String
    dup
    iconst_0
    ldc 'm'
    aastore
    dup
    iconst_1
    ldc 'f'
    aastore
    dup
    iconst_2
    ldc '3'
    aastore
    dup
    iconst_3
    ldc 'a'  # resource: assets/a.props
    aastore
    dup
    iconst_4
    ldc 'w'
    aastore
    astore 0x4
    getstatic c->e:Z
    ifeq 0x43
    iconst_5
    anewarray java/lang/String
    dup
    iconst_0
    ldc 'audio/mpeg'
    aastore
    dup
    iconst_1
    ldc 'audio/midi'
    aastore
    dup
    iconst_2
    ldc 'audio/amr'
    aastore
    dup
    iconst_3
    ldc 'audio/x-wav'
    aastore
    dup
    iconst_4
    ldc 'audio/mmf'
    aastore
    astore_3
    iconst_5
    anewarray java/lang/String
    dup
    iconst_0
    ldc '3'
    aastore
    dup
    iconst_1
    ldc 'm'
    aastore
    dup
    iconst_2
    ldc 'a'  # resource: assets/a.props
    aastore
    dup
    iconst_3
    ldc 'w'
    aastore
    dup
    iconst_4
    ldc 'f'
    aastore
    astore 0x4
    goto 0x46
    getstatic c->f:Z
    ifeq 0x40
    iconst_5
    anewarray java/lang/String
    dup
    iconst_0
    ldc 'audio/amr'
    aastore
    dup
    iconst_1
    ldc 'audio/midi'
    aastore
    dup
    iconst_2
    ldc 'audio/x-wav'
    aastore
    dup
    iconst_3
    ldc 'audio/mmf'
    aastore
    dup
    iconst_4
    ldc 'audio/mpeg'
    aastore
    astore_3
    iconst_5
    anewarray java/lang/String
    dup
    iconst_0
    ldc 'a'  # resource: assets/a.props
    aastore
    dup
    iconst_1
    ldc 'm'
    aastore
    dup
    iconst_2
    ldc 'w'
    aastore
    dup
    iconst_3
    ldc 'f'
    aastore
    dup
    iconst_4
    ldc '3'
    aastore
    astore 0x4
    aload_1
    ifnonnull 0x4d
    iload_2
    aload_3
    arraylength
    if_icmpge 0x47
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    aload_0
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    aload 0x4
    iload_2
    aaload
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    invokestatic a->a(Ljava/lang/String;)Ljava/io/InputStream;
    aload_3
    iload_2
    aaload
    invokestatic javax/microedition/media/Manager->createPlayer(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/microedition/media/Player;
    astore_1
    getstatic c->f:I
    ifeq 0xc
    getstatic c->f:I
    getstatic c->e:I
    if_icmpne 0x9
    aload_1
    invokeinterface javax/microedition/media/Player->prefetch()V
    aload_1
    invokeinterface javax/microedition/media/Player->realize()V
    goto 0x4
    pop
    iinc 0x2 0x1
    goto -0x4b
    aload_1
    areturn
.end method

.method public final a()Z
    .limit stack 2
    .limit locals 1
    aload_0
    getfield c->a:Ljavax/microedition/media/Player;
    ifnull 0x1e
    aload_0
    getfield c->g:I
    iconst_m1
    if_icmpne 0x5
    iconst_1
    ireturn
    aload_0
    getfield c->a:Ljavax/microedition/media/Player;
    invokeinterface javax/microedition/media/Player->getState()I
    sipush 0x190
    if_icmpne 0x5
    iconst_1
    ireturn
    iconst_0
    ireturn
.end method

.method public final a(II)I
    .limit stack 3
    .limit locals 3
    getstatic c->a:Z
    ifeq 0xc
    aload_0
    getfield c->a:[Ljavax/microedition/media/Player;
    iconst_0
    aaload
    ifnonnull 0x5
    iconst_m1
    ireturn
    getstatic c->f:I
    getstatic c->b:I
    if_icmpne 0x7
    aload_0
    invokevirtual c->a()V
    aload_0
    iconst_m1
    putfield c->g:I
    aload_0
    aload_0
    getfield c->a:[Ljavax/microedition/media/Player;
    iconst_0
    aaload
    putfield c->b:Ljavax/microedition/media/Player;
    aload_0
    iconst_1
    putfield c->c:Z
    getstatic c->f:I
    getstatic c->c:I
    if_icmple 0x10
    aload_0
    aload_0
    getfield c->b:Ljavax/microedition/media/Player;
    invokespecial c->a(Ljavax/microedition/media/Player;)Z
    ifne 0x9
    iconst_m1
    ireturn
    aload_0
    invokespecial c->c()V
    iconst_0
    ireturn
.end method

.method private a(Ljavax/microedition/media/Player;)Z
    .limit stack 3
    .limit locals 2
    getstatic c->b:Z
    ifne 0x1b
    aload_0
    getfield c->a:Ljavax/microedition/media/Player;
    ifnull 0x14
    aload_0
    getfield c->a:Ljavax/microedition/media/Player;
    invokeinterface javax/microedition/media/Player->getState()I
    sipush 0x190
    if_icmpne 0x5
    iconst_0
    ireturn
    getstatic c->f:I
    getstatic c->b:I
    if_icmpne 0x18
    aload_1
    invokeinterface javax/microedition/media/Player->prefetch()V
    goto 0x6b
    pop
    aload_0
    aload_1
    putfield c->a:Ljavax/microedition/media/Player;
    aload_0
    invokevirtual c->a()V
    iconst_0
    ireturn
    getstatic c->f:I
    getstatic c->c:I
    if_icmpeq 0xc
    getstatic c->f:I
    getstatic c->d:I
    if_icmpne 0x4d
    aload_1
    aload_0
    getfield c->a:Ljavax/microedition/media/Player;
    if_acmpeq 0x1c
    aload_0
    invokevirtual c->a()V
    aload_1
    invokeinterface javax/microedition/media/Player->prefetch()V
    goto 0x38
    pop
    aload_0
    aload_1
    putfield c->a:Ljavax/microedition/media/Player;
    aload_0
    invokevirtual c->a()V
    iconst_0
    ireturn
    aload_1
    invokeinterface javax/microedition/media/Player->getState()I
    sipush 0x190
    if_icmpne 0x20
    aload_1
    invokeinterface javax/microedition/media/Player->stop()V
    aload_1
    lconst_0
    invokeinterface javax/microedition/media/Player->setMediaTime(J)J
    pop2
    goto 0xf
    pop
    aload_0
    aload_1
    putfield c->a:Ljavax/microedition/media/Player;
    aload_0
    invokevirtual c->a()V
    iconst_0
    ireturn
    getstatic c->f:I
    getstatic c->b:I
    if_icmpeq 0xc
    getstatic c->f:I
    getstatic c->c:I
    if_icmpne 0x28
    aload_0
    getfield c->g:I
    iconst_m1
    if_icmpeq 0xb
    aload_0
    getfield c->g:I
    iconst_1
    if_icmple 0x11
    aload_1
    aload_0
    invokeinterface javax/microedition/media/Player->removePlayerListener(Ljavax/microedition/media/PlayerListener;)V
    aload_1
    aload_0
    invokeinterface javax/microedition/media/Player->addPlayerListener(Ljavax/microedition/media/PlayerListener;)V
    goto 0x11
    pop
    goto 0xd
    aload_1
    aload_0
    getfield c->g:I
    invokeinterface javax/microedition/media/Player->setLoopCount(I)V
    aload_1
    invokeinterface javax/microedition/media/Player->start()V
    aload_0
    aload_1
    putfield c->a:Ljavax/microedition/media/Player;
    goto 0xf
    pop
    aload_0
    aload_1
    putfield c->a:Ljavax/microedition/media/Player;
    aload_0
    invokevirtual c->a()V
    iconst_0
    ireturn
    iconst_1
    ireturn
.end method

.method public final a()V
    .limit stack 2
    .limit locals 1
    aload_0
    iconst_0
    putfield c->c:Z
    aload_0
    getfield c->a:Ljavax/microedition/media/Player;
    ifnull 0x78
    aload_0
    iconst_1
    putfield c->g:I
    getstatic c->f:I
    getstatic c->b:I
    if_icmpeq 0xc
    getstatic c->f:I
    getstatic c->c:I
    if_icmpne 0xd
    aload_0
    getfield c->a:Ljavax/microedition/media/Player;
    aload_0
    invokeinterface javax/microedition/media/Player->removePlayerListener(Ljavax/microedition/media/PlayerListener;)V
    aload_0
    getfield c->a:Ljavax/microedition/media/Player;
    invokeinterface javax/microedition/media/Player->getState()I
    sipush 0x190
    if_icmpne 0x10
    aload_0
    getfield c->a:Ljavax/microedition/media/Player;
    invokeinterface javax/microedition/media/Player->stop()V
    goto 0x4
    pop
    getstatic c->f:I
    getstatic c->b:I
    if_icmpeq 0x15
    getstatic c->f:I
    getstatic c->c:I
    if_icmpeq 0xc
    getstatic c->f:I
    getstatic c->d:I
    if_icmpne 0x1b
    aload_0
    getfield c->a:Ljavax/microedition/media/Player;
    invokeinterface javax/microedition/media/Player->getState()I
    sipush 0x12c
    if_icmpne 0xc
    aload_0
    getfield c->a:Ljavax/microedition/media/Player;
    invokeinterface javax/microedition/media/Player->deallocate()V
    aload_0
    aconst_null
    putfield c->a:Ljavax/microedition/media/Player;
    return
.end method

.method public final b()V
    .limit stack 3
    .limit locals 2
    aload_0
    invokevirtual c->a()V
    aload_0
    iconst_0
    putfield c->d:Z
    iconst_0
    istore_1
    iload_1
    aload_0
    getfield c->a:[Ljavax/microedition/media/Player;
    arraylength
    if_icmpge 0x81
    aload_0
    getfield c->a:[Ljavax/microedition/media/Player;
    iload_1
    aaload
    ifnull 0x6b
    aload_0
    getfield c->a:[Ljavax/microedition/media/Player;
    iload_1
    aaload
    invokeinterface javax/microedition/media/Player->getState()I
    sipush 0x190
    if_icmpne 0xe
    aload_0
    getfield c->a:[Ljavax/microedition/media/Player;
    iload_1
    aaload
    invokeinterface javax/microedition/media/Player->stop()V
    aload_0
    getfield c->a:[Ljavax/microedition/media/Player;
    iload_1
    aaload
    invokeinterface javax/microedition/media/Player->getState()I
    sipush 0x12c
    if_icmpne 0xe
    aload_0
    getfield c->a:[Ljavax/microedition/media/Player;
    iload_1
    aaload
    invokeinterface javax/microedition/media/Player->deallocate()V
    aload_0
    getfield c->a:[Ljavax/microedition/media/Player;
    iload_1
    aaload
    invokeinterface javax/microedition/media/Player->getState()I
    sipush 0xc8
    if_icmpeq 0x13
    aload_0
    getfield c->a:[Ljavax/microedition/media/Player;
    iload_1
    aaload
    invokeinterface javax/microedition/media/Player->getState()I
    bipush 0x64
    if_icmpne 0xe
    aload_0
    getfield c->a:[Ljavax/microedition/media/Player;
    iload_1
    aaload
    invokeinterface javax/microedition/media/Player->close()V
    goto 0x4
    pop
    aload_0
    getfield c->a:[Ljavax/microedition/media/Player;
    iload_1
    aconst_null
    aastore
    iinc 0x1 0x1
    goto -0x84
    aload_0
    aconst_null
    putfield c->a:Ljavax/microedition/media/Player;
    aload_0
    aconst_null
    putfield c->b:Ljavax/microedition/media/Player;
    aload_0
    aconst_null
    putfield c->a:[Ljavax/microedition/media/Player;
    aload_0
    getfield c->a:Ljava/lang/Thread;
    ifnull 0x15
    aload_0
    iconst_0
    putfield c->c:Z
    aload_0
    invokespecial c->c()V
    goto 0x4
    pop
    aload_0
    aconst_null
    putfield c->a:Ljava/lang/Thread;
    return
.end method

.method public final a(Ljava/lang/String;)V
    .limit stack 2
    .limit locals 2
    aload_1
    ldc 'NORM_PRIORITY'
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifeq 0x8
    iconst_5
    istore_1
    goto 0x21
    aload_1
    ldc 'MIN_PRIORITY'
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifeq 0x8
    iconst_1
    istore_1
    goto 0x13
    aload_1
    ldc 'MAX_PRIORITY'
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifeq 0x9
    bipush 0xa
    istore_1
    goto 0x4
    return
    aload_0
    getfield c->a:Ljava/lang/Thread;
    ifnull 0xb
    aload_0
    getfield c->a:Ljava/lang/Thread;
    iload_1
    invokevirtual java/lang/Thread->setPriority(I)V
    return
.end method

.method public final a(I)V
    .limit stack 3
    .limit locals 3
    iload_1
    ifne 0x8
    aload_0
    invokevirtual c->a()V
    return
    aload_0
    getfield c->a:[Ljavax/microedition/media/Player;
    ifnull 0xc
    aload_0
    getfield c->a:[Ljavax/microedition/media/Player;
    iconst_0
    aaload
    ifnonnull 0x4
    return
    aload_0
    getfield c->a:[Ljavax/microedition/media/Player;
    iconst_0
    aaload
    ldc 'VolumeControl'
    invokeinterface javax/microedition/media/Controllable->getControl(Ljava/lang/String;)Ljavax/microedition/media/Control;
    checkcast javax/microedition/media/control/VolumeControl
    dup
    astore_2
    iload_1
    bipush 0xa
    imul
    invokeinterface javax/microedition/media/control/VolumeControl->setLevel(I)I
    pop
    return
    pop
    return
.end method

.method static <clinit>()V
    .limit stack 2
    .limit locals 2
    iconst_0
    putstatic c->a:I
    iconst_1
    putstatic c->b:I
    iconst_2
    putstatic c->c:I
    iconst_3
    putstatic c->d:I
    iconst_4
    putstatic c->e:I
    iconst_0
    putstatic c->f:I
    iconst_0
    putstatic c->b:Z
    iconst_0
    putstatic c->e:Z
    iconst_0
    putstatic c->f:Z
    iconst_0
    putstatic c->a:Z
    iconst_0
    putstatic c->e:Z
    iconst_0
    putstatic c->f:Z
    aconst_null
    invokestatic javax/microedition/media/Manager->getSupportedContentTypes(Ljava/lang/String;)[Ljava/lang/String;
    dup
    astore_0
    ifnull 0x38
    iconst_0
    istore_1
    iload_1
    aload_0
    arraylength
    if_icmpge 0x30
    aload_0
    iload_1
    aaload
    ifnull 0x24
    aload_0
    iload_1
    aaload
    ldc 'audio/mpeg'
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifeq 0xa
    iconst_1
    putstatic c->e:Z
    goto 0x12
    aload_0
    iload_1
    aaload
    ldc 'audio/amr'
    invokevirtual java/lang/String->equals(Ljava/lang/Object;)Z
    ifeq 0x7
    iconst_1
    putstatic c->f:Z
    iinc 0x1 0x1
    goto -0x30
    return
    pop
    iconst_0
    putstatic c->e:Z
    iconst_0
    putstatic c->f:Z
    return
.end method
