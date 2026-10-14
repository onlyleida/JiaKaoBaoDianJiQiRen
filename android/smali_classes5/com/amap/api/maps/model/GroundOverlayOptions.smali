.class public final Lcom/amap/api/maps/model/GroundOverlayOptions;
.super Lcom/amap/api/maps/model/BaseOptions;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CLASSNAME:Ljava/lang/String; = "GroundOverlayOptions"

.field public static final CREATOR:Lcom/amap/api/maps/model/GroundOverlayOptionsCreator;

.field public static final NO_DIMENSION:F = -1.0f


# instance fields
.field private final NF_PI:D

.field private final R:D

.field private anchorU:F

.field private anchorV:F

.field private bearing:F

.field private bitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private bitmapSymbol:Ljava/lang/String;

.field private height:F

.field private isVisible:Z

.field private latLng:Lcom/amap/api/maps/model/LatLng;

.field private latlngBounds:Lcom/amap/api/maps/model/LatLngBounds;

.field private final mVersionCode:I

.field private northeast:Lcom/amap/api/maps/model/LatLng;

.field private southwest:Lcom/amap/api/maps/model/LatLng;

.field private transparency:F

.field private final type:Ljava/lang/String;

.field private width:F

.field private zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/maps/model/GroundOverlayOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/GroundOverlayOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/GroundOverlayOptions;->CREATOR:Lcom/amap/api/maps/model/GroundOverlayOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 24
    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOptions;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->zIndex:F

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->isVisible:Z

    .line 27
    iput v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->transparency:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 28
    iput v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorU:F

    .line 29
    iput v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorV:F

    const-wide v2, 0x3f91df46a2529d37L    # 0.01745329251994329

    .line 30
    iput-wide v2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->NF_PI:D

    const-wide v2, 0x41584dae328f5c29L    # 6371000.79

    .line 31
    iput-wide v2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->R:D

    const-string v0, "GroundOverlayOptions"

    .line 32
    iput-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->type:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/amap/api/maps/model/LatLng;FFLcom/amap/api/maps/model/LatLngBounds;FFZFFF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOptions;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->zIndex:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->isVisible:Z

    .line 4
    iput p2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->transparency:F

    const/high16 p2, 0x3f000000    # 0.5f

    .line 5
    iput p2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorU:F

    .line 6
    iput p2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorV:F

    const-wide v0, 0x3f91df46a2529d37L    # 0.01745329251994329

    .line 7
    iput-wide v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->NF_PI:D

    const-wide v0, 0x41584dae328f5c29L    # 6371000.79

    .line 8
    iput-wide v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->R:D

    const-string p2, "GroundOverlayOptions"

    .line 9
    iput-object p2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->type:Ljava/lang/String;

    .line 10
    iput p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->mVersionCode:I

    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->bitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 12
    iput-object p3, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latLng:Lcom/amap/api/maps/model/LatLng;

    .line 13
    iput p4, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->width:F

    .line 14
    iput p5, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->height:F

    .line 15
    iput-object p6, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latlngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    .line 16
    iput p7, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->bearing:F

    .line 17
    iput p8, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->zIndex:F

    .line 18
    iput-boolean p9, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->isVisible:Z

    .line 19
    iput p10, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->transparency:F

    .line 20
    iput p11, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorU:F

    .line 21
    iput p12, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorV:F

    .line 22
    iget-object p1, p6, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->southwest:Lcom/amap/api/maps/model/LatLng;

    .line 23
    iget-object p1, p6, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->northeast:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method

.method private a(Lcom/amap/api/maps/model/LatLng;FF)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latLng:Lcom/amap/api/maps/model/LatLng;

    .line 2
    iput p2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->width:F

    .line 3
    iput p3, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->height:F

    .line 4
    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->b()V

    return-object p0
.end method

