.class public final Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0002J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010J6\u0010\u0013\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00042\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00152\u0016\u0010\u0016\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0012\u0004\u0012\u00020\t\u0018\u00010\u0017J\u001e\u0010\u0019\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;",
        "",
        "()V",
        "newRtcmVersion",
        "",
        "sendIndex",
        "requestDeviceId",
        "",
        "sendBoxVersion",
        "",
        "version",
        "sendCarMessage",
        "carModel",
        "",
        "sendRtcmNew",
        "rtcmBytes",
        "",
        "index",
        "sendRtcmPack",
        "setBoxVersion",
        "function0",
        "Lkotlin/Function0;",
        "function1",
        "Lkotlin/Function1;",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveBoxVersionInfo;",
        "setCarModel",
        "signal_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->g(I)V

    return-void
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->i(B)V

    return-void
.end method

.method public static synthetic c(I)[B
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->h(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(B)[B
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->j(B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e([B)[B
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->m([B)[B

    move-result-object p0

    return-object p0
.end method

.method private final g(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderBoxVersion:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/f;

    invoke-direct {v2, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/f;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z

    return-void
.end method

.method private static final h(I)[B
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    int-to-short p0, p0

    .line 2
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p0

    return-object p0
.end method

.method private final i(B)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderSetCarModel:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/g;

    invoke-direct {v2, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/g;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z

    return-void
.end method

.method private static final j(B)[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method private final k([BI)V
    .locals 9

    .line 1
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;

    .line 2
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$1;

    invoke-direct {v5, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$1;-><init>([BI)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$2;

    invoke-direct {v6, p2, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$2;-><init>(I[B)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$3;

    invoke-direct {v7, p2, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$3;-><init>(I[B)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x7d0

    move-object v0, v8

    .line 3
    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 4
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    return-void
.end method

.method private static final m([B)[B
    .locals 2

    const-string v0, "$rtcmBytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 2
    array-length v1, p0

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    .line 3
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->d([B)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized f()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderRequestHarderWareInfo:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l([B)V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "rtcmBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->m()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->k()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->j()V

    .line 6
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0xffff

    if-eqz v0, :cond_3

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->b:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->k([BI)V

    .line 8
    sget p1, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->b:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->b:I

    if-le p1, v2, :cond_2

    .line 9
    sput v1, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_2
    monitor-exit p0

    return-void

    .line 11
    :cond_3
    :try_start_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->e()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->i()I

    move-result v0

    const/16 v3, 0x5c

    if-lt v0, v3, :cond_5

    .line 13
    sget v0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->b:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->k([BI)V

    .line 14
    sget p1, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->b:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->b:I

    if-le p1, v2, :cond_6

    .line 15
    sput v1, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->b:I

    goto :goto_0

    .line 16
    :cond_5
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m0;

    const/4 v2, 0x0

    const-wide/16 v3, 0x7d0

    .line 17
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmPack$2;

    invoke-direct {v5, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmPack$2;-><init>([B)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmPack$3;

    invoke-direct {v6, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmPack$3;-><init>([B)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmPack$4;

    invoke-direct {v7, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmPack$4;-><init>([B)V

    move-object v0, v8

    .line 18
    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 19
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 21
    :cond_7
    :goto_1
    :try_start_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderSendRtcm:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/h;

    invoke-direct {v2, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/h;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized n(ILkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/f;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/f;

    const/16 v2, 0xa

    const-wide/16 v3, 0x3e8

    .line 2
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$setBoxVersion$1;

    invoke-direct {v5, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$setBoxVersion$1;-><init>(I)V

    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    move-object v0, v8

    move-object v6, p2

    move-object v7, p3

    .line 3
    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 4
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized o(BLkotlin/jvm/b/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j;

    const/4 v2, 0x5

    const-wide/16 v3, 0x5dc

    .line 2
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$setCarModel$1;

    invoke-direct {v5, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$setCarModel$1;-><init>(B)V

    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const/4 v7, 0x0

    move-object v0, v8

    move-object v6, p2

    .line 3
    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 4
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
