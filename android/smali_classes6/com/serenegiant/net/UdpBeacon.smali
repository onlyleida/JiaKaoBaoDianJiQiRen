.class public Lcom/serenegiant/net/UdpBeacon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/net/UdpBeacon$ReceiverTask;,
        Lcom/serenegiant/net/UdpBeacon$BeaconShotTask;,
        Lcom/serenegiant/net/UdpBeacon$Beacon;,
        Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;
    }
.end annotation


# static fields
.field public static final BEACON_SIZE:I = 0x17

.field private static final BEACON_UDP_PORT:I = 0x270f

.field private static final BEACON_VERSION:B = 0x1t

.field private static final CHARSET:Ljava/nio/charset/Charset;

.field private static final DEFAULT_BEACON_SEND_INTERVALS_MS:J = 0xbb8L

.field private static final SO_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "UdpBeacon"


# instance fields
.field private final beaconBytes:[B

.field private mAsyncHandler:Landroid/os/Handler;

.field private final mBeaconIntervalsMs:J

.field private final mBeaconTask:Ljava/lang/Runnable;

.field private mBeaconThread:Ljava/lang/Thread;

.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsRunning:Z

.field private final mRcvMinIntervalsMs:J

.field private mReceiveOnly:Z

.field private volatile mReleased:Z

.field private final mSync:Ljava/lang/Object;

.field private final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/net/UdpBeacon;->CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;)V
    .locals 8

    const/16 v2, 0x270f

    const-wide/16 v3, 0xbb8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/net/UdpBeacon;-><init>(Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;IJZJ)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;IJZJ)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/net/UdpBeacon;->mSync:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/net/UdpBeacon;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    new-instance v1, Lcom/serenegiant/net/UdpBeacon$2;

    invoke-direct {v1, p0}, Lcom/serenegiant/net/UdpBeacon$2;-><init>(Lcom/serenegiant/net/UdpBeacon;)V

    iput-object v1, p0, Lcom/serenegiant/net/UdpBeacon;->mBeaconTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, "UdpBeaconAsync"

    .line 12
    invoke-static {p1}, Lcom/serenegiant/utils/HandlerThreadHandler;->createHandler(Ljava/lang/String;)Lcom/serenegiant/utils/HandlerThreadHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/net/UdpBeacon;->mAsyncHandler:Landroid/os/Handler;

    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/net/UdpBeacon;->uuid:Ljava/util/UUID;

    .line 14
    new-instance v0, Lcom/serenegiant/net/UdpBeacon$Beacon;

    invoke-direct {v0, p1, p2}, Lcom/serenegiant/net/UdpBeacon$Beacon;-><init>(Ljava/util/UUID;I)V

    .line 15
    invoke-virtual {v0}, Lcom/serenegiant/net/UdpBeacon$Beacon;->asBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/net/UdpBeacon;->beaconBytes:[B

    .line 16
    iput-wide p3, p0, Lcom/serenegiant/net/UdpBeacon;->mBeaconIntervalsMs:J

    .line 17
    iput-boolean p5, p0, Lcom/serenegiant/net/UdpBeacon;->mReceiveOnly:Z

    .line 18
    iput-wide p6, p0, Lcom/serenegiant/net/UdpBeacon;->mRcvMinIntervalsMs:J

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;J)V
    .locals 8

    const/16 v2, 0x270f

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/net/UdpBeacon;-><init>(Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;IJZJ)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;JZ)V
    .locals 8

    const/16 v2, 0x270f

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/net/UdpBeacon;-><init>(Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;IJZJ)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;JZJ)V
    .locals 8

    const/16 v2, 0x270f

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    move-wide v6, p5

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/net/UdpBeacon;-><init>(Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;IJZJ)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;Z)V
    .locals 8

    const/16 v2, 0x270f

    const-wide/16 v3, 0xbb8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/net/UdpBeacon;-><init>(Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;IJZJ)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;ZJ)V
    .locals 8

    const/16 v2, 0x270f

    const-wide/16 v3, 0xbb8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v6, p3

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/net/UdpBeacon;-><init>(Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;IJZJ)V

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/net/UdpBeacon;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/net/UdpBeacon;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/serenegiant/net/UdpBeacon;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/serenegiant/net/UdpBeacon;->mReleased:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/serenegiant/net/UdpBeacon;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/net/UdpBeacon;->mBeaconThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/serenegiant/net/UdpBeacon;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/serenegiant/net/UdpBeacon;->mRcvMinIntervalsMs:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/serenegiant/net/UdpBeacon;)Ljava/util/UUID;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/net/UdpBeacon;->uuid:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/serenegiant/net/UdpBeacon;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/net/UdpBeacon;->mAsyncHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/serenegiant/net/UdpBeacon;Lcom/serenegiant/net/UdpSocket;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/net/UdpBeacon;->sendBeacon(Lcom/serenegiant/net/UdpSocket;)V

    return-void
