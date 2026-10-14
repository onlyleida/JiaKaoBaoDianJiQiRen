.class public Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;
.super Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore/util/ia$c;
.implements Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay<",
        "Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/amap/api/mapcore/util/ia$c;",
        "Lcom/autonavi/amap/mapcore/interfaces/ICrossVectorOverlay;"
    }
.end annotation


# instance fields
.field attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

.field private imageListener:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

.field private isImageMode:Z

.field private pluginTexture:Lcom/amap/api/mapcore/util/ia;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;-><init>(ILandroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->isImageMode:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;)Lcom/amap/api/mapcore/util/ia;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->pluginTexture:Lcom/amap/api/mapcore/util/ia;

    return-object p0
.end method

.method private drawVectorFailed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->pluginTexture:Lcom/amap/api/mapcore/util/ia;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ia;->k()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->imageListener:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;->onGenerateComplete(Landroid/graphics/Bitmap;I)V

    :cond_1
    return-void
.end method

.method private initImageMode(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->pluginTexture:Lcom/amap/api/mapcore/util/ia;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/ia;

    iget-object v1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ia;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->pluginTexture:Lcom/amap/api/mapcore/util/ia;

    .line 3
    iget-object v1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->imageListener:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ia;->h(Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;)V

    .line 4
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->pluginTexture:Lcom/amap/api/mapcore/util/ia;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/ia;->f(Lcom/amap/api/mapcore/util/ia$c;)V

    .line 5
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    iget-object v0, v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    iget-object v1, v1, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->pluginTexture:Lcom/amap/api/mapcore/util/ia;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/mapcore/util/ia;->l(II)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    if-eqz v0, :cond_1

    .line 9
    check-cast v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->initFBOTexture(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public addOverlayTexture(Landroid/graphics/Bitmap;II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;

    invoke-direct {v0}, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;-><init>()V

    .line 2
    iput p2, v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mId:I

    .line 3
    iput p3, v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mAnchor:I

    .line 4
    iput-object p1, v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 5
    iput p1, v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mXRatio:F

    .line 6
    iput p1, v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->mYRatio:F

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;->isGenMimps:Z

    .line 8
    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget p2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mEngineID:I

    invoke-interface {p1, p2, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addOverlayTexture(ILcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;)V

    return-void
.end method

.method public dipToPixel(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x1

    int-to-float v1, p2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 2
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int p1, p1

    return p1

    :catch_0
    return p2
.end method

.method public getTextureID()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    check-cast v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->getFBOTextureId()I

    move-result v0

    return v0
.end method

.method protected iniGLOverlay()V
    .locals 4

    .line 1
    new-instance v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    iget v1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mEngineID:I

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;-><init>(ILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;I)V

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    return-void
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->pluginTexture:Lcom/amap/api/mapcore/util/ia;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ia;->k()V

    .line 3
    iput-object v1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->pluginTexture:Lcom/amap/api/mapcore/util/ia;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->imageListener:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->setVisible(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->releaseInstance()V

    return-void
.end method

.method public resumeMarker(Landroid/graphics/Bitmap;)V
    .locals 2

    const/16 v0, 0x3039

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->addOverlayTexture(Landroid/graphics/Bitmap;II)V

    .line 2
    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    check-cast p1, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->setArrowResId(ZI)V

    .line 3
    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    check-cast p1, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    invoke-virtual {p1, v0}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->setCarResId(I)V

    const-string p1, "cross/crossing_nigth_bk.data"

    .line 4
    invoke-static {p1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, 0xd431

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->addOverlayTexture(Landroid/graphics/Bitmap;II)V

    .line 7
    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    check-cast p1, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    invoke-virtual {p1, v0}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->setBackgroundResId(I)V

    return-void
.end method

.method public setAttribute(Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    return-void
.end method

.method public setData([B)I
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;-><init>()V

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    .line 4
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapWidth()I

    move-result v3

    iget-object v4, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0xb

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    .line 5
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    const/16 v2, 0xd9

    const/16 v3, 0x5f

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stAreaColor:I

    .line 6
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mContext:Landroid/content/Context;

    const/16 v3, 0x16

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->dipToPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->fArrowBorderWidth:I

    .line 7
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    const/16 v2, 0x32

    const/16 v3, 0x14

    invoke-static {v5, v5, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stArrowBorderColor:I

    .line 8
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mContext:Landroid/content/Context;

    const/16 v3, 0x12

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->dipToPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->fArrowLineWidth:I

    .line 9
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    const/16 v2, 0xfd

    const/16 v3, 0x41

    const/16 v4, 0xff

    invoke-static {v4, v4, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->stArrowLineColor:I

    .line 10
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    iput-boolean v5, v0, Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;->dayMode:Z

    :cond_1
    if-eqz p1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapWidth()I

    move-result v0

    .line 13
    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapHeight()I

    move-result v2

    .line 14
    iget-boolean v3, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->isImageMode:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->imageListener:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    if-eqz v3, :cond_2

    .line 15
    invoke-direct {p0, v0, v2}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->initImageMode(II)V

    .line 16
    :cond_2
    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    check-cast v3, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    iget-object v4, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    array-length v5, p1

    invoke-virtual {v3, v4, p1, v5}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->addVectorItem(Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;[BI)I

    move-result p1

    .line 17
    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    check-cast v3, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->setVisible(Z)V

    .line 18
    iget-boolean v3, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->isImageMode:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->imageListener:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    if-eqz v3, :cond_4

    .line 19
    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    new-instance v4, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$1;-><init>(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;II)V

    invoke-interface {v3, v4}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    :cond_4
    :goto_0
    if-ne p1, v1, :cond_5

    .line 20
    invoke-direct {p0, p1}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->drawVectorFailed(I)V

    :cond_5
    return p1
.end method

.method public setGenerateCrossImageListener(Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->imageListener:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    .line 2
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->pluginTexture:Lcom/amap/api/mapcore/util/ia;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ia;->h(Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;)V

    :cond_0
    return-void
.end method

.method public setImageMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->isImageMode:Z

    return-void
.end method
