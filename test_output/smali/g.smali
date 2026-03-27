.class public final g
.super java.lang.Object


.method public <init>()V
    .limit stack 1
    .limit locals 1
    aload_0
    invokespecial java/lang/Object-><init>()V
    return
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .limit stack 2
    .limit locals 3
    aconst_null
    astore_2
    new java/lang/StringBuffer
    dup
    invokespecial java/lang/StringBuffer-><init>()V
    ldc 'sms://'
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    aload_0
    invokevirtual java/lang/StringBuffer->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    invokevirtual java/lang/StringBuffer->toString()Ljava/lang/String;
    invokestatic javax/microedition/io/Connector->open(Ljava/lang/String;)Ljavax/microedition/io/Connection;
    checkcast javax/wireless/messaging/MessageConnection
    dup
    astore_2
    ldc 'text'
    invokeinterface javax/wireless/messaging/MessageConnection->newMessage(Ljava/lang/String;)Ljavax/wireless/messaging/Message;
    checkcast javax/wireless/messaging/TextMessage
    dup
    astore_0
    aload_1
    invokeinterface javax/wireless/messaging/TextMessage->setPayloadText(Ljava/lang/String;)V
    aload_2
    aload_0
    invokeinterface javax/wireless/messaging/MessageConnection->send(Ljavax/wireless/messaging/Message;)V
    aload_2
    ifnull 0xd
    aload_2
    invokeinterface javax/microedition/io/Connection->close()V
    goto 0x4
    pop
    iconst_1
    ireturn
    pop
    aload_2
    ifnull 0xd
    aload_2
    invokeinterface javax/microedition/io/Connection->close()V
    goto 0x4
    pop
    iconst_0
    ireturn
    astore_0
    aload_2
    ifnull 0xd
    aload_2
    invokeinterface javax/microedition/io/Connection->close()V
    goto 0x4
    pop
    aload_0
    athrow
.end method
