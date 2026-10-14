.class public Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;,
        Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$d;,
        Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$c;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "GnssStatusObserver"


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/location/GnssStatus$Callback;

.field private d:Landroid/location/GpsStatus$Listener;

.field private e:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->b:Ljava/util/Set;

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->a:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;Landroid/location/GnssStatus;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->f(Landroid/location/GnssStatus;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->g(I)V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->e()I

    move-result p0

    return p0
.end method

.method private e()I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->a:Landroid/location/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-gt v2, v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 6
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private f(Landroid/location/GnssStatus;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method

.method private g(I)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;->NONE:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    const/4 v1, 0x3

    if-lez p1, :cond_0

    if-gt p1, v1, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;->LOWEST:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-le p1, v1, :cond_1

    if-gt p1, v2, :cond_1

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;->MIDDLE:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    goto :goto_0

    :cond_1
    if-le p1, v2, :cond_2

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;->HIGHEST:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    .line 5
    :cond_2
    :goto_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$d;

    invoke-direct {v1, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$d;-><init>(ILcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->e:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$d;

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$c;

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->e:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$d;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$c;->a(Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$d;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public d()Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$d;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->e:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$d;

    const/4 v1, 0x0

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;->NONE:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$d;-><init>(ILcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssStatus;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->e:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$d;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->e:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$d;

    return-object v0
.end method

.method public h()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->c:Landroid/location/GnssStatus$Callback;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->c:Landroid/location/GnssStatus$Callback;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->c:Landroid/location/GnssStatus$Callback;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$b;-><init>(Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->d:Landroid/location/GpsStatus$Listener;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->a:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    :goto_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->c:Landroid/location/GnssStatus$Callback;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->a:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->d:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->a:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    :cond_1
    :goto_0
    return-void
.end method
