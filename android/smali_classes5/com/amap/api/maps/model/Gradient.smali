.class public Lcom/amap/api/maps/model/Gradient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/model/Gradient$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR_MAP_SIZE:I = 0x3e8


# instance fields
.field private isAvailable:Z

.field private mColorMapSize:I

.field private mColors:[I

.field private mStartPoints:[F


# direct methods
.method public constructor <init>([I[F)V
    .locals 1

    const/16 v0, 0x3e8

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/maps/model/Gradient;-><init>([I[FI)V

    return-void
.end method

.method private constructor <init>([I[FI)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/maps/model/Gradient;->isAvailable:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 4
    :try_start_0
    array-length v2, p1

    array-length v3, p2

    if-ne v2, v3, :cond_3

    .line 5
    array-length v2, p1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 6
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 7
    aget v3, p2, v2

    add-int/lit8 v4, v2, -0x1

    aget v4, p2, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string p2, "startPoints should be in increasing order"

    invoke-direct {p1, p2}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    iput p3, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    .line 10
    array-length p3, p1

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    .line 11
    array-length v2, p2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    .line 12
    array-length v2, p1

    invoke-static {p1, v1, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object p1, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    array-length p3, p2

    invoke-static {p2, v1, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iput-boolean v0, p0, Lcom/amap/api/maps/model/Gradient;->isAvailable:Z

    goto :goto_1

    .line 15
    :cond_2
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string p2, "No colors have been defined"

    invoke-direct {p1, p2}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string p2, "colors and startPoints should be same length"

    invoke-direct {p1, p2}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string p2, "colors and startPoints should not be null"

    invoke-direct {p1, p2}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 18
    iput-boolean v1, p0, Lcom/amap/api/maps/model/Gradient;->isAvailable:Z

    .line 19
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "amap"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static a(IIF)I
    .locals 7

    .line 12
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x3

    new-array v2, v1, [F

    .line 13
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v3, v4, p0, v2}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    new-array p0, v1, [F

    .line 14
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v3, v4, p1, p0}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    const/4 p1, 0x0

    .line 15
    aget v3, v2, p1

    aget v4, p0, p1

    sub-float/2addr v3, v4

    const/16 v4, 0xb4

    int-to-float v4, v4

    const/16 v5, 0x168

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 16
    aget v3, p0, p1

    int-to-float v4, v5

    add-float/2addr v3, v4

    aput v3, p0, p1

    goto :goto_0

    .line 17
    :cond_0
    aget v3, p0, p1

    aget v6, v2, p1

    sub-float/2addr v3, v6

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 18
    aget v3, v2, p1

    int-to-float v4, v5

    add-float/2addr v3, v4

    aput v3, v2, p1

    :cond_1
    :goto_0
    new-array v3, v1, [F

    :goto_1
    if-ge p1, v1, :cond_2

    .line 19
    aget v4, p0, p1

    aget v5, v2, p1

    sub-float/2addr v4, v5

    mul-float v4, v4, p2

    aget v5, v2, p1

    add-float/2addr v4, v5

    aput v4, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 20
    :cond_2
    invoke-static {v0, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method private a()Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/maps/model/Gradient$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    aget v1, v1, v2

    .line 4
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget-object v4, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    aget v4, v4, v2

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    aget v5, v5, v2

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 5
    invoke-static {v2, v1, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/amap/api/maps/model/Gradient$a;

    iget-object v6, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    aget v6, v6, v2

    iget v7, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    aget v2, v8, v2

    mul-float v7, v7, v2

    invoke-direct {v5, v1, v6, v7, v3}, Lcom/amap/api/maps/model/Gradient$a;-><init>(IIFLcom/amap/api/maps/model/Gradient$1;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 7
    :goto_0
    iget-object v4, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 8
    iget v4, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/amap/api/maps/model/Gradient$a;

    iget-object v7, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    aget v8, v7, v6

    aget v7, v7, v2

    iget v9, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    aget v11, v10, v2

    aget v6, v10, v6

    sub-float/2addr v11, v6

    mul-float v9, v9, v11

    invoke-direct {v5, v8, v7, v9, v3}, Lcom/amap/api/maps/model/Gradient$a;-><init>(IIFLcom/amap/api/maps/model/Gradient$1;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    array-length v4, v2

    sub-int/2addr v4, v1

    aget v4, v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 10
    array-length v4, v2

    sub-int/2addr v4, v1

    .line 11
    iget v1, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    int-to-float v1, v1

    aget v2, v2, v4

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/Gradient$a;

    iget-object v6, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    aget v7, v6, v4

    aget v6, v6, v4

    iget v8, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    aget v4, v9, v4

    sub-float/2addr v5, v4

    mul-float v8, v8, v5

    invoke-direct {v2, v7, v6, v8, v3}, Lcom/amap/api/maps/model/Gradient$a;-><init>(IIFLcom/amap/api/maps/model/Gradient$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected generateColorMap(D)[I
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/amap/api/maps/model/Gradient;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/Gradient$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_0
    iget v6, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    if-ge v4, v6, :cond_1

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/Gradient$a;

    move v5, v4

    :cond_0
    sub-int v6, v4, v5

    int-to-float v6, v6

    .line 7
    invoke-static {v3}, Lcom/amap/api/maps/model/Gradient$a;->a(Lcom/amap/api/maps/model/Gradient$a;)F

    move-result v7

    div-float/2addr v6, v7

    .line 8
    invoke-static {v3}, Lcom/amap/api/maps/model/Gradient$a;->b(Lcom/amap/api/maps/model/Gradient$a;)I

    move-result v7

    invoke-static {v3}, Lcom/amap/api/maps/model/Gradient$a;->c(Lcom/amap/api/maps/model/Gradient$a;)I

    move-result v8

    invoke-static {v7, v8, v6}, Lcom/amap/api/maps/model/Gradient;->a(IIF)I

    move-result v6

    aput v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v3

    if-eqz v0, :cond_2

    .line 9
    :goto_1
    iget v0, p0, Lcom/amap/api/maps/model/Gradient;->mColorMapSize:I

    if-ge v2, v0, :cond_2

    .line 10
    aget v0, v1, v2

    .line 11
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-double v3, v3

    mul-double v3, v3, p1

    double-to-int v3, v3

    .line 12
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 13
    invoke-static {v3, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public getColors()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Gradient;->mColors:[I

    return-object v0
.end method

.method public getStartPoints()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Gradient;->mStartPoints:[F

    return-object v0
.end method

.method protected isAvailable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/maps/model/Gradient;->isAvailable:Z

    return v0
.end method
