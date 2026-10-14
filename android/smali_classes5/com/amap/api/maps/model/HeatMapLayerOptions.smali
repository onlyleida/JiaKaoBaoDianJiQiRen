.class public Lcom/amap/api/maps/model/HeatMapLayerOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_GRADIENT:Lcom/amap/api/maps/model/Gradient;

.field private static final DEFAULT_GRADIENT_COLORS:[I

.field private static final DEFAULT_GRADIENT_START_POINTS:[F

.field public static final DEFAULT_OPACITY:D = 0.6

.field public static final DEFAULT_RADIUS:I = 0xc

.field public static final TYPE_GRID:I = 0x1

.field public static final TYPE_HEXAGON:I = 0x2

.field public static final TYPE_NORMAL:I


# instance fields
.field private isVisible:Z

.field private mData:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/WeightedLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private mGap:F

.field private mGradient:Lcom/amap/api/maps/model/Gradient;

.field private mOpacity:F

.field private mSize:F

.field private mType:I

.field private maxIntensity:D

.field private maxZoom:F

.field private minZoom:F

.field private zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/16 v2, 0x66

    const/16 v3, 0xe1

    const/4 v4, 0x0

    .line 1
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v1, v4

    const/16 v2, 0xff

    .line 2
    invoke-static {v2, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    sput-object v1, Lcom/amap/api/maps/model/HeatMapLayerOptions;->DEFAULT_GRADIENT_COLORS:[I

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    sput-object v0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->DEFAULT_GRADIENT_START_POINTS:[F

    .line 4
    new-instance v2, Lcom/amap/api/maps/model/Gradient;

    invoke-direct {v2, v1, v0}, Lcom/amap/api/maps/model/Gradient;-><init>([I[F)V

    sput-object v2, Lcom/amap/api/maps/model/HeatMapLayerOptions;->DEFAULT_GRADIENT:Lcom/amap/api/maps/model/Gradient;

    return-void

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->DEFAULT_GRADIENT:Lcom/amap/api/maps/model/Gradient;

    iput-object v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mGradient:Lcom/amap/api/maps/model/Gradient;

    const/high16 v0, 0x44fa0000    # 2000.0f

    .line 3
    iput v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mOpacity:F

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->maxIntensity:D

    const/high16 v0, 0x41a00000    # 20.0f

    .line 6
    iput v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->maxZoom:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 7
    iput v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->minZoom:F

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mGap:F

    const/4 v1, 0x2

    .line 9
    iput v1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mType:I

    .line 10
    iput v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->zIndex:F

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->isVisible:Z

    return-void
.end method

.method private static a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/WeightedLatLng;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    .line 3
    new-instance v2, Lcom/amap/api/maps/model/WeightedLatLng;

    invoke-direct {v2, v1}, Lcom/amap/api/maps/model/WeightedLatLng;-><init>(Lcom/amap/api/maps/model/LatLng;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public data(Ljava/util/Collection;)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps/model/HeatMapLayerOptions;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/HeatMapLayerOptions;->weightedData(Ljava/util/Collection;)Lcom/amap/api/maps/model/HeatMapLayerOptions;

    move-result-object p1

    return-object p1
.end method

.method public gap(F)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mGap:F

    return-object p0
.end method

.method public getData()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/WeightedLatLng;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mData:Ljava/util/Collection;

    return-object v0
.end method

.method public getGap()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mGap:F

    return v0
.end method

.method public getGradient()Lcom/amap/api/maps/model/Gradient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mGradient:Lcom/amap/api/maps/model/Gradient;

    return-object v0
.end method

.method public getMaxIntensity()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->maxIntensity:D

    return-wide v0
.end method

.method public getMaxZoom()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->maxZoom:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->minZoom:F

    return v0
.end method

.method public getOpacity()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mOpacity:F

    return v0
.end method

.method public getSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mSize:F

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mType:I

    return v0
.end method

.method public getZIndex()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->zIndex:F

    return v0
.end method

.method public gradient(Lcom/amap/api/maps/model/Gradient;)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mGradient:Lcom/amap/api/maps/model/Gradient;

    return-object p0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->isVisible:Z

    return v0
.end method

.method public maxIntensity(D)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->maxIntensity:D

    return-object p0
.end method

.method public maxZoom(F)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->maxZoom:F

    return-object p0
.end method

.method public minZoom(F)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->minZoom:F

    return-object p0
.end method

.method public opacity(F)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mOpacity:F

    return-object p0
.end method

.method public size(F)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mSize:F

    return-object p0
.end method

.method public type(I)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mType:I

    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->isVisible:Z

    return-object p0
.end method

.method public weightedData(Ljava/util/Collection;)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/WeightedLatLng;",
            ">;)",
            "Lcom/amap/api/maps/model/HeatMapLayerOptions;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->mData:Ljava/util/Collection;

    return-object p0
.end method

.method public zIndex(F)Lcom/amap/api/maps/model/HeatMapLayerOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/HeatMapLayerOptions;->zIndex:F

    return-object p0
.end method
