.class public Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;
.super Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;-><init>(ILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;I)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object p2

    sget-object p3, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_VECTOR:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->createOverlay(II)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    :cond_0
    return-void
.end method

.method private static native nativeAddVectorCar(JIII)V
.end method

.method private static native nativeAddVectorData(J[I[B)I
.end method

.method private static native nativeGetFBOTextureId(J)I
.end method

.method private static native nativeInitFBOTexture(JII)V
.end method

.method private static native nativeSetArrowResId(JZI)V
.end method

.method private static native nativeSetBackgroundResId(JI)V
.end method

.method private static native nativeSetCarResId(JI)V
.end method


# virtual methods
.method public addVectorCar(III)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->nativeAddVectorCar(JIII)V

    return-void
.end method

.method public addVectorItem(Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;[BI)I
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0xa

    new-array p3, p3, [I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    iget-object v2, p1, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    aput v3, p3, v0

    const/4 v0, 0x2

    .line 2
    iget v3, v2, Landroid/graphics/Rect;->top:I

    aput v3, p3, v1

    const/4 v1, 0x3

    .line 3
    iget v3, v2, Landroid/graphics/Rect;->right:I

    aput v3, p3, v0

    const/4 v0, 0x4

    .line 4
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    aput v2, p3, v1

    const/4 v1, 0x5

    .line 5
    iget v2, p1, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stAreaColor:I

    aput v2, p3, v0

    const/4 v0, 0x6

    .line 6
    iget v2, p1, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->fArrowBorderWidth:I

    aput v2, p3, v1

    const/4 v1, 0x7

    .line 7
    iget v2, p1, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stArrowBorderColor:I

    aput v2, p3, v0

    const/16 v0, 0x8

    .line 8
    iget v2, p1, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->fArrowLineWidth:I

    aput v2, p3, v1

    const/16 v1, 0x9

    .line 9
    iget v2, p1, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stArrowLineColor:I

    aput v2, p3, v0

    .line 10
    iget-boolean p1, p1, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->dayMode:Z

    aput p1, p3, v1

    .line 11
    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p3, p2}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->nativeAddVectorData(J[I[B)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public addVectorRemainDis(I)V
    .locals 0

    return-void
.end method

.method public getFBOTextureId()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->nativeGetFBOTextureId(J)I

    move-result v0

    return v0
.end method

.method public initFBOTexture(II)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->nativeInitFBOTexture(JII)V

    return-void
.end method

.method public setArrowResId(ZI)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->nativeSetArrowResId(JZI)V

    return-void
.end method

.method public setBackgroundResId(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->nativeSetBackgroundResId(JI)V

    return-void
.end method

.method public setCarResId(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->nativeSetCarResId(JI)V

    return-void
.end method

.method public setRoadResId(ZI)V
    .locals 0

    return-void
.end method

.method public setSkyResId(ZI)V
    .locals 0

    return-void
.end method
