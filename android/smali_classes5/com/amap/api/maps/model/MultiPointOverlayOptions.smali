.class public Lcom/amap/api/maps/model/MultiPointOverlayOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private anchorU:F

.field private anchorV:F

.field private bitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->anchorU:F

    .line 3
    iput v0, p0, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->anchorV:F

    return-void
.end method


# virtual methods
.method public anchor(FF)Lcom/amap/api/maps/model/MultiPointOverlayOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->anchorU:F

    .line 2
    iput p2, p0, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->anchorV:F

    return-object p0
.end method

.method public getAnchorU()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->anchorU:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->anchorV:F

    return v0
.end method

.method public getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->bitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MultiPointOverlayOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->bitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object p0
.end method
