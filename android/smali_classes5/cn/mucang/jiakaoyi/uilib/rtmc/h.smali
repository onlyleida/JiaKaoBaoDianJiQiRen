.class public final Lcn/mucang/jiakaoyi/uilib/rtmc/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/socket/o;
.implements Lcn/mucang/jiakaoyi/uilib/rtmc/f;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000i\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000*\u0001\u001a\u0008\u00c6\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001c\u001a\u00020\u001dH\u0007J\u0008\u0010\u001e\u001a\u00020\u001dH\u0016J\u0008\u0010\u001f\u001a\u00020\u001dH\u0016J\u0012\u0010 \u001a\u00020\u001d2\u0008\u0010!\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\"\u001a\u00020\u001d2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0017J\u001a\u0010\"\u001a\u00020\u001d2\u0008\u0010%\u001a\u0004\u0018\u00010\u00182\u0006\u0010&\u001a\u00020\u000fH\u0002J\u0008\u0010\'\u001a\u00020\u001dH\u0002J\u0008\u0010(\u001a\u00020\u001dH\u0007J\u0010\u0010)\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\u000cH\u0007J\u0008\u0010+\u001a\u00020\u001dH\u0007J\u0018\u0010+\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u000cH\u0007J \u0010-\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020/2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u00100\u001a\u000201H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001b\u00a8\u00062"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/rtmc/HPGpsManager;",
        "Lcn/mucang/jiakaoyi/uilib/socket/MCConnectListener;",
        "Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;",
        "()V",
        "TAG",
        "",
        "Time_To_Rtmc",
        "",
        "Time_To_Server",
        "callback",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "emptyCount",
        "",
        "gpsQuality",
        "hasSendSiteOnce",
        "",
        "isStop",
        "lastRtcmTime",
        "lock",
        "",
        "lsatUploadGpsTime",
        "restartGpsComTime",
        "rtcmList",
        "Ljava/util/LinkedList;",
        "",
        "sendRtcmTask",
        "cn/mucang/jiakaoyi/uilib/rtmc/HPGpsManager$sendRtcmTask$1",
        "Lcn/mucang/jiakaoyi/uilib/rtmc/HPGpsManager$sendRtcmTask$1;",
        "init",
        "",
        "onConnect",
        "onConnectException",
        "onData",
        "data",
        "onMessage",
        "message",
        "Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;",
        "rtcm",
        "self",
        "sendRtcm",
        "stop",
        "updateGpsBase",
        "gpsBaseId",
        "uploadConfig",
        "siteId",
        "uploadLocation",
        "location",
        "Landroid/location/Location;",
        "satelliteNumber",
        "",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/jiakaoyi/uilib/rtmc/h;

.field private static b:J

.field private static final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field

.field private static d:Z

.field private static e:Z

.field private static f:I

.field private static final g:Ljava/lang/Object;

.field private static h:J

.field private static i:I

.field private static j:J

.field private static k:Lcn/mucang/jiakaoyi/uilib/rtmc/h$a;

