.class public Lcn/mucang/sundial/android/tcp/SocketManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile INSTANCE:Lcn/mucang/sundial/android/tcp/SocketManager;


# instance fields
.field private final clientRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/mucang/sundial/android/tcp/SocketClient;",
            ">;"
        }
    .end annotation
.end field

.field private es:Ljava/util/concurrent/ScheduledExecutorService;

.field private final ip:Ljava/lang/String;

.field private final messageManager:Lcn/mucang/sundial/android/tcp/MessageManager;

.field private final port:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDeviceInfo()Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getPlatformIp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->ip:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getPlatformPort()I

    move-result v0

    iput v0, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->port:I

    .line 6
    new-instance v0, Lcn/mucang/sundial/android/tcp/MessageManager;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/MessageManager;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->messageManager:Lcn/mucang/sundial/android/tcp/MessageManager;

    return-void
.end method

.method public static synthetic a(Lcn/mucang/sundial/android/tcp/SocketManager;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/SocketManager;->checkSocket()V

    return-void
.end method

.method private checkSocket()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/SocketManager;->initSocket()Lcn/mucang/sundial/android/tcp/SocketClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/SocketClient;->start()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createExtendReceiveMessage(I[B)Lcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;
    .locals 2

    const-string v0, "\u78b0\u5230\u4e00\u6761\u65e0\u6cd5\u89e3\u6790\u6269\u5c55\u7684\u6d88\u606f\uff0ctid="

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->messageManager:Lcn/mucang/sundial/android/tcp/MessageManager;

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/MessageManager;->getExtendReceiveMessage(I)Lcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;

    .line 3
    invoke-interface {p1, p2}, Lcn/mucang/sundial/android/tcp/message/Receive;->init([B)V

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->formatMessageId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lf/a/b/a/a/a;->a(Ljava/lang/String;)V

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->formatMessageId(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcn/mucang/android/core/encode/b;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private createReceiveMessage(I[B)Lcn/mucang/sundial/android/tcp/message/ReceiveMessage;
    .locals 3

    const-string v0, "\u78b0\u5230\u4e00\u6761\u65e0\u6cd5\u89e3\u6790\u7684\u6d88\u606f\uff0cmessageId="

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->messageManager:Lcn/mucang/sundial/android/tcp/MessageManager;

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/MessageManager;->getReceiveMessage(I)Lcn/mucang/sundial/android/tcp/message/ReceiveMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/android/tcp/message/ReceiveMessage;

    .line 3
    invoke-interface {p1, p2}, Lcn/mucang/sundial/android/tcp/message/Receive;->init([B)V

    return-object p1

    :cond_0
    const-string p2, "sundial-TAG"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->formatMessageId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->formatMessageId(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcn/mucang/android/core/encode/b;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public static getInstance()Lcn/mucang/sundial/android/tcp/SocketManager;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/tcp/SocketManager;->INSTANCE:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcn/mucang/sundial/android/tcp/SocketManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcn/mucang/sundial/android/tcp/SocketManager;->INSTANCE:Lcn/mucang/sundial/android/tcp/SocketManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcn/mucang/sundial/android/tcp/SocketManager;

    invoke-direct {v1}, Lcn/mucang/sundial/android/tcp/SocketManager;-><init>()V

    sput-object v1, Lcn/mucang/sundial/android/tcp/SocketManager;->INSTANCE:Lcn/mucang/sundial/android/tcp/SocketManager;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcn/mucang/sundial/android/tcp/SocketManager;->INSTANCE:Lcn/mucang/sundial/android/tcp/SocketManager;

    return-object v0
.end method

.method private initSocket()Lcn/mucang/sundial/android/tcp/SocketClient;
    .locals 5

    const-string v0, ",port="

    const-string v1, "\u51c6\u5907\u8fde\u63a5\u8ba1\u65f6\u5e73\u53f0TCP\uff0cip="

    const-string v2, "sundial-TAG"

    .line 1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->ip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->ip:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->port:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 4
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->ip:Ljava/lang/String;

    iget v4, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->port:I

    invoke-direct {v1, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x2710

    invoke-virtual {v0, v1, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 5
    new-instance v1, Lcn/mucang/sundial/android/tcp/SocketClient;

    invoke-direct {v1, p0, v0}, Lcn/mucang/sundial/android/tcp/SocketClient;-><init>(Lcn/mucang/sundial/android/tcp/SocketManager;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521d\u59cb\u5316\u8fde\u63a5\u5931\u8d25\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private parseMessage(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Lcn/mucang/sundial/android/tcp/message/Message;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageId()I

    move-result v0

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getBody()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/mucang/sundial/android/tcp/SocketManager;->createReceiveMessage(I[B)Lcn/mucang/sundial/android/tcp/message/ReceiveMessage;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcn/mucang/sundial/android/tcp/message/RawMessageAware;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Lcn/mucang/sundial/android/tcp/message/RawMessageAware;

    invoke-interface {v1, p1}, Lcn/mucang/sundial/android/tcp/message/RawMessageAware;->setRawMessage(Lcn/mucang/sundial/android/tcp/message/RawMessage;)V

    .line 4
    :cond_0
    instance-of v1, v0, Lcn/mucang/sundial/android/tcp/message/training/ReceiveTrainingMessage;

    if-eqz v1, :cond_3

    .line 5
    check-cast v0, Lcn/mucang/sundial/android/tcp/message/training/ReceiveTrainingMessage;

    .line 6
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->getTid()I

    move-result v1

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->getBody()[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/mucang/sundial/android/tcp/SocketManager;->createExtendReceiveMessage(I[B)Lcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_1
    instance-of v2, v1, Lcn/mucang/sundial/android/tcp/message/RawMessageAware;

    if-eqz v2, :cond_2

    .line 8
    move-object v2, v1

    check-cast v2, Lcn/mucang/sundial/android/tcp/message/RawMessageAware;

    invoke-interface {v2, p1}, Lcn/mucang/sundial/android/tcp/message/RawMessageAware;->setRawMessage(Lcn/mucang/sundial/android/tcp/message/RawMessage;)V

    .line 9
    :cond_2
    invoke-interface {v1, v0}, Lcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;->setTrainingMessage(Lcn/mucang/sundial/android/tcp/message/training/ReceiveTrainingMessage;)V

    return-object v1

    :cond_3
    return-object v0
.end method

.method private showMessageInfo(ILcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++++++\u6536\u5230\u6d88\u606f:"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->formatMessageId(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u51c6\u5907\u7531Handler\u5904\u7406\u6d88\u606f\uff0chandler="

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p1, "null"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sundial-TAG"

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public createRawMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Ljava/util/List;
    .locals 1
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

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/tcp/SocketClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/SocketClient;->createRawMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->es:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->es:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/android/tcp/SocketClient;

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->close(Ljava/io/Closeable;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getNextMessageSequenceGenerator()Lcn/mucang/sundial/android/tcp/message/NextMessageSequenceGenerator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/tcp/SocketClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/SocketClient;->getNextMessageSequenceGenerator()Lcn/mucang/sundial/android/tcp/message/NextMessageSequenceGenerator;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method handleMessage(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/tcp/SocketManager;->parseMessage(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Lcn/mucang/sundial/android/tcp/message/Message;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->messageManager:Lcn/mucang/sundial/android/tcp/MessageManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/MessageManager;->getMessageHandler(Ljava/lang/Class;)Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lcn/mucang/sundial/android/tcp/message/Message;->getId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/SocketManager;->showMessageInfo(ILcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/Message;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6709\u6d88\u606f\u65e0\u6cd5\u5904\u7406\uff0c\u8bf7\u5b9e\u73b0\u6b64\u6d88\u606f\u7684\u5904\u7406\u5668:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasConnection()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method removeSocketClient(Lcn/mucang/sundial/android/tcp/SocketClient;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public resendPacket(I[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/tcp/SocketClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcn/mucang/sundial/android/tcp/SocketClient;->resendPacket(I[I)V

    :cond_0
    return-void
.end method

.method public sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn/mucang/sundial/android/tcp/SocketManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)Z

    move-result p1

    return p1
.end method

.method public sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/tcp/SocketClient;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcn/mucang/sundial/android/tcp/SocketClient;->send(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2, p1}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;->onResult(Z)V

    :cond_1
    return p1
.end method

.method public sendRawMessage(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/tcp/SocketClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/SocketClient;->sendRawMessage(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized start()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->es:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/sundial/android/tcp/SocketManager;->es:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance v2, Lcn/mucang/sundial/android/tcp/f;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/android/tcp/f;-><init>(Lcn/mucang/sundial/android/tcp/SocketManager;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
