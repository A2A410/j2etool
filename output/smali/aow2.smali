.class public aow2
.super javax.microedition.midlet.MIDlet

.field  a:Li;
.field  a:Ljavax/microedition/lcdui/Display;
.field private a:Z

.method public <init>()V
    .limit stack 2
    .limit locals 1
    aload_0
    invokespecial javax/microedition/midlet/MIDlet-><init>()V
    aload_0
    iconst_0
    putfield aow2->a:Z
    aload_0
    aconst_null
    putfield aow2->a:Li;
    aload_0
    aconst_null
    putfield aow2->a:Ljavax/microedition/lcdui/Display;
    return
.end method

.method public startApp()V
    .limit stack 4
    .limit locals 1
    aload_0
    getfield aow2->a:Li;
    ifnull 0xb
    aload_0
    getfield aow2->a:Li;
    invokevirtual i->c()V
    return
    aload_0
    invokestatic a->a(Laow2;)V
    aload_0
    aload_0
    invokestatic javax/microedition/lcdui/Display->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;
    putfield aow2->a:Ljavax/microedition/lcdui/Display;
    aload_0
    new i
    dup
    aload_0
    invokespecial i-><init>(Laow2;)V
    putfield aow2->a:Li;
    aload_0
    getfield aow2->a:Ljavax/microedition/lcdui/Display;
    aload_0
    getfield aow2->a:Li;
    invokevirtual javax/microedition/lcdui/Display->setCurrent(Ljavax/microedition/lcdui/Displayable;)V
    aload_0
    getfield aow2->a:Li;
    invokevirtual i->a()V
    return
    pop
    return
.end method

.method public pauseApp()V
    .limit stack 1
    .limit locals 1
    aload_0
    getfield aow2->a:Li;
    ifnull 0xa
    aload_0
    getfield aow2->a:Li;
    invokevirtual i->b()V
    return
.end method

.method public destroyApp(Z)V
    .limit stack 2
    .limit locals 2
    aload_0
    getfield aow2->a:Z
    ifeq 0x4
    return
    aload_0
    iconst_1
    putfield aow2->a:Z
    aload_0
    getfield aow2->a:Li;
    ifnull 0x1b
    aload_0
    getfield aow2->a:Li;
    aconst_null
    invokevirtual i->a(Ljava/lang/String;)V
    iload_1
    ifeq 0x9
    ldc2_w 5
    goto 0x6
    ldc2_w 10
    invokestatic a->a(J)V
    return
.end method

.method public equals(Ljava/lang/Object;)Z
    .limit stack 2
    .limit locals 2
    aload_1
    ifnonnull 0x5
    iconst_0
    ireturn
    aload_1
    invokestatic i->a(Ljava/lang/Object;)Z
    ireturn
    pop
    aload_0
    aload_1
    invokespecial java/lang/Object->equals(Ljava/lang/Object;)Z
    ireturn
.end method
