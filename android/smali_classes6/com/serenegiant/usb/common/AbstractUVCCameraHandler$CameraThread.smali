.class public final Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraThread"
.end annotation


# static fields
.field private static final TAG_THREAD:Ljava/lang/String; = "CameraThread"


# instance fields
.field private mBandwidthFactor:F

.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mEncoderType:I

.field private mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

.field private final mHandlerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private final mIFrameCallback:Lcom/serenegiant/usb/IFrameCallback;

.field private mIsPreviewing:Z

.field private mIsRecording:Z

.field private mPreviewMode:I

.field private final mSync:Ljava/lang/Object;

.field private mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

.field private final mWeakCameraView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/serenegiant/usb/widget/CameraViewInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I

.field private picPath:Ljava/lang/String;

.field private yuv:[B


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIIIF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/serenegiant/usb/widget/CameraViewInterface;",
            "IIIIF)V"
        }
    .end annotation

    const-string v0, "CameraThread"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->picPath:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->yuv:[B

    .line 6
    new-instance v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;-><init>(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)V

    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIFrameCallback:Lcom/serenegiant/usb/IFrameCallback;

    .line 7
    iput-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandlerClass:Ljava/lang/Class;

    .line 8
    iput p4, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mEncoderType:I

    .line 9
    iput p5, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWidth:I

    .line 10
    iput p6, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHeight:I

    .line 11
    iput p7, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mPreviewMode:I

    .line 12
    iput p8, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mBandwidthFactor:F

    .line 13
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWeakParent:Ljava/lang/ref/WeakReference;

    .line 14
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWeakCameraView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/UVCCamera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    return-object p0
.end method

.method static synthetic access$300(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->yuv:[B

    return-object p0
.end method

.method static synthetic access$302(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;[B)[B
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->yuv:[B

    return-object p1
.end method

.method static synthetic access$400(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->picPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->saveYuv2Jpeg(Ljava/lang/String;[B)V

    return-void
.end method

.method private callOnClose()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;

    .line 2
    :try_start_0
    invoke-interface {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;->onClose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3
    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "AbsUVCCameraHandler"

    .line 4
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private callOnError(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;

    .line 2
    :try_start_0
    invoke-interface {v1, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;->onError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "AbsUVCCameraHandler"

    .line 4
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private callOnOpen()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;

    .line 2
    :try_start_0
    invoke-interface {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;->onOpen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3
    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "AbsUVCCameraHandler"

    .line 4
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private callOnStartPreview()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;

    .line 2
    :try_start_0
    invoke-interface {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;->onStartPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3
    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "AbsUVCCameraHandler"

    .line 4
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private callOnStopPreview()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;

    .line 2
    :try_start_0
    invoke-interface {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraCallback;->onStopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3
    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "AbsUVCCameraHandler"

    .line 4
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private saveYuv2Jpeg(Ljava/lang/String;[B)V
    .locals 7

    .line 1
    new-instance v6, Landroid/graphics/YuvImage;

    iget v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWidth:I

    iget v4, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHeight:I

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length p2, p2

    invoke-direct {v0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3
    new-instance p2, Landroid/graphics/Rect;

    iget v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWidth:I

    iget v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHeight:I

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v1, 0x64

    invoke-virtual {v6, p2, v1, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 7
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 9
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 10
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 11
    :goto_0
    sget-object p2, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mCaptureListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;

    if-eqz p2, :cond_0

    .line 12
    invoke-interface {p2, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;->onCaptureResult(Ljava/lang/String;)V

    .line 13
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "AbsUVCCameraHandler"

    const-string v1, "CameraThread#finalize"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getHandler()Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;
    .locals 2

    const-string v0, "CameraThread"

    const-string v1, "getHandler:"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

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

.method public getHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHeight:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSupportedSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/serenegiant/usb/Size;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsPreviewing:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->getSupportedSizeList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWidth:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleCameraFoucs()V
    .locals 2

    const-string v0, "CameraThread"

    const-string v1, "handleStartPreview:"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsPreviewing:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->setAutoFocus(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleCaptureStill(Ljava/lang/String;)V
    .locals 5

    const-string v0, "CameraThread"

    const-string v1, "handleCaptureStill:"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWeakParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWeakCameraView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/widget/CameraViewInterface;

    iget v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWidth:I

    iget v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHeight:I

    invoke-interface {v0, v1, v2}, Lcom/serenegiant/usb/widget/CaptureStillImageInterface;->captureStillImage(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 7
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 8
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    const/4 v3, 0x7

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    throw p1

    :catch_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 10
    sget-object v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mCaptureListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;->onCaptureResult(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 12
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->callOnError(Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public handleClose()V
    .locals 3

    const-string v0, "CameraThread"

    const-string v1, "handleClose:"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/serenegiant/usb/UVCCamera;->stopPreview()V

    .line 7
    invoke-virtual {v1}, Lcom/serenegiant/usb/UVCCamera;->destroy()V

    .line 8
    invoke-direct {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->callOnClose()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public handleOpen(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
    .locals 2

    const-string v0, "CameraThread"

    const-string v1, "handleOpen:"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleClose()V

    .line 3
    :try_start_0
    new-instance v0, Lcom/serenegiant/usb/UVCCamera;

    invoke-direct {v0}, Lcom/serenegiant/usb/UVCCamera;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/UVCCamera;->open(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V

    .line 5
    iget-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    .line 7
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-direct {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->callOnOpen()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 10
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->callOnError(Ljava/lang/Exception;)V

    :goto_0
    const-string p1, "AbsUVCCameraHandler"

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportedSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/serenegiant/usb/UVCCamera;->getSupportedSize()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleRelease()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRelease:mIsRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraThread"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleClose()V

    .line 3
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    iget-boolean v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsRecording:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->access$602(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;Z)Z

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    const-string v0, "handleRelease:finished"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleStartPreview(Ljava/lang/Object;)V
    .locals 10

    const-string v0, "CameraThread"

    const-string v1, "handleStartPreview:"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v2, :cond_3

    iget-boolean v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsPreviewing:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    :try_start_0
    iget v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWidth:I

    iget v4, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHeight:I

    const/4 v5, 0x1

    const/16 v6, 0x1f

    iget v7, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mPreviewMode:I

    iget v8, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mBandwidthFactor:F

    invoke-virtual/range {v2 .. v8}, Lcom/serenegiant/usb/UVCCamera;->setPreviewSize(IIIIIF)V

    .line 4
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIFrameCallback:Lcom/serenegiant/usb/IFrameCallback;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/serenegiant/usb/UVCCamera;->setFrameCallback(Lcom/serenegiant/usb/IFrameCallback;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    :try_start_1
    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    iget v4, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWidth:I

    iget v5, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHeight:I

    const/4 v6, 0x1

    const/16 v7, 0x1f

    const/4 v8, 0x0

    iget v9, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mBandwidthFactor:F

    invoke-virtual/range {v3 .. v9}, Lcom/serenegiant/usb/UVCCamera;->setPreviewSize(IIIIIF)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    :goto_0
    instance-of v0, p1, Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    move-object v1, p1

    check-cast v1, Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/serenegiant/usb/UVCCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 8
    :cond_1
    instance-of v0, p1, Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/UVCCamera;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/UVCCamera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 11
    :goto_1
    iget-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    invoke-virtual {p1}, Lcom/serenegiant/usb/UVCCamera;->startPreview()V

    .line 12
    iget-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    invoke-virtual {p1}, Lcom/serenegiant/usb/UVCCamera;->updateCameraParams()V

    .line 13
    iget-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 14
    :try_start_2
    iput-boolean v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsPreviewing:Z

    .line 15
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    invoke-direct {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->callOnStartPreview()V

    return-void

    :catchall_0
    move-exception v0

    .line 17
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception p1

    .line 18
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->callOnError(Ljava/lang/Exception;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public handleStillPicture(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->picPath:Ljava/lang/String;

    return-void
.end method

.method public handleStopPreview()V
    .locals 3

    const-string v0, "CameraThread"

    const-string v1, "handleStopPreview:"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsPreviewing:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->stopPreview()V

    .line 5
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/serenegiant/usb/UVCCamera;->setFrameCallback(Lcom/serenegiant/usb/IFrameCallback;I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsPreviewing:Z

    .line 8
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-direct {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->callOnStopPreview()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    const-string v0, "CameraThread"

    const-string v1, "handleStopPreview:finished"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleUpdateMedia(Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUpdateMedia:path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraThread"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mWeakParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->access$600(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v4, "AbsUVCCameraHandler"

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_3

    :try_start_0
    const-string v5, "MediaScannerConnection#scanFile"

    .line 5
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v2

    const/4 p1, 0x0

    invoke-static {v5, v3, p1, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v2, "handleUpdateMedia:"

    .line 7
    invoke-static {v4, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-nez v1, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleRelease()V

    goto :goto_3

    :cond_3
    const-string p1, "MainActivity already destroyed"

    .line 9
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleRelease()V

    :cond_4
    :goto_3
    return-void
.end method

.method public isCameraOpened()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEqual(Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPreviewing()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mUVCCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mIsPreviewing:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandlerClass:Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v5

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "AbsUVCCameraHandler"

    .line 5
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "AbsUVCCameraHandler"

    .line 6
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v3, "AbsUVCCameraHandler"

    .line 7
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v3, "AbsUVCCameraHandler"

    .line 8
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_0

    .line 9
    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 10
    :try_start_1
    iput-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    .line 11
    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 12
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 14
    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    if-eqz v2, :cond_0

    .line 15
    invoke-static {v2, v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->access$602(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;Z)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 16
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 17
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 18
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_3
    iput-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mHandler:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    .line 20
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 21
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