.field private static final l:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->a:Lcn/mucang/jiakaoyi/uilib/rtmc/h;

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->c:Ljava/util/LinkedList;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->g:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h$a;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/rtmc/h$a;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->k:Lcn/mucang/jiakaoyi/uilib/rtmc/h$a;

    .line 4
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/c;->a:Lcn/mucang/jiakaoyi/uilib/rtmc/c;

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->l:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic d(Lcn/mucang/jiakaoyi/uilib/rtmc/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->i()V

    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 10

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->a:Lcn/mucang/jiakaoyi/uilib/rtmc/h;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    sput v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->i:I

    .line 2
    sget-wide v2, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->j:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 3
    :cond_0
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sput-wide v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->j:J

    .line 4
    :cond_1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sget-wide v6, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->j:J

    sub-long/2addr v1, v6

    const-wide/16 v6, 0x7530

    cmp-long v3, v1, v6

    if-lez v3, :cond_2

    .line 5
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sput-wide v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->j:J

    .line 6
    :cond_2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 7
    sget-wide v6, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->b:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x7d0

    cmp-long v3, v6, v8

    if-gtz v3, :cond_3

    return-void

    .line 8
    :cond_3
    sget-boolean v3, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->d:Z

    if-nez v3, :cond_4

    .line 9
    invoke-static {v4, v5}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v6

    invoke-static {v4, v5}, Lcn/mucang/jiakaoyi/uilib/s/j;->f(J)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-static {v6, v7, v4}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->k(JI)Z

    move-result v3

    .line 10
    sput-boolean v3, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->d:Z

    .line 11
    :cond_4
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_5

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v7, v3, v5

    if-lez v7, :cond_5

    .line 12
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    const-string v4, "it.currentPosition.location"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v4

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p0

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->i:I

    int-to-byte p0, p0

    invoke-direct {v0, v3, v4, p0}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->l(Landroid/location/Location;IB)V

    .line 13
    :cond_5
    sput-wide v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->b:J

    return-void
.end method

.method public static final f()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->a:Lcn/mucang/jiakaoyi/uilib/rtmc/h;

    const/4 v1, 0x0

    sput-boolean v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->e:Z

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->l:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 4
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->k:Lcn/mucang/jiakaoyi/uilib/rtmc/h$a;

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 5
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->k:Lcn/mucang/jiakaoyi/uilib/rtmc/h$a;

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 6
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->b()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->Q()V

    .line 7
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->a:Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;

    invoke-virtual {v1, v0}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->i(Lcn/mucang/jiakaoyi/uilib/rtmc/f;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->e(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method private final h([BZ)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "\u81ea\u5efa"

    goto :goto_0

    :cond_0
    const-string p2, "\u4e91"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")\u957f\u5ea6="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    array-length p2, p1

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x7d

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->b(Ljava/lang/String;)V

    .line 2
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->g:Ljava/lang/Object;

    monitor-enter p2

    const/16 v0, 0xa

    if-eqz p1, :cond_2

    .line 3
    :try_start_0
    array-length v1, p1

    if-le v1, v0, :cond_2

    .line 4
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 5
    :cond_2
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 8
    sget-wide v3, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->h:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-lez p2, :cond_3

    sub-long v5, v1, v3

    const-wide/16 v7, 0x1388

    cmp-long p2, v5, v7

    if-lez p2, :cond_3

    if-eqz p1, :cond_3

    .line 9
    array-length p1, p1

    if-le p1, v0, :cond_3

    const-string p1, "\u8ddd\u79bb\u4e0a\u4e00\u5e27rtcm\u7684\u65f6\u95f4\u592a\u957f:"

    sub-long v3, v1, v3

    .line 10
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    .line 11
    :cond_3
    sput-wide v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->h:J

    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p2

    throw p1
.end method

.method private final i()V
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->e:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xa

    if-le v2, v4, :cond_1

    const-string v2, "rtcm\u6570\u636e\u79ef\u538b\u592a\u591a\u6ca1\u6709\u5f80\u4e32\u53e3/\u4e0b\u4f4d\u673a\u53d1\u9001:"

    .line 4
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    .line 5
    :goto_0
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v5

    .line 9
    :goto_1
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    if-eqz v1, :cond_3

    .line 11
    move-object v0, v1

    check-cast v0, [B

    array-length v2, v0

    if-le v2, v4, :cond_3

    const/4 v1, 0x0

    .line 12
    sput v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->f:I

    .line 13
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->l([B)V

    .line 14
    sget v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->i:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u9001rtcm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " , gpsType = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->i:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    goto :goto_3

    .line 16
    :cond_3
    sget v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->f:I

    add-int/2addr v0, v3

    sput v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->f:I

    .line 17
    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_5

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rtcm\u6570\u636e\u957f\u5ea6\u5f02\u5e38:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v1

    check-cast v2, [B

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0ccount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gpsType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    :cond_5
    if-eqz v1, :cond_6

    .line 19
    sget v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->f:I

    rem-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_6

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rtcm\u6570\u636e\u957f\u5ea6\u592a\u77ed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, [B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void

    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0

    throw v1

    :cond_7
    :goto_4
    return-void
.end method

.method public static final j()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->f(J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v2, v3, v1}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->k(JI)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static final k(JI)Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->a()I

    move-result v0

    int-to-byte v0, v0

    .line 3
    invoke-static {p0, p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/socket/u;->i(JBI)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private final l(Landroid/location/Location;IB)V
    .locals 8

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 4
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->a:Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->g()B

    move-result v6

    move v5, p2

    move v7, p3

    .line 5
    invoke-static/range {v1 .. v7}, Lcn/mucang/jiakaoyi/uilib/socket/u;->l(DDIBB)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 3
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public b([B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->h([BZ)V

    return-void
.end method

.method public c(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/DiffDataModel;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/DiffDataModel;

    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/DiffDataModel;->rtcm:[B

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->h([BZ)V

    :cond_0
    return-void
.end method

.method public onConnect()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->f(J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v2, v3, v1}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->k(JI)Z

    return-void
.end method
