.class public final Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\nJ\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u000e\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\rJ\u000e\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0017J\u000e\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000cj\u0008\u0012\u0004\u0012\u00020\r`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/JLocationManager;",
        "",
        "()V",
        "gnssStatusObserver",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;",
        "hasObdGps",
        "",
        "internalGps",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/InternalGps;",
        "latestLocation",
        "Landroid/location/Location;",
        "listenerList",
        "Ljava/util/HashSet;",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/DefaultLocationListener;",
        "Lkotlin/collections/HashSet;",
        "addListener",
        "",
        "listener",
        "getGnssSignal",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssSignal;",
        "getLatestLocation",
        "onLocationChanged",
        "now",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/LocationModel;",
        "removeListener",
        "start",
        "context",
        "Landroid/content/Context;",
        "stop",
        "updateDebugLocation",
        "location",
        "updateOBDLocation",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

.field private static b:Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;

.field private static c:Z

.field private static final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;

.field private static final f:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->d:Ljava/util/HashSet;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->e:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;

    .line 3
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->f:Landroid/location/Location;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->e:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;

    return-object v0
.end method

.method public static final synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->c:Z

    return v0
.end method

.method public static final synthetic c(Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/signal/center/model/b;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/b;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->i(Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V

    return-void
.end method

.method private final h(Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->f:Landroid/location/Location;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/e/o;->a:Landroid/location/Location;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->d:Ljava/util/HashSet;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/handle/gps/b;

    invoke-direct {v2, v1, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V

    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/a;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->u(Lcn/mucang/android/jiakaoyi/signal/c/d$a;)V

    return-void
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V
    .locals 1

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$now"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    const-string v0, "now.location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/signal/center/model/b;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z
    .locals 1

    const-string v0, "$now"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/b;Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    const/4 p1, 0x3

    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final d(Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()Landroid/location/Location;
    .locals 2

    .line 1
    new-instance v0, Landroid/location/Location;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->f:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    return-object v0
.end method

.method public final k(Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final l(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->m(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j$a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j$a;-><init>()V

    .line 7
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/b;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/b;-><init>()V

    .line 8
    invoke-direct {v0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/a;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;

    .line 9
    :cond_1
    :try_start_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :goto_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->e:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->h()V

    return-void
.end method

.method public final m(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;->b()V

    :goto_0
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->e:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->i()V

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public final n(Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V

    :cond_0
    return-void
.end method

.method public final o(Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;->b()V

    :goto_0
    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->b:Lcn/mucang/android/jiakaoyi/signal/handle/gps/i;

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->e:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->i()V

    :cond_1
    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->c:Z

    .line 6
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->h()V

    return-void
.end method
