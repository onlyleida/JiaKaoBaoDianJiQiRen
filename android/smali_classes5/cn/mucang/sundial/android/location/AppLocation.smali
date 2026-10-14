.class public final Lcn/mucang/sundial/android/location/AppLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000U\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b*\u0001\"\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u00089\u0010\u0017J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\"\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u001e8\u0002@\u0003X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u0012\u0004\u0008!\u0010\u0017R\u0016\u0010#\u001a\u00020\"8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010%\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010\u001aR\u0016\u0010&\u001a\u00020\u001b8\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008&\u0010\u001dR.\u0010)\u001a\u0004\u0018\u00010\'2\u0008\u0010(\u001a\u0004\u0018\u00010\'8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u0016\u00100\u001a\u00020/8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00102\u001a\u00020\u001b8\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00082\u0010\u001dR\u0016\u00103\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u00083\u0010\u001aR\"\u00104\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u0010\u0004\"\u0004\u00087\u00108\u00a8\u0006:"
    }
    d2 = {
        "Lcn/mucang/sundial/android/location/AppLocation;",
        "",
        "",
        "isLocationValid",
        "()Z",
        "",
        "lon",
        "lat",
        "(DD)Z",
        "Landroid/location/Location;",
        "location",
        "Lkotlin/v;",
        "onGetLocation",
        "(Landroid/location/Location;)V",
        "arg",
        "format",
        "(D)D",
        "Lcn/mucang/sundial/android/location/DefaultLocationListener;",
        "listener",
        "addListener",
        "(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V",
        "removeListener",
        "startLocation",
        "()V",
        "stopLocation",
        "gpsSpeed",
        "D",
        "",
        "SatelliteCount",
        "Ljava/lang/String;",
        "",
        "outerListener",
        "Ljava/util/List;",
        "getOuterListener$annotations",
        "cn/mucang/sundial/android/location/AppLocation$locationListener$1",
        "locationListener",
        "Lcn/mucang/sundial/android/location/AppLocation$locationListener$1;",
        "latitude",
        "TimeToFirstFix",
        "Lcn/mucang/sundial/android/location/LocationStrategy;",
        "value",
        "locationStrategy",
        "Lcn/mucang/sundial/android/location/LocationStrategy;",
        "getLocationStrategy",
        "()Lcn/mucang/sundial/android/location/LocationStrategy;",
        "setLocationStrategy",
        "(Lcn/mucang/sundial/android/location/LocationStrategy;)V",
        "Ljava/text/DecimalFormat;",
        "formatter",
        "Ljava/text/DecimalFormat;",
        "TAG",
        "longitude",
        "init",
        "Z",
        "getInit",
        "setInit",
        "(Z)V",
        "<init>",
        "base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/android/location/AppLocation;

.field public static final SatelliteCount:Ljava/lang/String; = "SatelliteCount"

.field public static final TAG:Ljava/lang/String; = "AppLocation"

.field public static final TimeToFirstFix:Ljava/lang/String; = "TimeToFirstFix"

.field private static final formatter:Ljava/text/DecimalFormat;

.field public static volatile gpsSpeed:D

.field private static volatile init:Z

.field public static volatile latitude:D

.field private static final locationListener:Lcn/mucang/sundial/android/location/AppLocation$locationListener$1;

.field private static locationStrategy:Lcn/mucang/sundial/android/location/LocationStrategy;

.field public static volatile longitude:D

.field private static final outerListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/location/DefaultLocationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/location/AppLocation;

    invoke-direct {v0}, Lcn/mucang/sundial/android/location/AppLocation;-><init>()V

    sput-object v0, Lcn/mucang/sundial/android/location/AppLocation;->INSTANCE:Lcn/mucang/sundial/android/location/AppLocation;

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcn/mucang/sundial/android/location/AppLocation;->outerListener:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.######"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 5
    sput-object v0, Lcn/mucang/sundial/android/location/AppLocation;->formatter:Ljava/text/DecimalFormat;

    .line 6
    new-instance v0, Lcn/mucang/sundial/android/location/AppLocation$locationListener$1;

    invoke-direct {v0}, Lcn/mucang/sundial/android/location/AppLocation$locationListener$1;-><init>()V

    sput-object v0, Lcn/mucang/sundial/android/location/AppLocation;->locationListener:Lcn/mucang/sundial/android/location/AppLocation$locationListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$onGetLocation(Lcn/mucang/sundial/android/location/AppLocation;Landroid/location/Location;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/location/AppLocation;->onGetLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static final addListener(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/location/AppLocation;->outerListener:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final format(D)D
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/location/AppLocation;->formatter:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "formatter.format(arg)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    return-wide p1
.end method

.method private static synthetic getOuterListener$annotations()V
    .locals 0

    return-void
.end method

.method public static final isLocationValid()Z
    .locals 4

    .line 1
    sget-wide v0, Lcn/mucang/sundial/android/location/AppLocation;->longitude:D

    sget-wide v2, Lcn/mucang/sundial/android/location/AppLocation;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/sundial/android/location/AppLocation;->isLocationValid(DD)Z

    move-result v0

    return v0
.end method

.method private static final isLocationValid(DD)Z
    .locals 3

    const-wide v0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    cmpl-double p0, p2, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final onGetLocation(Landroid/location/Location;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/sundial/android/location/AppLocation;->isLocationValid(DD)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcn/mucang/sundial/android/location/AppLocation;->format(D)D

    move-result-wide v0

    sput-wide v0, Lcn/mucang/sundial/android/location/AppLocation;->longitude:D

    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcn/mucang/sundial/android/location/AppLocation;->format(D)D

    move-result-wide v0

    sput-wide v0, Lcn/mucang/sundial/android/location/AppLocation;->latitude:D

    .line 4
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    mul-double v0, v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    sput-wide v0, Lcn/mucang/sundial/android/location/AppLocation;->gpsSpeed:D

    .line 5
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 6
    sget-object p1, Lcn/mucang/sundial/android/location/AppLocation;->outerListener:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/android/location/DefaultLocationListener;

    .line 8
    invoke-interface {v1, v0}, Lcn/mucang/sundial/android/location/DefaultLocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static final removeListener(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/location/AppLocation;->outerListener:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final declared-synchronized startLocation()V
    .locals 3

    const-class v0, Lcn/mucang/sundial/android/location/AppLocation;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcn/mucang/sundial/android/location/AppLocation;->init:Z

    if-nez v1, :cond_1

    .line 2
    sget-object v1, Lcn/mucang/sundial/android/location/AppLocation;->locationStrategy:Lcn/mucang/sundial/android/location/LocationStrategy;

    if-eqz v1, :cond_0

    sget-object v2, Lcn/mucang/sundial/android/location/AppLocation;->locationListener:Lcn/mucang/sundial/android/location/AppLocation$locationListener$1;

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/location/LocationStrategy;->start(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->start()V

    const/4 v1, 0x1

    .line 4
    sput-boolean v1, Lcn/mucang/sundial/android/location/AppLocation;->init:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized stopLocation()V
    .locals 2

    const-class v0, Lcn/mucang/sundial/android/location/AppLocation;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcn/mucang/sundial/android/location/AppLocation;->init:Z

    if-eqz v1, :cond_1

    .line 2
    sget-object v1, Lcn/mucang/sundial/android/location/AppLocation;->locationStrategy:Lcn/mucang/sundial/android/location/LocationStrategy;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/mucang/sundial/android/location/LocationStrategy;->stop()V

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->stop()V

    const/4 v1, 0x0

    .line 4
    sput-boolean v1, Lcn/mucang/sundial/android/location/AppLocation;->init:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final getInit()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/sundial/android/location/AppLocation;->init:Z

    return v0
.end method

.method public final getLocationStrategy()Lcn/mucang/sundial/android/location/LocationStrategy;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/location/AppLocation;->locationStrategy:Lcn/mucang/sundial/android/location/LocationStrategy;

    return-object v0
.end method

.method public final setInit(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcn/mucang/sundial/android/location/AppLocation;->init:Z

    return-void
.end method

.method public final setLocationStrategy(Lcn/mucang/sundial/android/location/LocationStrategy;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/sundial/android/location/AppLocation;->init:Z

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/location/AppLocation;->stopLocation()V

    .line 3
    sput-object p1, Lcn/mucang/sundial/android/location/AppLocation;->locationStrategy:Lcn/mucang/sundial/android/location/LocationStrategy;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/location/AppLocation;->startLocation()V

    :cond_0
    return-void
.end method
