.class public Lcom/amap/api/mapcore/util/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IGroundOverlayDelegate;


# instance fields
.field private a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private b:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private c:Lcom/amap/api/maps/model/LatLng;

.field private d:F

.field private e:F

.field private f:Lcom/amap/api/maps/model/LatLngBounds;

.field private g:F

.field private h:F

.field private i:Z

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:Ljava/lang/String;

.field private o:Ljava/nio/FloatBuffer;

.field private p:Ljava/nio/FloatBuffer;

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/ha;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/amap/api/mapcore/util/r;

.field v:[F

.field w:Lcom/amap/api/mapcore/util/h2$c;


# direct methods
.method private constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/u1;->i:Z

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/amap/api/mapcore/util/u1;->j:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lcom/amap/api/mapcore/util/u1;->k:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    iput v0, p0, Lcom/amap/api/mapcore/util/u1;->l:F

    .line 8
    iput v0, p0, Lcom/amap/api/mapcore/util/u1;->m:F

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/amap/api/mapcore/util/u1;->o:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/u1;->r:Z

    .line 11
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/u1;->s:Z

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/u1;->t:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lcom/amap/api/mapcore/util/u1;->v:[F

    .line 14
    iput-object p1, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/u1;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u1;->n:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "GroundOverlayDelegateImp"

    const-string v1, "create"

    .line 16
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Lcom/amap/api/mapcore/util/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/u1;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    .line 2
    iput-object p2, p0, Lcom/amap/api/mapcore/util/u1;->u:Lcom/amap/api/mapcore/util/r;

    return-void
.end method

.method private a(ZLcom/amap/api/maps/model/BitmapDescriptor;)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u1;->i()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->u:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore/util/r;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/mapcore/util/ha;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ha;->u()I

    move-result p1

    .line 4
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/u1;->d(Lcom/amap/api/mapcore/util/ha;)V

    return p1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lcom/amap/api/mapcore/util/ha;

    invoke-direct {v0, p2, v1}, Lcom/amap/api/mapcore/util/ha;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u1;->j()I

    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ha;->b(I)V

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addTextureItem(Lcom/amap/api/mapcore/util/ha;)V

    .line 11
    :cond_3
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/u1;->d(Lcom/amap/api/mapcore/util/ha;)V

    const/4 p1, 0x1

    .line 12
    invoke-static {v1, p2, p1}, Lcom/amap/api/mapcore/util/r3;->c0(ILandroid/graphics/Bitmap;Z)I

    :cond_4
    return v1
.end method

.method private b()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->c:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/amap/api/mapcore/util/u1;->d:F

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
    iget v0, p0, Lcom/amap/api/mapcore/util/u1;->e:F

    float-to-double v3, v0

    const-wide v5, 0x40fb25af0c031ddeL    # 111194.94043265979

    div-double/2addr v3, v5

    .line 5
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/model/LatLngBounds;

    new-instance v5, Lcom/amap/api/maps/model/LatLng;

    iget-object v6, p0, Lcom/amap/api/mapcore/util/u1;->c:Lcom/amap/api/maps/model/LatLng;

    iget-wide v7, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget v9, p0, Lcom/amap/api/mapcore/util/u1;->m:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    float-to-double v11, v9

    mul-double v11, v11, v3

    sub-double/2addr v7, v11

    iget-wide v11, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v6, p0, Lcom/amap/api/mapcore/util/u1;->l:F

    float-to-double v13, v6

    mul-double v13, v13, v1

    sub-double/2addr v11, v13

    invoke-direct {v5, v7, v8, v11, v12}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    iget-object v7, p0, Lcom/amap/api/mapcore/util/u1;->c:Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget v11, p0, Lcom/amap/api/mapcore/util/u1;->m:F

    float-to-double v11, v11

    mul-double v11, v11, v3

    add-double/2addr v8, v11

    iget-wide v3, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v7, p0, Lcom/amap/api/mapcore/util/u1;->l:F

    sub-float/2addr v10, v7

    float-to-double v10, v10

    mul-double v10, v10, v1

    add-double/2addr v3, v10

    invoke-direct {v6, v8, v9, v3, v4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v5, v6}, Lcom/amap/api/maps/model/LatLngBounds;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/u1;->f:Lcom/amap/api/maps/model/LatLngBounds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :goto_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u1;->g()V

    return-void
.end method

.method private c(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 10

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->w:Lcom/amap/api/mapcore/util/h2$c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g2;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u1;->k()V

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->w:Lcom/amap/api/mapcore/util/h2$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g2;->b()V

    const/16 v0, 0xbe2

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v1, 0x303

    const/4 v2, 0x1

    .line 5
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 6
    iget v1, p0, Lcom/amap/api/mapcore/util/u1;->k:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v4, v1, v3

    mul-float v5, v1, v3

    mul-float v6, v1, v3

    invoke-static {v4, v5, v6, v1}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    const v1, 0x84c0

    .line 7
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    .line 8
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 9
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->w:Lcom/amap/api/mapcore/util/h2$c;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$c;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->w:Lcom/amap/api/mapcore/util/h2$c;

    iget v4, p1, Lcom/amap/api/mapcore/util/h2$c;->f:I

    const/4 v5, 0x4

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x10

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 11
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->w:Lcom/amap/api/mapcore/util/h2$c;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$c;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 12
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->w:Lcom/amap/api/mapcore/util/h2$c;

    iget v4, p1, Lcom/amap/api/mapcore/util/h2$c;->g:I

    const/4 v5, 0x2

    const/16 v8, 0x8

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 13
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->w:Lcom/amap/api/mapcore/util/h2$c;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$c;->h:I

    iget-object p2, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide p2

    double-to-int p2, p2

    div-int/lit16 p2, p2, 0x2710

    int-to-float p2, p2

    iget-object p3, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v4

    double-to-int p3, v4

    div-int/lit16 p3, p3, 0x2710

    int-to-float p3, p3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 14
    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v4

    double-to-int v4, v4

    rem-int/lit16 v4, v4, 0x2710

    int-to-float v4, v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v5

    double-to-int v5, v5

    rem-int/lit16 v5, v5, 0x2710

    int-to-float v5, v5

    .line 15
    invoke-static {p1, p2, p3, v4, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 16
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->w:Lcom/amap/api/mapcore/util/h2$c;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$c;->i:I

    iget p2, p0, Lcom/amap/api/mapcore/util/u1;->k:F

    mul-float p3, p2, v3

    mul-float v4, p2, v3

    mul-float v3, v3, p2

    invoke-static {p1, p3, v4, v3, p2}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 17
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->w:Lcom/amap/api/mapcore/util/h2$c;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$c;->e:I

    iget-object p2, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, v2, p3, p2, p3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p1, 0x6

    const/4 p2, 0x4

    .line 18
    invoke-static {p1, p3, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 19
    invoke-static {v1, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 20
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->w:Lcom/amap/api/mapcore/util/h2$c;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$c;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 21
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->w:Lcom/amap/api/mapcore/util/h2$c;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$c;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 22
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 23
    invoke-static {p3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private d(Lcom/amap/api/mapcore/util/ha;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ha;->w()V

    :cond_0
    return-void
.end method

.method private e(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/u1;->l:F

    float-to-double v0, v0

    mul-double p6, p6, v0

    sub-double/2addr p2, p6

    .line 2
    iget p6, p0, Lcom/amap/api/mapcore/util/u1;->m:F

    const/high16 p7, 0x3f800000    # 1.0f

    sub-float/2addr p7, p6

    float-to-double p6, p7

    mul-double p8, p8, p6

    sub-double/2addr p8, p4

    .line 3
    iget p4, p0, Lcom/amap/api/mapcore/util/u1;->g:F

    neg-float p4, p4

    float-to-double p4, p4

    const-wide p6, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double p4, p4, p6

    .line 4
    iget-wide p6, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, p2

    .line 5
    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, p8

    add-double/2addr v0, v2

    add-double/2addr p6, v0

    double-to-int p6, p6

    iput p6, p10, Landroid/graphics/Point;->x:I

    .line 6
    iget-wide p6, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double p8, p8, v0

    .line 7
    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    mul-double p2, p2, p4

    sub-double/2addr p8, p2

    add-double/2addr p6, p8

    double-to-int p1, p6

    iput p1, p10, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private declared-synchronized f()V
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->f:Lcom/amap/api/maps/model/LatLngBounds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    .line 4
    iget-object v0, v0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    .line 5
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/amap/api/mapcore/util/u1;->m:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    iget-wide v7, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v7, v3

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    iget-wide v5, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v7, p0, Lcom/amap/api/mapcore/util/u1;->l:F

    float-to-double v7, v7

    iget-wide v9, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v9, v5

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/u1;->c:Lcom/amap/api/maps/model/LatLng;

    .line 6
    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v4, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v6, 0x41584dae328f5c29L    # 6371000.79

    mul-double v2, v2, v6

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v10, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v8, v10

    mul-double v2, v2, v8

    mul-double v2, v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/amap/api/mapcore/util/u1;->d:F

    .line 7
    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v0, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v2, v0

    mul-double v2, v2, v6

    mul-double v2, v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/util/u1;->e:F

    .line 8
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u1;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 21

    move-object/from16 v12, p0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, v12, Lcom/amap/api/mapcore/util/u1;->f:Lcom/amap/api/maps/model/LatLngBounds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/16 v0, 0x10

    :try_start_1
    new-array v0, v0, [F

    .line 3
    iput-object v0, v12, Lcom/amap/api/mapcore/util/u1;->v:[F

    .line 4
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v13

    .line 6
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v14

    .line 7
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v15

    .line 8
    iget-object v1, v12, Lcom/amap/api/mapcore/util/u1;->f:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 9
    iget-object v1, v12, Lcom/amap/api/mapcore/util/u1;->f:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v2, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v13}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 10
    iget-object v1, v12, Lcom/amap/api/mapcore/util/u1;->f:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v14}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 11
    iget-object v1, v12, Lcom/amap/api/mapcore/util/u1;->f:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v2, v1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v15}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 12
    iget v1, v12, Lcom/amap/api/mapcore/util/u1;->g:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 13
    iget v1, v13, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-double v9, v1

    .line 14
    iget v1, v13, Landroid/graphics/Point;->y:I

    iget v2, v14, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-double v7, v1

    .line 15
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v11

    .line 16
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    iget v3, v12, Lcom/amap/api/mapcore/util/u1;->l:F

    float-to-double v3, v3

    mul-double v3, v3, v9

    add-double/2addr v1, v3

    iput-wide v1, v11, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    .line 17
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-double v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, v12, Lcom/amap/api/mapcore/util/u1;->m:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    mul-double v3, v3, v7

    sub-double/2addr v1, v3

    iput-wide v1, v11, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move-wide/from16 v16, v7

    move-wide v7, v9

    move-wide/from16 v18, v9

    move-wide/from16 v9, v16

    move-object/from16 v20, v11

    move-object v11, v0

    .line 18
    invoke-direct/range {v1 .. v11}, Lcom/amap/api/mapcore/util/u1;->e(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V

    const-wide/16 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-wide/from16 v3, v18

    move-wide/from16 v7, v18

    move-wide/from16 v9, v16

    move-object v11, v13

    .line 19
    invoke-direct/range {v1 .. v11}, Lcom/amap/api/mapcore/util/u1;->e(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-wide/from16 v3, v18

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    move-wide/from16 v9, v16

    move-object v11, v14

    .line 20
    invoke-direct/range {v1 .. v11}, Lcom/amap/api/mapcore/util/u1;->e(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    move-wide/from16 v9, v16

    move-object v11, v15

    .line 21
    invoke-direct/range {v1 .. v11}, Lcom/amap/api/mapcore/util/u1;->e(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 22
    invoke-virtual/range {v20 .. v20}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    .line 23
    :cond_1
    iget-object v1, v12, Lcom/amap/api/mapcore/util/u1;->v:[F

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/Point;->x:I

    div-int/lit16 v4, v3, 0x2710

    int-to-float v4, v4

    aput v4, v1, v2

    const/4 v2, 0x1

    .line 24
    iget v4, v0, Landroid/graphics/Point;->y:I

    div-int/lit16 v5, v4, 0x2710

    int-to-float v5, v5

    aput v5, v1, v2

    const/4 v2, 0x2

    .line 25
    rem-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x3

    .line 26
    rem-int/lit16 v4, v4, 0x2710

    int-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x4

    .line 27
    iget v3, v13, Landroid/graphics/Point;->x:I

    div-int/lit16 v4, v3, 0x2710

    int-to-float v4, v4

    aput v4, v1, v2

    const/4 v2, 0x5

    .line 28
    iget v4, v13, Landroid/graphics/Point;->y:I

    div-int/lit16 v5, v4, 0x2710

    int-to-float v5, v5

    aput v5, v1, v2

    const/4 v2, 0x6

    .line 29
    rem-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x7

    .line 30
    rem-int/lit16 v4, v4, 0x2710

    int-to-float v3, v4

    aput v3, v1, v2

    const/16 v2, 0x8

    .line 31
    iget v3, v14, Landroid/graphics/Point;->x:I

    div-int/lit16 v4, v3, 0x2710

    int-to-float v4, v4

    aput v4, v1, v2

    const/16 v2, 0x9

    .line 32
    iget v4, v14, Landroid/graphics/Point;->y:I

    div-int/lit16 v5, v4, 0x2710

    int-to-float v5, v5

    aput v5, v1, v2

    const/16 v2, 0xa

    .line 33
    rem-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xb

    .line 34
    rem-int/lit16 v4, v4, 0x2710

    int-to-float v3, v4

    aput v3, v1, v2

    const/16 v2, 0xc

    .line 35
    iget v3, v15, Landroid/graphics/Point;->x:I

    div-int/lit16 v4, v3, 0x2710

    int-to-float v4, v4

    aput v4, v1, v2

    const/16 v2, 0xd

    .line 36
    iget v4, v15, Landroid/graphics/Point;->y:I

    div-int/lit16 v5, v4, 0x2710

    int-to-float v5, v5

    aput v5, v1, v2

    const/16 v2, 0xe

    .line 37
    rem-int/lit16 v3, v3, 0x2710

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xf

    .line 38
    rem-int/lit16 v4, v4, 0x2710

    int-to-float v3, v4

    aput v3, v1, v2

    .line 39
    iget-object v2, v12, Lcom/amap/api/mapcore/util/u1;->o:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_2

    .line 40
    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->E([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v12, Lcom/amap/api/mapcore/util/u1;->o:Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/r3;->F([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v12, Lcom/amap/api/mapcore/util/u1;->o:Ljava/nio/FloatBuffer;

    .line 42
    :goto_0
    invoke-virtual {v15}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 43
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 44
    invoke-virtual {v13}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 45
    invoke-virtual {v14}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u1;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/u1;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/amap/api/mapcore/util/u1;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    aput v0, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v1, 0x4

    aput v0, v2, v1

    const/4 v0, 0x5

    aput v4, v2, v0

    const/4 v0, 0x6

    aput v4, v2, v0

    const/4 v0, 0x7

    aput v4, v2, v0

    .line 7
    invoke-static {v2}, Lcom/amap/api/mapcore/util/r3;->E([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/u1;->p:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->t:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/ha;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/u1;->u:Lcom/amap/api/mapcore/util/r;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/r;->o(Lcom/amap/api/mapcore/util/ha;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method private j()I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 1
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2
    aget v0, v1, v2

    return v0
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2
    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLShader(I)Lcom/amap/api/mapcore/util/g2;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/h2$c;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/u1;->w:Lcom/amap/api/mapcore/util/h2$c;

    :cond_0
    return-void
.end method


# virtual methods
.method public calMapFPoint()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->v:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/u1;->s:Z

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->c:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u1;->f()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->f:Lcom/amap/api/maps/model/LatLngBounds;

    if-nez v0, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u1;->b()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u1;->g()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public checkInBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/u1;->remove()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->t:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u1;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u1;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/ha;

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/u1;->u:Lcom/amap/api/mapcore/util/r;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/r;->o(Lcom/amap/api/mapcore/util/ha;)V

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ha;->z()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeTextureItem(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 13
    iput-object v1, p0, Lcom/amap/api/mapcore/util/u1;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->p:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 16
    iput-object v1, p0, Lcom/amap/api/mapcore/util/u1;->p:Ljava/nio/FloatBuffer;

    .line 17
    :cond_5
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->o:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 20
    iput-object v1, p0, Lcom/amap/api/mapcore/util/u1;->o:Ljava/nio/FloatBuffer;

    .line 21
    :cond_6
    iput-object v1, p0, Lcom/amap/api/mapcore/util/u1;->f:Lcom/amap/api/maps/model/LatLngBounds;

    .line 22
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    iput-object v1, p0, Lcom/amap/api/mapcore/util/u1;->c:Lcom/amap/api/maps/model/LatLng;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 24
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    const-string v1, "GroundOverlayDelegateImp"

    const-string v2, "destroy"

    .line 25
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/u1;->i:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->c:Lcom/amap/api/maps/model/LatLng;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->f:Lcom/amap/api/maps/model/LatLngBounds;

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/u1;->calMapFPoint()Z

    .line 6
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/u1;->r:Z

    if-nez p1, :cond_5

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt p1, v2, :cond_4

    const/4 v0, 0x1

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/u1;->a(ZLcom/amap/api/maps/model/BitmapDescriptor;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/u1;->q:I

    .line 9
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/u1;->r:Z

    .line 10
    :cond_5
    iget p1, p0, Lcom/amap/api/mapcore/util/u1;->d:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_6

    iget p1, p0, Lcom/amap/api/mapcore/util/u1;->e:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_6

    return-void

    .line 11
    :cond_6
    monitor-enter p0

    .line 12
    :try_start_1
    iget p1, p0, Lcom/amap/api/mapcore/util/u1;->q:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->o:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u1;->p:Ljava/nio/FloatBuffer;

    invoke-direct {p0, p1, v0, v2}, Lcom/amap/api/mapcore/util/u1;->c(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 13
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/u1;->s:Z

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 16
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/u1;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getBearing()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/u1;->g:F

    return v0
.end method

.method public getBounds()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->f:Lcom/amap/api/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getHeight()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/u1;->e:F

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const-string v1, "GroundOverlay"

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->createId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/u1;->n:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->c:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/u1;->j:F

    return v0
.end method

.method public getWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/u1;->d:F

    return v0
.end method

.method public getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/u1;->h:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDrawFinish()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/u1;->s:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/u1;->i:Z

    return v0
.end method

.method public reLoadTexture()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/u1;->r:Z

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/u1;->q:I

    return-void
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/u1;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeGLOverlay(Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public setAnchor(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/u1;->l:F

    .line 2
    iput p2, p0, Lcom/amap/api/mapcore/util/u1;->m:F

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setBearing(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/u1;->g:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iput p1, p0, Lcom/amap/api/mapcore/util/u1;->g:F

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u1;->g()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setDimensions(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const-string v0, "GroundOverlayDelegateImp"

    const-string v1, "Width must be non-negative"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/u1;->r:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore/util/u1;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 3
    iput p1, p0, Lcom/amap/api/mapcore/util/u1;->d:F

    .line 4
    iput p1, p0, Lcom/amap/api/mapcore/util/u1;->e:F

    .line 5
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u1;->b()V

    goto :goto_0

    .line 6
    :cond_1
    iput p1, p0, Lcom/amap/api/mapcore/util/u1;->d:F

    .line 7
    iput p1, p0, Lcom/amap/api/mapcore/util/u1;->e:F

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setDimensions(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "GroundOverlayDelegateImp"

    const-string v1, "Width and Height must be non-negative"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/u1;->r:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/util/u1;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/util/u1;->e:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    .line 11
    iput p1, p0, Lcom/amap/api/mapcore/util/u1;->d:F

    .line 12
    iput p2, p0, Lcom/amap/api/mapcore/util/u1;->e:F

    .line 13
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u1;->b()V

    goto :goto_0

    .line 14
    :cond_2
    iput p1, p0, Lcom/amap/api/mapcore/util/u1;->d:F

    .line 15
    iput p2, p0, Lcom/amap/api/mapcore/util/u1;->e:F

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setImage(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/u1;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u1;->h()V

    .line 4
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/u1;->r:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/u1;->r:Z

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/u1;->c:Lcom/amap/api/maps/model/LatLng;

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u1;->b()V

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setPositionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/u1;->f:Lcom/amap/api/maps/model/LatLngBounds;

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u1;->f()V

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setTransparency(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/u1;->j:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/u1;->k:F

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/u1;->i:Z

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/u1;->h:F

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeGLOverlayIndex()V

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method
