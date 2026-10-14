.class public Lcom/sixents/sdk/base/SixentsSDKManagerImp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sixents/sdk/base/ISixentsSDKManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;,
        Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;,
        Lcom/sixents/sdk/base/SixentsSDKManagerImp$SixentsSDKManagerImpHolder;
    }
.end annotation


# static fields
.field private static final B:I = 0x1

.field private static final C:I = 0x0

.field private static final E:I = 0x2

.field private static final F:I = 0x5

.field private static final K:I = 0x6

.field private static final R:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SixentsSDKManagerImp"

.field private static final X:I = 0x3


# instance fields
.field private TICKFLAG:Z

.field private final b:Lcom/sixents/sdk/base/NativeFlag;

.field private final c:Lcom/sixents/sdk/base/NativeFlag;

.field private final e:Lcom/sixents/sdk/base/NativeFlag;

.field private final f:Lcom/sixents/sdk/base/NativeFlag;

.field private final k:Lcom/sixents/sdk/base/NativeFlag;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mNativeHandler:Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

.field private final r:Lcom/sixents/sdk/base/NativeFlag;

.field private tickThread:Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;

.field private final x:Lcom/sixents/sdk/base/NativeFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/sixents/sdk/base/NativeFlag;

    const-string v1, "c"

    invoke-direct {v0, v1}, Lcom/sixents/sdk/base/NativeFlag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->c:Lcom/sixents/sdk/base/NativeFlag;

    .line 4
    new-instance v0, Lcom/sixents/sdk/base/NativeFlag;

    const-string v1, "b"

    invoke-direct {v0, v1}, Lcom/sixents/sdk/base/NativeFlag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->b:Lcom/sixents/sdk/base/NativeFlag;

    .line 5
    new-instance v0, Lcom/sixents/sdk/base/NativeFlag;

    const-string v1, "e"

    invoke-direct {v0, v1}, Lcom/sixents/sdk/base/NativeFlag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->e:Lcom/sixents/sdk/base/NativeFlag;

    .line 6
    new-instance v0, Lcom/sixents/sdk/base/NativeFlag;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lcom/sixents/sdk/base/NativeFlag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->x:Lcom/sixents/sdk/base/NativeFlag;

    .line 7
    new-instance v0, Lcom/sixents/sdk/base/NativeFlag;

    const-string v1, "r"

    invoke-direct {v0, v1}, Lcom/sixents/sdk/base/NativeFlag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->r:Lcom/sixents/sdk/base/NativeFlag;

    .line 8
    new-instance v0, Lcom/sixents/sdk/base/NativeFlag;

    const-string v1, "f"

    invoke-direct {v0, v1}, Lcom/sixents/sdk/base/NativeFlag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->f:Lcom/sixents/sdk/base/NativeFlag;

    .line 9
    new-instance v0, Lcom/sixents/sdk/base/NativeFlag;

    const-string v1, "k"

    invoke-direct {v0, v1}, Lcom/sixents/sdk/base/NativeFlag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->k:Lcom/sixents/sdk/base/NativeFlag;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->TICKFLAG:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sixents/sdk/base/SixentsSDKManagerImp$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->TICKFLAG:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->c:Lcom/sixents/sdk/base/NativeFlag;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->b:Lcom/sixents/sdk/base/NativeFlag;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->e:Lcom/sixents/sdk/base/NativeFlag;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->x:Lcom/sixents/sdk/base/NativeFlag;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->r:Lcom/sixents/sdk/base/NativeFlag;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->f:Lcom/sixents/sdk/base/NativeFlag;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->k:Lcom/sixents/sdk/base/NativeFlag;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mNativeHandler:Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    return-object p0
.end method

.method public static getInstance()Lcom/sixents/sdk/base/SixentsSDKManagerImp;
    .locals 1

    .line 1
    invoke-static {}, Lcom/sixents/sdk/base/SixentsSDKManagerImp$SixentsSDKManagerImpHolder;->access$100()Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    move-result-object v0

    return-object v0
.end method

