.class public final Lcn/mucang/android/jiakaoyi/signal/calibration/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/calibration/CalibrationCommandManager;",
        "",
        "()V",
        "calibrationWheel",
        "",
        "action",
        "",
        "angle",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final b(BS)[B
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 2
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(BS)[B
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/calibration/b;->b(BS)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(BS)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderCalibarWheel:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/calibration/a;

    invoke-direct {v2, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/calibration/a;-><init>(BS)V

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
