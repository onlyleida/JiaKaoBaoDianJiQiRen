.class public final Lcn/mucang/sundial/library/device/DebugLocationStrategy;
.super Lcn/mucang/sundial/android/location/LocationStrategy;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u000eJ\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00178\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/sundial/library/device/DebugLocationStrategy;",
        "Lcn/mucang/sundial/android/location/LocationStrategy;",
        "",
        "lon",
        "lat",
        "Landroid/location/Location;",
        "makeLocation",
        "(DD)Landroid/location/Location;",
        "Lcn/mucang/sundial/android/location/DefaultLocationListener;",
        "locationListener",
        "Lkotlin/v;",
        "start",
        "(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V",
        "stop",
        "()V",
        "coldReboot",
        "",
        "mode",
        "setStartMode",
        "(I)V",
        "Lcn/mucang/sundial/android/timer/SundialTimer;",
        "timer",
        "Lcn/mucang/sundial/android/timer/SundialTimer;",
        "",
        "locations",
        "Ljava/util/List;",
        "locationIndex",
        "I",
        "<init>",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private locationIndex:I

.field private final locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Lcn/mucang/sundial/android/timer/SundialTimer;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/location/LocationStrategy;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/location/Location;

    const-wide v1, 0x405c99e0589acbc9L    # 114.404318

    const-wide v3, 0x403e7ea400fba882L    # 30.49469

    .line 2
    invoke-direct {p0, v1, v2, v3, v4}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->makeLocation(DD)Landroid/location/Location;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide v1, 0x405c99ecedd48451L    # 114.405086

    const-wide v3, 0x403e7e9dc725c3dfL    # 30.494595

    .line 3
    invoke-direct {p0, v1, v2, v3, v4}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->makeLocation(DD)Landroid/location/Location;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-wide v1, 0x405c99f9830e3cdaL    # 114.405854

    const-wide v3, 0x403e7e977c88e79bL    # 30.494499

    .line 4
    invoke-direct {p0, v1, v2, v3, v4}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->makeLocation(DD)Landroid/location/Location;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-wide v1, 0x405c99f7ec3547e0L    # 114.405757

    const-wide v3, 0x403e7e6dce39b457L    # 30.493863

    .line 5
    invoke-direct {p0, v1, v2, v3, v4}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->makeLocation(DD)Landroid/location/Location;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-wide v1, 0x405c99f6555c52e7L    # 114.40566

    const-wide v3, 0x403e7e440f238972L    # 30.493226

    .line 6
    invoke-direct {p0, v1, v2, v3, v4}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->makeLocation(DD)Landroid/location/Location;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-wide v1, 0x405c99f4fd6d7e89L    # 114.405578

    const-wide v3, 0x403e7e176ddaceeeL    # 30.492545

    .line 7
    invoke-direct {p0, v1, v2, v3, v4}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->makeLocation(DD)Landroid/location/Location;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-wide v1, 0x405c99f3a14cec42L    # 114.405495

    const-wide v3, 0x403e7deabbcb1cc9L    # 30.491863

    .line 8
    invoke-direct {p0, v1, v2, v3, v4}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->makeLocation(DD)Landroid/location/Location;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-wide v1, 0x405c99e736049ecbL    # 114.404737

    const-wide v3, 0x403e7df2239e6abaL    # 30.491976

    .line 9
    invoke-direct {p0, v1, v2, v3, v4}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->makeLocation(DD)Landroid/location/Location;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-wide v1, 0x405c99dac68a936cL    # 114.403978

    const-wide v3, 0x403e7df97aaac109L    # 30.492088

    .line 10
    invoke-direct {p0, v1, v2, v3, v4}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->makeLocation(DD)Landroid/location/Location;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-wide v1, 0x405c99dc5d638866L    # 114.404075

    const-wide v3, 0x403e7e24894c447cL    # 30.492745

    .line 11
    invoke-direct {p0, v1, v2, v3, v4}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->makeLocation(DD)Landroid/location/Location;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-wide v1, 0x405c99ddf43c7d5fL    # 114.404172

    const-wide v3, 0x403e7e4f97edc7efL    # 30.493402

    .line 12
    invoke-direct {p0, v1, v2, v3, v4}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->makeLocation(DD)Landroid/location/Location;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-wide v1, 0x405c99df266ba494L    # 114.404245

    const-wide v3, 0x403e7e79cc74b839L    # 30.494046

    .line 13
    invoke-direct {p0, v1, v2, v3, v4}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->makeLocation(DD)Landroid/location/Location;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 14
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->locations:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getLocationIndex$p(Lcn/mucang/sundial/library/device/DebugLocationStrategy;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->locationIndex:I

    return p0
.end method

.method public static final synthetic access$getLocations$p(Lcn/mucang/sundial/library/device/DebugLocationStrategy;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->locations:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setLocationIndex$p(Lcn/mucang/sundial/library/device/DebugLocationStrategy;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->locationIndex:I

    return-void
.end method

.method private final makeLocation(DD)Landroid/location/Location;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SatelliteCount"

    const-string v2, "4/10"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TimeToFirstFix"

    const-wide/16 v2, 0x19

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4
    new-instance v1, Landroid/location/Location;

    const-string v2, "debug"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    .line 6
    invoke-virtual {v1, p3, p4}, Landroid/location/Location;->setLatitude(D)V

    const/high16 p1, 0x41100000    # 9.0f

    .line 7
    invoke-virtual {v1, p1}, Landroid/location/Location;->setSpeed(F)V

    .line 8
    invoke-virtual {v1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public coldReboot()V
    .locals 0

    return-void
.end method

.method public setStartMode(I)V
    .locals 0

    return-void
.end method

.method public start(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V
    .locals 4

    const-string v0, "locationListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->stop()V

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/timer/SundialTimer;

    new-instance v1, Lcn/mucang/sundial/library/device/DebugLocationStrategy$start$1;

    invoke-direct {v1, p0, p1}, Lcn/mucang/sundial/library/device/DebugLocationStrategy$start$1;-><init>(Lcn/mucang/sundial/library/device/DebugLocationStrategy;Lcn/mucang/sundial/android/location/DefaultLocationListener;)V

    const-wide/16 v2, 0xbb8

    const/4 p1, 0x1

    invoke-direct {v0, v2, v3, p1, v1}, Lcn/mucang/sundial/android/timer/SundialTimer;-><init>(JZLcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;)V

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/timer/SundialTimer;->start()V

    .line 4
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 5
    iput-object v0, p0, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/timer/SundialTimer;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    return-void
.end method
