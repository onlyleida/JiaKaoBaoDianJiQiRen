.class public Lcom/amap/api/mapcore/util/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/f2$b;,
        Lcom/amap/api/mapcore/util/f2$c;
    }
.end annotation


# static fields
.field private static q:I


# instance fields
.field private a:Lcom/amap/api/mapcore/util/ab;

.field private b:Lcom/amap/api/maps/model/TileProvider;

.field private c:Ljava/lang/Float;

.field private d:Z

.field private e:Z

.field private f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/amap/api/mapcore/util/s3;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/f2$b;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Lcom/amap/api/mapcore/util/f2$c;

.field private n:Ljava/lang/String;

.field private o:Ljava/nio/FloatBuffer;

.field p:Lcom/amap/api/mapcore/util/h2$g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/util/ab;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/f2;->e:Z

    const/16 v1, 0x100

    .line 3
    iput v1, p0, Lcom/amap/api/mapcore/util/f2;->g:I

    .line 4
    iput v1, p0, Lcom/amap/api/mapcore/util/f2;->h:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/amap/api/mapcore/util/f2;->i:I

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/f2;->l:Z

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2;->m:Lcom/amap/api/mapcore/util/f2$c;

    .line 9
    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2;->n:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2;->o:Ljava/nio/FloatBuffer;

    .line 11
    iput-object p2, p0, Lcom/amap/api/mapcore/util/f2;->a:Lcom/amap/api/mapcore/util/ab;

    .line 12
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps/model/TileProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2;->b:Lcom/amap/api/maps/model/TileProvider;

    .line 13
    invoke-interface {v1}, Lcom/amap/api/maps/model/TileProvider;->getTileWidth()I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/f2;->g:I

    .line 14
    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2;->b:Lcom/amap/api/maps/model/TileProvider;

    invoke-interface {v1}, Lcom/amap/api/maps/model/TileProvider;->getTileHeight()I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/f2;->h:I

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 15
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->E([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2;->o:Ljava/nio/FloatBuffer;

    .line 16
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getZIndex()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2;->c:Ljava/lang/Float;

    .line 17
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->isVisible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/f2;->d:Z

    .line 18
    iput-boolean p3, p0, Lcom/amap/api/mapcore/util/f2;->e:Z

    if-eqz p3, :cond_0

    const-string v1, "TileOverlay0"

    .line 19
    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2;->n:Ljava/lang/String;

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/f2;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2;->n:Ljava/lang/String;

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2;->a:Lcom/amap/api/mapcore/util/ab;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ab;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 22
    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2;->n:Ljava/lang/String;

    const/16 v2, 0xb

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/f2;->i:I

    if-eqz p3, :cond_1

    .line 25
    :try_start_0
    new-instance p3, Lcom/amap/api/mapcore/util/v3$b;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2;->a:Lcom/amap/api/mapcore/util/ab;

    .line 26
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ab;->m()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/f2;->n:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/ab;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p2

    invoke-interface {p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v1, v2, p2}, Lcom/amap/api/mapcore/util/v3$b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 27
    :cond_1
    new-instance p3, Lcom/amap/api/mapcore/util/v3$b;

    iget-object p2, p0, Lcom/amap/api/mapcore/util/f2;->a:Lcom/amap/api/mapcore/util/ab;

    .line 28
    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/ab;->m()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2;->n:Ljava/lang/String;

    invoke-direct {p3, p2, v1}, Lcom/amap/api/mapcore/util/v3$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    :goto_1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getMemoryCacheEnabled()Z

    move-result p2

    .line 30
    invoke-virtual {p3, p2}, Lcom/amap/api/mapcore/util/v3$b;->d(Z)V

    .line 31
    iget-boolean p2, p0, Lcom/amap/api/mapcore/util/f2;->e:Z

    if-eqz p2, :cond_2

    .line 32
    iput-boolean v0, p3, Lcom/amap/api/mapcore/util/v3$b;->i:Z

    .line 33
    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheEnabled()Z

    move-result p2

    invoke-virtual {p3, p2}, Lcom/amap/api/mapcore/util/v3$b;->f(Z)V

    .line 34
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getMemCacheSize()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/amap/api/mapcore/util/v3$b;->a(I)V

    .line 35
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheSize()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/amap/api/mapcore/util/v3$b;->b(J)V

    .line 36
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheDir()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, ""

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 38
    invoke-virtual {p3, p1}, Lcom/amap/api/mapcore/util/v3$b;->c(Ljava/lang/String;)V

    .line 39
    :cond_3
    new-instance p1, Lcom/amap/api/mapcore/util/s3;

    iget-object p2, p0, Lcom/amap/api/mapcore/util/f2;->a:Lcom/amap/api/mapcore/util/ab;

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/ab;->m()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/amap/api/mapcore/util/f2;->g:I

    iget v1, p0, Lcom/amap/api/mapcore/util/f2;->h:I

    invoke-direct {p1, p2, v0, v1}, Lcom/amap/api/mapcore/util/s3;-><init>(Landroid/content/Context;II)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/f2;->j:Lcom/amap/api/mapcore/util/s3;

    .line 40
    iget-object p2, p0, Lcom/amap/api/mapcore/util/f2;->b:Lcom/amap/api/maps/model/TileProvider;

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore/util/s3;->z(Lcom/amap/api/maps/model/TileProvider;)V

    .line 41
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f2;->j:Lcom/amap/api/mapcore/util/s3;

    invoke-virtual {p1, p3}, Lcom/amap/api/mapcore/util/u3;->e(Lcom/amap/api/mapcore/util/v3$b;)V

    .line 42
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f2;->j:Lcom/amap/api/mapcore/util/s3;

    new-instance p2, Lcom/amap/api/mapcore/util/f2$a;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore/util/f2$a;-><init>(Lcom/amap/api/mapcore/util/f2;)V

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore/util/u3;->d(Lcom/amap/api/mapcore/util/u3$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/f2;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/f2;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method

.method static synthetic b(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;IIIILcom/amap/api/mapcore/util/ab;Lcom/amap/api/mapcore/util/s3;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/amap/api/mapcore/util/f2;->j(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;IIIILcom/amap/api/mapcore/util/ab;Lcom/amap/api/mapcore/util/s3;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private d(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 9

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->p:Lcom/amap/api/mapcore/util/h2$g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g2;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/f2;->m()V

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->p:Lcom/amap/api/mapcore/util/h2$g;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g2;->b()V

    const/16 v0, 0xbe2

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v1, 0x303

    const/4 v2, 0x1

    .line 5
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    const v1, 0x84c0

    .line 7
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    .line 8
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 9
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f2;->p:Lcom/amap/api/mapcore/util/h2$g;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$g;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f2;->p:Lcom/amap/api/mapcore/util/h2$g;

    iget v3, p1, Lcom/amap/api/mapcore/util/h2$g;->f:I

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 11
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f2;->p:Lcom/amap/api/mapcore/util/h2$g;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$g;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 12
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f2;->p:Lcom/amap/api/mapcore/util/h2$g;

    iget v3, p1, Lcom/amap/api/mapcore/util/h2$g;->g:I

    const/4 v4, 0x2

    const/16 v7, 0x8

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 13
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f2;->p:Lcom/amap/api/mapcore/util/h2$g;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$g;->e:I

    iget-object p2, p0, Lcom/amap/api/mapcore/util/f2;->a:Lcom/amap/api/mapcore/util/ab;

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/ab;->o()[F

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, v2, p3, p2, p3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p1, 0x6

    const/4 p2, 0x4

    .line 14
    invoke-static {p1, p3, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 15
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f2;->p:Lcom/amap/api/mapcore/util/h2$g;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$g;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 16
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f2;->p:Lcom/amap/api/mapcore/util/h2$g;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$g;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 17
    invoke-static {v1, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 18
    invoke-static {p3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 19
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private f(Z)V
    .locals 11

    .line 1
    new-instance v10, Lcom/amap/api/mapcore/util/f2$c;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/f2;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget v3, p0, Lcom/amap/api/mapcore/util/f2;->g:I

    iget v4, p0, Lcom/amap/api/mapcore/util/f2;->h:I

    iget v5, p0, Lcom/amap/api/mapcore/util/f2;->i:I

    iget-object v6, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    iget-boolean v7, p0, Lcom/amap/api/mapcore/util/f2;->e:Z

    iget-object v8, p0, Lcom/amap/api/mapcore/util/f2;->a:Lcom/amap/api/mapcore/util/ab;

    iget-object v9, p0, Lcom/amap/api/mapcore/util/f2;->j:Lcom/amap/api/mapcore/util/s3;

    move-object v0, v10

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/amap/api/mapcore/util/f2$c;-><init>(ZLcom/autonavi/base/amap/api/mapcore/IAMapDelegate;IIILjava/util/List;ZLcom/amap/api/mapcore/util/ab;Lcom/amap/api/mapcore/util/s3;)V

    iput-object v10, p0, Lcom/amap/api/mapcore/util/f2;->m:Lcom/amap/api/mapcore/util/f2$c;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 2
    invoke-virtual {v10, p1}, Lcom/amap/api/mapcore/util/dq;->m([Ljava/lang/Object;)Lcom/amap/api/mapcore/util/dq;

    return-void
.end method

.method private g(Lcom/amap/api/mapcore/util/f2$b;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v1, Lcom/amap/api/mapcore/util/f2$b;->c:I

    int-to-float v2, v2

    .line 2
    iget v3, v0, Lcom/amap/api/mapcore/util/f2;->g:I

    iget v4, v0, Lcom/amap/api/mapcore/util/f2;->h:I

    .line 3
    iget-object v5, v1, Lcom/amap/api/mapcore/util/f2$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    float-to-int v2, v2

    rsub-int/lit8 v2, v2, 0x14

    const/4 v7, 0x1

    shl-int v2, v7, v2

    mul-int v4, v4, v2

    add-int/2addr v5, v4

    .line 4
    iget-object v8, v0, Lcom/amap/api/mapcore/util/f2;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v8

    const/16 v9, 0xc

    new-array v9, v9, [F

    int-to-double v10, v6

    .line 5
    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v12

    sub-double v12, v10, v12

    double-to-float v12, v12

    const/4 v13, 0x0

    aput v12, v9, v13

    int-to-double v12, v5

    .line 6
    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v14

    sub-double v14, v12, v14

    double-to-float v14, v14

    aput v14, v9, v7

    const/4 v14, 0x2

    const/4 v15, 0x0

    aput v15, v9, v14

    mul-int v2, v2, v3

    add-int/2addr v6, v2

    int-to-double v2, v6

    .line 7
    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v16

    move-object v14, v8

    sub-double v7, v2, v16

    double-to-float v7, v7

    const/4 v8, 0x3

    aput v7, v9, v8

    .line 8
    invoke-virtual {v14}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v7

    sub-double/2addr v12, v7

    double-to-float v7, v12

    const/4 v8, 0x4

    aput v7, v9, v8

    const/4 v7, 0x5

    aput v15, v9, v7

    .line 9
    invoke-virtual {v14}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v7

    sub-double/2addr v2, v7

    double-to-float v2, v2

    const/4 v3, 0x6

    aput v2, v9, v3

    sub-int/2addr v5, v4

    int-to-double v2, v5

    .line 10
    invoke-virtual {v14}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v4

    sub-double v4, v2, v4

    double-to-float v4, v4

    const/4 v5, 0x7

    aput v4, v9, v5

    const/16 v4, 0x8

    aput v15, v9, v4

    .line 11
    invoke-virtual {v14}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v4

    sub-double/2addr v10, v4

    double-to-float v4, v10

    const/16 v5, 0x9

    aput v4, v9, v5

    .line 12
    invoke-virtual {v14}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    const/16 v3, 0xa

    aput v2, v9, v3

    const/16 v2, 0xb

    aput v15, v9, v2

    .line 13
    iget-object v2, v1, Lcom/amap/api/mapcore/util/f2$b;->h:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_0

    .line 14
    invoke-static {v9}, Lcom/amap/api/mapcore/util/r3;->E([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/mapcore/util/f2$b;->h:Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v9, v2}, Lcom/amap/api/mapcore/util/r3;->F([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/mapcore/util/f2$b;->h:Ljava/nio/FloatBuffer;

    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic h(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Ljava/util/List;IZLjava/util/List;ZLcom/amap/api/mapcore/util/ab;Lcom/amap/api/mapcore/util/s3;)Z
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/amap/api/mapcore/util/f2;->l(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Ljava/util/List;IZLjava/util/List;ZLcom/amap/api/mapcore/util/ab;Lcom/amap/api/mapcore/util/s3;)Z

    move-result p0

    return p0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/amap/api/mapcore/util/f2;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore/util/f2;->q:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/amap/api/mapcore/util/f2;->q:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;IIIILcom/amap/api/mapcore/util/ab;Lcom/amap/api/mapcore/util/s3;)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;",
            "IIII",
            "Lcom/amap/api/mapcore/util/ab;",
            "Lcom/amap/api/mapcore/util/s3;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore/util/f2$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface/range {p0 .. p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    .line 2
    invoke-interface/range {p0 .. p0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/Rectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    .line 5
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 6
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/graphics/Point;->y:I

    const v5, 0x7fffffff

    .line 7
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 8
    iget v6, v2, Landroid/graphics/Point;->x:I

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 9
    iget v8, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 10
    iget v8, v2, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 11
    iget v9, v1, Landroid/graphics/Rect;->right:I

    iput v9, v2, Landroid/graphics/Point;->x:I

    .line 12
    iget v10, v1, Landroid/graphics/Rect;->top:I

    iput v10, v2, Landroid/graphics/Point;->y:I

    .line 13
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 14
    iget v9, v2, Landroid/graphics/Point;->x:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 15
    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 16
    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 17
    iget v9, v1, Landroid/graphics/Rect;->left:I

    iput v9, v2, Landroid/graphics/Point;->x:I

    .line 18
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iput v10, v2, Landroid/graphics/Point;->y:I

    .line 19
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 20
    iget v9, v2, Landroid/graphics/Point;->x:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 21
    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 22
    iget v9, v2, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 23
    iget v9, v1, Landroid/graphics/Rect;->right:I

    iput v9, v2, Landroid/graphics/Point;->x:I

    .line 24
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 25
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 26
    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 27
    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 28
    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    rsub-int/lit8 v16, p1, 0x14

    const/16 v17, 0x1

    shl-int v8, v17, v16

    mul-int v9, v8, p2

    sub-int/2addr v1, v9

    mul-int v8, v8, p3

    sub-int/2addr v5, v8

    .line 29
    invoke-virtual {v0, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 30
    iget v0, v3, Landroid/graphics/Point;->x:I

    shr-int v0, v0, v16

    div-int v0, v0, p2

    .line 31
    iget v8, v3, Landroid/graphics/Point;->y:I

    shr-int v8, v8, v16

    div-int v18, v8, p3

    shl-int v8, v0, v16

    mul-int v15, v8, p2

    shl-int v8, v18, v16

    mul-int v14, v8, p3

    .line 32
    new-instance v13, Lcom/amap/api/mapcore/util/f2$b;

    move-object v8, v13

    move v9, v0

    move/from16 v10, v18

    move/from16 v11, p1

    move/from16 v12, p4

    move-object v7, v13

    move-object/from16 v13, p0

    move/from16 v19, v5

    move v5, v14

    move-object/from16 v14, p5

    move/from16 v20, v6

    move v6, v15

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/amap/api/mapcore/util/f2$b;-><init>(IIIILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Lcom/amap/api/mapcore/util/ab;Lcom/amap/api/mapcore/util/s3;)V

    .line 33
    invoke-static {v6, v5}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    iput-object v5, v7, Lcom/amap/api/mapcore/util/f2$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 34
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 35
    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :goto_0
    sub-int v5, v0, v3

    move v6, v5

    const/4 v7, 0x0

    :goto_1
    add-int v15, v0, v3

    if-gt v6, v15, :cond_7

    add-int v10, v18, v3

    .line 38
    new-instance v15, Lcom/autonavi/amap/mapcore/IPoint;

    shl-int v8, v6, v16

    mul-int v14, v8, p2

    shl-int v8, v10, v16

    mul-int v8, v8, p3

    invoke-direct {v15, v14, v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    .line 39
    iget v8, v15, Landroid/graphics/Point;->x:I

    if-ge v8, v4, :cond_3

    if-le v8, v1, :cond_3

    iget v8, v15, Landroid/graphics/Point;->y:I

    move/from16 v13, v20

    if-ge v8, v13, :cond_2

    move/from16 v12, v19

    if-le v8, v12, :cond_1

    if-nez v7, :cond_0

    const/4 v7, 0x1

    .line 40
    :cond_0
    new-instance v11, Lcom/amap/api/mapcore/util/f2$b;

    move-object v8, v11

    move v9, v6

    move/from16 v19, v0

    move-object v0, v11

    move/from16 v11, p1

    move/from16 v20, v7

    move v7, v12

    move/from16 v12, p4

    move/from16 v21, v5

    move v5, v13

    move-object/from16 v13, p0

    move/from16 v22, v6

    move v6, v14

    move-object/from16 v14, p5

    move/from16 v23, v7

    move-object v7, v15

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/amap/api/mapcore/util/f2$b;-><init>(IIIILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Lcom/amap/api/mapcore/util/ab;Lcom/amap/api/mapcore/util/s3;)V

    .line 41
    iput-object v7, v0, Lcom/amap/api/mapcore/util/f2$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 42
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v7, v20

    goto :goto_4

    :cond_1
    move/from16 v19, v0

    move/from16 v21, v5

    move/from16 v22, v6

    move v0, v7

    move/from16 v23, v12

    move v5, v13

    move v6, v14

    goto :goto_3

    :cond_2
    move/from16 v21, v5

    move/from16 v22, v6

    move v5, v13

    move v6, v14

    move/from16 v23, v19

    goto :goto_2

    :cond_3
    move/from16 v21, v5

    move/from16 v22, v6

    move v6, v14

    move/from16 v23, v19

    move/from16 v5, v20

    :goto_2
    move/from16 v19, v0

    move v0, v7

    :goto_3
    move v7, v0

    :goto_4
    sub-int v10, v18, v3

    .line 43
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    shl-int v8, v10, v16

    mul-int v8, v8, p3

    invoke-direct {v0, v6, v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    .line 44
    iget v6, v0, Landroid/graphics/Point;->x:I

    if-ge v6, v4, :cond_6

    if-le v6, v1, :cond_6

    iget v6, v0, Landroid/graphics/Point;->y:I

    if-ge v6, v5, :cond_6

    move/from16 v15, v23

    if-le v6, v15, :cond_5

    if-nez v7, :cond_4

    const/4 v7, 0x1

    .line 45
    :cond_4
    new-instance v6, Lcom/amap/api/mapcore/util/f2$b;

    move-object v8, v6

    move/from16 v9, v22

    move/from16 v11, p1

    move/from16 v12, p4

    move-object/from16 v13, p0

    move-object/from16 v14, p5

    move/from16 v20, v7

    move v7, v15

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/amap/api/mapcore/util/f2$b;-><init>(IIIILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Lcom/amap/api/mapcore/util/ab;Lcom/amap/api/mapcore/util/s3;)V

    .line 46
    iput-object v0, v6, Lcom/amap/api/mapcore/util/f2$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 47
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v20

    goto :goto_5

    :cond_5
    move v0, v7

    move v7, v15

    goto :goto_5

    :cond_6
    move v0, v7

    move/from16 v7, v23

    :goto_5
    add-int/lit8 v6, v22, 0x1

    move/from16 v20, v5

    move/from16 v5, v21

    move/from16 v25, v7

    move v7, v0

    move/from16 v0, v19

    move/from16 v19, v25

    goto/16 :goto_1

    :cond_7
    move/from16 v21, v5

    move/from16 v5, v20

    move/from16 v25, v19

    move/from16 v19, v0

    move v0, v7

    move/from16 v7, v25

    add-int v6, v18, v3

    add-int/lit8 v6, v6, -0x1

    :goto_6
    sub-int v8, v18, v3

    if-le v6, v8, :cond_c

    .line 48
    new-instance v14, Lcom/autonavi/amap/mapcore/IPoint;

    shl-int v8, v15, v16

    mul-int v8, v8, p2

    shl-int v9, v6, v16

    mul-int v13, v9, p3

    invoke-direct {v14, v8, v13}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    .line 49
    iget v8, v14, Landroid/graphics/Point;->x:I

    if-ge v8, v4, :cond_9

    if-le v8, v1, :cond_9

    iget v8, v14, Landroid/graphics/Point;->y:I

    if-ge v8, v5, :cond_9

    if-le v8, v7, :cond_9

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 50
    :cond_8
    new-instance v12, Lcom/amap/api/mapcore/util/f2$b;

    move-object v8, v12

    move v9, v15

    move v10, v6

    move/from16 v11, p1

    move/from16 v20, v0

    move-object v0, v12

    move/from16 v12, p4

    move/from16 v22, v3

    move v3, v13

    move-object/from16 v13, p0

    move/from16 v23, v6

    move-object v6, v14

    move-object/from16 v14, p5

    move/from16 v24, v15

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/amap/api/mapcore/util/f2$b;-><init>(IIIILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Lcom/amap/api/mapcore/util/ab;Lcom/amap/api/mapcore/util/s3;)V

    .line 51
    iput-object v6, v0, Lcom/amap/api/mapcore/util/f2$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 52
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v20

    goto :goto_7

    :cond_9
    move/from16 v22, v3

    move/from16 v23, v6

    move v3, v13

    move/from16 v24, v15

    .line 53
    :goto_7
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    shl-int v8, v21, v16

    mul-int v8, v8, p2

    invoke-direct {v6, v8, v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    .line 54
    iget v3, v6, Landroid/graphics/Point;->x:I

    if-ge v3, v4, :cond_b

    if-le v3, v1, :cond_b

    iget v3, v6, Landroid/graphics/Point;->y:I

    if-ge v3, v5, :cond_b

    if-le v3, v7, :cond_b

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 55
    :cond_a
    new-instance v3, Lcom/amap/api/mapcore/util/f2$b;

    move-object v8, v3

    move/from16 v9, v21

    move/from16 v10, v23

    move/from16 v11, p1

    move/from16 v12, p4

    move-object/from16 v13, p0

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/amap/api/mapcore/util/f2$b;-><init>(IIIILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Lcom/amap/api/mapcore/util/ab;Lcom/amap/api/mapcore/util/s3;)V

    .line 56
    iput-object v6, v3, Lcom/amap/api/mapcore/util/f2$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 57
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v6, v23, -0x1

    move/from16 v3, v22

    move/from16 v15, v24

    goto/16 :goto_6

    :cond_c
    move/from16 v22, v3

    if-nez v0, :cond_d

    return-object v2

    :cond_d
    add-int/lit8 v3, v22, 0x1

    move/from16 v20, v5

    move/from16 v0, v19

    move/from16 v19, v7

    goto/16 :goto_0
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->m:Lcom/amap/api/mapcore/util/f2$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dq;->a()Lcom/amap/api/mapcore/util/dq$e;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore/util/dq$e;->b:Lcom/amap/api/mapcore/util/dq$e;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->m:Lcom/amap/api/mapcore/util/f2$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dq;->g(Z)Z

    :cond_0
    return-void
.end method

.method private static l(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Ljava/util/List;IZLjava/util/List;ZLcom/amap/api/mapcore/util/ab;Lcom/amap/api/mapcore/util/s3;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/f2$b;",
            ">;IZ",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/f2$b;",
            ">;Z",
            "Lcom/amap/api/mapcore/util/ab;",
            "Lcom/amap/api/mapcore/util/s3;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p4, :cond_1

    return v0

    .line 1
    :cond_1
    monitor-enter p4

    .line 2
    :try_start_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore/util/f2$b;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/mapcore/util/f2$b;

    .line 4
    invoke-virtual {v2, v5}, Lcom/amap/api/mapcore/util/f2$b;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, v2, Lcom/amap/api/mapcore/util/f2$b;->g:Z

    if-eqz v6, :cond_3

    .line 5
    iput-boolean v6, v5, Lcom/amap/api/mapcore/util/f2$b;->g:Z

    .line 6
    iget v4, v2, Lcom/amap/api/mapcore/util/f2$b;->f:I

    iput v4, v5, Lcom/amap/api/mapcore/util/f2$b;->f:I

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 7
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/f2$b;->d()V

    goto :goto_0

    .line 8
    :cond_5
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 9
    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMaxZoomLevel()F

    move-result v1

    float-to-int v1, v1

    if-gt p2, v1, :cond_e

    .line 10
    invoke-interface {p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMinZoomLevel()F

    move-result p0

    float-to-int p0, p0

    if-ge p2, p0, :cond_6

    goto/16 :goto_4

    .line 11
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_7

    .line 12
    monitor-exit p4

    return v0

    :cond_7
    :goto_2
    if-ge v0, p0, :cond_d

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amap/api/mapcore/util/f2$b;

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    if-eqz p5, :cond_b

    .line 14
    invoke-virtual {p6}, Lcom/amap/api/mapcore/util/ab;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh_cn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_a

    .line 15
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    .line 16
    :cond_9
    iget v1, p2, Lcom/amap/api/mapcore/util/f2$b;->c:I

    if-lt v1, v2, :cond_c

    iget v2, p2, Lcom/amap/api/mapcore/util/f2$b;->a:I

    iget v4, p2, Lcom/amap/api/mapcore/util/f2$b;->b:I

    .line 17
    invoke-static {v2, v4, v1}, Lcom/amap/api/mapcore/util/k3;->b(III)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    .line 18
    :cond_a
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v1

    if-nez v1, :cond_b

    .line 19
    iget v1, p2, Lcom/amap/api/mapcore/util/f2$b;->c:I

    if-lt v1, v2, :cond_b

    iget v2, p2, Lcom/amap/api/mapcore/util/f2$b;->a:I

    iget v4, p2, Lcom/amap/api/mapcore/util/f2$b;->b:I

    .line 20
    invoke-static {v2, v4, v1}, Lcom/amap/api/mapcore/util/k3;->b(III)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_3

    .line 21
    :cond_b
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-boolean v1, p2, Lcom/amap/api/mapcore/util/f2$b;->g:Z

    if-nez v1, :cond_c

    if-eqz p7, :cond_c

    .line 23
    invoke-virtual {p7, p3, p2}, Lcom/amap/api/mapcore/util/u3;->h(ZLcom/amap/api/mapcore/util/f2$b;)V

    :cond_c
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 24
    :cond_d
    monitor-exit p4

    return v3

    .line 25
    :cond_e
    :goto_4
    monitor-exit p4

    return v0

    :catchall_0
    move-exception p0

    .line 26
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->a:Lcom/amap/api/mapcore/util/ab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ab;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->a:Lcom/amap/api/mapcore/util/ab;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ab;->b()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLShader(I)Lcom/amap/api/mapcore/util/g2;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/h2$g;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/f2;->p:Lcom/amap/api/mapcore/util/h2$g;

    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public clearTileCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->j:Lcom/amap/api/mapcore/util/s3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u3;->u()V

    :cond_0
    return-void
.end method

.method public destroy(Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/f2;->k()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore/util/f2$b;

    .line 5
    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/f2$b;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->j:Lcom/amap/api/mapcore/util/s3;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/u3;->s(Z)V

    .line 10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f2;->j:Lcom/amap/api/mapcore/util/s3;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/u3;->l(Z)V

    .line 11
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f2;->j:Lcom/amap/api/mapcore/util/s3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/s3;->z(Lcom/amap/api/maps/model/TileProvider;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public drawTiles()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 6
    iget-object v3, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore/util/f2$b;

    .line 7
    iget-boolean v4, v3, Lcom/amap/api/mapcore/util/f2$b;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_2

    .line 8
    :try_start_1
    iget-object v4, v3, Lcom/amap/api/mapcore/util/f2$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 9
    iget-object v5, v3, Lcom/amap/api/mapcore/util/f2$b;->i:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    .line 11
    iget-object v4, v3, Lcom/amap/api/mapcore/util/f2$b;->i:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/r3;->k(Landroid/graphics/Bitmap;)I

    move-result v4

    iput v4, v3, Lcom/amap/api/mapcore/util/f2$b;->f:I

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 12
    iput-boolean v4, v3, Lcom/amap/api/mapcore/util/f2$b;->g:Z

    :cond_1
    const/4 v4, 0x0

    .line 13
    iput-object v4, v3, Lcom/amap/api/mapcore/util/f2$b;->i:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_2
    const-string v5, "TileOverlayDelegateImp"

    const-string v6, "drawTiles"

    .line 14
    invoke-static {v4, v5, v6}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_2
    :goto_1
    iget-boolean v4, v3, Lcom/amap/api/mapcore/util/f2$b;->g:Z

    if-eqz v4, :cond_3

    .line 16
    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/f2;->g(Lcom/amap/api/mapcore/util/f2$b;)Z

    .line 17
    iget v4, v3, Lcom/amap/api/mapcore/util/f2$b;->f:I

    iget-object v3, v3, Lcom/amap/api/mapcore/util/f2$b;->h:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/amap/api/mapcore/util/f2;->o:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v4, v3, v5}, Lcom/amap/api/mapcore/util/f2;->d(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_5
    :goto_2
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/f2;->k()V

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/f2;->c()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->j:Lcom/amap/api/mapcore/util/s3;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/u3;->l(Z)V

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->j:Lcom/amap/api/mapcore/util/s3;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/u3;->f(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f2;->j:Lcom/amap/api/mapcore/util/s3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/u3;->l(Z)V

    .line 7
    :cond_0
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/f2;->f(Z)V

    return-void
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/f2;->getId()Ljava/lang/String;

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

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "TileOverlay"

    .line 2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/f2;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/f2;->n:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->c:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/f2;->d:Z

    return v0
.end method

.method public onFling(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/f2;->l:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/f2;->l:Z

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->j:Lcom/amap/api/mapcore/util/s3;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/u3;->l(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/f2;->k()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore/util/f2$b;

    .line 5
    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/f2$b;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->j:Lcom/amap/api/mapcore/util/s3;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/u3;->g(Z)V

    :cond_0
    return-void
.end method

.method public reLoadTexture()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore/util/f2$b;

    const/4 v3, 0x0

    .line 6
    iput-boolean v3, v2, Lcom/amap/api/mapcore/util/f2$b;->g:Z

    .line 7
    iput v3, v2, Lcom/amap/api/mapcore/util/f2$b;->f:I

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public refresh(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/f2;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/f2;->k()V

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/f2;->f(Z)V

    return-void
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->a:Lcom/amap/api/mapcore/util/ab;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/ab;->i(Lcom/autonavi/base/amap/api/mapcore/overlays/ITileOverlayDelegate;)Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/f2;->d:Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/f2;->refresh(Z)V

    :cond_0
    return-void
.end method

.method public setZIndex(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/f2;->c:Ljava/lang/Float;

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f2;->a:Lcom/amap/api/mapcore/util/ab;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ab;->k()V

    return-void
.end method
