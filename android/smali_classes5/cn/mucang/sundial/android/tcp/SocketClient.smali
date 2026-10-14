.class public Lcn/mucang/sundial/android/tcp/SocketClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/SocketClient$MessageValue;,
        Lcn/mucang/sundial/android/tcp/SocketClient$MessageKey;
    }
.end annotation


# instance fields
.field private volatile go:Z

.field private final inputStream:Ljava/io/InputStream;

.field private final lastSendMessage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/sundial/android/tcp/message/RawMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final manager:Lcn/mucang/sundial/android/tcp/SocketManager;

.field private final nextSequenceGenerator:Lcn/mucang/sundial/android/tcp/utils/SequenceGenerator;

.field private final outputStream:Ljava/io/OutputStream;

.field private final packetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/sundial/android/tcp/SocketClient$MessageKey;",
            "Lcn/mucang/sundial/android/tcp/SocketClient$MessageValue;",
            ">;"
        }
    .end annotation
.end field

.field private privateKey:Ljava/security/PrivateKey;

.field private final receivedIndex:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private registerInfo:Lcn/mucang/sundial/android/db/entity/RegisterInfo;

.field private final socket:Ljava/net/Socket;

.field private thread:Ljava/lang/Thread;

.field private trainingMessageIndex:I


# direct methods
.method public constructor <init>(Lcn/mucang/sundial/android/tcp/SocketManager;Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->packetMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->receivedIndex:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Lcn/mucang/sundial/android/tcp/utils/SequenceGenerator;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/utils/SequenceGenerator;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->nextSequenceGenerator:Lcn/mucang/sundial/android/tcp/utils/SequenceGenerator;

    .line 5
    new-instance v0, Lcn/mucang/sundial/android/tcp/SocketClient$1;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcn/mucang/sundial/android/tcp/SocketClient$1;-><init>(Lcn/mucang/sundial/android/tcp/SocketClient;I)V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->lastSendMessage:Ljava/util/HashMap;

    .line 6
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->manager:Lcn/mucang/sundial/android/tcp/SocketManager;

    .line 7
    iput-object p2, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->socket:Ljava/net/Socket;

    .line 8
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->outputStream:Ljava/io/OutputStream;

    .line 9
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method private synthetic a(Lcn/mucang/sundial/android/tcp/message/RawMessage;J)V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/tcp/SocketClient;->handleMessage(Lcn/mucang/sundial/android/tcp/message/RawMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handle message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " with exception"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sundial-TAG"

    invoke-static {v2, v0, p1}, Lcn/mucang/android/core/utils/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " with exception\uff1a"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcn/mucang/sundial/android/tcp/SocketClient;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->lastSendMessage:Ljava/util/HashMap;

    return-object p0
.end method

.method private buildMessageKey(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;)Lcn/mucang/sundial/android/tcp/SocketClient$MessageKey;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/SocketClient$MessageKey;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageId()I

    move-result p1

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/SocketClient$MessageKey;-><init>(I)V

    return-object v0
.end method

.method public static synthetic c(Lcn/mucang/sundial/android/tcp/SocketClient;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/SocketClient;->doLoopRead()V

    return-void
.end method

.method private combine(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Lcn/mucang/sundial/android/tcp/message/RawMessage;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getAttribute()Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->isSplitPacket()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/message/send/ClientCommonResponse;->createSuccess(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Lcn/mucang/sundial/android/tcp/message/send/ClientCommonResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/mucang/sundial/android/tcp/SocketClient;->send(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Z

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageSequence()I

    move-result v1

    .line 5
    invoke-direct {p0, v1}, Lcn/mucang/sundial/android/tcp/SocketClient;->isNewSplitPacket(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6
    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/SocketClient;->buildMessageKey(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;)Lcn/mucang/sundial/android/tcp/SocketClient$MessageKey;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->packetMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/android/tcp/SocketClient$MessageValue;

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcn/mucang/sundial/android/tcp/SocketClient$MessageValue;

    invoke-direct {v1, v3}, Lcn/mucang/sundial/android/tcp/SocketClient$MessageValue;-><init>(Lcn/mucang/sundial/android/tcp/SocketClient$1;)V

    .line 9
    iget-object v2, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->packetMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/SocketClient$MessageValue;->addPacket(Lcn/mucang/sundial/android/tcp/message/RawMessage;)V

    .line 11
    invoke-static {v1}, Lcn/mucang/sundial/android/tcp/SocketClient$MessageValue;->access$200(Lcn/mucang/sundial/android/tcp/SocketClient$MessageValue;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/tcp/SocketClient;->tryCombineMessage(Ljava/util/List;)Lcn/mucang/sundial/android/tcp/message/RawMessage;

    move-result-object p1

    return-object p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6536\u5230\u4e00\u6761\u91cd\u590d\u7684\u5206\u5305\u6570\u636e\u4e86:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "sundial-TAG"

    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    return-object v3

    :cond_2
    return-object p1
.end method

.method private synthetic d(Lcn/mucang/sundial/android/tcp/message/SendMessage;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v0

    invoke-interface {p1}, Lcn/mucang/sundial/android/tcp/message/Message;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->onTimeout(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/SocketClient;->send(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Z

    :cond_0
    return-void
.end method

.method private doLoopRead()V
    .locals 7

    const-string v0, "message = "

    const-string v1, "\u5f00\u59cb\u6b7b\u5faa\u73af\u63a5\u6536\u6d88\u606f..."

    const-string v2, "sundial-TAG"

    .line 1
    :goto_0
    iget-boolean v3, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->go:Z

    if-eqz v3, :cond_3

    .line 2
    :try_start_0
    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 4
    iget-object v3, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->readMessage(Ljava/io/InputStream;)Lcn/mucang/sundial/android/tcp/message/RawMessage;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v3}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v4

    invoke-virtual {v4}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageId()I

    move-result v4

    int-to-long v4, v4

    goto :goto_1

    :cond_1
    const-wide/16 v4, -0x1

    .line 6
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 8
    invoke-direct {p0, v3}, Lcn/mucang/sundial/android/tcp/SocketClient;->combine(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Lcn/mucang/sundial/android/tcp/message/RawMessage;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    new-instance v6, Lcn/mucang/sundial/android/tcp/c;

    invoke-direct {v6, p0, v3, v4, v5}, Lcn/mucang/sundial/android/tcp/c;-><init>(Lcn/mucang/sundial/android/tcp/SocketClient;Lcn/mucang/sundial/android/tcp/message/RawMessage;J)V

    invoke-static {v6}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "\u8bfb\u53d6\u8ba1\u65f6\u5e73\u53f0\u6d88\u606f\u5f02\u5e38"

    .line 10
    invoke-static {v2, v4, v3}, Lcn/mucang/android/core/utils/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bfb\u53d6\u8ba1\u65f6\u5e73\u53f0\u6d88\u606f\u5f02\u5e38\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 12
    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    const-string v3, "\u670d\u52a1\u5668\u4e3b\u52a8\u65ad\u5f00\u4e86\u8fde\u63a5"

    .line 13
    invoke-static {v2, v3}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {v3}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 15
    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private doRegister(Lcn/mucang/sundial/android/tcp/message/RawMessage;)V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v0

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->onMessageReply(IZ)V

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getBody()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;->init([B)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7ec8\u7aef\u6ce8\u518c\u5e94\u7b54\uff0c\u6ce8\u518c\u7ed3\u679c\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;->getResult()Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "sundial-TAG"

    invoke-static {v3, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;->getResult()Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;->getResult()Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    move-result-object p1

    sget-object v1, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;->SUCCESS:Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;->getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveRegisterInfo(Lcn/mucang/sundial/android/db/entity/RegisterInfo;)V

    .line 8
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/SocketClient;->initOther()V

    .line 9
    :cond_1
    new-instance p1, Lcn/mucang/sundial/android/eventbus/event/RegisterResponseEvent;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse;->getResult()Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/android/tcp/message/receive/RegisterResponse$Result;->message:Ljava/lang/String;

    invoke-direct {p1, v2, v0}, Lcn/mucang/sundial/android/eventbus/event/RegisterResponseEvent;-><init>(ZLjava/lang/String;)V

    invoke-static {p1}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private findMessageByIndex(Ljava/util/List;I)Lcn/mucang/sundial/android/tcp/message/RawMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/tcp/message/RawMessage;",
            ">;I)",
            "Lcn/mucang/sundial/android/tcp/message/RawMessage;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/tcp/message/RawMessage;

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getPacket()Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->getCurrent()I

    move-result v1

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleMessage(Lcn/mucang/sundial/android/tcp/message/RawMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageId()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6536\u5230\u6d88\u606f\uff0cmessageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->formatMessageId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sundial-TAG"

    invoke-static {v3, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->formatMessageId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    const v1, 0x8100

    if-ne v0, v1, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/tcp/SocketClient;->doRegister(Lcn/mucang/sundial/android/tcp/message/RawMessage;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->manager:Lcn/mucang/sundial/android/tcp/SocketManager;

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/SocketManager;->handleMessage(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/SocketClient;->send(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private initOther()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    move-result-object v0

    const-string v1, "sundial-TAG"

    const-string v2, "\u9274\u6743... "

    .line 2
    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->registerInfo:Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    .line 5
    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->readPrivateKey(Lcn/mucang/sundial/android/db/entity/RegisterInfo;)Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->privateKey:Ljava/security/PrivateKey;

    .line 6
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/SocketClient;->login()V

    return-void
.end method

.method private isNewSplitPacket(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->receivedIndex:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->receivedIndex:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->receivedIndex:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->receivedIndex:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private login()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/message/send/AuthenticationRequest;->create(Lcn/mucang/sundial/android/tcp/SocketClient;)Lcn/mucang/sundial/android/tcp/message/send/AuthenticationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/sundial/android/tcp/SocketClient;->send(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Z

    return-void
.end method

.method private tryCombineMessage(Ljava/util/List;)Lcn/mucang/sundial/android/tcp/message/RawMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/tcp/message/RawMessage;",
            ">;)",
            "Lcn/mucang/sundial/android/tcp/message/RawMessage;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/tcp/message/RawMessage;

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getPacket()Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->getTotal()I

    move-result v2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v3, v2, :cond_0

    return-object v4

    .line 5
    :cond_0
    new-instance v3, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v3}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    :goto_0
    const-string v5, "sundial-TAG"

    if-gt v1, v2, :cond_2

    .line 6
    invoke-direct {p0, p1, v1}, Lcn/mucang/sundial/android/tcp/SocketClient;->findMessageByIndex(Ljava/util/List;I)Lcn/mucang/sundial/android/tcp/message/RawMessage;

    move-result-object v6

    if-nez v6, :cond_1

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5c1d\u8bd5\u7ec4\u5305\uff0c\u6b64\u5305\u627e\u4e0d\u5230,index="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    return-object v4

    .line 9
    :cond_1
    invoke-virtual {v6}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getBody()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->packetMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/SocketClient;->buildMessageKey(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;)Lcn/mucang/sundial/android/tcp/SocketClient$MessageKey;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7ec4\u5305\u5b8c\u6210\uff0ctotal\uff1a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v3}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->copy(Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;[BLjava/util/List;)Lcn/mucang/sundial/android/tcp/message/RawMessage;

    move-result-object p1

    return-object p1
.end method

.method private updatePacketForResend(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/tcp/message/RawMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->g(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/tcp/message/RawMessage;

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getAttribute()Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Attribute;->isSplitPacket()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bb0\u5f55\u5206\u5305\u6570\u636e\u4ee5\u91cd\u4f20\uff0c\u521d\u59cb\u5e8f\u5217\u53f7\u4e3a\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageSequence()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sundial-TAG"

    invoke-static {v3, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageSequence()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 6
    new-instance v1, Landroid/util/SparseArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/sundial/android/tcp/message/RawMessage;

    .line 8
    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getSplitIndex()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->lastSendMessage:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageSequence()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private wrapExtendMessageIfNeed(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 1

    .line 1
    instance-of v0, p1, Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;

    invoke-static {p0, p1}, Lcn/mucang/sundial/android/tcp/message/training/SendTrainingMessage;->create(Lcn/mucang/sundial/android/tcp/SocketClient;Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;)Lcn/mucang/sundial/android/tcp/message/training/SendTrainingMessage;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public synthetic b(Lcn/mucang/sundial/android/tcp/message/RawMessage;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/sundial/android/tcp/SocketClient;->a(Lcn/mucang/sundial/android/tcp/message/RawMessage;J)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->go:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->close(Ljava/io/Closeable;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->close(Ljava/io/Closeable;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->close(Ljava/io/Closeable;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->manager:Lcn/mucang/sundial/android/tcp/SocketManager;

    invoke-virtual {v0, p0}, Lcn/mucang/sundial/android/tcp/SocketManager;->removeSocketClient(Lcn/mucang/sundial/android/tcp/SocketClient;)V

    return-void
.end method

.method declared-synchronized createRawMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/sundial/android/tcp/message/SendMessage;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/tcp/message/RawMessage;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/tcp/SocketClient;->wrapExtendMessageIfNeed(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->nextSequenceGenerator:Lcn/mucang/sundial/android/tcp/utils/SequenceGenerator;

    invoke-static {v1, p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->write(Lcn/mucang/sundial/android/tcp/message/NextMessageSequenceGenerator;Lcn/mucang/sundial/android/tcp/message/SendMessage;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/tcp/SocketClient;->updatePacketForResend(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "sundial-TAG"

    const-string v2, "\u6d88\u606f\u683c\u5f0f\u5f02\u5e38"

    .line 6
    invoke-static {v1, v2, p1}, Lcn/mucang/android/core/utils/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6d88\u606f\u683c\u5f0f\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public synthetic e(Lcn/mucang/sundial/android/tcp/message/SendMessage;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/sundial/android/tcp/SocketClient;->d(Lcn/mucang/sundial/android/tcp/message/SendMessage;Z)V

    return-void
.end method

.method public getNextMessageSequenceGenerator()Lcn/mucang/sundial/android/tcp/message/NextMessageSequenceGenerator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->nextSequenceGenerator:Lcn/mucang/sundial/android/tcp/utils/SequenceGenerator;

    return-object v0
.end method

.method public declared-synchronized getNextTrainingMessageIndex()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->trainingMessageIndex:I

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->isValidWORD(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->trainingMessageIndex:I

    .line 4
    :cond_0
    iget v1, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->trainingMessageIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->trainingMessageIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->registerInfo:Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    return-object v0
.end method

.method resendPacket(I[I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->lastSendMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    const-string v1, "sundial-TAG"

    if-nez v0, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u627e\u4e0d\u5230\u521d\u59cb\u6d41\u6c34\u53f7\u4e3a "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u7684\u5305"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 5
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p2, v3

    .line 6
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/sundial/android/tcp/message/RawMessage;

    if-eqz v4, :cond_1

    .line 7
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/sundial/android/tcp/message/RawMessage;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91cd\u4f20\u5206\u5305\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageSequence()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageSequence()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, p2}, Lcn/mucang/sundial/android/tcp/SocketClient;->sendRawMessage(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method declared-synchronized send(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcn/mucang/sundial/android/tcp/SocketClient;->send(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized send(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)Z
    .locals 4

    monitor-enter p0

    .line 2
    :try_start_0
    instance-of v0, p1, Lcn/mucang/sundial/android/tcp/message/Request;

    if-eqz v0, :cond_0

    .line 3
    instance-of v0, p1, Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v1

    invoke-interface {p1}, Lcn/mucang/sundial/android/tcp/message/Message;->getId()I

    move-result v2

    new-instance v3, Lcn/mucang/sundial/android/tcp/d;

    invoke-direct {v3, p0, p1, v0}, Lcn/mucang/sundial/android/tcp/d;-><init>(Lcn/mucang/sundial/android/tcp/SocketClient;Lcn/mucang/sundial/android/tcp/message/SendMessage;Z)V

    invoke-virtual {v1, v2, v0, v3}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->addTimeoutTask(IZLjava/lang/Runnable;)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/SocketClient;->createRawMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Ljava/util/List;

    move-result-object v0

    .line 6
    instance-of p1, p1, Lcn/mucang/sundial/android/tcp/PacketResultConcern;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 8
    new-instance p1, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;

    invoke-direct {p1}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;-><init>()V

    .line 9
    invoke-virtual {p1, p2}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->setRequestResultListener(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;

    move-result-object p1

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/sundial/android/tcp/message/RawMessage;

    .line 11
    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageSequence()I

    move-result v2

    invoke-virtual {p1, v2}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->observePacket(I)Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->observe()V

    .line 13
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/sundial/android/tcp/message/RawMessage;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p0, v2}, Lcn/mucang/sundial/android/tcp/SocketClient;->sendRawMessage(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 15
    :cond_5
    monitor-exit p0

    return v0

    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 16
    :try_start_1
    invoke-interface {p2, v1}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;->onResult(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_7
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendRawMessage(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRawMessage --- Sequence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageSequence()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageId()I

    move-result v3

    invoke-static {v3}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->formatMessageId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sundial-TAG"

    .line 3
    invoke-static {v3, v0}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageSequence()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageId()I

    move-result v1

    invoke-static {v1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->formatMessageId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 7
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->writeAll()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 8
    iget-object p1, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "\u5199\u6570\u636e\u53d1\u751f\u5f02\u5e38"

    .line 9
    invoke-static {v3, v0, p1}, Lcn/mucang/android/core/utils/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 11
    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->close(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized start()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->thread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_1
    iput-boolean v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->go:Z

    .line 4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/mucang/sundial/android/tcp/e;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/android/tcp/e;-><init>(Lcn/mucang/sundial/android/tcp/SocketClient;)V

    const-string v2, "\u8bfb\u53d6TCP\u54cd\u5e94\u7ebf\u7a0b"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient;->thread:Ljava/lang/Thread;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/SocketClient;->initOther()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
