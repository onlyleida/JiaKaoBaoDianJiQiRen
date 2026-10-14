.class public Lorg/opencv/android/JavaCameraView;
.super Lorg/opencv/android/CameraBridgeViewBase;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/opencv/android/JavaCameraView$CameraWorker;,
        Lorg/opencv/android/JavaCameraView$JavaCameraFrame;,
        Lorg/opencv/android/JavaCameraView$JavaCameraSizeAccessor;
    }
.end annotation


# static fields
.field private static final MAGIC_TEXTURE_ID:I = 0xa

.field private static final TAG:Ljava/lang/String; = "JavaCameraView"


# instance fields
.field private mBuffer:[B

.field protected mCamera:Landroid/hardware/Camera;

.field protected mCameraFrame:[Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

.field private mCameraFrameReady:Z

.field private mChainIdx:I

.field private mFrameChain:[Lorg/opencv/core/Mat;

.field private mPreviewFormat:I

.field private mStopThread:Z

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/opencv/android/CameraBridgeViewBase;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/opencv/android/JavaCameraView;->mChainIdx:I

    const/16 p2, 0x11

    .line 3
    iput p2, p0, Lorg/opencv/android/JavaCameraView;->mPreviewFormat:I

    .line 4
    iput-boolean p1, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrameReady:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/opencv/android/CameraBridgeViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lorg/opencv/android/JavaCameraView;->mChainIdx:I

    const/16 p2, 0x11

    .line 7
    iput p2, p0, Lorg/opencv/android/JavaCameraView;->mPreviewFormat:I

    .line 8
    iput-boolean p1, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrameReady:Z

    return-void
.end method

.method static synthetic access$100(Lorg/opencv/android/JavaCameraView;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/opencv/android/JavaCameraView;->mPreviewFormat:I

    return p0
.end method

.method static synthetic access$200(Lorg/opencv/android/JavaCameraView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrameReady:Z

    return p0
.end method

.method static synthetic access$202(Lorg/opencv/android/JavaCameraView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrameReady:Z

    return p1
.end method

.method static synthetic access$300(Lorg/opencv/android/JavaCameraView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/opencv/android/JavaCameraView;->mStopThread:Z

    return p0
.end method

.method static synthetic access$400(Lorg/opencv/android/JavaCameraView;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/opencv/android/JavaCameraView;->mChainIdx:I

    return p0
.end method

.method static synthetic access$402(Lorg/opencv/android/JavaCameraView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/opencv/android/JavaCameraView;->mChainIdx:I

    return p1
.end method

.method static synthetic access$500(Lorg/opencv/android/JavaCameraView;)[Lorg/opencv/core/Mat;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    return-object p0
.end method


# virtual methods
.method protected connectCamera(II)Z
    .locals 2

    const-string v0, "JavaCameraView"

    const-string v1, "Connecting to camera"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/opencv/android/JavaCameraView;->initializeCamera(II)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 3
    :cond_0
    iput-boolean p2, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrameReady:Z

    const-string p1, "Starting processing thread"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-boolean p2, p0, Lorg/opencv/android/JavaCameraView;->mStopThread:Z

    .line 6
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lorg/opencv/android/JavaCameraView$CameraWorker;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lorg/opencv/android/JavaCameraView$CameraWorker;-><init>(Lorg/opencv/android/JavaCameraView;Lorg/opencv/android/JavaCameraView$1;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/opencv/android/JavaCameraView;->mThread:Ljava/lang/Thread;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method protected disconnectCamera()V
    .locals 3

    const-string v0, "JavaCameraView"

    const-string v1, "Disconnecting from camera"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lorg/opencv/android/JavaCameraView;->mStopThread:Z

    const-string v0, "JavaCameraView"

    const-string v2, "Notify thread"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "JavaCameraView"

    const-string v2, "Waiting for thread"

    .line 7
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 12
    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/opencv/android/JavaCameraView;->mThread:Ljava/lang/Thread;

    .line 13
    invoke-virtual {p0}, Lorg/opencv/android/JavaCameraView;->releaseCamera()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrameReady:Z

    return-void

    .line 15
    :goto_1
    iput-object v1, p0, Lorg/opencv/android/JavaCameraView;->mThread:Ljava/lang/Thread;

    .line 16
    throw v0
.end method

.method protected initializeCamera(II)Z
    .locals 11

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "JavaCameraView"

    const-string v2, "Initialize java camera"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    monitor-enter p0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-object v1, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    .line 4
    iget v2, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCameraIndex:I

    const/16 v3, 0x9

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v4, :cond_1

    const-string v2, "JavaCameraView"

    const-string v7, "Trying to open camera with old open()"

    .line 5
    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v7, "JavaCameraView"

    .line 7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Camera is not available (in use or does not exist): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_0
    iget-object v2, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_8

    if-lt v0, v3, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 9
    :goto_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v7

    if-ge v2, v7, :cond_8

    const-string v7, "JavaCameraView"

    .line 10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trying to open camera with new open("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v7

    iput-object v7, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v7

    :try_start_4
    const-string v8, "JavaCameraView"

    .line 12
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Camera #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "failed to open: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v3, :cond_0

    goto/16 :goto_7

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-lt v0, v3, :cond_8

    const/16 v3, 0x62

    const/16 v7, 0x63

    if-ne v2, v7, :cond_3

    const-string v8, "JavaCameraView"

    const-string v9, "Trying to open back camera"

    .line 13
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v8, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v8}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v9, 0x0

    .line 15
    :goto_3
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 16
    invoke-static {v9, v8}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 17
    iget v10, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v10, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    if-ne v2, v3, :cond_5

    const-string v8, "JavaCameraView"

    const-string v9, "Trying to open front camera"

    .line 18
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v8, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v8}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v9, 0x0

    .line 20
    :goto_4
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 21
    invoke-static {v9, v8}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 22
    iget v10, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v10, v6, :cond_4

    :goto_5
    move v2, v9

    goto :goto_6

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    :goto_6
    if-ne v2, v7, :cond_6

    const-string v2, "JavaCameraView"

    const-string v3, "Back camera not found!"

    .line 23
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_6
    if-ne v2, v3, :cond_7

    const-string v2, "JavaCameraView"

    const-string v3, "Front camera not found!"

    .line 24
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_7
    const-string v3, "JavaCameraView"

    .line 25
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to open camera with new open("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 26
    :try_start_5
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :catch_2
    move-exception v3

    :try_start_6
    const-string v7, "JavaCameraView"

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Camera #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "failed to open: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_8
    :goto_7
    iget-object v2, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_9

    .line 29
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return v5

    .line 30
    :cond_9
    :try_start_7
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "JavaCameraView"

    const-string v7, "getSupportedPreviewSizes()"

    .line 31
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 33
    new-instance v7, Lorg/opencv/android/JavaCameraView$JavaCameraSizeAccessor;

    invoke-direct {v7}, Lorg/opencv/android/JavaCameraView$JavaCameraSizeAccessor;-><init>()V

    invoke-virtual {p0, v3, v7, p1, p2}, Lorg/opencv/android/CameraBridgeViewBase;->calculateCameraFrameSize(Ljava/util/List;Lorg/opencv/android/CameraBridgeViewBase$ListItemAccessor;II)Lorg/opencv/core/Size;

    move-result-object v3

    .line 34
    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v8, "generic"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "unknown"

    .line 35
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v8, "google_sdk"

    .line 36
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "Emulator"

    .line 37
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "Android SDK built for x86"

    .line 38
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v8, "Genymotion"

    .line 39
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v8, "generic"

    .line 40
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v8, "generic"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    :cond_a
    const-string v7, "google_sdk"

    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 41
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_8

    :cond_b
    const/16 v7, 0x11

    .line 42
    invoke-virtual {v2, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    goto :goto_9

    :cond_c
    :goto_8
    const v7, 0x32315659

    .line 43
    invoke-virtual {v2, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 44
    :goto_9
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v7

    iput v7, p0, Lorg/opencv/android/JavaCameraView;->mPreviewFormat:I

    const-string v7, "JavaCameraView"

    .line 45
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set preview size to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v3, Lorg/opencv/core/Size;->width:D

    double-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v3, Lorg/opencv/core/Size;->height:D

    double-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-wide v7, v3, Lorg/opencv/core/Size;->width:D

    double-to-int v7, v7

    iget-wide v8, v3, Lorg/opencv/core/Size;->height:D

    double-to-int v3, v8

    invoke-virtual {v2, v7, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    const/16 v3, 0xe

    if-lt v0, v3, :cond_d

    .line 47
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "GT-I9100"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 48
    invoke-virtual {v2, v6}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 49
    :cond_d
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_e

    const-string v7, "continuous-video"

    .line 50
    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "continuous-video"

    .line 51
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 52
    :cond_e
    iget-object v3, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 53
    iget-object v2, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    iput v3, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    .line 55
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    iput v3, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    .line 56
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_f

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_f

    int-to-float p2, p2

    .line 57
    iget v3, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    int-to-float v3, v3

    div-float/2addr p2, v3

    int-to-float p1, p1

    iget v3, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mScale:F

    goto :goto_a

    :cond_f
    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mScale:F

    .line 59
    :goto_a
    iget-object p1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFpsMeter:Lorg/opencv/android/FpsMeter;

    if-eqz p1, :cond_10

    .line 60
    iget p2, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    iget v3, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    invoke-virtual {p1, p2, v3}, Lorg/opencv/android/FpsMeter;->setResolution(II)V

    .line 61
    :cond_10
    iget p1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    iget p2, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    mul-int p1, p1, p2

    .line 62
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result p2

    invoke-static {p2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result p2

    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x8

    .line 63
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/opencv/android/JavaCameraView;->mBuffer:[B

    .line 64
    iget-object p2, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 65
    iget-object p1, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    const/4 p1, 0x2

    new-array p2, p1, [Lorg/opencv/core/Mat;

    .line 66
    iput-object p2, p0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    .line 67
    new-instance v2, Lorg/opencv/core/Mat;

    iget v3, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    div-int/lit8 v4, v3, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    sget v7, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v2, v3, v4, v7}, Lorg/opencv/core/Mat;-><init>(III)V

    aput-object v2, p2, v5

    .line 68
    iget-object p2, p0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    new-instance v2, Lorg/opencv/core/Mat;

    iget v3, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    div-int/lit8 v4, v3, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    invoke-direct {v2, v3, v4, v7}, Lorg/opencv/core/Mat;-><init>(III)V

    aput-object v2, p2, v6

    .line 69
    invoke-virtual {p0}, Lorg/opencv/android/CameraBridgeViewBase;->AllocateCache()V

    new-array p1, p1, [Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

    .line 70
    iput-object p1, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrame:[Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

    .line 71
    new-instance p2, Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

    iget-object v2, p0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    aget-object v2, v2, v5

    iget v3, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    iget v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    invoke-direct {p2, p0, v2, v3, v4}, Lorg/opencv/android/JavaCameraView$JavaCameraFrame;-><init>(Lorg/opencv/android/JavaCameraView;Lorg/opencv/core/Mat;II)V

    aput-object p2, p1, v5

    .line 72
    iget-object p1, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrame:[Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

    new-instance p2, Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

    iget-object v2, p0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    aget-object v2, v2, v6

    iget v3, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    iget v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    invoke-direct {p2, p0, v2, v3, v4}, Lorg/opencv/android/JavaCameraView$JavaCameraFrame;-><init>(Lorg/opencv/android/JavaCameraView;Lorg/opencv/core/Mat;II)V

    aput-object p2, p1, v6

    const/16 p1, 0xb

    if-lt v0, p1, :cond_11

    .line 73
    new-instance p1, Landroid/graphics/SurfaceTexture;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lorg/opencv/android/JavaCameraView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 74
    iget-object p2, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_b

    .line 75
    :cond_11
    iget-object p1, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    :goto_b
    const-string p1, "JavaCameraView"

    const-string p2, "startPreview"

    .line 76
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v5, 0x1

    goto :goto_c

    :catch_3
    move-exception p1

    .line 78
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :cond_12
    :goto_c
    monitor-exit p0

    return v5

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p2, p0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    iget v0, p0, Lorg/opencv/android/JavaCameraView;->mChainIdx:I

    aget-object p2, p2, v0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1}, Lorg/opencv/core/Mat;->put(II[B)I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrameReady:Z

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_0

    .line 7
    iget-object p2, p0, Lorg/opencv/android/JavaCameraView;->mBuffer:[B

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected releaseCamera()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 4
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 5
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 6
    :cond_0
    iput-object v1, p0, Lorg/opencv/android/JavaCameraView;->mCamera:Landroid/hardware/Camera;

    .line 7
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 8
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 9
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mFrameChain:[Lorg/opencv/core/Mat;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 10
    :cond_1
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrame:[Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

    if-eqz v0, :cond_2

    .line 11
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/opencv/android/JavaCameraView$JavaCameraFrame;->release()V

    .line 12
    iget-object v0, p0, Lorg/opencv/android/JavaCameraView;->mCameraFrame:[Lorg/opencv/android/JavaCameraView$JavaCameraFrame;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/opencv/android/JavaCameraView$JavaCameraFrame;->release()V

    .line 13
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
