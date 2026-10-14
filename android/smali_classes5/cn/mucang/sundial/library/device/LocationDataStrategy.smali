.class public final Lcn/mucang/sundial/library/device/LocationDataStrategy;
.super Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/device/LocationDataStrategy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000W\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u001e\u0018\u0000 %2\u00020\u0001:\u0001%B\u0007\u00a2\u0006\u0004\u0008$\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0004R\u0016\u0010\u000c\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\rR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u001e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010\"\u001a\u00020!8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006&"
    }
    d2 = {
        "Lcn/mucang/sundial/library/device/LocationDataStrategy;",
        "Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;",
        "Lkotlin/v;",
        "setRpmAndGpsSpeed",
        "()V",
        "readSavedMileageIfNeed",
        "Landroid/content/Context;",
        "context",
        "start",
        "(Landroid/content/Context;)V",
        "stop",
        "",
        "lastSavedTime",
        "J",
        "lastLocationTime",
        "Ljava/util/Random;",
        "random",
        "Ljava/util/Random;",
        "Landroid/content/SharedPreferences;",
        "pref",
        "Landroid/content/SharedPreferences;",
        "Landroid/location/Location;",
        "lastLocation",
        "Landroid/location/Location;",
        "",
        "lastCourseCode",
        "Ljava/lang/String;",
        "",
        "factor",
        "F",
        "cn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1",
        "locationListener",
        "Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;",
        "Lcn/mucang/sundial/android/model/CarModel;",
        "carModel",
        "Lcn/mucang/sundial/android/model/CarModel;",
        "<init>",
        "Companion",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcn/mucang/sundial/library/device/LocationDataStrategy$Companion;

.field private static final KEY_MILEAGE:Ljava/lang/String; = "mileage"

.field private static final PREF_NAME:Ljava/lang/String; = "loc_mileage"


# instance fields
.field private final carModel:Lcn/mucang/sundial/android/model/CarModel;

.field private factor:F

.field private lastCourseCode:Ljava/lang/String;

.field private lastLocation:Landroid/location/Location;

.field private lastLocationTime:J

.field private lastSavedTime:J

.field private final locationListener:Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;

.field private pref:Landroid/content/SharedPreferences;

.field private final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/device/LocationDataStrategy$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->Companion:Lcn/mucang/sundial/library/device/LocationDataStrategy$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/model/CarModel;

    invoke-direct {v0}, Lcn/mucang/sundial/android/model/CarModel;-><init>()V

    .line 3
    sget-object v1, Lcn/mucang/sundial/android/model/KeyState;->Start:Lcn/mucang/sundial/android/model/KeyState;

    iput-object v1, v0, Lcn/mucang/sundial/android/model/CarModel;->keyState:Lcn/mucang/sundial/android/model/KeyState;

    .line 4
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 5
    iput-object v0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->carModel:Lcn/mucang/sundial/android/model/CarModel;

    .line 6
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->random:Ljava/util/Random;

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->lastCourseCode:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->factor:F

    .line 9
    new-instance v0, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;-><init>(Lcn/mucang/sundial/library/device/LocationDataStrategy;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->locationListener:Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;

    return-void
.end method

.method public static final synthetic access$getCarModel$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Lcn/mucang/sundial/android/model/CarModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->carModel:Lcn/mucang/sundial/android/model/CarModel;

    return-object p0
.end method

.method public static final synthetic access$getDataCallBack$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;->dataCallBack:Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;

    return-object p0
.end method

.method public static final synthetic access$getFactor$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)F
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->factor:F

    return p0
.end method

.method public static final synthetic access$getLastCourseCode$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->lastCourseCode:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getLastLocation$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Landroid/location/Location;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->lastLocation:Landroid/location/Location;

    return-object p0
.end method

.method public static final synthetic access$getLastLocationTime$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->lastLocationTime:J

    return-wide v0
.end method

.method public static final synthetic access$getLastSavedTime$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->lastSavedTime:J

    return-wide v0
.end method

.method public static final synthetic access$getPref$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->pref:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "pref"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$readSavedMileageIfNeed(Lcn/mucang/sundial/library/device/LocationDataStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->readSavedMileageIfNeed()V

    return-void
.end method

.method public static final synthetic access$setDataCallBack$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;->dataCallBack:Lcn/mucang/sundial/android/tcp/data/gnss/DataCallBack;

    return-void
.end method

.method public static final synthetic access$setFactor$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->factor:F

    return-void
.end method

.method public static final synthetic access$setLastCourseCode$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->lastCourseCode:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setLastLocation$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;Landroid/location/Location;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->lastLocation:Landroid/location/Location;

    return-void
.end method

.method public static final synthetic access$setLastLocationTime$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->lastLocationTime:J

    return-void
.end method

.method public static final synthetic access$setLastSavedTime$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->lastSavedTime:J

    return-void
.end method

.method public static final synthetic access$setPref$p(Lcn/mucang/sundial/library/device/LocationDataStrategy;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->pref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static final synthetic access$setRpmAndGpsSpeed(Lcn/mucang/sundial/library/device/LocationDataStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/device/LocationDataStrategy;->setRpmAndGpsSpeed()V

    return-void
.end method

.method private final readSavedMileageIfNeed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->carModel:Lcn/mucang/sundial/android/model/CarModel;

    iget v0, v0, Lcn/mucang/sundial/android/model/CarModel;->totalDistance:F

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->pref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    const-string v2, "mileage"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->random:Ljava/util/Random;

    const/16 v1, 0x159

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x170a

    int-to-float v0, v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->carModel:Lcn/mucang/sundial/android/model/CarModel;

    iput v0, v1, Lcn/mucang/sundial/android/model/CarModel;->totalDistance:F

    .line 5
    iput v3, v1, Lcn/mucang/sundial/android/model/CarModel;->currentDistance:F

    goto :goto_0

    :cond_1
    const-string v0, "pref"

    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private final setRpmAndGpsSpeed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->carModel:Lcn/mucang/sundial/android/model/CarModel;

    iget v1, v0, Lcn/mucang/sundial/android/model/CarModel;->speed:F

    const/16 v2, 0x8

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/lit16 v1, v1, 0x384

    iget-object v2, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->random:Ljava/util/Random;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcn/mucang/sundial/android/model/CarModel;->rpm:I

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->carModel:Lcn/mucang/sundial/android/model/CarModel;

    sget-wide v1, Lcn/mucang/sundial/android/location/AppLocation;->gpsSpeed:D

    double-to-float v1, v1

    iput v1, v0, Lcn/mucang/sundial/android/model/CarModel;->gpsSpeed:F

    return-void
.end method


# virtual methods
.method public start(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loc_mileage"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->pref:Landroid/content/SharedPreferences;

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->locationListener:Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;

    invoke-static {p1}, Lcn/mucang/sundial/android/location/AppLocation;->addListener(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/device/LocationDataStrategy;->locationListener:Lcn/mucang/sundial/library/device/LocationDataStrategy$locationListener$1;

    invoke-static {v0}, Lcn/mucang/sundial/android/location/AppLocation;->removeListener(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V

    return-void
.end method
