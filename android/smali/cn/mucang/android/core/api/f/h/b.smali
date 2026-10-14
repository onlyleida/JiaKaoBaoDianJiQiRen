.class public final Lcn/mucang/android/core/api/f/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/f/e;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u0007H\u0016J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0007H\u0016J\u0008\u0010\u0013\u001a\u00020\u0007H\u0016J\u0008\u0010\u0014\u001a\u00020\u0007H\u0016J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u0016\u001a\u00020\u0007H\u0016J\u0008\u0010\u0017\u001a\u00020\u0007H\u0016J\u0008\u0010\u0018\u001a\u00020\u0007H\u0016J\u0008\u0010\u0019\u001a\u00020\u0007H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\tH\u0016J\u0008\u0010\u001d\u001a\u00020\tH\u0016J\n\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/android/core/api/url/impl/DefaultPrivacyBasicParamsProvider;",
        "Lcn/mucang/android/core/api/url/PrivacyBasicParamsProvider;",
        "()V",
        "metrics",
        "Landroid/util/DisplayMetrics;",
        "kotlin.jvm.PlatformType",
        "getAndroidId",
        "",
        "getApiLevel",
        "",
        "getAppFirstInstallTime",
        "",
        "getAppLastUpdateTime",
        "getAppUser",
        "getCurrentLocation",
        "Lcn/mucang/android/core/location/LocationResult;",
        "checkPermission",
        "",
        "getDeviceId",
        "getDeviceName",
        "getFirstLaunchTime",
        "getOaid",
        "getPhoneBrand",
        "getPhoneModel",
        "getRomName",
        "getRomVersion",
        "getScreenDpi",
        "",
        "getScreenHeight",
        "getScreenWidth",
        "getUserCityProvider",
        "Lcn/mucang/android/core/config/UserCityProvider;",
        "core-lib_release"
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
.field public static final a:Lcn/mucang/android/core/api/f/h/b;

.field private static final b:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/core/api/f/h/b;

    invoke-direct {v0}, Lcn/mucang/android/core/api/f/h/b;-><init>()V

    sput-object v0, Lcn/mucang/android/core/api/f/h/b;->a:Lcn/mucang/android/core/api/f/h/b;

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/j;->i()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/api/f/h/b;->b:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/d0;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Z)Lcn/mucang/android/core/location/c;
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/location/LocationUtils;->e(Z)Lcn/mucang/android/core/location/c;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/identity/PrivacyDataManager;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/d0;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getVersion()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFirstLaunchTime()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/f/h/b;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public g()Lcn/mucang/android/core/config/w;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->s()Lcn/mucang/android/core/config/w;

    move-result-object v0

    return-object v0
.end method

.method public getApiLevel()I
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/p;->a()I

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/identity/PrivacyDataManager;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/identity/PrivacyDataManager;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "BRAND"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public k()J
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->e()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "getAppLastUpdateTime()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/f/h/b;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/p;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDeviceName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public n()J
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->d()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "getAppFirstInstallTime()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/identity/PrivacyDataManager;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()F
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/api/f/h/b;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method
