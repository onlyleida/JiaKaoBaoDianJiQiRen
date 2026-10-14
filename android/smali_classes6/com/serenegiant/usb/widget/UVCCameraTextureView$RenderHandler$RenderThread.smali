.class final Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RenderThread"
.end annotation


# instance fields
.field private mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

.field private mEgl:Lcom/serenegiant/glutils/EGLBase;

.field private mEglSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

.field private final mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

.field private mHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

.field private mPreviewSurface:Landroid/graphics/SurfaceTexture;

.field private final mStMatrix:[F

.field private final mSurface:Landroid/graphics/SurfaceTexture;

.field private final mSync:Ljava/lang/Object;

.field private mTexId:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Lcom/serenegiant/utils/FpsCounter;Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mStMatrix:[F

    .line 5
    iput-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

    .line 6
    iput-object p2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 7
    iput p3, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mViewWidth:I

    .line 8
    iput p4, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mViewHeight:I

    const-string p1, "UVCRenderThread"

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method private final init()V
    .locals 2

    const-string v0, "UVCCameraTextureView"

    const-string v1, "RenderThread#init:"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1, v1}, Lcom/serenegiant/glutils/EGLBase;->createFrom(Lcom/serenegiant/glutils/EGLBase$IContext;ZZ)Lcom/serenegiant/glutils/EGLBase;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    .line 3
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/serenegiant/glutils/EGLBase;->createFromSurface(Ljava/lang/Object;)Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEglSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    .line 4
    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    .line 5
    new-instance v0, Lcom/serenegiant/glutils/GLDrawer2D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;-><init>(Z)V

    iput-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    return-void
.end method

.method private final release()V
    .locals 2

    const-string v0, "UVCCameraTextureView"

    const-string v1, "RenderThread#release:"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/serenegiant/glutils/GLDrawer2D;->release()V

    .line 4
    iput-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 7
    iput-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    .line 8
    :cond_1
    iget v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    if-ltz v0, :cond_2

    .line 9
    invoke-static {v0}, Lcom/serenegiant/glutils/es1/GLHelper;->deleteTex(I)V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEglSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    if-eqz v0, :cond_3

    .line 12
    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->release()V

    .line 13
    iput-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEglSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Lcom/serenegiant/glutils/EGLBase;->release()V

    .line 16
    iput-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEgl:Lcom/serenegiant/glutils/EGLBase;

    :cond_4
    return-void
.end method


# virtual methods
.method public final getHandler()Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;
    .locals 2

    const-string v0, "UVCCameraTextureView"

    const-string v1, "RenderThread#getHandler:"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public final onDrawFrame()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEglSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 3
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mStMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 4
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    iget v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    iget-object v2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mStMatrix:[F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/serenegiant/glutils/GLDrawer2D;->draw(I[FI)V

    .line 5
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEglSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v0}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->swap()V

    return-void
.end method

.method public resize(II)V
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iget v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mViewWidth:I

    if-ne p1, v0, :cond_1

    :cond_0
    if-lez p2, :cond_2

    iget v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mViewHeight:I

    if-eq p2, v0, :cond_2

    .line 2
    :cond_1
    iput p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mViewWidth:I

    .line 3
    iput p2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mViewHeight:I

    .line 4
    invoke-virtual {p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->updatePreviewSurface()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final run()V
    .locals 4

    const-string v0, "UVCCameraTextureView"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->init()V

    .line 3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 4
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    new-instance v1, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    iget-object v2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;-><init>(Lcom/serenegiant/utils/FpsCounter;Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;Lcom/serenegiant/usb/widget/UVCCameraTextureView$1;)V

    iput-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    .line 6
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v0, "UVCCameraTextureView"

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " finishing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-direct {p0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->release()V

    .line 11
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 12
    :try_start_1
    iput-object v3, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    .line 13
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 14
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 15
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final updatePreviewSurface()V
    .locals 4

    const-string v0, "UVCCameraTextureView"

    const-string v1, "RenderThread#updatePreviewSurface:"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    const-string v1, "UVCCameraTextureView"

    const-string v2, "updatePreviewSurface:release mPreviewSurface"

    .line 4
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 6
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 7
    iput-object v2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mEglSurface:Lcom/serenegiant/glutils/EGLBase$IEglSurface;

    invoke-interface {v1}, Lcom/serenegiant/glutils/EGLBase$IEglSurface;->makeCurrent()V

    .line 9
    iget v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    if-ltz v1, :cond_1

    .line 10
    iget-object v2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-virtual {v2, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->deleteTex(I)V

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-virtual {v1}, Lcom/serenegiant/glutils/GLDrawer2D;->initTex()I

    move-result v1

    iput v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    const-string v1, "UVCCameraTextureView"

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreviewSurface:tex_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mTexId:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    .line 14
    iget v2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mViewWidth:I

    iget v3, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mViewHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 15
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mPreviewSurface:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mHandler:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 16
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