.method private sdkSendMessageSync(Landroid/os/Message;Lcom/sixents/sdk/base/NativeFlag;)I
    .locals 2

    .line 1
    monitor-enter p2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mNativeHandler:Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x1f4

    .line 3
    :try_start_1
    invoke-virtual {p2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error on wait init :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sixents/sdk/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget p1, p2, Lcom/sixents/sdk/base/NativeFlag;->rescode:I

    .line 6
    monitor-exit p2

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public sdkFinal()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mNativeHandler:Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    if-nez v0, :cond_0

    const/16 v0, -0xc

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->tickThread:Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->TICKFLAG:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->TICKFLAG:Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->tickThread:Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 7
    iput-object v1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->tickThread:Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;

    goto :goto_0

    .line 8
    :cond_2
    iput-object v1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->tickThread:Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mNativeHandler:Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->x:Lcom/sixents/sdk/base/NativeFlag;

    invoke-direct {p0, v0, v2}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->sdkSendMessageSync(Landroid/os/Message;Lcom/sixents/sdk/base/NativeFlag;)I

    move-result v0

    if-nez v0, :cond_4

    .line 11
    iget-object v2, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mNativeHandler:Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    iget-object v2, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 13
    iput-object v1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mNativeHandler:Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    .line 14
    iput-object v1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_4
    return v0
.end method

.method public sdkGetVer()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1.1"

    return-object v0
.end method

.method public sdkInit(Lcom/sixents/sdk/conf/SdkConf;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mNativeHandler:Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->c:Lcom/sixents/sdk/base/NativeFlag;

    invoke-static {p1}, Lcom/sixents/sdk/base/JNICall;->c(Lcom/sixents/sdk/conf/SdkConf;)I

    move-result p1

    iput p1, v0, Lcom/sixents/sdk/base/NativeFlag;->rescode:I

    .line 3
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "native_handler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mHandlerThread:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance p1, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;-><init>(Lcom/sixents/sdk/base/SixentsSDKManagerImp;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mNativeHandler:Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->c:Lcom/sixents/sdk/base/NativeFlag;

    iget v1, v1, Lcom/sixents/sdk/base/NativeFlag;->rescode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->c:Lcom/sixents/sdk/base/NativeFlag;

    invoke-direct {p0, p1, v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->sdkSendMessageSync(Landroid/os/Message;Lcom/sixents/sdk/base/NativeFlag;)I

    move-result p1

    return p1

    :cond_0
    const/16 p1, -0xb

    return p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "SDK config can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sdkSendGGA(DDD)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mNativeHandler:Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    if-nez v0, :cond_0

    const/16 p1, -0xc

    return p1

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    const/4 p1, 0x1

    aput-wide p3, v1, p1

    const/4 p1, 0x2

    aput-wide p5, v1, p1

    const/4 p1, 0x5

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->f:Lcom/sixents/sdk/base/NativeFlag;

    invoke-direct {p0, p1, p2}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->sdkSendMessageSync(Landroid/os/Message;Lcom/sixents/sdk/base/NativeFlag;)I

    move-result p1

    return p1
.end method

.method public sdkSendGGAStr(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mNativeHandler:Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    if-nez v0, :cond_0

    const/16 p1, -0xc

    return p1

    :cond_0
    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->r:Lcom/sixents/sdk/base/NativeFlag;

    invoke-direct {p0, p1, v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->sdkSendMessageSync(Landroid/os/Message;Lcom/sixents/sdk/base/NativeFlag;)I

    move-result p1

    return p1
.end method

.method public sdkStart()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mNativeHandler:Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    if-nez v0, :cond_0

    const/16 v0, -0xc

    return v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->TICKFLAG:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->tickThread:Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;

    const-string v2, "tickThread"

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;

    invoke-direct {v0, p0, v2}, Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;-><init>(Lcom/sixents/sdk/base/SixentsSDKManagerImp;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->tickThread:Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6
    iput-boolean v1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->TICKFLAG:Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iput-boolean v1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->TICKFLAG:Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->tickThread:Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v3, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->tickThread:Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;

    .line 11
    new-instance v0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;

    invoke-direct {v0, p0, v2}, Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;-><init>(Lcom/sixents/sdk/base/SixentsSDKManagerImp;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->tickThread:Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 13
    iput-boolean v1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->TICKFLAG:Z

    .line 14
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mNativeHandler:Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->b:Lcom/sixents/sdk/base/NativeFlag;

    invoke-direct {p0, v0, v1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->sdkSendMessageSync(Landroid/os/Message;Lcom/sixents/sdk/base/NativeFlag;)I

    move-result v0

    return v0
.end method

.method public sdkStop()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mNativeHandler:Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    if-nez v0, :cond_0

    const/16 v0, -0xc

    return v0

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->TICKFLAG:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->TICKFLAG:Z

    :cond_1
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->e:Lcom/sixents/sdk/base/NativeFlag;

    invoke-direct {p0, v0, v1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->sdkSendMessageSync(Landroid/os/Message;Lcom/sixents/sdk/base/NativeFlag;)I

    move-result v0

    return v0
.end method

.method public sdktick()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->TICKFLAG:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->tickThread:Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->TICKFLAG:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->mNativeHandler:Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->k:Lcom/sixents/sdk/base/NativeFlag;

    invoke-direct {p0, v0, v1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->sdkSendMessageSync(Landroid/os/Message;Lcom/sixents/sdk/base/NativeFlag;)I

    move-result v0

    return v0
.end method
