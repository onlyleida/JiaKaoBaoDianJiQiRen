.class public Lcn/mucang/android/core/location/f/c;
.super Lcn/mucang/android/core/location/e;
.source "SourceFile"


# instance fields
.field private b:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/location/MucangLocateOption;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/location/e;-><init>(Lcn/mucang/android/core/location/MucangLocateOption;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/core/location/f/c;->b:J

    return-void
.end method

.method static synthetic e(Lcn/mucang/android/core/location/f/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/location/f/c;->b:J

    return-wide v0
.end method

.method static synthetic f(Lcn/mucang/android/core/location/f/c;Lcom/amap/api/location/AMapLocation;)Lcn/mucang/android/core/location/c;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/location/f/c;->h(Lcom/amap/api/location/AMapLocation;)Lcn/mucang/android/core/location/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcn/mucang/android/core/location/f/c;)Lcn/mucang/android/core/location/MucangLocateOption;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/location/e;->a:Lcn/mucang/android/core/location/MucangLocateOption;

    return-object p0
.end method

.method private h(Lcom/amap/api/location/AMapLocation;)Lcn/mucang/android/core/location/c;
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/location/f/c;->i(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/core/location/c;

    invoke-direct {v0}, Lcn/mucang/android/core/location/c;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/core/location/c;->k(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v2

    .line 8
    :cond_1
    invoke-virtual {v0, v2}, Lcn/mucang/android/core/location/c;->m(Ljava/lang/String;)V

    .line 9
    invoke-static {v2}, Lcn/mucang/android/selectcity/CityNameCodeMapping;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/core/location/c;->l(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/core/location/c;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, ""

    .line 12
    invoke-virtual {v0, v2}, Lcn/mucang/android/core/location/c;->n(Ljava/lang/String;)V

    .line 13
    :goto_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/mucang/android/core/location/c;->o(D)V

    .line 14
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/mucang/android/core/location/c;->p(D)V

    .line 15
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/core/location/c;->q(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcn/mucang/android/core/location/c;->r(D)V

    .line 17
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v3}, Lcn/mucang/android/core/utils/p0;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Lcn/mucang/android/core/location/c;->s(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/mucang/android/core/location/c;->t(J)V

    .line 20
    invoke-virtual {p0, v0}, Lcn/mucang/android/core/location/e;->d(Lcn/mucang/android/core/location/c;)V

    .line 21
    invoke-virtual {v0}, Lcn/mucang/android/core/location/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method private i(Lcom/amap/api/location/AMapLocation;)Z
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic j([Lcom/amap/api/location/AMapLocationClient;Ljava/util/concurrent/CountDownLatch;[Lcn/mucang/android/core/location/c;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    aget-object v1, p1, v0

    new-instance v2, Lcn/mucang/android/core/location/f/c$a;

    invoke-direct {v2, p0, p1, p2, p3}, Lcn/mucang/android/core/location/f/c$a;-><init>(Lcn/mucang/android/core/location/f/c;[Lcom/amap/api/location/AMapLocationClient;Ljava/util/concurrent/CountDownLatch;[Lcn/mucang/android/core/location/c;)V

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 3
    new-instance p2, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p2}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    .line 4
    iget-object p3, p0, Lcn/mucang/android/core/location/e;->a:Lcn/mucang/android/core/location/MucangLocateOption;

    invoke-virtual {p3}, Lcn/mucang/android/core/location/MucangLocateOption;->b()Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    move-result-object p3

    sget-object v1, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;->FINE_LOCATION_ONLY:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    if-ne p3, v1, :cond_1

    .line 5
    sget-object p3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {p2, p3}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    goto :goto_0

    .line 6
    :cond_1
    sget-object p3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Battery_Saving:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {p2, p3}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 7
    :goto_0
    invoke-virtual {p2, v0}, Lcom/amap/api/location/AMapLocationClientOption;->setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;

    const/4 p3, 0x1

    .line 8
    invoke-virtual {p2, p3}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 9
    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;->SignIn:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    invoke-virtual {p2, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationPurpose(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 10
    invoke-virtual {p2, p3}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 11
    sget-object p3, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->ZH:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-virtual {p2, p3}, Lcom/amap/api/location/AMapLocationClientOption;->setGeoLanguage(Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 12
    aget-object p3, p1, v0

    invoke-virtual {p3, p2}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 13
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/location/f/c;->l(Lcom/amap/api/location/AMapLocationClient;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9ad8\u5fb7\u5730\u56fe"

    return-object v0
.end method

.method protected b(J)Lcn/mucang/android/core/location/c;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v2, v1, [Lcom/amap/api/location/AMapLocationClient;

    new-array v1, v1, [Lcn/mucang/android/core/location/c;

    const/4 v3, 0x0

    .line 2
    :try_start_0
    new-instance v4, Lcom/amap/api/location/AMapLocationClient;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "Exception"

    .line 3
    invoke-static {v5, v4}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :goto_0
    aget-object v4, v2, v3

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    new-instance v4, Lcn/mucang/android/core/location/f/b;

    invoke-direct {v4, p0, v2, v0, v1}, Lcn/mucang/android/core/location/f/b;-><init>(Lcn/mucang/android/core/location/f/c;[Lcom/amap/api/location/AMapLocationClient;Ljava/util/concurrent/CountDownLatch;[Lcn/mucang/android/core/location/c;)V

    invoke-static {v4}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 6
    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    aget-object p1, v2, v3

    if-eqz p1, :cond_1

    .line 8
    aget-object p1, v2, v3

    :goto_1
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_2
    const-string p2, "AmapLocateClientImpl"

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/core/location/f/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " error:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    aget-object p1, v2, v3

    if-eqz p1, :cond_1

    .line 11
    aget-object p1, v2, v3

    goto :goto_1

    .line 12
    :cond_1
    :goto_2
    aget-object p1, v1, v3

    return-object p1

    .line 13
    :goto_3
    aget-object p2, v2, v3

    if-eqz p2, :cond_2

    .line 14
    aget-object p2, v2, v3

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    :cond_2
    throw p1
.end method

.method public synthetic k([Lcom/amap/api/location/AMapLocationClient;Ljava/util/concurrent/CountDownLatch;[Lcn/mucang/android/core/location/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/core/location/f/c;->j([Lcom/amap/api/location/AMapLocationClient;Ljava/util/concurrent/CountDownLatch;[Lcn/mucang/android/core/location/c;)V

    return-void
.end method

.method public l(Lcom/amap/api/location/AMapLocationClient;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/core/location/f/c;->b:J

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    return-void
.end method