.end method

.method static synthetic access$300(Lcom/serenegiant/net/UdpBeacon;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/serenegiant/net/UdpBeacon;->mBeaconIntervalsMs:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/serenegiant/net/UdpBeacon;Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/net/UdpBeacon;->waitWithoutException(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/serenegiant/net/UdpBeacon;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/net/UdpBeacon;->callOnError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$700(Lcom/serenegiant/net/UdpBeacon;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/serenegiant/net/UdpBeacon;->mIsRunning:Z

    return p0
.end method

.method static synthetic access$702(Lcom/serenegiant/net/UdpBeacon;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/net/UdpBeacon;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$800(Lcom/serenegiant/net/UdpBeacon;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/serenegiant/net/UdpBeacon;->mReceiveOnly:Z

    return p0
.end method

.method static synthetic access$900(Lcom/serenegiant/net/UdpBeacon;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/net/UdpBeacon;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method private final callOnError(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/net/UdpBeacon;->mReleased:Z

    if-eqz v0, :cond_0

    const-string v0, "UdpBeacon"

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/net/UdpBeacon;->mAsyncHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 5
    new-instance v2, Lcom/serenegiant/net/UdpBeacon$1;

    invoke-direct {v2, p0, p1}, Lcom/serenegiant/net/UdpBeacon$1;-><init>(Lcom/serenegiant/net/UdpBeacon;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private checkReleased()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/net/UdpBeacon;->mReleased:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendBeacon(Lcom/serenegiant/net/UdpSocket;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon;->beaconBytes:[B

    invoke-virtual {p1, v0}, Lcom/serenegiant/net/UdpSocket;->broadcast([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "UdpBeacon"

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private waitWithoutException(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    const/4 p2, 0x1

    .line 3
    :goto_0
    :try_start_1
    monitor-exit p1

    return p2

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method


# virtual methods
.method public addCallback(Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/net/UdpBeacon;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public isActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/net/UdpBeacon;->mIsRunning:Z

    return v0
.end method

.method public isReceiveOnly()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/net/UdpBeacon;->mReceiveOnly:Z

    return v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/net/UdpBeacon;->mReleased:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/serenegiant/net/UdpBeacon;->mReleased:Z

    .line 3
    invoke-virtual {p0}, Lcom/serenegiant/net/UdpBeacon;->stop()V

    .line 4
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 5
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/net/UdpBeacon;->mAsyncHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v1, 0x0

    .line 8
    :try_start_2
    iput-object v1, p0, Lcom/serenegiant/net/UdpBeacon;->mAsyncHandler:Landroid/os/Handler;

    .line 9
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public removeCallback(Lcom/serenegiant/net/UdpBeacon$UdpBeaconCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setReceiveOnly(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/serenegiant/net/UdpBeacon;->checkReleased()V

    .line 2
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/serenegiant/net/UdpBeacon;->mIsRunning:Z

    if-nez v1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/serenegiant/net/UdpBeacon;->mReceiveOnly:Z

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "beacon is already active"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public shot()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/serenegiant/net/UdpBeacon;->shot(I)V

    return-void
.end method

.method public shot(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/serenegiant/net/UdpBeacon;->checkReleased()V

    .line 3
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/serenegiant/net/UdpBeacon$BeaconShotTask;

    invoke-direct {v2, p0, p1}, Lcom/serenegiant/net/UdpBeacon$BeaconShotTask;-><init>(Lcom/serenegiant/net/UdpBeacon;I)V

    const-string p1, "UdpOneShotBeaconTask"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/serenegiant/net/UdpBeacon;->checkReleased()V

    .line 2
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/net/UdpBeacon;->mBeaconThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/serenegiant/net/UdpBeacon;->mIsRunning:Z

    .line 5
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/serenegiant/net/UdpBeacon;->mBeaconTask:Ljava/lang/Runnable;

    const-string v3, "UdpBeaconTask"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/serenegiant/net/UdpBeacon;->mBeaconThread:Ljava/lang/Thread;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/serenegiant/net/UdpBeacon;->mIsRunning:Z

    .line 2
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/net/UdpBeacon;->mBeaconThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lcom/serenegiant/net/UdpBeacon;->mBeaconThread:Ljava/lang/Thread;

    .line 5
    iget-object v2, p0, Lcom/serenegiant/net/UdpBeacon;->mSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 9
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UdpBeacon"

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
