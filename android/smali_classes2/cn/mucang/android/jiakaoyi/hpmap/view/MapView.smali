.class public Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;
    }
.end annotation


# instance fields
.field volatile a:Z

.field private b:F

.field private c:F

.field private d:Landroid/graphics/PointF;

.field private e:Landroid/graphics/PointF;

.field private f:Landroid/graphics/PointF;

.field private g:Landroid/graphics/Matrix;

.field private volatile h:Landroid/graphics/Matrix;

.field private i:F

.field private j:F

.field private k:F

.field private l:I

.field private m:F

.field private n:F

.field private o:Z

.field private p:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

.field private q:Z

.field private r:Landroid/graphics/RectF;

.field private final s:Ljava/lang/Object;

.field private t:Lcn/mucang/android/jiakaoyi/hpmap/view/o;

.field public final u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

.field private v:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcn/mucang/android/jiakaoyi/hpmap/view/n;

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->a:Z

    const p2, 0x3ca3d70a    # 0.02f

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->b:F

    const/high16 p2, 0x41a00000    # 20.0f

    .line 5
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->c:F

    .line 6
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->d:Landroid/graphics/PointF;

    .line 7
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->e:Landroid/graphics/PointF;

    .line 8
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->f:Landroid/graphics/PointF;

    .line 9
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->g:Landroid/graphics/Matrix;

    .line 10
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 11
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i:F

    .line 12
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->j:F

    const/4 p2, 0x0

    .line 13
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->k:F

    .line 14
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->l:I

    .line 15
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->m:F

    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->n:F

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->o:Z

    .line 17
    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;->Show:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->p:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    .line 18
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r:Landroid/graphics/RectF;

    .line 19
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->s:Ljava/lang/Object;

    .line 20
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->y:Z

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 21
    invoke-virtual {p0, p1, p2}, Landroid/view/TextureView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 22
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 23
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    .line 24
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->f()V

    return-void
.end method

.method private d(Landroid/view/MotionEvent;Landroid/graphics/PointF;)F
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v1, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/s/a;->b(FFFF)F

    move-result p1

    return p1
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->a:Z

    return-void
.end method

