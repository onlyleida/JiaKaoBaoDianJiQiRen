.class public Lcom/amap/api/mapcore/util/t1;
.super Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IglModel;


# instance fields
.field A:Landroid/graphics/Rect;

.field private B:I

.field private C:I

.field private D:F

.field private E:F

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field H:F

.field private I:F

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:[F

.field private d:Lcom/amap/api/mapcore/util/ba;

.field private e:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private g:I

.field private h:I

.field private i:Lcom/amap/api/maps/model/LatLng;

.field private j:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field private k:Z

.field private l:Z

.field private m:Landroid/graphics/Bitmap;

.field private n:Lcom/amap/api/mapcore/util/h2$b;

.field private o:F

.field private p:Ljava/lang/Object;

.field private q:F

.field private r:F

.field private s:F

.field private t:Z

.field private u:Lcom/amap/api/mapcore/util/z9;

.field private v:I

.field private w:Z

.field private x:Lcom/autonavi/base/amap/mapcore/FPoint;

.field y:[F

.field z:[F


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/z9;Lcom/amap/api/maps/model/GL3DModelOptions;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/t1;->a:Z

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 3
    iput-object v2, p0, Lcom/amap/api/mapcore/util/t1;->c:[F

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/t1;->k:Z

    .line 5
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/t1;->l:Z

    const/high16 v2, 0x41900000    # 18.0f

    .line 6
    iput v2, p0, Lcom/amap/api/mapcore/util/t1;->q:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 7
    iput v2, p0, Lcom/amap/api/mapcore/util/t1;->r:F

    const/4 v3, 0x0

    .line 8
    iput v3, p0, Lcom/amap/api/mapcore/util/t1;->s:F

    const/4 v3, 0x0

    .line 9
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/t1;->t:Z

    .line 10
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/t1;->w:Z

    .line 11
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v4

    iput-object v4, p0, Lcom/amap/api/mapcore/util/t1;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    new-array v4, v1, [F

    .line 12
    iput-object v4, p0, Lcom/amap/api/mapcore/util/t1;->y:[F

    new-array v4, v1, [F

    .line 13
    iput-object v4, p0, Lcom/amap/api/mapcore/util/t1;->z:[F

    .line 14
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/amap/api/mapcore/util/t1;->A:Landroid/graphics/Rect;

    .line 15
    iput v3, p0, Lcom/amap/api/mapcore/util/t1;->B:I

    iput v3, p0, Lcom/amap/api/mapcore/util/t1;->C:I

    const/high16 v4, 0x3f000000    # 0.5f

    .line 16
    iput v4, p0, Lcom/amap/api/mapcore/util/t1;->D:F

    .line 17
    iput v4, p0, Lcom/amap/api/mapcore/util/t1;->E:F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 18
    iput v4, p0, Lcom/amap/api/mapcore/util/t1;->H:F

    .line 19
    iput v2, p0, Lcom/amap/api/mapcore/util/t1;->I:F

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto :goto_2

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/t1;->u:Lcom/amap/api/mapcore/util/z9;

    .line 21
    iput-object p3, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 22
    invoke-virtual {p2}, Lcom/amap/api/maps/model/GL3DModelOptions;->getBitmapDescriptor()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/t1;->e:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 23
    invoke-virtual {p2}, Lcom/amap/api/maps/model/GL3DModelOptions;->getTextrue()Ljava/util/List;

    move-result-object p1

    .line 24
    invoke-virtual {p2}, Lcom/amap/api/maps/model/GL3DModelOptions;->getVertext()Ljava/util/List;

    move-result-object p3

    .line 25
    invoke-virtual {p2}, Lcom/amap/api/maps/model/GL3DModelOptions;->getLatLng()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore/util/t1;->i:Lcom/amap/api/maps/model/LatLng;

    .line 26
    invoke-virtual {p2}, Lcom/amap/api/maps/model/GL3DModelOptions;->getAngle()F

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore/util/t1;->o:F

    .line 27
    invoke-virtual {p2}, Lcom/amap/api/maps/model/GL3DModelOptions;->getModelFixedLength()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/t1;->setModelFixedLength(I)V

    .line 28
    iget-object p2, p0, Lcom/amap/api/mapcore/util/t1;->i:Lcom/amap/api/maps/model/LatLng;

    if-eqz p2, :cond_1

    .line 29
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p2

    .line 30
    iget-object v2, p0, Lcom/amap/api/mapcore/util/t1;->i:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, p2}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 31
    iget v2, p2, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/amap/api/mapcore/util/t1;->g:I

    .line 32
    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, p0, Lcom/amap/api/mapcore/util/t1;->h:I

    :cond_1
    if-eqz p1, :cond_4

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/t1;->e:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    and-int/2addr p2, v0

    if-eqz p2, :cond_4

    .line 34
    new-instance p2, Lcom/amap/api/mapcore/util/ba;

    invoke-direct {p2, p3, p1}, Lcom/amap/api/mapcore/util/ba;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/t1;->d:Lcom/amap/api/mapcore/util/ba;

    .line 35
    iget p1, p0, Lcom/amap/api/mapcore/util/t1;->o:F

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore/util/ba;->b(F)V

    :cond_4
    new-array p1, v1, [F

    .line 36
    iput-object p1, p0, Lcom/amap/api/mapcore/util/t1;->y:[F

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 37
    iput-object p1, p0, Lcom/amap/api/mapcore/util/t1;->z:[F

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)I
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/t1;->m:Landroid/graphics/Bitmap;

    :cond_0
    const/4 p1, 0x1

    new-array v0, p1, [I

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 3
    aget p1, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    .line 4
    invoke-static {v2, p1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2800

    const v3, 0x46180400    # 9729.0f

    .line 5
    invoke-static {v2, p1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const v3, 0x47012f00    # 33071.0f

    .line 6
    invoke-static {v2, p1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2803

    .line 7
    invoke-static {v2, p1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/t1;->m:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, p1, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 9
    aget p1, v0, v1

    return p1
.end method

.method private c(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v0, p0, Lcom/amap/api/mapcore/util/t1;->g:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    .line 3
    iget v0, p0, Lcom/amap/api/mapcore/util/t1;->h:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    .line 4
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 5
    iget-wide v1, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    iget-wide v3, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    invoke-static {v1, v2, v3, v4, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 6
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    iput-wide v1, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    .line 7
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-double v1, v1

    iput-wide v1, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    .line 8
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_0
    return-void
.end method

.method private e()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v1

    .line 3
    iget v2, p0, Lcom/amap/api/mapcore/util/t1;->q:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 4
    iput v0, p0, Lcom/amap/api/mapcore/util/t1;->I:F

    div-float/2addr v0, v0

    return v0

    .line 5
    :cond_0
    iget v1, p0, Lcom/amap/api/mapcore/util/t1;->r:F

    div-float/2addr v0, v1

    return v0
.end method

.method private f()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/t1;->s:F

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v1

    mul-float v1, v1, v0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->d:Lcom/amap/api/mapcore/util/ba;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ba;->a()F

    move-result v0

    div-float/2addr v1, v0

    return v1
.end method

.method private g()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/t1;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->j:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/t1;->h()V

    .line 3
    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/t1;->j:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z

    .line 5
    iget-wide v1, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-wide v1, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    .line 7
    iget-wide v3, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    double-to-int v0, v1

    .line 8
    iput v0, p0, Lcom/amap/api/mapcore/util/t1;->g:I

    double-to-int v0, v3

    .line 9
    iput v0, p0, Lcom/amap/api/mapcore/util/t1;->h:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/t1;->k:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->d:Lcom/amap/api/mapcore/util/ba;

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->n:Lcom/amap/api/mapcore/util/h2$b;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLShader(I)Lcom/amap/api/mapcore/util/g2;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/h2$b;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/t1;->n:Lcom/amap/api/mapcore/util/h2$b;

    .line 4
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/t1;->r:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget v1, p0, Lcom/amap/api/mapcore/util/t1;->q:F

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUnitLengthByZoom(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/t1;->r:F

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/t1;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->e:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/t1;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/t1;->v:I

    .line 8
    iget-object v2, p0, Lcom/amap/api/mapcore/util/t1;->d:Lcom/amap/api/mapcore/util/ba;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/ba;->c(I)V

    .line 9
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/t1;->a:Z

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/t1;->g()V

    .line 11
    iget v0, p0, Lcom/amap/api/mapcore/util/t1;->g:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v0, v2

    .line 12
    iget-object v2, p0, Lcom/amap/api/mapcore/util/t1;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    int-to-float v0, v0

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 13
    iget v2, p0, Lcom/amap/api/mapcore/util/t1;->h:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v2, v3

    .line 14
    iget-object v3, p0, Lcom/amap/api/mapcore/util/t1;->x:Lcom/autonavi/base/amap/mapcore/FPoint;

    int-to-float v2, v2

    iput v2, v3, Landroid/graphics/PointF;->y:F

    .line 15
    iget-object v3, p0, Lcom/amap/api/mapcore/util/t1;->c:[F

    invoke-static {v3, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 16
    iget-object v4, p0, Lcom/amap/api/mapcore/util/t1;->c:[F

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getProjectionMatrix()[F

    move-result-object v6

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getViewMatrix()[F

    move-result-object v8

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 17
    iget-object v3, p0, Lcom/amap/api/mapcore/util/t1;->c:[F

    const/4 v4, 0x0

    invoke-static {v3, v1, v0, v2, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 18
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/t1;->t:Z

    if-eqz v0, :cond_3

    .line 19
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/t1;->f()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/t1;->H:F

    goto :goto_0

    .line 20
    :cond_3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/t1;->e()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/t1;->H:F

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->c:[F

    iget v2, p0, Lcom/amap/api/mapcore/util/t1;->H:F

    invoke-static {v0, v1, v2, v2, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 22
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->d:Lcom/amap/api/mapcore/util/ba;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/t1;->n:Lcom/amap/api/mapcore/util/h2$b;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/t1;->c:[F

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore/util/ba;->d(Lcom/amap/api/mapcore/util/h2$b;[F)V

    .line 23
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/t1;->w:Z

    if-eqz v0, :cond_4

    .line 24
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->redrawInfoWindow()V

    .line 25
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/t1;->w:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public checkInBounds()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/amap/api/mapcore/util/t1;->g:I

    iget v2, p0, Lcom/amap/api/mapcore/util/t1;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/amap/mapcore/Rectangle;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/t1;->b:Ljava/lang/String;

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->u:Lcom/amap/api/mapcore/util/z9;

    if-eqz v0, :cond_1

    .line 4
    iget v1, p0, Lcom/amap/api/mapcore/util/t1;->v:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/z9;->c(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->d:Lcom/amap/api/mapcore/util/ba;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ba;->f()V

    :cond_2
    return-void
.end method

.method public getAnchor()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmapDescriptor()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->e:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/t1;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/mapcore/util/t1;->h:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/t1;->d:Lcom/amap/api/mapcore/util/ba;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ba;->a()F

    move-result v1

    iget v2, p0, Lcom/amap/api/mapcore/util/t1;->H:F

    mul-float v1, v1, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoWindowOffsetX()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInfoWindowOffsetY()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->i:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getRealInfoWindowOffsetX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/t1;->B:I

    return v0
.end method

.method public getRealInfoWindowOffsetY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/t1;->C:I

    return v0
.end method

.method public getRealPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 19

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/util/t1;->getWidth()I

    move-result v3

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore/util/t1;->getHeight()I

    move-result v4

    .line 4
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v5

    .line 5
    iget v6, v1, Lcom/amap/api/mapcore/util/t1;->g:I

    iget v7, v1, Lcom/amap/api/mapcore/util/t1;->h:I

    invoke-virtual {v0, v6, v7, v5}, Lcom/autonavi/base/ae/gmap/GLMapState;->p20ToScreenPoint(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 6
    iget-object v0, v1, Lcom/amap/api/mapcore/util/t1;->y:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 7
    iget-object v6, v1, Lcom/amap/api/mapcore/util/t1;->y:[F

    const/4 v7, 0x0

    iget v0, v1, Lcom/amap/api/mapcore/util/t1;->o:F

    neg-float v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 8
    iget-object v12, v1, Lcom/amap/api/mapcore/util/t1;->y:[F

    const/4 v13, 0x0

    iget-object v0, v1, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 9
    iget-object v6, v1, Lcom/amap/api/mapcore/util/t1;->y:[F

    const/4 v7, 0x0

    iget-object v0, v1, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 10
    iget-object v10, v1, Lcom/amap/api/mapcore/util/t1;->z:[F

    neg-int v6, v3

    int-to-float v12, v6

    iget v6, v1, Lcom/amap/api/mapcore/util/t1;->D:F

    mul-float v6, v6, v12

    aput v6, v10, v2

    int-to-float v13, v4

    .line 11
    iget v6, v1, Lcom/amap/api/mapcore/util/t1;->E:F

    mul-float v6, v6, v13

    const/4 v14, 0x1

    aput v6, v10, v14

    const/4 v15, 0x0

    const/16 v16, 0x2

    .line 12
    aput v15, v10, v16

    const/16 v17, 0x3

    const/high16 v18, 0x3f800000    # 1.0f

    .line 13
    aput v18, v10, v17

    const/4 v7, 0x0

    .line 14
    iget-object v8, v1, Lcom/amap/api/mapcore/util/t1;->y:[F

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 15
    iget-object v6, v1, Lcom/amap/api/mapcore/util/t1;->A:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    aget v8, v0, v2

    add-float/2addr v8, v7

    float-to-int v8, v8

    iget v9, v5, Landroid/graphics/PointF;->y:F

    aget v10, v0, v14

    sub-float v10, v9, v10

    float-to-int v10, v10

    aget v11, v0, v2

    add-float/2addr v7, v11

    float-to-int v7, v7

    aget v11, v0, v14

    sub-float/2addr v9, v11

    float-to-int v9, v9

    invoke-virtual {v6, v8, v10, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 16
    iget-object v10, v1, Lcom/amap/api/mapcore/util/t1;->z:[F

    int-to-float v3, v3

    iget v6, v1, Lcom/amap/api/mapcore/util/t1;->D:F

    sub-float v6, v18, v6

    mul-float v6, v6, v3

    aput v6, v10, v2

    .line 17
    iget v6, v1, Lcom/amap/api/mapcore/util/t1;->E:F

    mul-float v13, v13, v6

    aput v13, v10, v14

    .line 18
    aput v15, v10, v16

    .line 19
    aput v18, v10, v17

    const/4 v7, 0x0

    .line 20
    iget-object v8, v1, Lcom/amap/api/mapcore/util/t1;->y:[F

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 21
    iget-object v6, v1, Lcom/amap/api/mapcore/util/t1;->A:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    aget v8, v0, v2

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/PointF;->y:F

    aget v9, v0, v14

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->union(II)V

    .line 22
    iget-object v10, v1, Lcom/amap/api/mapcore/util/t1;->z:[F

    iget v6, v1, Lcom/amap/api/mapcore/util/t1;->D:F

    sub-float v6, v18, v6

    mul-float v3, v3, v6

    aput v3, v10, v2

    neg-int v3, v4

    int-to-float v3, v3

    .line 23
    iget v4, v1, Lcom/amap/api/mapcore/util/t1;->E:F

    sub-float v4, v18, v4

    mul-float v4, v4, v3

    aput v4, v10, v14

    .line 24
    aput v15, v10, v16

    .line 25
    aput v18, v10, v17

    const/4 v7, 0x0

    .line 26
    iget-object v8, v1, Lcom/amap/api/mapcore/util/t1;->y:[F

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 27
    iget-object v4, v1, Lcom/amap/api/mapcore/util/t1;->A:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    aget v7, v0, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v5, Landroid/graphics/PointF;->y:F

    aget v8, v0, v14

    sub-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->union(II)V

    .line 28
    iget-object v10, v1, Lcom/amap/api/mapcore/util/t1;->z:[F

    iget v4, v1, Lcom/amap/api/mapcore/util/t1;->D:F

    mul-float v12, v12, v4

    aput v12, v10, v2

    .line 29
    iget v4, v1, Lcom/amap/api/mapcore/util/t1;->E:F

    sub-float v4, v18, v4

    mul-float v3, v3, v4

    aput v3, v10, v14

    .line 30
    aput v15, v10, v16

    .line 31
    aput v18, v10, v17

    const/4 v7, 0x0

    .line 32
    iget-object v8, v1, Lcom/amap/api/mapcore/util/t1;->y:[F

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 33
    iget-object v3, v1, Lcom/amap/api/mapcore/util/t1;->A:Landroid/graphics/Rect;

    iget v4, v5, Landroid/graphics/PointF;->x:F

    aget v6, v0, v2

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v6, v5, Landroid/graphics/PointF;->y:F

    aget v0, v0, v14

    sub-float/2addr v6, v0

    float-to-int v0, v6

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Rect;->union(II)V

    .line 34
    iget-object v0, v1, Lcom/amap/api/mapcore/util/t1;->A:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v3, v5, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/amap/api/mapcore/util/t1;->B:I

    .line 35
    iget-object v0, v1, Lcom/amap/api/mapcore/util/t1;->A:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v3, v5, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/amap/api/mapcore/util/t1;->C:I

    .line 36
    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/FPoint;->recycle()V

    .line 37
    iget-object v0, v1, Lcom/amap/api/mapcore/util/t1;->A:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v3, "MarkerDelegateImp"

    const-string v4, "getRect"

    .line 38
    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getRotateAngle()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->G:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/t1;->d:Lcom/amap/api/mapcore/util/ba;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ba;->e()F

    move-result v1

    iget v2, p0, Lcom/amap/api/mapcore/util/t1;->H:F

    mul-float v1, v1, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public isContains()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->u:Lcom/amap/api/mapcore/util/z9;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/z9;->e(Lcom/amap/api/mapcore/util/t1;)Z

    move-result v0

    return v0
.end method

.method public isDestory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInfoWindowEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isViewMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/t1;->l:Z

    return v0
.end method

.method public remove()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/t1;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeGLModel(Ljava/lang/String;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/t1;->j:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    return-void
.end method

.method public setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/amap/api/mapcore/util/t1;->g:I

    .line 2
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/amap/api/mapcore/util/t1;->h:I

    .line 3
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    .line 4
    iget v0, p0, Lcom/amap/api/mapcore/util/t1;->g:I

    iget v1, p0, Lcom/amap/api/mapcore/util/t1;->h:I

    invoke-static {v0, v1, p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 5
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v5, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/t1;->i:Lcom/amap/api/maps/model/LatLng;

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setInfoWindowOffset(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setInfoWindowShown(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/t1;->w:Z

    return-void
.end method

.method public setModelFixedLength(I)V
    .locals 0

    if-lez p1, :cond_0

    int-to-float p1, p1

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/t1;->s:F

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/t1;->t:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/amap/api/mapcore/util/t1;->s:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/t1;->t:Z

    :goto_0
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/t1;->p:Ljava/lang/Object;

    return-void
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/t1;->i:Lcom/amap/api/maps/model/LatLng;

    .line 2
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 3
    iget-wide v1, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2, v3, v4, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 4
    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/amap/api/mapcore/util/t1;->g:I

    .line 5
    iget p1, v0, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/amap/api/mapcore/util/t1;->h:I

    .line 6
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/t1;->w:Z

    .line 8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setRotateAngle(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/t1;->o:F

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/t1;->d:Lcom/amap/api/mapcore/util/ba;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->d:Lcom/amap/api/mapcore/util/ba;

    iget v1, p0, Lcom/amap/api/mapcore/util/t1;->o:F

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ba;->b(F)V

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/t1;->w:Z

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/t1;->F:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/t1;->G:Ljava/lang/String;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/t1;->l:Z

    return-void
.end method

.method public setZoomLimit(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/t1;->q:F

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    float-to-int p1, p1

    invoke-interface {v0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUnitLengthByZoom(I)F

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/t1;->r:F

    return-void
.end method

.method public showInfoWindow()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0, p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showInfoWindow(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startAnimation()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->j:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    instance-of v2, v0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    if-eqz v2, :cond_0

    .line 3
    check-cast v0, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    .line 4
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    .line 5
    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/t1;->c(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    .line 6
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setDuration(J)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/t1;->c(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    .line 8
    :cond_1
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/t1;->k:Z

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t1;->j:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->start()V

    :cond_2
    return v1
.end method
