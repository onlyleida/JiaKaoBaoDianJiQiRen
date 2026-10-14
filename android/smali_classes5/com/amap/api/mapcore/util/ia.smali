.class public Lcom/amap/api/mapcore/util/ia;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ia$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private volatile m:Landroid/opengl/EGLContext;

.field private volatile n:Landroid/opengl/EGLConfig;

.field private o:Landroid/opengl/EGLDisplay;

.field private p:Landroid/opengl/EGLContext;

.field private q:Landroid/opengl/EGLSurface;

.field private r:Lcom/amap/api/mapcore/util/h2$g;

.field s:[F

.field t:[F

.field private u:Ljava/nio/FloatBuffer;

.field private v:Ljava/nio/FloatBuffer;

.field private w:Lcom/amap/api/mapcore/util/ia$c;

.field private x:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/ia;->b:I

    .line 3
    iput v0, p0, Lcom/amap/api/mapcore/util/ia;->c:I

    .line 4
    iput v0, p0, Lcom/amap/api/mapcore/util/ia;->d:I

    .line 5
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ia;->e:Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/amap/api/mapcore/util/ia;->f:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ia;->g:Z

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ia;->h:Z

    .line 9
    iput v0, p0, Lcom/amap/api/mapcore/util/ia;->i:I

    .line 10
    iput v0, p0, Lcom/amap/api/mapcore/util/ia;->j:I

    .line 11
    iput v0, p0, Lcom/amap/api/mapcore/util/ia;->k:I

    .line 12
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ia;->l:Z

    .line 13
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ia;->o:Landroid/opengl/EGLDisplay;

    .line 14
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ia;->p:Landroid/opengl/EGLContext;

    .line 15
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ia;->q:Landroid/opengl/EGLSurface;

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 16
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ia;->s:[F

    const/16 v1, 0xc

    new-array v1, v1, [F

    .line 17
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ia;->t:[F

    .line 18
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ia;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 19
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ia;->h:Z

    .line 20
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    .line 21
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    mul-int/lit8 v2, p1, 0x2

    const/4 p1, 0x1

    int-to-long v3, p1

    iget-object v6, p0, Lcom/amap/api/mapcore/util/ia;->e:Ljava/util/concurrent/BlockingQueue;

    new-instance v7, Lcom/amap/api/mapcore/util/e3;

    const-string p1, "AMapPboRenderThread"

    invoke-direct {v7, p1}, Lcom/amap/api/mapcore/util/e3;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v1, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lcom/amap/api/mapcore/util/ia;->f:Ljava/util/concurrent/ExecutorService;

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

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method

.method static synthetic A(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLDisplay;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/ia;->o:Landroid/opengl/EGLDisplay;

    return-object p0
.end method

.method static synthetic B(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLSurface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/ia;->q:Landroid/opengl/EGLSurface;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/ia;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/ia;->i:I

    return p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ia;->p:Landroid/opengl/EGLContext;

    return-object p1
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/ia;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLDisplay;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ia;->o:Landroid/opengl/EGLDisplay;

    return-object p1
.end method

.method static synthetic g(Lcom/amap/api/mapcore/util/ia;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ia;->p()V

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic j(Lcom/amap/api/mapcore/util/ia;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/ia;->l:Z

    return p1
.end method

.method static synthetic m(Lcom/amap/api/mapcore/util/ia;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/mapcore/util/ia;->h:Z

    return p0
.end method

.method static synthetic n(Lcom/amap/api/mapcore/util/ia;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/ia;->i:I

    return p0
.end method

.method private p()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ia;->o:Landroid/opengl/EGLDisplay;

    .line 2
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v1, v2, :cond_0

    const-string v0, "eglGetDisplay failed"

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ia;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    .line 4
    invoke-static {v1, v3, v0, v3, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amap/api/mapcore/util/ia;->o:Landroid/opengl/EGLDisplay;

    const-string v0, "eglInitialize failed"

    .line 6
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ia;->i(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x3

    new-array v3, v1, [I

    .line 7
    fill-array-data v3, :array_0

    .line 8
    iget-object v5, p0, Lcom/amap/api/mapcore/util/ia;->o:Landroid/opengl/EGLDisplay;

    iget-object v6, p0, Lcom/amap/api/mapcore/util/ia;->n:Landroid/opengl/EGLConfig;

    iget-object v7, p0, Lcom/amap/api/mapcore/util/ia;->m:Landroid/opengl/EGLContext;

    invoke-static {v5, v6, v7, v3, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/mapcore/util/ia;->p:Landroid/opengl/EGLContext;

    .line 9
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v3, v5, :cond_2

    const-string v0, "eglCreateContext failed"

    .line 10
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ia;->i(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v3, 0x5

    new-array v3, v3, [I

    const/16 v5, 0x3057

    aput v5, v3, v0

    .line 11
    iget v5, p0, Lcom/amap/api/mapcore/util/ia;->c:I

    aput v5, v3, v4

    const/16 v5, 0x3056

    aput v5, v3, v2

    iget v2, p0, Lcom/amap/api/mapcore/util/ia;->d:I

    aput v2, v3, v1

    const/4 v1, 0x4

    const/16 v2, 0x3038

    aput v2, v3, v1

    .line 12
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia;->o:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ia;->n:Landroid/opengl/EGLConfig;

    invoke-static {v1, v2, v3, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ia;->q:Landroid/opengl/EGLSurface;

    .line 13
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_3

    const-string v0, "eglCreatePbufferSurface failed"

    .line 14
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ia;->i(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia;->o:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ia;->p:Landroid/opengl/EGLContext;

    invoke-static {v1, v0, v0, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "eglMakeCurrent failed"

    .line 16
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ia;->i(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_4
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    const-string v0, "initOpenGL complete"

    .line 18
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ia;->i(Ljava/lang/String;)V

    .line 19
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/ia;->g:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method static synthetic q(Lcom/amap/api/mapcore/util/ia;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/mapcore/util/ia;->g:Z

    return p0
.end method

.method static synthetic r(Lcom/amap/api/mapcore/util/ia;)Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/ia;->x:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    return-object p0
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLShader(I)Lcom/amap/api/mapcore/util/g2;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/h2$g;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ia;->r:Lcom/amap/api/mapcore/util/h2$g;

    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/amap/api/mapcore/util/ia;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/ia;->c:I

    return p0
.end method

.method private u()V
    .locals 15

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ia;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia;->w:Lcom/amap/api/mapcore/util/ia$c;

    if-nez v0, :cond_1

    const-string v0, "renderTextureAndReadPixel failed textureHelper is null"

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ia;->i(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ia$c;->getTextureID()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/ia;->b:I

    .line 5
    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore/util/ia;->b:I

    if-gtz v0, :cond_3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renderTextureAndReadPixel failed mTextureID is <= 0 mTextureID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/mapcore/util/ia;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ia;->i(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renderTextureAndReadPixel  mTextureID is  mTextureID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/mapcore/util/ia;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ia;->i(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia;->r:Lcom/amap/api/mapcore/util/h2$g;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g2;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    :cond_4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ia;->s()V

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia;->u:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_6

    .line 11
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia;->t:[F

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->E([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ia;->u:Ljava/nio/FloatBuffer;

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia;->v:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v0, :cond_7

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v7, 0x0

    aput v7, v0, v5

    aput v6, v0, v4

    const/4 v8, 0x2

    aput v6, v0, v8

    const/4 v8, 0x3

    aput v6, v0, v8

    aput v6, v0, v3

    aput v7, v0, v2

    aput v7, v0, v1

    const/4 v8, 0x7

    aput v7, v0, v8

    .line 13
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->E([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ia;->v:Ljava/nio/FloatBuffer;

    .line 14
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia;->r:Lcom/amap/api/mapcore/util/h2$g;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g2;->b()V

    const/16 v0, 0xbe2

    .line 15
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v7, 0x303

    .line 16
    invoke-static {v4, v7}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 17
    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    const v7, 0x84c0

    .line 18
    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 19
    iget v7, p0, Lcom/amap/api/mapcore/util/ia;->b:I

    const/16 v8, 0xde1

    invoke-static {v8, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 20
    iget-object v7, p0, Lcom/amap/api/mapcore/util/ia;->r:Lcom/amap/api/mapcore/util/h2$g;

    iget v7, v7, Lcom/amap/api/mapcore/util/h2$g;->f:I

    invoke-static {v7}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 21
    iget-object v7, p0, Lcom/amap/api/mapcore/util/ia;->r:Lcom/amap/api/mapcore/util/h2$g;

    iget v9, v7, Lcom/amap/api/mapcore/util/h2$g;->f:I

    const/4 v10, 0x3

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/16 v13, 0xc

    iget-object v14, p0, Lcom/amap/api/mapcore/util/ia;->u:Ljava/nio/FloatBuffer;

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 22
    iget-object v7, p0, Lcom/amap/api/mapcore/util/ia;->r:Lcom/amap/api/mapcore/util/h2$g;

    iget v7, v7, Lcom/amap/api/mapcore/util/h2$g;->g:I

    invoke-static {v7}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 23
    iget-object v7, p0, Lcom/amap/api/mapcore/util/ia;->r:Lcom/amap/api/mapcore/util/h2$g;

    iget v9, v7, Lcom/amap/api/mapcore/util/h2$g;->g:I

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/16 v13, 0x8

    iget-object v14, p0, Lcom/amap/api/mapcore/util/ia;->v:Ljava/nio/FloatBuffer;

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 24
    iget-object v7, p0, Lcom/amap/api/mapcore/util/ia;->s:[F

    invoke-static {v7, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 25
    iget-object v7, p0, Lcom/amap/api/mapcore/util/ia;->s:[F

    invoke-static {v7, v5, v6, v6, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 26
    iget-object v6, p0, Lcom/amap/api/mapcore/util/ia;->r:Lcom/amap/api/mapcore/util/h2$g;

    iget v6, v6, Lcom/amap/api/mapcore/util/h2$g;->e:I

    iget-object v7, p0, Lcom/amap/api/mapcore/util/ia;->s:[F

    invoke-static {v6, v4, v5, v7, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 27
    invoke-static {v1, v5, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 28
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia;->r:Lcom/amap/api/mapcore/util/h2$g;

    iget v1, v1, Lcom/amap/api/mapcore/util/h2$g;->f:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 29
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia;->r:Lcom/amap/api/mapcore/util/h2$g;

    iget v1, v1, Lcom/amap/api/mapcore/util/h2$g;->g:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 30
    invoke-static {v8, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 31
    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 32
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const-string v0, "drawTexure"

    .line 33
    invoke-static {v0}, Lcom/amap/api/mapcore/util/z2;->i(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 35
    iget v0, p0, Lcom/amap/api/mapcore/util/ia;->i:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/amap/api/mapcore/util/ia;->i:I

    if-ne v0, v2, :cond_8

    .line 36
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ia;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 37
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia;->x:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 38
    invoke-interface {v0, v1, v2}, Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;->onGenerateComplete(Landroid/graphics/Bitmap;I)V

    :cond_8
    :goto_0
    return-void
.end method

.method static synthetic v(Lcom/amap/api/mapcore/util/ia;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/ia;->d:I

    return p0
.end method

.method private w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia;->x:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    if-eqz v0, :cond_3

    .line 2
    iget v0, p0, Lcom/amap/api/mapcore/util/ia;->j:I

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/amap/api/mapcore/util/ia;->c:I

    iput v0, p0, Lcom/amap/api/mapcore/util/ia;->j:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/ia;->k:I

    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Lcom/amap/api/mapcore/util/ia;->d:I

    iput v0, p0, Lcom/amap/api/mapcore/util/ia;->k:I

    .line 6
    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore/util/ia;->d:I

    iget v1, p0, Lcom/amap/api/mapcore/util/ia;->k:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/amap/api/mapcore/util/ia;->j:I

    const/4 v3, 0x0

    invoke-static {v3, v0, v2, v1}, Lcom/amap/api/mapcore/util/r3;->n(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ia;->x:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/ia;->g:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :goto_0
    invoke-interface {v1, v0, v3}, Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;->onGenerateComplete(Landroid/graphics/Bitmap;I)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ia;->l:Z

    :cond_3
    return-void
.end method

.method static synthetic x(Lcom/amap/api/mapcore/util/ia;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ia;->u()V

    return-void
.end method

.method static synthetic y(Lcom/amap/api/mapcore/util/ia;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/mapcore/util/ia;->l:Z

    return p0
.end method

.method static synthetic z(Lcom/amap/api/mapcore/util/ia;)Landroid/opengl/EGLContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/ia;->p:Landroid/opengl/EGLContext;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia;->f:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/mapcore/util/ia$b;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/ia$b;-><init>(Lcom/amap/api/mapcore/util/ia;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public e(II)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/ia;->c:I

    .line 2
    iput p2, p0, Lcom/amap/api/mapcore/util/ia;->d:I

    .line 3
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ia;->m:Landroid/opengl/EGLContext;

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/ia;->m:Landroid/opengl/EGLContext;

    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne p1, p2, :cond_0

    const-string p1, "eglGetCurrentContext failed"

    .line 5
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ia;->i(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 7
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, p1, :cond_1

    const-string p1, "sharedEglDisplay failed"

    .line 8
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ia;->i(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    new-array v4, p1, [I

    new-array p1, p1, [Landroid/opengl/EGLConfig;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v1, p1

    .line 9
    invoke-static/range {v0 .. v5}, Landroid/opengl/EGL14;->eglGetConfigs(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;II[II)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p1, "eglGetConfigs failed"

    .line 10
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ia;->i(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p2, 0x0

    .line 11
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ia;->n:Landroid/opengl/EGLConfig;

    .line 12
    iget-object p1, p0, Lcom/amap/api/mapcore/util/ia;->f:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/amap/api/mapcore/util/ia;->f:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/amap/api/mapcore/util/ia$a;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore/util/ia$a;-><init>(Lcom/amap/api/mapcore/util/ia;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public f(Lcom/amap/api/mapcore/util/ia$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ia;->w:Lcom/amap/api/mapcore/util/ia$c;

    return-void
.end method

.method public h(Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ia;->x:Lcom/amap/api/maps/model/CrossOverlay$GenerateCrossImageListener;

    return-void
.end method

.method public k()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ia;->h:Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia;->v:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    iput-object v1, p0, Lcom/amap/api/mapcore/util/ia;->v:Ljava/nio/FloatBuffer;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia;->u:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 7
    iput-object v1, p0, Lcom/amap/api/mapcore/util/ia;->u:Ljava/nio/FloatBuffer;

    .line 8
    :cond_1
    iput-object v1, p0, Lcom/amap/api/mapcore/util/ia;->w:Lcom/amap/api/mapcore/util/ia$c;

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ia;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public l(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/ia;->j:I

    .line 2
    iput p2, p0, Lcom/amap/api/mapcore/util/ia;->k:I

    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ia;->h:Z

    return v0
.end method
