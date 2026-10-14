.class public Lcom/alivc/component/player/BGMPlayerEventJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final kCompleted:I = 0x6

.field public static final kPaused:I = 0x4

.field public static final kStarted:I = 0x3

.field public static final kStopped:I = 0x5

.field private static listener_handler_:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getListenerHandler()J
    .locals 2

    sget-wide v0, Lcom/alivc/component/player/BGMPlayerEventJNI;->listener_handler_:J

    return-wide v0
.end method

.method private static native onAudioData(J[[BJIIII)Z
.end method

.method private static native onError(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static onErrorEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-wide v0, Lcom/alivc/component/player/BGMPlayerEventJNI;->listener_handler_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p0, p1, p2}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onError(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native onPlayProgress(JJJ)V
.end method

.method public static onPlayProgressEvent(J)V
    .locals 6

    sget-wide v0, Lcom/alivc/component/player/BGMPlayerEventJNI;->listener_handler_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/alivc/component/player/BGMPlayerJNI;->getDuration()J

    move-result-wide v4

    move-wide v2, p0

    invoke-static/range {v0 .. v5}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onPlayProgress(JJJ)V

    return-void
.end method

.method public static onRenderAudioFrameEvent([[BJIIII)Z
    .locals 9

    sget-wide v0, Lcom/alivc/component/player/BGMPlayerEventJNI;->listener_handler_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onAudioData(J[[BJIIII)Z

    move-result p0

    return p0
.end method

.method public static onStateChangedEvent(I)V
    .locals 5

    sget-wide v0, Lcom/alivc/component/player/BGMPlayerEventJNI;->listener_handler_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1

    const/4 v2, 0x6

    if-eq p0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1, p0}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onStatusChanged(JI)V

    :goto_0
    return-void
.end method

.method private static native onStatusChanged(JI)V
.end method

.method public static setListenerHandler(J)V
    .locals 0

    sput-wide p0, Lcom/alivc/component/player/BGMPlayerEventJNI;->listener_handler_:J

    return-void
.end method
