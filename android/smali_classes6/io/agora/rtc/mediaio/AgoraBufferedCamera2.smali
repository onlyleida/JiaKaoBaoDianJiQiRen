.class public Lio/agora/rtc/mediaio/AgoraBufferedCamera2;
.super Lio/agora/rtc/mediaio/CameraSource;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/mediaio/AgoraBufferedCamera2$CompareSizesByArea;
    }
.end annotation


# static fields
.field private static final STATE_PREVIEW:I = 0x0

.field private static final STATE_WAITING_LOCK:I = 0x1

.field private static final STATE_WAITING_NON_PRECAPTURE:I = 0x3

.field private static final STATE_WAITING_PRECAPTURE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AgoraBufferedCamera2"


# instance fields
.field private cameraOrientation:I

.field private isCameraFrontFacing:Z

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mBufferArrayData:[B

.field private mByteBufferData:Ljava/nio/ByteBuffer;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mContext:Landroid/content/Context;

.field private mFlashSupported:Z

.field private mImageReader:Landroid/media/ImageReader;

.field private final mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mState:I

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/mediaio/CameraSource;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mState:I

    .line 3
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 4
    new-instance v0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;-><init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 5
    new-instance v0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;-><init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 6
    new-instance v0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$3;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$3;-><init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 7
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mContext:Landroid/content/Context;

    .line 8
    new-instance p1, Lio/agora/rtc/mediaio/CaptureParameters;

    invoke-direct {p1}, Lio/agora/rtc/mediaio/CaptureParameters;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    const/16 v0, 0x280

    .line 9
    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->width:I

    const/16 v0, 0x1e0

    .line 10
    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->height:I

    const/16 v0, 0xf

    .line 11
    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->fps:I

    .line 12
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->I420:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->intValue()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->pixelFormat:I

    .line 13
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->BYTE_BUFFER:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$BufferType;->intValue()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->bufferType:I

    .line 14
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$CaptureType;->CAMERA:Lio/agora/rtc/mediaio/MediaIO$CaptureType;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$CaptureType;->intValue()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->captureType:I

    .line 15
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$ContentHint;->NONE:Lio/agora/rtc/mediaio/MediaIO$ContentHint;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$ContentHint;->intValue()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->contentHint:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/agora/rtc/mediaio/CaptureParameters;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Lio/agora/rtc/mediaio/CameraSource;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mState:I

    .line 18
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 19
    new-instance v0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;-><init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 20
    new-instance v0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;-><init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 21
    new-instance v0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$3;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$3;-><init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 22
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 23
    new-instance p1, Lio/agora/rtc/mediaio/CaptureParameters;

    invoke-direct {p1}, Lio/agora/rtc/mediaio/CaptureParameters;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    .line 24
    iget v0, p2, Lio/agora/rtc/mediaio/CaptureParameters;->width:I

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->width:I

    .line 25
    iget v0, p2, Lio/agora/rtc/mediaio/CaptureParameters;->height:I

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->height:I

    .line 26
    iget v0, p2, Lio/agora/rtc/mediaio/CaptureParameters;->fps:I

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->fps:I

    .line 27
    iget v0, p2, Lio/agora/rtc/mediaio/CaptureParameters;->pixelFormat:I

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->pixelFormat:I

    .line 28
    iget v0, p2, Lio/agora/rtc/mediaio/CaptureParameters;->bufferType:I

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->bufferType:I

    .line 29
    iget v0, p2, Lio/agora/rtc/mediaio/CaptureParameters;->captureType:I

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->captureType:I

    .line 30
    iget p2, p2, Lio/agora/rtc/mediaio/CaptureParameters;->contentHint:I

    iput p2, p1, Lio/agora/rtc/mediaio/CaptureParameters;->contentHint:I

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBufferArrayData:[B

    return-object p0
.end method

.method static synthetic access$1000(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$1002(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1100(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method static synthetic access$1102(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p1
.end method

.method static synthetic access$1200(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$1300(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static synthetic access$1400(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Landroid/media/Image;[B)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->readImageIntoBuffer(Landroid/media/Image;[B)V

    return-void
.end method

.method static synthetic access$300(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->getFrameOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Lio/agora/rtc/mediaio/CaptureParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    return-object p0
.end method

.method static synthetic access$500(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mByteBufferData:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$600(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$602(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$700(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->createCameraPreviewSession()V

    return-void
.end method

.method static synthetic access$800(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$900(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mState:I

    return p0
.end method

.method static synthetic access$902(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mState:I

    return p1
.end method

.method private allocateBuffer(I)V
    .locals 2

    .line 1
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->I420:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    iget v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->width:I

    iget p1, p1, Lio/agora/rtc/mediaio/CaptureParameters;->height:I

    mul-int v0, v0, p1

    const/16 p1, 0x23

    invoke-static {p1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result p1

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    iget p1, p1, Lio/agora/rtc/mediaio/CaptureParameters;->bufferType:I

    sget-object v1, Lio/agora/rtc/mediaio/MediaIO$BufferType;->BYTE_ARRAY:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    invoke-virtual {v1}, Lio/agora/rtc/mediaio/MediaIO$BufferType;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 4
    new-array p1, v0, [B

    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBufferArrayData:[B

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    iget p1, p1, Lio/agora/rtc/mediaio/CaptureParameters;->bufferType:I

    sget-object v1, Lio/agora/rtc/mediaio/MediaIO$BufferType;->BYTE_BUFFER:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    invoke-virtual {v1}, Lio/agora/rtc/mediaio/MediaIO$BufferType;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 6
    new-array p1, v0, [B

    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBufferArrayData:[B

    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mByteBufferData:Ljava/nio/ByteBuffer;

    :cond_2
    :goto_1
    return-void
.end method

.method private static chooseOptimalSize([Landroid/util/Size;IIIILandroid/util/Size;)Landroid/util/Size;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 4
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p5

    .line 5
    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, p0, v5

    .line 6
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-gt v7, p3, :cond_1

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-gt v7, p4, :cond_1

    .line 7
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int v8, v8, p5

    div-int/2addr v8, v2

    if-ne v7, v8, :cond_1

    .line 8
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-lt v7, p1, :cond_0

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-lt v7, p2, :cond_0

    .line 9
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 12
    new-instance p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$CompareSizesByArea;

    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$CompareSizesByArea;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    .line 13
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 14
    new-instance p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$CompareSizesByArea;

    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$CompareSizesByArea;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    .line 15
    :cond_4
    sget-object p1, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->TAG:Ljava/lang/String;

    const-string p2, "Couldn\'t find any suitable preview size"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    aget-object p0, p0, v4

    return-object p0
.end method

.method private closeCamera()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 4
    iput-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 5
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 7
    iput-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 8
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 10
    iput-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mImageReader:Landroid/media/ImageReader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while trying to lock camera closing."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_0
    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 14
    throw v0
.end method

.method private createCameraPreviewSession()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 2
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mFlashSupported:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    new-array v0, v1, [Landroid/view/Surface;

    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v2, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;

    invoke-direct {v2, p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;-><init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private doStop()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->closeCamera()V

    .line 2
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->stopBackgroundThread()V

    return-void
.end method

.method private getAndroidImageFormat(I)I
    .locals 1

    .line 1
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->I420:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/16 p1, 0x23

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getDeviceOrientation()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 v0, 0xb4

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a

    :goto_0
    return v0
.end method

.method private getFrameOrientation()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->getDeviceOrientation()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->isCameraFrontFacing:Z

    if-nez v1, :cond_0

    rsub-int v0, v0, 0x168

    .line 3
    :cond_0
    iget v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->cameraOrientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method private openCamera(II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->setUpCameraOutputs(II)V

    .line 2
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mContext:Landroid/content/Context;

    const-string p2, "camera"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 3
    :try_start_0
    iget-object p2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v0, 0x9c4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraId:Ljava/lang/String;

    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Time out waiting to lock camera opening."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 6
    sget-object p2, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Interrupted while trying to lock camera opening."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 8
    sget-object p2, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static readImageIntoBuffer(Landroid/media/Image;[B)V
    .locals 17

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4
    :goto_0
    array-length v7, v3

    if-ge v5, v7, :cond_6

    .line 5
    aget-object v7, v3, v5

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 6
    aget-object v8, v3, v5

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    .line 7
    aget-object v9, v3, v5

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    if-nez v5, :cond_0

    move v10, v1

    goto :goto_1

    .line 8
    :cond_0
    div-int/lit8 v10, v1, 0x2

    :goto_1
    if-nez v5, :cond_1

    move v11, v2

    goto :goto_2

    .line 9
    :cond_1
    div-int/lit8 v11, v2, 0x2

    :goto_2
    const/4 v12, 0x1

    if-ne v9, v12, :cond_2

    if-ne v8, v10, :cond_2

    mul-int v10, v10, v11

    .line 10
    invoke-virtual {v7, v0, v6, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v6, v10

    goto :goto_6

    .line 11
    :cond_2
    new-array v12, v8, [B

    const/4 v13, 0x0

    :goto_3
    add-int/lit8 v14, v11, -0x1

    if-ge v13, v14, :cond_4

    .line 12
    invoke-virtual {v7, v12, v4, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v10, :cond_3

    add-int/lit8 v15, v6, 0x1

    mul-int v16, v14, v9

    .line 13
    aget-byte v16, v12, v16

    aput-byte v16, v0, v6

    add-int/lit8 v14, v14, 0x1

    move v6, v15

    goto :goto_4

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 14
    :cond_4
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v7, v12, v4, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v10, :cond_5

    add-int/lit8 v8, v6, 0x1

    mul-int v11, v7, v9

    .line 15
    aget-byte v11, v12, v11

    aput-byte v11, v0, v6

    add-int/lit8 v7, v7, 0x1

    move v6, v8

    goto :goto_5

    :cond_5
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private setUpCameraOutputs(II)V
    .locals 4

    .line 1
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mContext:Landroid/content/Context;

    const-string p2, "camera"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 4
    aget-object v2, p2, v1

    .line 5
    iput-object v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    iput-object v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 7
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->cameraOrientation:I

    .line 8
    iget-object v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_1
    iput-boolean v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mFlashSupported:Z

    .line 10
    iget-boolean v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->isCameraFrontFacing:Z

    if-eqz v2, :cond_2

    .line 11
    iget-object v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    :goto_2
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    iget p2, p1, Lio/agora/rtc/mediaio/CaptureParameters;->width:I

    iget v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->height:I

    iget p1, p1, Lio/agora/rtc/mediaio/CaptureParameters;->pixelFormat:I

    .line 13
    invoke-direct {p0, p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->getAndroidImageFormat(I)I

    move-result p1

    const/4 v1, 0x2

    .line 14
    invoke-static {p2, v0, p1, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 15
    iget-object p2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :catch_1
    :goto_3
    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method private stopBackgroundThread()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 5
    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBufferType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    iget v0, v0, Lio/agora/rtc/mediaio/CaptureParameters;->bufferType:I

    return v0
.end method

.method public getCaptureType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    iget v0, v0, Lio/agora/rtc/mediaio/CaptureParameters;->captureType:I

    return v0
.end method

.method public getContentHint()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    iget v0, v0, Lio/agora/rtc/mediaio/CaptureParameters;->contentHint:I

    return v0
.end method

.method public onDispose()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->doStop()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBufferArrayData:[B

    .line 3
    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mByteBufferData:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public onInitialize(Lio/agora/rtc/mediaio/IVideoFrameConsumer;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/mediaio/CameraSource;->consumer:Lio/agora/rtc/mediaio/IVideoFrameConsumer;

    .line 2
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    iget p1, p1, Lio/agora/rtc/mediaio/CaptureParameters;->pixelFormat:I

    invoke-direct {p0, p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->allocateBuffer(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStart()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->startBackgroundThread()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    iget v1, v0, Lio/agora/rtc/mediaio/CaptureParameters;->width:I

    iget v0, v0, Lio/agora/rtc/mediaio/CaptureParameters;->height:I

    invoke-direct {p0, v1, v0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->openCamera(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->doStop()V

    return-void
.end method

.method public useFrontCamera(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->isCameraFrontFacing:Z

    return-void
.end method
