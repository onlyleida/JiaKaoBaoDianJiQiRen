.class public Lcom/amap/api/mapcore/util/y9;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/y9$k;,
        Lcom/amap/api/mapcore/util/y9$m;,
        Lcom/amap/api/mapcore/util/y9$j;,
        Lcom/amap/api/mapcore/util/y9$i;,
        Lcom/amap/api/mapcore/util/y9$n;,
        Lcom/amap/api/mapcore/util/y9$c;,
        Lcom/amap/api/mapcore/util/y9$b;,
        Lcom/amap/api/mapcore/util/y9$f;,
        Lcom/amap/api/mapcore/util/y9$e;,
        Lcom/amap/api/mapcore/util/y9$h;,
        Lcom/amap/api/mapcore/util/y9$d;,
        Lcom/amap/api/mapcore/util/y9$g;,
        Lcom/amap/api/mapcore/util/y9$l;
    }
.end annotation


# static fields
.field private static final l:Lcom/amap/api/mapcore/util/y9$k;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/mapcore/util/y9;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/amap/api/mapcore/util/y9$j;

.field private c:Landroid/opengl/GLSurfaceView$Renderer;

.field private d:Z

.field private e:Lcom/amap/api/mapcore/util/y9$f;

.field private f:Lcom/amap/api/mapcore/util/y9$g;

.field private g:Lcom/amap/api/mapcore/util/y9$h;

.field private h:Lcom/amap/api/mapcore/util/y9$l;

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/y9$k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/y9$k;-><init>(Lcom/amap/api/mapcore/util/y9$a;)V

    sput-object v0, Lcom/amap/api/mapcore/util/y9;->l:Lcom/amap/api/mapcore/util/y9$k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/y9;->a:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/y9;->b()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/y9;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/y9;->j:I

    return p0
.end method

.method private b()V
    .locals 0

    .line 1
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/y9;)Lcom/amap/api/mapcore/util/y9$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/y9;->e:Lcom/amap/api/mapcore/util/y9$f;

    return-object p0
.end method

.method static synthetic g(Lcom/amap/api/mapcore/util/y9;)Lcom/amap/api/mapcore/util/y9$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/y9;->f:Lcom/amap/api/mapcore/util/y9$g;

    return-object p0
.end method

.method static synthetic i(Lcom/amap/api/mapcore/util/y9;)Lcom/amap/api/mapcore/util/y9$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/y9;->g:Lcom/amap/api/mapcore/util/y9$h;

    return-object p0
.end method

.method static synthetic j()Lcom/amap/api/mapcore/util/y9$k;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/y9;->l:Lcom/amap/api/mapcore/util/y9$k;

    return-object v0
.end method

.method static synthetic k(Lcom/amap/api/mapcore/util/y9;)Lcom/amap/api/mapcore/util/y9$l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/y9;->h:Lcom/amap/api/mapcore/util/y9$l;

    return-object p0
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic m(Lcom/amap/api/mapcore/util/y9;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/y9;->i:I

    return p0
.end method

.method static synthetic n(Lcom/amap/api/mapcore/util/y9;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/mapcore/util/y9;->k:Z

    return p0
.end method

.method static synthetic o(Lcom/amap/api/mapcore/util/y9;)Landroid/opengl/GLSurfaceView$Renderer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/y9;->c:Landroid/opengl/GLSurfaceView$Renderer;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/amap/api/mapcore/util/y9$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/y9;->l()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/y9;->e:Lcom/amap/api/mapcore/util/y9$f;

    return-void
.end method

.method public d(Lcom/amap/api/mapcore/util/y9$g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/y9;->l()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/y9;->f:Lcom/amap/api/mapcore/util/y9$g;

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y9$j;->j()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y9$j;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4
    throw v0
.end method

.method public getRenderMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y9$j;->f()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y9$j;->k()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/y9;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->c:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y9$j;->f()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    :goto_0
    new-instance v2, Lcom/amap/api/mapcore/util/y9$j;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/y9;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/amap/api/mapcore/util/y9$j;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/y9$j;->a(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y9;->d:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y9$j;->l()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/y9;->d:Z

    .line 4
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/mapcore/util/y9;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/view/TextureView;->onLayout(ZIIII)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y9$j;->h()V

    .line 2
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getTextureSizeChangedInvoked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/y9;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y9$j;->n()I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y9$j;->o()I

    move-result v0

    if-eq v0, p3, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/y9;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/y9$j;->i()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    invoke-virtual {p1, p2, p3}, Lcom/amap/api/mapcore/util/y9$j;->b(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/y9$j;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/y9$j;->g()V

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/y9$j;->a(I)V

    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/y9;->l()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->e:Lcom/amap/api/mapcore/util/y9$f;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/y9$n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/y9$n;-><init>(Lcom/amap/api/mapcore/util/y9;Z)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/y9;->e:Lcom/amap/api/mapcore/util/y9$f;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->f:Lcom/amap/api/mapcore/util/y9$g;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/amap/api/mapcore/util/y9$d;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/y9$d;-><init>(Lcom/amap/api/mapcore/util/y9;Lcom/amap/api/mapcore/util/y9$a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/y9;->f:Lcom/amap/api/mapcore/util/y9$g;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->g:Lcom/amap/api/mapcore/util/y9$h;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lcom/amap/api/mapcore/util/y9$e;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/y9$e;-><init>(Lcom/amap/api/mapcore/util/y9$a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/y9;->g:Lcom/amap/api/mapcore/util/y9$h;

    .line 8
    :cond_2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/y9;->c:Landroid/opengl/GLSurfaceView$Renderer;

    .line 9
    new-instance p1, Lcom/amap/api/mapcore/util/y9$j;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/y9;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/amap/api/mapcore/util/y9$j;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/y9;->b:Lcom/amap/api/mapcore/util/y9$j;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
