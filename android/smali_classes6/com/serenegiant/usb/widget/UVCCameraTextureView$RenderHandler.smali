.class final Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/widget/UVCCameraTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RenderHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;
    }
.end annotation


# static fields
.field private static final MSG_CREATE_SURFACE:I = 0x3

.field private static final MSG_REQUEST_RENDER:I = 0x1

.field private static final MSG_RESIZE:I = 0x4

.field private static final MSG_TERMINATE:I = 0x9


# instance fields
.field private final mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

.field private mIsActive:Z

.field private mThread:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;


# direct methods
.method private constructor <init>(Lcom/serenegiant/utils/FpsCounter;Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->mIsActive:Z

    .line 4
    iput-object p2, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->mThread:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;

    .line 5
    iput-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/utils/FpsCounter;Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;Lcom/serenegiant/usb/widget/UVCCameraTextureView$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;-><init>(Lcom/serenegiant/utils/FpsCounter;Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;)V

    return-void
.end method

.method public static final createHandler(Lcom/serenegiant/utils/FpsCounter;Landroid/graphics/SurfaceTexture;II)Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;
    .locals 1

    .line 1
    new-instance v0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;-><init>(Lcom/serenegiant/utils/FpsCounter;Landroid/graphics/SurfaceTexture;II)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    invoke-virtual {v0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->getHandler()Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getPreviewTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    const-string v0, "UVCCameraTextureView"

    const-string v1, "getPreviewTexture:"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->mThread:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;

    invoke-static {v0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->access$000(Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x3

    .line 4
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->mThread:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;

    invoke-static {v1}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->access$000(Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->mThread:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;

    invoke-static {v1}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->access$100(Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->mThread:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 4
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->resize(II)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->updatePreviewSurface()V

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->mThread:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {v0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->onDrawFrame()V

    :goto_0
    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->mIsActive:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->mFpsCounter:Lcom/serenegiant/utils/FpsCounter;

    invoke-virtual {p1}, Lcom/serenegiant/utils/FpsCounter;->count()V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final release()V
    .locals 2

    const-string v0, "UVCCameraTextureView"

    const-string v1, "release:"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->mIsActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->mIsActive:Z

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x9

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public resize(II)V
    .locals 2

    const-string v0, "UVCCameraTextureView"

    const-string v1, "resize:"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->mThread:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;

    invoke-static {v0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->access$000(Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x4

    .line 4
    :try_start_0
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object p1, p0, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler;->mThread:Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;

    invoke-static {p1}, Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;->access$000(Lcom/serenegiant/usb/widget/UVCCameraTextureView$RenderHandler$RenderThread;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :catch_0
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
