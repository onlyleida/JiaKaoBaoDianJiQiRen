.class public final Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0013J\u0006\u0010\u0019\u001a\u00020\rJ\u000e\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u0004J\u0006\u0010\u001c\u001a\u00020\u0017J\u0010\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;",
        "",
        "()V",
        "currentStation",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;",
        "factory",
        "Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationFactory;",
        "ggaObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GGAModel;",
        "gpsStation",
        "Lcn/mucang/jiakaoyi/uilib/rtmc/AbsGpsStation;",
        "isSwitching",
        "",
        "job",
        "Lkotlinx/coroutines/Job;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "thirdGpsListener",
        "Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;",
        "currentStationType",
        "",
        "init",
        "",
        "listener",
        "isSelfStation",
        "setStation",
        "station",
        "stop",
        "switchType",
        "targetStation",
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
.field public static final a:Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;

.field private static final b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

.field private static c:Lcn/mucang/jiakaoyi/uilib/rtmc/f;

.field private static d:Lcn/mucang/jiakaoyi/uilib/rtmc/d;

.field private static e:Lkotlinx/coroutines/t1;

.field private static f:Lkotlinx/coroutines/i0;

.field private static final g:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile h:Z

.field private static final i:Lcn/mucang/jiakaoyi/uilib/rtmc/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->a:Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    .line 2
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v0

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->f:Lkotlinx/coroutines/i0;

    .line 3
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/b;->a:Lcn/mucang/jiakaoyi/uilib/rtmc/b;

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->g:Landroidx/lifecycle/a0;

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rtmc/g;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/rtmc/g;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->i:Lcn/mucang/jiakaoyi/uilib/rtmc/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    return-object v0
.end method

.method public static final synthetic b()Lcn/mucang/jiakaoyi/uilib/rtmc/g;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->i:Lcn/mucang/jiakaoyi/uilib/rtmc/g;

    return-object v0
.end method

.method public static final synthetic c()Lcn/mucang/jiakaoyi/uilib/rtmc/d;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->d:Lcn/mucang/jiakaoyi/uilib/rtmc/d;

    return-object v0
.end method

.method public static final synthetic d()Lcn/mucang/jiakaoyi/uilib/rtmc/f;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->c:Lcn/mucang/jiakaoyi/uilib/rtmc/f;

    return-object v0
.end method

.method public static final synthetic e(Lcn/mucang/jiakaoyi/uilib/rtmc/d;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->d:Lcn/mucang/jiakaoyi/uilib/rtmc/d;

    return-void
.end method

.method public static final synthetic f(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->h:Z

    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;)V
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->d:Lcn/mucang/jiakaoyi/uilib/rtmc/d;

    if-eqz v0, :cond_1

    .line 3
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->f:Lkotlinx/coroutines/i0;

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, p0, v5}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$ggaObserver$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/rtmc/d;Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;Lkotlin/coroutines/c;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->h(Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;)V

    return-void
.end method

.method private final m(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u5207\u6362\u5230\u57fa\u7ad9:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->desc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\u5f53\u524d\u57fa\u7ad9:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->desc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    sget-boolean v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->h:Z

    if-nez v0, :cond_5

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->c:Lcn/mucang/jiakaoyi/uilib/rtmc/f;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-byte v0, v1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->station:B

    iget-byte v1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->station:B

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->d:Lcn/mucang/jiakaoyi/uilib/rtmc/d;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/rtmc/d;->c()Z

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->baseName:Ljava/lang/String;

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/e;->b:Ljava/lang/String;

    :cond_3
    const-string v0, "\u5f53\u524d\u9700\u8981\u5207\u6362\u7684\u57fa\u7ad9\u548c\u5f53\u524d\u6b63\u5728\u4f7f\u7528\u7684\u57fa\u7ad9\u7684\u7c7b\u578b\u76f8\u540c\uff0c\u4e14\u6b63\u5728\u4f7f\u7528\u7684\u57fa\u7ad9\u53ef\u7528\uff0c\u4e0d\u5207\u6362\uff0c\u8fd4\u56de"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v0

    iget-object v1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->baseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->s(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->isSelf()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->t(Z)V

    return-void

    .line 9
    :cond_4
    sput-boolean v2, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->h:Z

    .line 10
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->f:Lkotlinx/coroutines/i0;

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher$switchType$1;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;Lkotlin/coroutines/c;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    sput-object p1, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->e:Lkotlinx/coroutines/t1;

    return-void

    :cond_5
    :goto_1
    const-string p1, "\u5f53\u524d\u6b63\u5728\u8fdb\u884c\u57fa\u7ad9\u5207\u6362\uff0c\u4e00\u6b21\u53ea\u80fd\u8fdb\u884c\u4e00\u6b21\u5207\u6362\uff0c\u76f4\u63a5\u8fd4\u56de"

    .line 11
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final g()B
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    iget-byte v0, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->station:B

    return v0
.end method

.method public final i(Lcn/mucang/jiakaoyi/uilib/rtmc/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p1, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->c:Lcn/mucang/jiakaoyi/uilib/rtmc/f;

    .line 2
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->m(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;)V

    const-class p1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->g:Landroidx/lifecycle/a0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public final j()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;->isSelf()Z

    move-result v0

    return v0
.end method

.method public final l(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;)V
    .locals 1

    const-string v0, "station"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationSwitcher;->m(Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;)V

    return-void
.end method
