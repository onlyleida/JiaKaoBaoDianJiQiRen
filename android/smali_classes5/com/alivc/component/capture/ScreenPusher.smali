.class public Lcom/alivc/component/capture/ScreenPusher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/component/capture/ScreenPusher$VideoSourceTextureListener;
    }
.end annotation


# static fields
.field private static final DISPLAY_FLAGS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ScreenPusher"


# instance fields
.field private final TIME_MILLISECOND:I

.field private VIRTUAL_DISPLAY_DPI:I

.field private mBaseWallTime:J

.field private mLastCaptureTime:J

.field private mLastFpsCounter:I

.field private mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mParam:Lcom/alivc/component/capture/ScreenVideoParam;

.field private mPause:Z

.field private mStartElapsedTime:J

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVideoSourceTextureListener:Lcom/alivc/component/capture/ScreenPusher$VideoSourceTextureListener;

.field private mediaProjection:Landroid/media/projection/MediaProjection;

.field private mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

.field private mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private mediaProjectionPermissionResultData:Landroid/content/Intent;

.field private virtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mSurface:Landroid/view/Surface;

    const/16 v1, 0x190

    iput v1, p0, Lcom/alivc/component/capture/ScreenPusher;->VIRTUAL_DISPLAY_DPI:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/alivc/component/capture/ScreenPusher;->TIME_MILLISECOND:I

    iput-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mediaProjectionPermissionResultData:Landroid/content/Intent;

    new-instance v1, Lcom/alivc/component/capture/ScreenPusher$1;

    invoke-direct {v1, p0}, Lcom/alivc/component/capture/ScreenPusher$1;-><init>(Lcom/alivc/component/capture/ScreenPusher;)V

    iput-object v1, p0, Lcom/alivc/component/capture/ScreenPusher;->mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    iput-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    iput-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mVideoSourceTextureListener:Lcom/alivc/component/capture/ScreenPusher$VideoSourceTextureListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mBaseWallTime:J

    iput-wide v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mStartElapsedTime:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alivc/component/capture/ScreenPusher;->mPause:Z

    iput-wide v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mLastCaptureTime:J

    iput v2, p0, Lcom/alivc/component/capture/ScreenPusher;->mLastFpsCounter:I

    new-instance v0, Lcom/alivc/component/capture/ScreenPusher$2;

    invoke-direct {v0, p0}, Lcom/alivc/component/capture/ScreenPusher$2;-><init>(Lcom/alivc/component/capture/ScreenPusher;)V

    iput-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alivc/component/capture/ScreenPusher;)Lcom/alivc/component/capture/ScreenPusher$VideoSourceTextureListener;
    .locals 0

    iget-object p0, p0, Lcom/alivc/component/capture/ScreenPusher;->mVideoSourceTextureListener:Lcom/alivc/component/capture/ScreenPusher$VideoSourceTextureListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alivc/component/capture/ScreenPusher;)J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mBaseWallTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/alivc/component/capture/ScreenPusher;J)J
    .locals 0

    iput-wide p1, p0, Lcom/alivc/component/capture/ScreenPusher;->mBaseWallTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/alivc/component/capture/ScreenPusher;)J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mStartElapsedTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/alivc/component/capture/ScreenPusher;J)J
    .locals 0

    iput-wide p1, p0, Lcom/alivc/component/capture/ScreenPusher;->mStartElapsedTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/alivc/component/capture/ScreenPusher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alivc/component/capture/ScreenPusher;->mPause:Z

    return p0
.end method

.method static synthetic access$400(Lcom/alivc/component/capture/ScreenPusher;)Lcom/alivc/component/capture/ScreenVideoParam;
    .locals 0

    iget-object p0, p0, Lcom/alivc/component/capture/ScreenPusher;->mParam:Lcom/alivc/component/capture/ScreenVideoParam;

    return-object p0
.end method

.method static synthetic access$502(Lcom/alivc/component/capture/ScreenPusher;J)J
    .locals 0

    iput-wide p1, p0, Lcom/alivc/component/capture/ScreenPusher;->mLastCaptureTime:J

    return-wide p1
