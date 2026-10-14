.class public final Lcom/amap/api/mapcore/util/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/u$a;
    }
.end annotation


# instance fields
.field a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/ha;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/amap/api/mapcore/util/u$a;

.field private f:Lcom/autonavi/amap/mapcore/IPoint;

.field private g:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

.field private h:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

.field private i:Lcom/amap/api/mapcore/util/ew;

.field private j:Lcom/amap/api/mapcore/util/f3;

.field private k:Ljava/nio/FloatBuffer;

.field private l:Landroid/os/HandlerThread;

.field private m:Landroid/os/Handler;

.field private n:[I

.field o:[F

.field public p:Lcom/amap/api/mapcore/util/h2$d;

.field q:I

.field r:I

.field private s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x1f4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u;->c:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u;->d:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/amap/api/mapcore/util/u$a;

    invoke-direct {p1}, Lcom/amap/api/mapcore/util/u$a;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u;->e:Lcom/amap/api/mapcore/util/u$a;

    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 6
    iput-object p1, p0, Lcom/amap/api/mapcore/util/u;->n:[I

    const p1, 0x2bf20

    new-array p1, p1, [F

    .line 7
    iput-object p1, p0, Lcom/amap/api/mapcore/util/u;->o:[F

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/amap/api/mapcore/util/u;->q:I

    .line 9
    iput p1, p0, Lcom/amap/api/mapcore/util/u;->r:I

    .line 10
    new-instance p1, Lcom/amap/api/mapcore/util/u$c;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore/util/u$c;-><init>(Lcom/amap/api/mapcore/util/u;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u;->s:Ljava/lang/Runnable;

    .line 11
    iput-object p2, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 12
    new-instance p1, Lcom/amap/api/mapcore/util/ew;

    const/16 p2, 0x200

    const/16 v0, 0x400

    invoke-direct {p1, p2, v0}, Lcom/amap/api/mapcore/util/ew;-><init>(II)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u;->i:Lcom/amap/api/mapcore/util/ew;

    .line 13
    new-instance p1, Lcom/amap/api/mapcore/util/f3;

    invoke-direct {p1}, Lcom/amap/api/mapcore/util/f3;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u;->j:Lcom/amap/api/mapcore/util/f3;

    .line 14
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "AMapZindexSortThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u;->l:Landroid/os/HandlerThread;

    .line 15
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 16
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/amap/api/mapcore/util/u;->l:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u;->m:Landroid/os/Handler;

    return-void
.end method

.method private E()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->e:Lcom/amap/api/mapcore/util/u$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MapOverlayImageView"

    const-string v2, "changeOverlayIndex"

    .line 2
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->p:Lcom/amap/api/mapcore/util/h2$d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLShader(I)Lcom/amap/api/mapcore/util/g2;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/h2$d;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/u;->p:Lcom/amap/api/mapcore/util/h2$d;

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/amap/api/mapcore/util/u;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    return-object p0
.end method

.method private h(I)V
    .locals 10

    const/16 v0, 0x1388

    if-le p1, v0, :cond_0

    const/16 p1, 0x1388

    .line 1
    :cond_0
    iget v1, p0, Lcom/amap/api/mapcore/util/u;->q:I

    const v2, 0x88e4

    if-nez v1, :cond_2

    const/4 v1, 0x2

    new-array v3, v1, [I

    const/4 v4, 0x0

    .line 2
    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 3
    aget v1, v3, v4

    iput v1, p0, Lcom/amap/api/mapcore/util/u;->q:I

    const/4 v1, 0x1

    .line 4
    aget v1, v3, v1

    iput v1, p0, Lcom/amap/api/mapcore/util/u;->r:I

    .line 5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->j:Lcom/amap/api/mapcore/util/f3;

    const/16 v3, 0x7530

    invoke-virtual {v1, v3}, Lcom/amap/api/mapcore/util/f3;->e(I)Ljava/nio/ShortBuffer;

    move-result-object v1

    new-array v3, v3, [S

    :goto_0
    if-ge v4, v0, :cond_1

    mul-int/lit8 v5, v4, 0x6

    add-int/lit8 v6, v5, 0x0

    mul-int/lit8 v7, v4, 0x4

    add-int/lit8 v8, v7, 0x0

    int-to-short v8, v8

    .line 6
    aput-short v8, v3, v6

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v9, v7, 0x1

    int-to-short v9, v9

    .line 7
    aput-short v9, v3, v6

    add-int/lit8 v6, v5, 0x2

    add-int/lit8 v9, v7, 0x2

    int-to-short v9, v9

    .line 8
    aput-short v9, v3, v6

    add-int/lit8 v6, v5, 0x3

    .line 9
    aput-short v8, v3, v6

    add-int/lit8 v6, v5, 0x4

    .line 10
    aput-short v9, v3, v6

    add-int/lit8 v5, v5, 0x5

    add-int/lit8 v7, v7, 0x3

    int-to-short v6, v7

    .line 11
    aput-short v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1, v3}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 13
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 14
    iget v0, p0, Lcom/amap/api/mapcore/util/u;->r:I

    const v3, 0x8893

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v0, 0xea60

    .line 15
    invoke-static {v3, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 16
    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore/util/u;->q:I

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    mul-int/lit8 p1, p1, 0x24

    mul-int/lit8 p1, p1, 0x4

    .line 17
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->k:Ljava/nio/FloatBuffer;

    invoke-static {v1, p1, v0, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    return-void
.end method

.method private i(IIII)V
    .locals 6

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->j:Lcom/amap/api/mapcore/util/f3;

    mul-int/lit8 v1, p2, 0x24

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/f3;->f(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/u;->k:Ljava/nio/FloatBuffer;

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->o:[F

    invoke-virtual {v0, v1, p3, p4}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 3
    iget-object p3, p0, Lcom/amap/api/mapcore/util/u;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 4
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/u;->h(I)V

    .line 5
    iget-object v4, p0, Lcom/amap/api/mapcore/util/u;->k:Ljava/nio/FloatBuffer;

    iget-object p3, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p4

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/u;->j(IIILjava/nio/FloatBuffer;Lcom/autonavi/base/amap/mapcore/MapConfig;)V

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->j:Lcom/amap/api/mapcore/util/f3;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/f3;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method private j(IIILjava/nio/FloatBuffer;Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 7

    if-eqz p1, :cond_4

    if-eqz p4, :cond_4

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    iget-object p2, p0, Lcom/amap/api/mapcore/util/u;->p:Lcom/amap/api/mapcore/util/h2$d;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/g2;->i()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u;->F()V

    .line 3
    :cond_2
    iget-object p2, p0, Lcom/amap/api/mapcore/util/u;->p:Lcom/amap/api/mapcore/util/h2$d;

    if-eqz p2, :cond_4

    iget p4, p0, Lcom/amap/api/mapcore/util/u;->q:I

    if-eqz p4, :cond_4

    iget p4, p2, Lcom/amap/api/mapcore/util/h2$d;->g:I

    if-ltz p4, :cond_4

    iget p4, p0, Lcom/amap/api/mapcore/util/u;->r:I

    if-nez p4, :cond_3

    goto/16 :goto_0

    .line 4
    :cond_3
    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/g2;->b()V

    .line 5
    iget-object p2, p0, Lcom/amap/api/mapcore/util/u;->p:Lcom/amap/api/mapcore/util/h2$d;

    iget p2, p2, Lcom/amap/api/mapcore/util/h2$d;->i:I

    invoke-virtual {p5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result p4

    invoke-static {p2, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 6
    iget-object p2, p0, Lcom/amap/api/mapcore/util/u;->p:Lcom/amap/api/mapcore/util/h2$d;

    iget p2, p2, Lcom/amap/api/mapcore/util/h2$d;->f:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 7
    iget p2, p0, Lcom/amap/api/mapcore/util/u;->q:I

    const p4, 0x8892

    invoke-static {p4, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 8
    iget-object p2, p0, Lcom/amap/api/mapcore/util/u;->p:Lcom/amap/api/mapcore/util/h2$d;

    iget v0, p2, Lcom/amap/api/mapcore/util/h2$d;->f:I

    const/4 v1, 0x4

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/16 p2, 0xbe2

    .line 9
    invoke-static {p2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p5, 0x303

    const/4 v0, 0x1

    .line 10
    invoke-static {v0, p5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const p5, 0x84c0

    .line 11
    invoke-static {p5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p5, 0xde1

    .line 12
    invoke-static {p5, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 13
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->p:Lcom/amap/api/mapcore/util/h2$d;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$d;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 14
    iget p1, p0, Lcom/amap/api/mapcore/util/u;->q:I

    invoke-static {p4, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 15
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->p:Lcom/amap/api/mapcore/util/h2$d;

    iget v1, p1, Lcom/amap/api/mapcore/util/h2$d;->g:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x24

    const/16 v6, 0x10

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 16
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->p:Lcom/amap/api/mapcore/util/h2$d;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$d;->h:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 17
    iget p1, p0, Lcom/amap/api/mapcore/util/u;->q:I

    invoke-static {p4, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 18
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->p:Lcom/amap/api/mapcore/util/h2$d;

    iget v1, p1, Lcom/amap/api/mapcore/util/h2$d;->h:I

    const/4 v2, 0x3

    const/16 v6, 0x18

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 19
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->p:Lcom/amap/api/mapcore/util/h2$d;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$d;->e:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/u;->u()[F

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 20
    iget p1, p0, Lcom/amap/api/mapcore/util/u;->r:I

    const v0, 0x8893

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 p1, 0x4

    mul-int/lit8 p3, p3, 0x6

    const/16 v1, 0x1403

    .line 21
    invoke-static {p1, p3, v1, v2}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 22
    invoke-static {p4, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 23
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 24
    invoke-static {p5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 25
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->p:Lcom/amap/api/mapcore/util/h2$d;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$d;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 26
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->p:Lcom/amap/api/mapcore/util/h2$d;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$d;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 27
    invoke-static {p2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 28
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic q(Lcom/amap/api/mapcore/util/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u;->E()V

    return-void
.end method

.method private y(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/u;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "MapOverlayImageView"

    const-string v1, "addMarker"

    .line 3
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->s:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected B()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public C()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->c:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getBaseOverlayTextureID()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/amap/api/mapcore/util/u;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 4
    iget-object v4, p0, Lcom/amap/api/mapcore/util/u;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore/util/ha;

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/ha;->x()V

    .line 6
    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/ha;->y()I

    move-result v5

    if-gtz v5, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/ha;->u()I

    move-result v5

    if-ne v5, v1, :cond_0

    .line 8
    iget-object v5, p0, Lcom/amap/api/mapcore/util/u;->i:Lcom/amap/api/mapcore/util/ew;

    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/ha;->z()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/mapcore/util/ew;->c(Ljava/lang/String;)Z

    goto :goto_1

    .line 9
    :cond_0
    iget-object v5, p0, Lcom/amap/api/mapcore/util/u;->n:[I

    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/ha;->u()I

    move-result v6

    aput v6, v5, v2

    .line 10
    iget-object v5, p0, Lcom/amap/api/mapcore/util/u;->n:[I

    const/4 v6, 0x1

    invoke-static {v6, v5, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 11
    invoke-virtual {v4, v2}, Lcom/amap/api/mapcore/util/ha;->b(I)V

    .line 12
    :goto_1
    iget-object v5, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v5, :cond_1

    .line 13
    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/ha;->z()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeTextureItem(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public D()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->destroy(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/u;->s(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->l:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 6
    :cond_2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/u;->m:Landroid/os/Handler;

    .line 7
    iput-object v0, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "MapOverlayImageView"

    const-string v2, "destroy"

    .line 8
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapOverlayImageView clear erro"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "amapApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/util/w1;

    invoke-direct {v0, p1, p0}, Lcom/amap/api/mapcore/util/w1;-><init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/mapcore/util/u;)V

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    monitor-enter p1

    .line 3
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/u;->y(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)V

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/b3;->b(I)V

    .line 5
    new-instance v1, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore/util/e2;

    invoke-direct {v1, p1, p0}, Lcom/amap/api/mapcore/util/e2;-><init>(Lcom/amap/api/maps/model/TextOptions;Lcom/amap/api/mapcore/util/u;)V

    .line 3
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/u;->y(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)V

    .line 4
    new-instance p1, Lcom/amap/api/maps/model/Text;

    invoke-direct {p1, v1}, Lcom/amap/api/maps/model/Text;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IText;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Landroid/view/MotionEvent;)Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    .line 4
    instance-of v3, v2, Lcom/amap/api/mapcore/util/w1;

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/amap/api/mapcore/util/r3;->M(Landroid/graphics/Rect;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    check-cast v2, Lcom/amap/api/mapcore/util/w1;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/u;->g:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    .line 8
    monitor-exit v0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 9
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    monitor-exit v0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/MarkerOptions;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/MarkerOptions;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/u;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    .line 5
    invoke-virtual {v1}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 7
    invoke-virtual {v1}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p2

    const/high16 v1, 0x41900000    # 18.0f

    .line 8
    invoke-static {p2, v1}, Lcom/amap/api/mapcore/util/h;->h(Lcom/amap/api/maps/model/LatLng;F)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v1

    .line 10
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 11
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/MarkerOptions;

    .line 12
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore/util/u;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v3}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 15
    invoke-virtual {v3}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/amap/api/mapcore/util/u$b;

    invoke-direct {p2, p0, v1}, Lcom/amap/api/mapcore/util/u$b;-><init>(Lcom/amap/api/mapcore/util/u;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    const-string p2, "AMapDelegateImpGLSurfaceView"

    const-string v1, "addMarkers"

    .line 18
    invoke-static {p1, p2, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/amap/api/mapcore/util/u;->h:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    return-void
.end method

.method public k(Lcom/amap/api/mapcore/util/ha;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->c:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->f:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/u;->f:Lcom/autonavi/amap/mapcore/IPoint;

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v0}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/u;->f:Lcom/autonavi/amap/mapcore/IPoint;

    .line 5
    iput-object p1, p0, Lcom/amap/api/mapcore/util/u;->g:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showInfoWindow(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "MapOverlayImageView"

    const-string v1, "showInfoWindow"

    .line 7
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public m(Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->h:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->h:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->h:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->setOnTap(Z)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 5
    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->setOnTap(Z)V

    .line 6
    :cond_3
    iput-object p1, p0, Lcom/amap/api/mapcore/util/u;->h:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "MapOverlayImageView"

    const-string v1, "set2Top"

    .line 7
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public n(Z)V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/u;->C()V

    .line 5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 6
    monitor-exit v1

    return-void

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 8
    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    .line 9
    iget-object v5, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    const/high16 v6, 0x4f000000

    if-nez p1, :cond_2

    .line 10
    invoke-interface {v5}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getZIndex()F

    move-result v7

    cmpl-float v6, v7, v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {v5}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getZIndex()F

    move-result v7

    cmpl-float v6, v7, v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-interface {v5}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->isOnTap()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->isAllowLow()Z

    .line 14
    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->checkInBounds()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->isInfoWindowShown()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v6, :cond_6

    .line 15
    :cond_5
    :try_start_2
    iget-object v6, p0, Lcom/amap/api/mapcore/util/u;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 16
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17
    :cond_7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->h:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 18
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->h:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_e

    .line 20
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v2, p1, :cond_d

    .line 21
    iget-object v8, p0, Lcom/amap/api/mapcore/util/u;->d:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    .line 22
    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 23
    :try_start_4
    iget-object v9, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8, v9}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->loadTexture(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    if-nez v2, :cond_9

    .line 24
    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->getTextureId()I

    move-result v5

    goto :goto_3

    .line 25
    :cond_9
    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->getTextureId()I

    move-result v9

    if-eq v9, v5, :cond_a

    .line 26
    invoke-direct {p0, v5, v4, v6, v7}, Lcom/amap/api/mapcore/util/u;->i(IIII)V

    move v5, v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 27
    :cond_a
    :goto_3
    iget-object v9, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v10, p0, Lcom/amap/api/mapcore/util/u;->o:[F

    invoke-interface {v8, v9, v10, v7, v0}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->drawMarker(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;[FIF)V

    .line 28
    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->getTextureId()I

    move-result v9

    if-eq v9, v5, :cond_b

    .line 29
    invoke-direct {p0, v5, v4, v6, v7}, Lcom/amap/api/mapcore/util/u;->i(IIII)V

    move v6, v7

    move v5, v9

    const/4 v4, 0x0

    const/4 v7, 0x0

    :cond_b
    add-int/lit8 v7, v7, 0x24

    add-int/lit8 v4, v4, 0x1

    const/16 v9, 0x1388

    if-ne v4, v9, :cond_c

    .line 30
    invoke-direct {p0, v5, v4, v6, v7}, Lcom/amap/api/mapcore/util/u;->i(IIII)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 31
    :cond_c
    monitor-exit v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1

    :cond_d
    if-lez v4, :cond_e

    .line 32
    invoke-direct {p0, v5, v4, v6, v7}, Lcom/amap/api/mapcore/util/u;->i(IIII)V

    .line 33
    :cond_e
    monitor-exit v1

    goto :goto_4

    :catchall_2
    move-exception p1

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public declared-synchronized o(Landroid/graphics/Bitmap;Lcom/amap/api/mapcore/util/ha;)Z
    .locals 5

    monitor-enter p0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->i:Lcom/amap/api/mapcore/util/ew;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/ha;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, p1, v4}, Lcom/amap/api/mapcore/util/ew;->b(IILjava/lang/String;)Lcom/amap/api/mapcore/util/ew$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget v1, p1, Lcom/amap/api/mapcore/util/ew$d;->a:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->i:Lcom/amap/api/mapcore/util/ew;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ew;->a()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/amap/api/mapcore/util/ha;->n(F)V

    .line 3
    iget v1, p1, Lcom/amap/api/mapcore/util/ew$d;->b:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->i:Lcom/amap/api/mapcore/util/ew;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ew;->d()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/amap/api/mapcore/util/ha;->l(F)V

    .line 4
    iget v1, p1, Lcom/amap/api/mapcore/util/ew$d;->a:I

    iget v2, p1, Lcom/amap/api/mapcore/util/ew$d;->c:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->i:Lcom/amap/api/mapcore/util/ew;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ew;->a()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/amap/api/mapcore/util/ha;->p(F)V

    .line 5
    iget v1, p1, Lcom/amap/api/mapcore/util/ew$d;->b:I

    iget v2, p1, Lcom/amap/api/mapcore/util/ew$d;->d:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->i:Lcom/amap/api/mapcore/util/ew;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ew;->d()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/amap/api/mapcore/util/ha;->r(F)V

    .line 6
    iget v1, p1, Lcom/amap/api/mapcore/util/ew$d;->a:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->i:Lcom/amap/api/mapcore/util/ew;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ew;->a()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/amap/api/mapcore/util/ha;->h(F)V

    .line 7
    iget v1, p1, Lcom/amap/api/mapcore/util/ew$d;->b:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->i:Lcom/amap/api/mapcore/util/ew;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ew;->d()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/amap/api/mapcore/util/ha;->j(F)V

    .line 8
    iget v1, p1, Lcom/amap/api/mapcore/util/ew$d;->a:I

    iget v2, p1, Lcom/amap/api/mapcore/util/ew$d;->c:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->i:Lcom/amap/api/mapcore/util/ew;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ew;->a()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/amap/api/mapcore/util/ha;->a(F)V

    .line 9
    iget v1, p1, Lcom/amap/api/mapcore/util/ew$d;->b:I

    iget p1, p1, Lcom/amap/api/mapcore/util/ew$d;->d:I

    add-int/2addr v1, p1

    sub-int/2addr v1, v3

    int-to-float p1, v1

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->i:Lcom/amap/api/mapcore/util/ew;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ew;->d()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore/util/ha;->f(F)V

    .line 10
    invoke-virtual {p2, v3}, Lcom/amap/api/mapcore/util/ha;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return v3

    :cond_0
    const/4 p1, 0x0

    .line 12
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public p(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->h:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/amap/api/mapcore/util/u;->h:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/u;->r(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public r(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->isInfoWindowShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->hideInfoWindow()V

    .line 3
    iput-object v0, p0, Lcom/amap/api/mapcore/util/u;->g:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->g:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iput-object v0, p0, Lcom/amap/api/mapcore/util/u;->g:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    .line 2
    iput-object v2, p0, Lcom/amap/api/mapcore/util/u;->g:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    .line 3
    iput-object v2, p0, Lcom/amap/api/mapcore/util/u;->f:Lcom/autonavi/amap/mapcore/IPoint;

    .line 4
    iput-object v2, p0, Lcom/amap/api/mapcore/util/u;->h:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    .line 5
    iget-object v3, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v4, p0, Lcom/amap/api/mapcore/util/u;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_4

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_4

    .line 9
    iget-object v4, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    .line 10
    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v2, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_5

    .line 12
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->isOnTap()Z

    move-result p1

    if-eqz p1, :cond_5

    instance-of p1, v2, Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    if-eqz p1, :cond_5

    .line 14
    check-cast v2, Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/u;->h:Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;

    .line 15
    :cond_5
    :goto_4
    monitor-exit v3

    goto :goto_6

    :catchall_1
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    const-string v0, "MapOverlayImageView"

    const-string v1, "clear"

    .line 16
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    return-void
.end method

.method public t(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    .line 4
    instance-of v4, v3, Lcom/amap/api/mapcore/util/w1;

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/amap/api/mapcore/util/w1;

    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/w1;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/amap/api/mapcore/util/r3;->M(Landroid/graphics/Rect;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    iget p1, v4, Landroid/graphics/Rect;->left:I

    .line 9
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 10
    invoke-static {p1, v1}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u;->f:Lcom/autonavi/amap/mapcore/IPoint;

    .line 11
    check-cast v3, Lcom/amap/api/mapcore/util/w1;

    iput-object v3, p0, Lcom/amap/api/mapcore/util/u;->g:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    move v1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 12
    :cond_1
    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public u()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getFinalMatrix()[F

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [F

    return-object v0
.end method

.method public v()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object v0
.end method

.method public w(Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public x()Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->g:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    return-object v0
.end method

.method public z()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;

    .line 4
    instance-of v4, v3, Lcom/amap/api/mapcore/util/w1;

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayImageDelegate;->checkInBounds()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    new-instance v4, Lcom/amap/api/maps/model/Marker;

    check-cast v3, Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-direct {v4, v3}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    const-string v3, "MapOverlayImageView"

    const-string v4, "getMapScreenMarkers"

    .line 7
    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
