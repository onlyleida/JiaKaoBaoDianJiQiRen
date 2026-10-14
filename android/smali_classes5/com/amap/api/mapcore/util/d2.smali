.class public Lcom/amap/api/mapcore/util/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;
.implements Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/d2$b;
    }
.end annotation


# instance fields
.field A:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private B:Z

.field C:[F

.field D:Lcom/amap/api/mapcore/util/d2$b;

.field E:[F

.field F:J

.field private G:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field private H:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field private I:Z

.field private K:Z

.field M:Lcom/amap/api/mapcore/util/s;

.field private a:Landroid/content/Context;

.field private b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/autonavi/base/amap/mapcore/FPoint;

.field private i:Ljava/nio/FloatBuffer;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/nio/FloatBuffer;

.field private m:F

.field private n:F

.field private o:Z

.field private p:Landroid/graphics/Bitmap;

.field private q:Landroid/graphics/Bitmap;

.field private r:Landroid/graphics/Rect;

.field private s:F

.field private t:I

.field private u:Z

.field private v:Landroid/graphics/Bitmap;

.field private w:Landroid/graphics/Bitmap;

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/Bitmap;

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->c:Z

    .line 3
    iput v0, p0, Lcom/amap/api/mapcore/util/d2;->d:I

    iput v0, p0, Lcom/amap/api/mapcore/util/d2;->e:I

    .line 4
    iput v0, p0, Lcom/amap/api/mapcore/util/d2;->f:I

    iput v0, p0, Lcom/amap/api/mapcore/util/d2;->g:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->i:Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/d2;->k:Z

    const/high16 v3, 0x3f000000    # 0.5f

    .line 7
    iput v3, p0, Lcom/amap/api/mapcore/util/d2;->m:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 8
    iput v3, p0, Lcom/amap/api/mapcore/util/d2;->n:F

    .line 9
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/amap/api/mapcore/util/d2;->r:Landroid/graphics/Rect;

    const/4 v3, 0x0

    .line 10
    iput v3, p0, Lcom/amap/api/mapcore/util/d2;->s:F

    .line 11
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/d2;->u:Z

    .line 12
    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->v:Landroid/graphics/Bitmap;

    .line 13
    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->w:Landroid/graphics/Bitmap;

    .line 14
    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->x:Landroid/graphics/Bitmap;

    .line 15
    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->y:Landroid/graphics/Bitmap;

    .line 16
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->z:Z

    .line 17
    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->A:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 18
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->B:Z

    const/16 v1, 0xc

    new-array v1, v1, [F

    .line 19
    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->C:[F

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 20
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->E:[F

    const-wide/16 v3, 0x0

    .line 21
    iput-wide v3, p0, Lcom/amap/api/mapcore/util/d2;->F:J

    .line 22
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->I:Z

    .line 23
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/d2;->K:Z

    .line 24
    iput-object p2, p0, Lcom/amap/api/mapcore/util/d2;->a:Landroid/content/Context;

    .line 25
    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2;->A:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 26
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/d2;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2;->j:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private declared-synchronized A()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->v:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized B()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->x:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private C()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->K:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->H:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/d2;->I:Z

    .line 3
    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d2;->H:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z

    .line 5
    iget-wide v1, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    iget-wide v0, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/d2;->s:F

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->G:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/d2;->K:Z

    .line 9
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/d2;->I:Z

    .line 10
    iget v0, p0, Lcom/amap/api/mapcore/util/d2;->f:I

    iput v0, p0, Lcom/amap/api/mapcore/util/d2;->d:I

    .line 11
    iget v0, p0, Lcom/amap/api/mapcore/util/d2;->g:I

    iput v0, p0, Lcom/amap/api/mapcore/util/d2;->e:I

    .line 12
    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d2;->G:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z

    .line 14
    iget-wide v1, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleY:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    .line 15
    iget-wide v0, v0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scaleX:D

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/d2;->s:F

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    iput v0, p0, Lcom/amap/api/mapcore/util/d2;->s:F

    .line 17
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/d2;->I:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private D()I
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

.method private E()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/d2;->r(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->B()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/d2;->l(Landroid/graphics/Bitmap;)V

    .line 4
    :goto_0
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/d2;->f(Z)V

    return-void
.end method

.method private F()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->u:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/d2;->r(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->A()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/d2;->l(Landroid/graphics/Bitmap;)V

    .line 4
    :goto_0
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/d2;->f(Z)V

    return-void
.end method

.method private declared-synchronized G()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 3
    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->q:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 6
    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->q:Landroid/graphics/Bitmap;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->v:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 9
    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->v:Landroid/graphics/Bitmap;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->w:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 12
    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->w:Landroid/graphics/Bitmap;

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->x:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 15
    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->x:Landroid/graphics/Bitmap;

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->y:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 18
    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->y:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private H()V
    .locals 0

    return-void
.end method

.method private I()Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/d2;->r:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->K()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private J()Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/d2;->r:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->L()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private K()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private L()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/d2;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object p1, v0

    .line 5
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 7
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->q(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/d2;)Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/d2;->G:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    return-object p0
.end method

.method private c(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 9

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->D:Lcom/amap/api/mapcore/util/d2$b;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/d2;->s()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->D:Lcom/amap/api/mapcore/util/d2$b;

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
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d2;->D:Lcom/amap/api/mapcore/util/d2$b;

    iget p1, p1, Lcom/amap/api/mapcore/util/d2$b;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d2;->D:Lcom/amap/api/mapcore/util/d2$b;

    iget v3, p1, Lcom/amap/api/mapcore/util/d2$b;->f:I

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 11
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d2;->D:Lcom/amap/api/mapcore/util/d2$b;

    iget p1, p1, Lcom/amap/api/mapcore/util/d2$b;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 12
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d2;->D:Lcom/amap/api/mapcore/util/d2$b;

    iget v3, p1, Lcom/amap/api/mapcore/util/d2$b;->g:I

    const/4 v4, 0x2

    const/16 v7, 0x8

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 13
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d2;->D:Lcom/amap/api/mapcore/util/d2$b;

    iget p1, p1, Lcom/amap/api/mapcore/util/d2$b;->e:I

    iget-object p2, p0, Lcom/amap/api/mapcore/util/d2;->E:[F

    const/4 p3, 0x0

    invoke-static {p1, v2, p3, p2, p3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p1, 0x6

    const/4 p2, 0x4

    .line 14
    invoke-static {p1, p3, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 15
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d2;->D:Lcom/amap/api/mapcore/util/d2$b;

    iget p1, p1, Lcom/amap/api/mapcore/util/d2$b;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 16
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d2;->D:Lcom/amap/api/mapcore/util/d2$b;

    iget p1, p1, Lcom/amap/api/mapcore/util/d2$b;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 17
    invoke-static {v1, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 18
    invoke-static {p3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 19
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic i(Lcom/amap/api/mapcore/util/d2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/d2;->I:Z

    return p1
.end method

.method static synthetic m(Lcom/amap/api/mapcore/util/d2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/d2;->n(Z)V

    return-void
.end method

.method private n(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->A()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/d2;->l(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->B()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/d2;->l(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized q(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 3
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private r(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->H:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/d2;->K:Z

    .line 3
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/d2;->I:Z

    .line 4
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->startNow()V

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->H:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    new-instance v1, Lcom/amap/api/mapcore/util/d2$a;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/d2$a;-><init>(Lcom/amap/api/mapcore/util/d2;Z)V

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->G:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_1

    .line 7
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/d2;->I:Z

    .line 8
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->startNow()V

    .line 9
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/d2;->n(Z)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/d2;->n(Z)V

    :goto_0
    return-void
.end method

.method private declared-synchronized t(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->w:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/d2;->q(Landroid/graphics/Bitmap;)V

    .line 3
    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2;->w:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 4
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized v(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->x:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/d2;->q(Landroid/graphics/Bitmap;)V

    .line 3
    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2;->x:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 4
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized w(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->y:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/d2;->q(Landroid/graphics/Bitmap;)V

    .line 3
    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2;->y:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 4
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private z(Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->v:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/d2;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/d2;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/d2;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-ne p1, v0, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public calMapFPoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public checkInBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized d(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2;->v:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 3
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->c:Z

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/d2;->remove()V

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->G()V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->l:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 6
    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->l:Ljava/nio/FloatBuffer;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->i:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 9
    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->i:Ljava/nio/FloatBuffer;

    .line 10
    :cond_1
    iput-object v1, p0, Lcom/amap/api/mapcore/util/d2;->h:Lcom/autonavi/base/amap/mapcore/FPoint;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/amap/api/mapcore/util/d2;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "PopupOverlay"

    const-string v2, "realDestroy"

    .line 12
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public e(Lcom/autonavi/base/amap/mapcore/FPoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2;->h:Lcom/autonavi/base/amap/mapcore/FPoint;

    return-void
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

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/d2;->getId()Ljava/lang/String;

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

.method public f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/d2;->u:Z

    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->u:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "PopupOverlay"

    .line 2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/d2;->j:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h(II)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->A:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d2;->h:Lcom/autonavi/base/amap/mapcore/FPoint;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    .line 4
    iget-object v3, p0, Lcom/amap/api/mapcore/util/d2;->A:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/amap/api/mapcore/util/d2;->h:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-virtual {v0, v5, v4, v3}, Lcom/autonavi/base/ae/gmap/GLMapState;->p20ToScreenPoint(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 7
    iget v0, v3, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 8
    iget v0, v3, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 9
    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/FPoint;->recycle()V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/d2;->j()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/d2;->o()I

    move-result v3

    .line 11
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/amap/api/mapcore/util/d2;->d:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v0

    iget v6, p0, Lcom/amap/api/mapcore/util/d2;->m:F

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 12
    iget v5, v1, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/amap/api/mapcore/util/d2;->e:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v3

    iget v7, p0, Lcom/amap/api/mapcore/util/d2;->n:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 13
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    sub-int v1, v4, v0

    if-gt v1, p1, :cond_6

    neg-int p1, v0

    const/4 v0, 0x2

    mul-int/lit8 p1, p1, 0x2

    if-lt v4, p1, :cond_6

    neg-int p1, v3

    mul-int/lit8 p1, p1, 0x2

    if-lt v5, p1, :cond_6

    sub-int p1, v5, v3

    if-le p1, p2, :cond_2

    goto/16 :goto_1

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    if-nez p1, :cond_3

    return v2

    .line 15
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 16
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 17
    iget-object v3, p0, Lcom/amap/api/mapcore/util/d2;->l:Ljava/nio/FloatBuffer;

    const/16 v6, 0x8

    if-nez v3, :cond_4

    new-array v3, v6, [F

    .line 18
    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/amap/api/mapcore/util/r3;->E([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/mapcore/util/d2;->l:Ljava/nio/FloatBuffer;

    .line 19
    :cond_4
    iget v3, p0, Lcom/amap/api/mapcore/util/d2;->s:F

    sub-float/2addr v8, v3

    float-to-double v7, v8

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double v7, v7, v9

    int-to-double v9, p1

    mul-double v7, v7, v9

    double-to-int v3, v7

    .line 20
    iget-object v7, p0, Lcom/amap/api/mapcore/util/d2;->C:[F

    add-int v8, v4, v3

    int-to-float v9, v8

    aput v9, v7, v2

    .line 21
    iget-object v2, p0, Lcom/amap/api/mapcore/util/d2;->r:Landroid/graphics/Rect;

    iput v8, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v5

    int-to-float v8, p2

    const/4 v10, 0x1

    .line 22
    aput v8, v7, v10

    const/4 v11, 0x0

    .line 23
    aput v11, v7, v0

    const/4 v0, 0x3

    add-int/2addr v4, p1

    sub-int p1, v4, v3

    int-to-float p1, p1

    .line 24
    aput p1, v7, v0

    const/4 v0, 0x4

    .line 25
    aput v8, v7, v0

    sub-int v0, v5, v1

    .line 26
    iput v0, v2, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x5

    .line 27
    aput v11, v7, v0

    const/4 v0, 0x6

    .line 28
    aput p1, v7, v0

    .line 29
    iput v4, v2, Landroid/graphics/Rect;->right:I

    const/4 p1, 0x7

    add-int/2addr p2, v1

    int-to-float p2, p2

    .line 30
    aput p2, v7, p1

    .line 31
    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 32
    aput v11, v7, v6

    const/16 p1, 0x9

    .line 33
    aput v9, v7, p1

    const/16 p1, 0xa

    .line 34
    aput p2, v7, p1

    const/16 p1, 0xb

    .line 35
    aput v11, v7, p1

    .line 36
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d2;->i:Ljava/nio/FloatBuffer;

    if-nez p1, :cond_5

    .line 37
    invoke-static {v7}, Lcom/amap/api/mapcore/util/r3;->E([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2;->i:Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 38
    :cond_5
    invoke-static {v7, p1}, Lcom/amap/api/mapcore/util/r3;->F([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2;->i:Ljava/nio/FloatBuffer;

    :goto_0
    return v10

    :cond_6
    :goto_1
    return v2

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

.method public hashCodeRemote()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public declared-synchronized hideInfoWindow()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/d2;->setVisible(Z)V

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->G()V

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDrawFinish()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInfoWindowShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->k:Z

    return v0
.end method

.method public j()I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    monitor-exit p0

    return v1

    .line 4
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return v0
.end method

.method public k(II)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->k:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->h:Lcom/autonavi/base/amap/mapcore/FPoint;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/d2;->u()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 4
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->B:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/d2;->t:I

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    new-array v3, v2, [I

    aput v0, v3, v1

    .line 6
    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->D()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/d2;->t:I

    .line 8
    :goto_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget v0, p0, Lcom/amap/api/mapcore/util/d2;->t:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    invoke-static {v0, v3, v1}, Lcom/amap/api/mapcore/util/r3;->c0(ILandroid/graphics/Bitmap;Z)I

    .line 11
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/d2;->B:Z

    .line 12
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const-string p2, "PopupOverlay"

    const-string v0, "drawMarker"

    .line 13
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 15
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->C()V

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore/util/d2;->h(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->E:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 18
    iget-object v2, p0, Lcom/amap/api/mapcore/util/d2;->E:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p1

    const/4 v6, 0x0

    int-to-float v7, p2

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 19
    iget p1, p0, Lcom/amap/api/mapcore/util/d2;->t:I

    iget-object p2, p0, Lcom/amap/api/mapcore/util/d2;->i:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->l:Ljava/nio/FloatBuffer;

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/mapcore/util/d2;->c(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 20
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/d2;->o:Z

    if-eqz p1, :cond_4

    .line 21
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/d2;->o:Z

    .line 22
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->H()V

    :cond_4
    :goto_2
    return-void
.end method

.method public declared-synchronized l(Landroid/graphics/Bitmap;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d2;->v:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/d2;->w:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/d2;->x:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/d2;->y:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->q:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/d2;->q(Landroid/graphics/Bitmap;)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/d2;->q:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/d2;->z(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->q:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/d2;->q(Landroid/graphics/Bitmap;)V

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/d2;->q:Landroid/graphics/Bitmap;

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->B:Z

    .line 12
    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :catchall_0
    monitor-exit p0

    return-void

    .line 14
    :cond_4
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public o()I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return v0
.end method

.method public onInfoWindowTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->z:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->r:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, v2, p1}, Lcom/amap/api/mapcore/util/r3;->M(Landroid/graphics/Rect;II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public p(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->I:Z

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/amap/api/mapcore/util/d2;->f:I

    .line 3
    iput p2, p0, Lcom/amap/api/mapcore/util/d2;->g:I

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/util/d2;->d:I

    .line 5
    iput p2, p0, Lcom/amap/api/mapcore/util/d2;->e:I

    .line 6
    iput p1, p0, Lcom/amap/api/mapcore/util/d2;->f:I

    .line 7
    iput p2, p0, Lcom/amap/api/mapcore/util/d2;->g:I

    :goto_0
    return-void
.end method

.method public redrawInfoWindow()V
    .locals 10

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->checkInBounds()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    .line 4
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/d2;->setVisible(Z)V

    .line 5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRealInfoWindowOffsetX()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    .line 7
    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getInfoWindowOffsetX()I

    move-result v4

    add-int/2addr v3, v4

    .line 8
    iget-object v4, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRealInfoWindowOffsetY()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    .line 9
    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getInfoWindowOffsetY()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    .line 10
    iget-object v5, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    instance-of v5, v5, Lcom/amap/api/mapcore/util/w1;

    if-eqz v5, :cond_a

    .line 11
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 12
    :try_start_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/d2;->x()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/amap/api/mapcore/util/d2;->v:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/amap/api/mapcore/util/d2;->x:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_9

    .line 13
    iget-object v5, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    check-cast v5, Lcom/amap/api/mapcore/util/w1;

    invoke-virtual {v5}, Lcom/amap/api/mapcore/util/w1;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    if-eqz v5, :cond_3

    .line 14
    invoke-interface {v5}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowEnable()Z

    move-result v6

    if-nez v6, :cond_3

    .line 15
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/d2;->setVisible(Z)V

    .line 16
    monitor-exit p0

    return-void

    .line 17
    :cond_3
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/d2;->setVisible(Z)V

    if-eqz v5, :cond_8

    .line 18
    invoke-interface {v5}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowAutoOverturn()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 19
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->I()Landroid/graphics/Rect;

    move-result-object v6

    .line 20
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->J()Landroid/graphics/Rect;

    move-result-object v7

    .line 21
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/d2;->g()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 22
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 23
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x2

    .line 24
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 26
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x2

    neg-int v8, v8

    .line 27
    invoke-virtual {v6, v1, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 28
    :goto_2
    iget-object v8, p0, Lcom/amap/api/mapcore/util/d2;->A:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8, v5, v6}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->checkMarkerInRect(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I

    move-result v6

    .line 29
    iget-object v8, p0, Lcom/amap/api/mapcore/util/d2;->A:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8, v5, v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->checkMarkerInRect(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I

    move-result v5

    if-lez v6, :cond_6

    if-eqz v5, :cond_5

    if-lez v5, :cond_6

    if-ge v6, v5, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_7

    .line 30
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRealInfoWindowOffsetY()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    .line 31
    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getInfoWindowOffsetY()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 32
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int v4, v0, v1

    .line 34
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->E()V

    goto :goto_3

    .line 35
    :cond_7
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->F()V

    .line 36
    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    .line 37
    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/d2;->e(Lcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 39
    invoke-virtual {p0, v3, v4}, Lcom/amap/api/mapcore/util/d2;->p(II)V

    goto :goto_4

    .line 40
    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    .line 41
    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/d2;->e(Lcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 43
    invoke-virtual {p0, v3, v4}, Lcom/amap/api/mapcore/util/d2;->p(II)V

    .line 44
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->F()V

    .line 45
    :cond_9
    :goto_4
    monitor-exit p0

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 46
    :cond_a
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/d2;->x()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/amap/api/mapcore/util/d2;->p:Landroid/graphics/Bitmap;

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/amap/api/mapcore/util/d2;->v:Landroid/graphics/Bitmap;

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/amap/api/mapcore/util/d2;->x:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_e

    .line 47
    :cond_b
    iget-object v2, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->isInfoWindowEnable()Z

    move-result v2

    if-nez v2, :cond_c

    .line 48
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/d2;->setVisible(Z)V

    return-void

    .line 49
    :cond_c
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/d2;->setVisible(Z)V

    .line 50
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/d2;->e(Lcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 51
    invoke-virtual {p0, v3, v4}, Lcom/amap/api/mapcore/util/d2;->p(II)V

    .line 52
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d2;->F()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    .line 53
    :cond_d
    :goto_5
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/d2;->setVisible(Z)V

    .line 54
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 55
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_6
    return-void
.end method

.method public remove()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/d2$b;

    const-string v1, "texture.glsl"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/d2$b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/d2;->D:Lcom/amap/api/mapcore/util/d2$b;

    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public setInfoWindowAdapterManager(Lcom/amap/api/mapcore/util/s;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2;->M:Lcom/amap/api/mapcore/util/s;

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setInfoWindowAnimation(Lcom/amap/api/maps/model/animation/Animation;Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 0

    return-void
.end method

.method public setInfoWindowAppearAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->H:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->clone()Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2;->G:Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "PopupOverlay"

    const-string v1, "setInfoWindowDisappearAnimation"

    .line 3
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2;->G:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    :goto_0
    return-void
.end method

.method public setInfoWindowBackColor(I)V
    .locals 0

    return-void
.end method

.method public setInfoWindowBackEnable(Z)V
    .locals 0

    return-void
.end method

.method public setInfoWindowBackScale(FF)V
    .locals 0

    return-void
.end method

.method public setInfoWindowDisappearAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->G:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->clone()Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2;->H:Lcom/autonavi/amap/mapcore/animation/GLAnimation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "PopupOverlay"

    const-string v1, "setInfoWindowDisappearAnimation"

    .line 3
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2;->H:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    :goto_0
    return-void
.end method

.method public setInfoWindowMovingAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->k:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->o:Z

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/d2;->k:Z

    return-void
.end method

.method public setZIndex(F)V
    .locals 0

    return-void
.end method

.method public declared-synchronized showInfoWindow(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->isInfoWindowEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/d2;->hideInfoWindow()V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->M:Lcom/amap/api/mapcore/util/s;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 7
    iput-object p1, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    .line 8
    invoke-interface {p1, v1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->setInfoWindowShown(Z)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/d2;->setVisible(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/d2;->y()V

    .line 11
    :cond_3
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/d2;->z:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startAnimation()V
    .locals 0

    return-void
.end method

.method protected u()V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->M:Lcom/amap/api/mapcore/util/s;

    const-wide/16 v1, 0x64

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    instance-of v5, v0, Lcom/amap/api/mapcore/util/w1;

    if-eqz v5, :cond_0

    .line 4
    new-instance v5, Lcom/amap/api/maps/model/Marker;

    check-cast v0, Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-direct {v5, v0}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->M:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore/util/s;->t(Lcom/amap/api/maps/model/BasePointOverlay;)J

    move-result-wide v5

    goto :goto_0

    .line 6
    :cond_0
    new-instance v5, Lcom/amap/api/maps/model/GL3DModel;

    check-cast v0, Lcom/amap/api/mapcore/util/t1;

    invoke-direct {v5, v0}, Lcom/amap/api/maps/model/GL3DModel;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IglModel;)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->M:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore/util/s;->t(Lcom/amap/api/maps/model/BasePointOverlay;)J

    move-result-wide v5

    :goto_0
    cmp-long v0, v5, v3

    if-gtz v0, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    goto :goto_1

    :cond_1
    cmp-long v0, v5, v1

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v5

    goto :goto_1

    :cond_3
    move-wide v1, v3

    .line 8
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 10
    iget-wide v7, p0, Lcom/amap/api/mapcore/util/d2;->F:J

    sub-long v9, v5, v7

    cmp-long v0, v9, v1

    if-lez v0, :cond_5

    cmp-long v0, v7, v3

    if-eqz v0, :cond_4

    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/d2;->showInfoWindow(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 13
    :cond_4
    :goto_2
    iput-wide v5, p0, Lcom/amap/api/mapcore/util/d2;->F:J

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 14
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/d2;->I:Z

    return v0
.end method

.method protected y()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->b:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    instance-of v1, v0, Lcom/amap/api/mapcore/util/w1;

    if-eqz v1, :cond_2

    .line 2
    new-instance v1, Lcom/amap/api/maps/model/Marker;

    check-cast v0, Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->M:Lcom/amap/api/mapcore/util/s;

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/s;->d(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/d2;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/d2;->M:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/s;->o(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->M:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->B()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_0
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/d2;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/d2;->d(Landroid/graphics/Bitmap;)V

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->M:Lcom/amap/api/mapcore/util/s;

    .line 11
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/s;->e(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    .line 12
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/d2;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/d2;->t(Landroid/graphics/Bitmap;)V

    .line 13
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->M:Lcom/amap/api/mapcore/util/s;

    .line 14
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/s;->p(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/d2;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/d2;->v(Landroid/graphics/Bitmap;)V

    .line 16
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->M:Lcom/amap/api/mapcore/util/s;

    .line 17
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/s;->u(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/d2;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/d2;->w(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 19
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d2;->M:Lcom/amap/api/mapcore/util/s;

    if-eqz v1, :cond_5

    .line 20
    new-instance v1, Lcom/amap/api/maps/model/GL3DModel;

    check-cast v0, Lcom/amap/api/mapcore/util/t1;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/GL3DModel;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IglModel;)V

    .line 21
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->M:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/s;->d(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/d2;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    .line 22
    iget-object v2, p0, Lcom/amap/api/mapcore/util/d2;->M:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/s;->o(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d2;->M:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->B()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 25
    :cond_3
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/d2;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 26
    :cond_4
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/d2;->d(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "PopupOverlay"

    const-string v2, "getInfoWindow"

    .line 27
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method