.method private synthetic g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->t:Lcn/mucang/android/jiakaoyi/hpmap/view/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/o;->a(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    :cond_0
    return-void
.end method

.method private j(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 3
    invoke-static {v1, v0, v3, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/s/a;->c(FFFF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method private l(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->L(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method

.method private o(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r:Landroid/graphics/RectF;

    int-to-float p2, p2

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float p1, p1

    .line 2
    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->S()V

    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceCreated : width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MapView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->S()V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->u()V

    return-void
.end method

.method private q()V
    .locals 2

    const-string v0, "MapView"

    const-string v1, "surfaceDestroyed"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->k()V

    return-void
.end method

.method private s(Landroid/view/MotionEvent;Landroid/graphics/PointF;)F
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v1, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/s/a;->a(FFFF)F

    move-result p1

    return p1
.end method


# virtual methods
.method public a(FF)[F
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object v1
.end method

.method public b(FF)[F
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object v0
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->k()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/a;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/m;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public e()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v0

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/o0;->p(Landroid/view/WindowManager;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentMatrix()Landroid/graphics/Matrix;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentRotateDegrees()D
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x1

    .line 2
    aget v1, v0, v1

    neg-float v1, v1

    float-to-double v1, v1

    const/4 v3, 0x0

    aget v0, v0, v3

    float-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentViewport()Lcn/mucang/android/jiakaoyi/signal/pos/c;
    .locals 12

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 4
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v4, v3, [F

    .line 5
    fill-array-data v4, :array_0

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v5, v7

    new-array v9, v3, [F

    aput v1, v9, v6

    aput v2, v9, v7

    new-array v1, v3, [F

    aput v8, v1, v6

    aput v2, v1, v7

    .line 6
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 7
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 8
    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    aget v3, v4, v6

    float-to-double v10, v3

    aget v3, v4, v7

    float-to-double v3, v3

    invoke-direct {v2, v10, v11, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    aget v4, v5, v6

    float-to-double v10, v4

    aget v4, v5, v7

    float-to-double v4, v4

    invoke-direct {v3, v10, v11, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    aget v5, v9, v6

    float-to-double v10, v5

    aget v5, v9, v7

    float-to-double v8, v5

    invoke-direct {v4, v10, v11, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    aget v6, v1, v6

    float-to-double v8, v6

    aget v1, v1, v7

    float-to-double v6, v1

    invoke-direct {v5, v8, v9, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getCurrentZoom()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i:F

    return v0
.end method

.method public getMapMode()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->p:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    return-object v0
.end method

.method public synthetic h(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method

.method public i(FF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->s:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float p2, p2, v3

    aget v2, v1, v2

    sub-float/2addr p2, v2

    .line 4
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    aget p1, v1, p1

    sub-float/2addr v2, p1

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->t:Lcn/mucang/android/jiakaoyi/hpmap/view/o;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/l;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->N()V

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->O()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->p()V

    .line 2
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->o(II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->q()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->o(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->a:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->y:Z

    if-nez v1, :cond_1

    .line 3
    invoke-super {p0, p1}, Landroid/view/TextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x1

    if-eqz v1, :cond_15

    if-eq v1, v3, :cond_11

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    const/4 v0, 0x5

    if-eq v1, v0, :cond_3

    const/4 p1, 0x6

    if-eq v1, p1, :cond_2

    goto/16 :goto_5

    .line 5
    :cond_2
    iput v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->l:I

    goto/16 :goto_5

    .line 6
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v6, :cond_17

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 8
    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->k:F

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->d:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 10
    iput v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->l:I

    .line 11
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->j(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->f:Landroid/graphics/PointF;

    .line 12
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->d(Landroid/view/MotionEvent;Landroid/graphics/PointF;)F

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->m:F

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->f:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->s(Landroid/view/MotionEvent;Landroid/graphics/PointF;)F

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->n:F

    goto/16 :goto_5

    .line 14
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->v:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_17

    .line 15
    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 16
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->e:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/view/s/a;->b(FFFF)F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v7, 0x0

    cmpl-double v9, v0, v7

    if-lez v9, :cond_17

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    cmpl-double v9, v0, v7

    if-lez v9, :cond_6

    .line 17
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->q:Z

    .line 18
    :cond_6
    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->l:I

    if-eq v0, v3, :cond_10

    if-eq v0, v6, :cond_d

    if-eq v0, v5, :cond_c

    if-eq v0, v4, :cond_7

    goto/16 :goto_4

    .line 19
    :cond_7
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->o:Z

    if-nez v0, :cond_9

    .line 20
    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->m:F

    .line 21
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 22
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->d:Landroid/graphics/PointF;

    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 23
    invoke-static {v1, v2, v7, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/s/a;->b(FFFF)F

    move-result v1

    .line 24
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->f:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->d(Landroid/view/MotionEvent;Landroid/graphics/PointF;)F

    move-result v2

    mul-float v4, v0, v0

    mul-float v7, v1, v1

    add-float/2addr v4, v7

    mul-float v2, v2, v2

    sub-float/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    mul-float v0, v0, v1

    div-float/2addr v4, v0

    float-to-double v0, v4

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42f00000    # 120.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_8

    const/high16 v1, 0x42340000    # 45.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 26
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->f:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->s(Landroid/view/MotionEvent;Landroid/graphics/PointF;)F

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->n:F

    .line 27
    iput v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->l:I

    goto/16 :goto_4

    .line 28
    :cond_8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->f:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->d(Landroid/view/MotionEvent;Landroid/graphics/PointF;)F

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->m:F

    .line 29
    iput v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->l:I

    goto/16 :goto_4

    .line 30
    :cond_9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 32
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->f:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->d(Landroid/view/MotionEvent;Landroid/graphics/PointF;)F

    move-result v1

    .line 33
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->f:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->s(Landroid/view/MotionEvent;Landroid/graphics/PointF;)F

    move-result v2

    .line 34
    iget v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->n:F

    sub-float/2addr v2, v4

    .line 35
    iget v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->m:F

    div-float/2addr v1, v4

    .line 36
    iget v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->k:F

    mul-float v5, v1, v4

    iget v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->b:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    :goto_0
    div-float v1, v6, v4

    goto :goto_1

    :cond_a
    mul-float v5, v1, v4

    .line 37
    iget v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->c:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_b

    goto :goto_0

    :cond_b
    :goto_1
    mul-float v4, v4, v1

    .line 38
    iput v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i:F

    .line 39
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->f:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v1, v1, v6, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 40
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->f:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 44
    :cond_c
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 46
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->f:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->s(Landroid/view/MotionEvent;Landroid/graphics/PointF;)F

    move-result v1

    .line 47
    iget v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->n:F

    sub-float/2addr v1, v2

    .line 48
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->f:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 49
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 51
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 52
    :cond_d
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 54
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->f:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->d(Landroid/view/MotionEvent;Landroid/graphics/PointF;)F

    move-result v1

    .line 55
    iget v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->m:F

    div-float/2addr v1, v2

    .line 56
    iget v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->k:F

    mul-float v4, v1, v2

    iget v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->b:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e

    :goto_2
    div-float v1, v5, v2

    goto :goto_3

    :cond_e
    mul-float v4, v1, v2

    .line 57
    iget v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->c:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    goto :goto_2

    :cond_f
    :goto_3
    mul-float v2, v2, v1

    .line 58
    iput v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i:F

    .line 59
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->f:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 60
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 61
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 62
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    .line 63
    :cond_10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 65
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->d:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->d:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 66
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 67
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    .line 68
    :goto_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->e:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_5

    :catchall_3
    move-exception p1

    .line 69
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    .line 70
    :cond_11
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->q:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->t:Lcn/mucang/android/jiakaoyi/hpmap/view/o;

    if-nez v1, :cond_12

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->w:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz v1, :cond_14

    :cond_12
    const-string v1, "MapView"

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " , y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->a(FF)[F

    move-result-object p1

    const-string v1, "MapView"

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " , y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    aget v4, p1, v2

    float-to-double v4, v4

    aget p1, p1, v3

    float-to-double v6, p1

    invoke-direct {v1, v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 75
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->t:Lcn/mucang/android/jiakaoyi/hpmap/view/o;

    if-eqz p1, :cond_13

    .line 76
    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->l(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 77
    :cond_13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->w:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_14

    .line 78
    invoke-interface {p1, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 79
    :cond_14
    iput v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->l:I

    .line 80
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->v:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_17

    .line 81
    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_5

    .line 82
    :cond_15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->v:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz v0, :cond_16

    .line 83
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 84
    :cond_16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 85
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->d:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 86
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->e:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 87
    iput v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->l:I

    .line 88
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->q:Z

    :cond_17
    :goto_5
    return v3
.end method

.method public r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->P()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->x:Lcn/mucang/android/jiakaoyi/hpmap/view/n;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->j:F

    iget v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/n;->a(F)V

    .line 5
    :cond_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->j:F

    return-void
.end method

.method public setClickViewListener(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->v:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method public setCurrentRotateDegrees(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->l:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-virtual {p0, p1, v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->t(FFF)V

    return-void
.end method

.method public setCurrentZoom(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-virtual {p0, p1, v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u(FFF)V

    return-void
.end method

.method public setHasGesture(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->y:Z

    return-void
.end method

.method public setMapMode(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->p:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->c:F

    return-void
.end method

.method public setMinZoom(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->b:F

    return-void
.end method

.method public setOnClickListener(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->w:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method public setOnSelect(Lcn/mucang/android/jiakaoyi/hpmap/view/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->t:Lcn/mucang/android/jiakaoyi/hpmap/view/o;

    return-void
.end method

.method public setOnZoomCallbackListener(Lcn/mucang/android/jiakaoyi/hpmap/view/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->x:Lcn/mucang/android/jiakaoyi/hpmap/view/n;

    return-void
.end method

.method public setScaleAndRotateTogether(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->o:Z

    return-void
.end method

.method public t(FFF)V
    .locals 4

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->l:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    float-to-double v0, p1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentRotateDegrees()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->s:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    double-to-float v0, v0

    invoke-virtual {v2, v0, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public u(FFF)V
    .locals 4

    const v0, 0x3ca3d70a    # 0.02f

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i:F

    div-float v3, p1, v2

    div-float v2, p1, v2

    invoke-virtual {v1, v3, v2, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i:F

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public v(FF)V
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->l:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-void
.end method

.method public w(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
