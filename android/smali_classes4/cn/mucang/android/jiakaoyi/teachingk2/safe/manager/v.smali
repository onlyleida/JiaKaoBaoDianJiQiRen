.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0008\u0010\r\u001a\u00020\nH\u0007J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpecialAreaManager;",
        "",
        "()V",
        "callback",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "currentArea",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;",
        "exe",
        "Ljava/util/concurrent/ExecutorService;",
        "doTrigger",
        "",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "init",
        "saveSetDesc",
        "",
        "coefficients",
        "",
        "teachbase_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;

.field private static final b:Ljava/util/concurrent/ExecutorService;

.field private static c:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

.field private static final d:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->b:Ljava/util/concurrent/ExecutorService;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/h;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->d:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method private final b(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/j;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/j;-><init>(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final c(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    const-string v0, "$signal"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/e;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 4
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->from(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p0

    .line 5
    invoke-interface {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/e;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    move-result-object p0

    .line 7
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/i;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->id:Ljava/lang/String;

    :goto_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    if-nez v2, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->id:Ljava/lang/String;

    :goto_1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_7

    :cond_2
    if-nez p0, :cond_3

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    if-eqz v1, :cond_3

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;-><init>()V

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;->coefficients:[I

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;-><init>()V

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;->coefficients:[I

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->i([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " : \u4ece\u7279\u6b8a\u533a\u57df\u51fa\u6765"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->m([ILjava/lang/String;)V

    goto :goto_6

    :cond_3
    const-string v1, " : \u8fdb\u5165\u7279\u6b8a\u533a\u57df"

    if-eqz p0, :cond_6

    .line 6
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    if-eqz v2, :cond_6

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->safeData:Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;

    if-nez v2, :cond_4

    move-object v3, v0

    goto :goto_2

    :cond_4
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;->coefficients:[I

    .line 8
    :goto_2
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;->coefficients:[I

    :goto_3
    invoke-direct {v4, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->i([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->m([ILjava/lang/String;)V

    goto :goto_6

    :cond_6
    if-eqz p0, :cond_9

    .line 10
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    if-nez v2, :cond_9

    .line 11
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->safeData:Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;

    if-nez v2, :cond_7

    move-object v3, v0

    goto :goto_4

    :cond_7
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;->coefficients:[I

    .line 12
    :goto_4
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    iget-object v0, v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;->coefficients:[I

    :goto_5
    invoke-direct {v4, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->i([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->m([ILjava/lang/String;)V

    .line 14
    :cond_9
    :goto_6
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    :cond_a
    :goto_7
    return-void
.end method

.method public static final e()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->d:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->d(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V

    return-void
.end method

.method public static synthetic h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method private final i([I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const-string p1, "0"

    return-object p1
.end method
