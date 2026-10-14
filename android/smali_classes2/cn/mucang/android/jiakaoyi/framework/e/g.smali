.class public Lcn/mucang/android/jiakaoyi/framework/e/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/e/g;->a:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/e/g;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/e/g;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static b()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/account/AccountManager;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/account/data/AuthUser;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "authToken"

    .line 4
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "deviceNum"

    .line 7
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->j()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "serialNumber"

    .line 10
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->e()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "hardwareId"

    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_3
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/e/o;->a:Landroid/location/Location;

    .line 15
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/framework/e/g;->c(DD)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "latitude"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "longitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "areaCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isHighPrecision"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v1

    const-string v2, "_loginMode"

    if-eqz v1, :cond_5

    const-string v1, "STUDENT"

    .line 21
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string v1, "COACH"

    .line 22
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :goto_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/e/g;->a:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "UNKNOWN"

    .line 24
    :cond_6
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "deviceSn"

    .line 25
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "kemu"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 27
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xyVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xyOtaVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xyBoxVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xyHardwareVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->b()I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->parse(I)Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 32
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->hasOBD()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 33
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xyObdVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/q;->c()Landroidx/lifecycle/z;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 35
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/e/q;->c()Landroidx/lifecycle/z;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "xyToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_9
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v2, Lcn/mucang/android/jiakaoyi/framework/dataprovider/AbsApiLangDataProvider;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/AbsApiLangDataProvider;

    if-eqz v1, :cond_a

    .line 37
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/AbsApiLangDataProvider;->getApiLang()Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->serverCode:Ljava/lang/String;

    const-string v2, "_lang"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_a
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/e/g;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 39
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_b
    return-object v0
.end method

.method private static c(DD)Z
    .locals 4

    const/4 v0, 0x0

    const-wide v1, -0x3f99800000000000L    # -180.0

    cmpg-double v3, p0, v1

    if-ltz v3, :cond_2

    const-wide v1, 0x4066800000000000L    # 180.0

    cmpl-double v3, p0, v1

    if-gtz v3, :cond_2

    const-wide v1, -0x3fa9800000000000L    # -90.0

    cmpg-double v3, p2, v1

    if-ltz v3, :cond_2

    const-wide v1, 0x4056800000000000L    # 90.0

    cmpl-double v3, p2, v1

    if-lez v3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v1, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v3, p0, v1

    if-gez v3, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p2, p0, v1

    if-gez p2, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method