.end method

.method static synthetic access$608(Lcom/alivc/component/capture/ScreenPusher;)I
    .locals 2

    iget v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mLastFpsCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alivc/component/capture/ScreenPusher;->mLastFpsCounter:I

    return v0
.end method

.method private createVirtualDisplay()V
    .locals 12

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/alivc/component/capture/ScreenPusher;->mParam:Lcom/alivc/component/capture/ScreenVideoParam;

    invoke-virtual {v1}, Lcom/alivc/component/capture/ScreenVideoParam;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alivc/component/capture/ScreenPusher;->mParam:Lcom/alivc/component/capture/ScreenVideoParam;

    invoke-virtual {v2}, Lcom/alivc/component/capture/ScreenVideoParam;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object v3, p0, Lcom/alivc/component/capture/ScreenPusher;->mediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mParam:Lcom/alivc/component/capture/ScreenVideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/ScreenVideoParam;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mParam:Lcom/alivc/component/capture/ScreenVideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/ScreenVideoParam;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/alivc/component/capture/ScreenPusher;->VIRTUAL_DISPLAY_DPI:I

    iget-object v9, p0, Lcom/alivc/component/capture/ScreenPusher;->mSurface:Landroid/view/Surface;

    const-string v4, "AlivcScreenCapture"

    const/4 v8, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string v0, "ScreenPusher"

    const-string v1, "destroy."

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mParam:Lcom/alivc/component/capture/ScreenVideoParam;

    return-void
.end method

.method public getTransformMatrix([F)V
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    return-void
.end method

.method public init(IIIIILandroid/content/Intent;Landroid/content/Context;)V
    .locals 7

    new-instance v6, Lcom/alivc/component/capture/ScreenVideoParam;

    move-object v0, v6

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p1

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alivc/component/capture/ScreenVideoParam;-><init>(IIIII)V

    iput-object v6, p0, Lcom/alivc/component/capture/ScreenPusher;->mParam:Lcom/alivc/component/capture/ScreenVideoParam;

    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p5, p0, Lcom/alivc/component/capture/ScreenPusher;->VIRTUAL_DISPLAY_DPI:I

    iput-object p6, p0, Lcom/alivc/component/capture/ScreenPusher;->mediaProjectionPermissionResultData:Landroid/content/Intent;

    const-string p5, "media_projection"

    invoke-virtual {p7, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/media/projection/MediaProjectionManager;

    iput-object p5, p0, Lcom/alivc/component/capture/ScreenPusher;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "====> Init src: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", width: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height:"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fps:"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoPusher"

    invoke-static {p2, p1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoSourceTextureListener(Lcom/alivc/component/capture/ScreenPusher$VideoSourceTextureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/capture/ScreenPusher;->mVideoSourceTextureListener:Lcom/alivc/component/capture/ScreenPusher$VideoSourceTextureListener;

    return-void
.end method

.method public start(I)V
    .locals 3

    const-string v0, "ScreenPusher"

    const-string v1, "start."

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mediaProjectionPermissionResultData:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alivc/component/capture/ScreenPusher;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v1, v2, v0}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mediaProjection:Landroid/media/projection/MediaProjection;

    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance p1, Landroid/view/Surface;

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/alivc/component/capture/ScreenPusher;->mSurface:Landroid/view/Surface;

    iget-object p1, p0, Lcom/alivc/component/capture/ScreenPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    invoke-direct {p0}, Lcom/alivc/component/capture/ScreenPusher;->createVirtualDisplay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "invalid parameters"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stop()V
    .locals 2

    const-string v0, "ScreenPusher"

    const-string v1, "stop."

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    iput-object v1, p0, Lcom/alivc/component/capture/ScreenPusher;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    :cond_0
    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    iput-object v1, p0, Lcom/alivc/component/capture/ScreenPusher;->mediaProjection:Landroid/media/projection/MediaProjection;

    :cond_1
    return-void
.end method

.method public updateTexImage()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    const/4 v0, 0x0

    return v0
.end method
