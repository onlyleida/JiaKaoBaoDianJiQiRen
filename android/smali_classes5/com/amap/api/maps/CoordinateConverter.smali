.class public Lcom/amap/api/maps/CoordinateConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/CoordinateConverter$CoordType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/maps/CoordinateConverter$CoordType;

.field private c:Lcom/amap/api/maps/model/LatLng;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->b:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    .line 3
    iput-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    .line 4
    iput-object p1, p0, Lcom/amap/api/maps/CoordinateConverter;->a:Landroid/content/Context;

    return-void
.end method

.method public static isAMapDataAvailable(DD)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/k3;->a(DD)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public convert()Lcom/amap/api/maps/model/LatLng;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->b:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    const-string v2, ""

    .line 3
    sget-object v3, Lcom/amap/api/maps/CoordinateConverter$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "gps"

    .line 4
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/i;->d(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const-string v2, "google"

    .line 5
    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    :pswitch_2
    const-string v2, "aliyun"

    .line 6
    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    :pswitch_3
    const-string v2, "sosomap"

    .line 7
    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    :pswitch_4
    const-string v2, "mapabc"

    .line 8
    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    .line 9
    :pswitch_5
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/i;->k(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    const-string v2, "mapbar"

    goto :goto_0

    .line 10
    :pswitch_6
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/i;->e(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    const-string v2, "baidu"

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/p3;->e(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "CoordinateConverter"

    const-string v2, "convert"

    .line 13
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public coord(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CoordinateConverter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public from(Lcom/amap/api/maps/CoordinateConverter$CoordType;)Lcom/amap/api/maps/CoordinateConverter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/CoordinateConverter;->b:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    return-object p0
.end method
