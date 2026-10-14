.class public final Lcom/amap/api/mapcore/util/u8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# instance fields
.field public a:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/u8;->a:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;

    return-void
.end method


# virtual methods
.method public final a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u8;->a:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;

    return-void
.end method

.method public final onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/i9;->b(Lcom/amap/api/location/AMapLocation;)Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/mapcore/util/q9;->c(Lcom/autonavi/amap/mapcore/Inner_3dMap_location;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p1, Lcom/amap/api/mapcore/util/i9;->b:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u8;->a:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;->onLocationChanged(Lcom/autonavi/amap/mapcore/Inner_3dMap_location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "LocationListener"

    const-string v1, "onLocationChanged"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
