.class public m
.super javax.microedition.lcdui.Canvas

.field private a:Z

.method public <init>()V
    .limit stack 2
    .limit locals 1
    aload_0
    invokespecial javax/microedition/lcdui/Canvas-><init>()V
    aload_0
    iconst_1
    putfield m->a:Z
    return
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .limit stack 2
    .limit locals 2
    aload_0
    getfield m->a:Z
    ifne 0x4
    return
    aload_0
    iconst_0
    putfield m->a:Z
    aload_0
    aload_1
    invokevirtual m->a(Ljavax/microedition/lcdui/Graphics;)V
    return
.end method

.method protected a(Ljavax/microedition/lcdui/Graphics;)V
    .limit stack 0
    .limit locals 2
    return
.end method

.method public final h()V
    .limit stack 2
    .limit locals 1
    aload_0
    iconst_1
    putfield m->a:Z
    aload_0
    invokevirtual javax/microedition/lcdui/Canvas->repaint()V
    aload_0
    invokevirtual javax/microedition/lcdui/Canvas->serviceRepaints()V
    return
.end method

.method protected a(I)V
    .limit stack 0
    .limit locals 2
    return
.end method

.method protected b(I)V
    .limit stack 0
    .limit locals 2
    return
.end method

.method protected keyPressed(I)V
    .limit stack 2
    .limit locals 2
    aload_0
    iload_1
    invokevirtual m->a(I)V
    return
.end method

.method protected keyReleased(I)V
    .limit stack 2
    .limit locals 2
    aload_0
    iload_1
    invokevirtual m->b(I)V
    return
.end method