.method private a()V
    .locals 12

    .line 5
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->southwest:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->northeast:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorV:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v6, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v7, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v7, v2

    mul-double v4, v4, v7

    add-double/2addr v2, v4

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorU:F

    float-to-double v7, v1

    iget-wide v9, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v9, v4

    mul-double v7, v7, v9

    add-double/2addr v4, v7

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latLng:Lcom/amap/api/maps/model/LatLng;

    .line 7
    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v2, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v4, 0x41584dae328f5c29L    # 6371000.79

    mul-double v0, v0, v4

    iget-object v6, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v7, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v9, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v10, v9, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v7, v10

    mul-double v0, v0, v7

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->width:F

    .line 8
    iget-wide v0, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, v9, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v0, v6

    mul-double v0, v0, v4

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->height:F

    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latLng:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->width:F

    float-to-double v1, v1

    const-wide v3, 0x41584dae328f5c29L    # 6371000.79

    iget-wide v5, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v7, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double v5, v5, v7

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    mul-double v5, v5, v7

    div-double/2addr v1, v5

    .line 4
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->height:F

    float-to-double v3, v0

    const-wide v5, 0x40fb25af0c031ddeL    # 111194.94043265979

    div-double/2addr v3, v5

    .line 5
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/model/LatLngBounds;

    new-instance v5, Lcom/amap/api/maps/model/LatLng;

    iget-object v6, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latLng:Lcom/amap/api/maps/model/LatLng;

    iget-wide v7, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget v9, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorV:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    float-to-double v11, v9

    mul-double v11, v11, v3

    sub-double/2addr v7, v11

    iget-wide v11, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v6, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorU:F

    float-to-double v13, v6

    mul-double v13, v13, v1

    sub-double/2addr v11, v13

    invoke-direct {v5, v7, v8, v11, v12}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    iget-object v7, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latLng:Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget v11, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorV:F

    float-to-double v11, v11

    mul-double v11, v11, v3

    add-double/2addr v8, v11

    iget-wide v3, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v7, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorU:F

    sub-float/2addr v10, v7

    float-to-double v10, v10

    mul-double v10, v10, v1

    add-double/2addr v3, v10

    invoke-direct {v6, v8, v9, v3, v4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v5, v6}, Lcom/amap/api/maps/model/LatLngBounds;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V

    iput-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latlngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    .line 6
    iget-object v1, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iput-object v1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->southwest:Lcom/amap/api/maps/model/LatLng;

    .line 7
    iget-object v0, v0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iput-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->northeast:Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public anchor(FF)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorU:F

    .line 2
    iput p2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorV:F

    .line 3
    iget-object p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latlngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->a()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latLng:Lcom/amap/api/maps/model/LatLng;

    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->b()V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public bearing(F)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->bearing:F

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorU:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorV:F

    return v0
.end method

.method public getBearing()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->bearing:F

    return v0
.end method

.method public getBounds()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latlngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->height:F

    return v0
.end method

.method public getImage()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->bitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public getLocation()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latLng:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->transparency:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->width:F

    return v0
.end method

.method public getZIndex()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->zIndex:F

    return v0
.end method

.method public image(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->bitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->bitmapSymbol:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->isVisible:Z

    return v0
.end method

.method public position(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latlngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    const-string v1, "GroundOverlayOptions"

    if-eqz v0, :cond_0

    const-string v0, "Position has already been set using positionFromBounds"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "Location must be specified"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    const-string v0, "Width must be non-negative"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2, p2}, Lcom/amap/api/maps/model/GroundOverlayOptions;->a(Lcom/amap/api/maps/model/LatLng;FF)Lcom/amap/api/maps/model/GroundOverlayOptions;

    move-result-object p1

    return-object p1
.end method

.method public position(Lcom/amap/api/maps/model/LatLng;FF)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latlngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    const-string v1, "GroundOverlayOptions"

    if-eqz v0, :cond_0

    const-string v0, "Position has already been set using positionFromBounds"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "Location must be specified"

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    cmpg-float v2, p2, v0

    if-lez v2, :cond_2

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_3

    :cond_2
    const-string v0, "Width and Height must be non-negative"

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/maps/model/GroundOverlayOptions;->a(Lcom/amap/api/maps/model/LatLng;FF)Lcom/amap/api/maps/model/GroundOverlayOptions;

    move-result-object p1

    return-object p1
.end method

.method public positionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latlngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    .line 2
    iget-object v0, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iput-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->southwest:Lcom/amap/api/maps/model/LatLng;

    .line 3
    iget-object p1, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->northeast:Lcom/amap/api/maps/model/LatLng;

    .line 4
    invoke-direct {p0}, Lcom/amap/api/maps/model/GroundOverlayOptions;->a()V

    return-object p0
.end method

.method public transparency(F)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const-string p1, "GroundOverlayOptions"

    const-string v1, "Transparency must be in the range [0..1]"

    .line 1
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 2
    :cond_0
    iput p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->transparency:F

    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->isVisible:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->mVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->bitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latLng:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->width:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5
    iget v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->height:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 6
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->latlngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    iget p2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->bearing:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 8
    iget p2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->zIndex:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 9
    iget-boolean p2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->isVisible:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    iget p2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->transparency:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 11
    iget p2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorU:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 12
    iget p2, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->anchorV:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method public zIndex(F)Lcom/amap/api/maps/model/GroundOverlayOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/GroundOverlayOptions;->zIndex:F

    return-object p0
.end method
