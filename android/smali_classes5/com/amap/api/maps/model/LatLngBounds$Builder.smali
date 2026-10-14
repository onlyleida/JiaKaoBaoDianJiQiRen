.class public final Lcom/amap/api/maps/model/LatLngBounds$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/model/LatLngBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEast:D

.field private mNorth:D

.field private mSouth:D

.field private mWest:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 2
    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mSouth:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 3
    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mNorth:D

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 4
    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    .line 5
    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mEast:D

    return-void
.end method

.method private a(D)Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mEast:D

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpg-double v6, v0, v2

    if-gtz v6, :cond_1

    cmpg-double v6, v0, p1

    if-gtz v6, :cond_0

    cmpg-double v0, p1, v2

    if-gtz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    :cond_1
    cmpg-double v6, v0, p1

    if-lez v6, :cond_2

    cmpg-double v0, p1, v2

    if-gtz v0, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    return v4
.end method


# virtual methods
.method public build()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 14

    .line 1
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LatLngBounds"

    const-string v1, "no included points"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mEast:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 4
    iput-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    .line 5
    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mEast:D

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mSouth:D

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mNorth:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    .line 7
    iput-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mSouth:D

    .line 8
    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mNorth:D

    .line 9
    :cond_2
    new-instance v0, Lcom/amap/api/maps/model/LatLngBounds;

    new-instance v7, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mSouth:D

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v9, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mNorth:D

    iget-wide v11, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mEast:D

    const/4 v13, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-direct {v0, v7, v1}, Lcom/amap/api/maps/model/LatLngBounds;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V

    return-object v0
.end method

.method public include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;
    .locals 6

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mSouth:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mSouth:D

    .line 2
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mNorth:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mNorth:D

    .line 3
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 4
    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    .line 6
    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mEast:D

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->a(D)Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    invoke-static {v2, v3, v0, v1}, Lcom/amap/api/maps/model/LatLngBounds;->a(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mEast:D

    .line 9
    invoke-static {v4, v5, v0, v1}, Lcom/amap/api/maps/model/LatLngBounds;->b(DD)D

    move-result-wide v4

    cmpg-double p1, v2, v4

    if-gez p1, :cond_2

    .line 10
    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mWest:D

    goto :goto_0

    .line 11
    :cond_2
    iput-wide v0, p0, Lcom/amap/api/maps/model/LatLngBounds$Builder;->mEast:D

    :cond_3
    :goto_0
    return-object p0
.end method
