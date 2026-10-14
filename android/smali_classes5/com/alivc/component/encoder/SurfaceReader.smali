.class public Lcom/alivc/component/encoder/SurfaceReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceReader"


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mBufferCallback:J

.field private mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mReader:Landroid/media/ImageReader;

.field private timeStamp:J


# direct methods
.method public constructor <init>(IIII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alivc/component/encoder/SurfaceReader;->mBufferCallback:J

    iput-wide v0, p0, Lcom/alivc/component/encoder/SurfaceReader;->timeStamp:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SurfaceReader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alivc/component/encoder/SurfaceReader;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/alivc/component/encoder/SurfaceReader;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alivc/component/encoder/SurfaceReader;->mBackgroundHandler:Landroid/os/Handler;

    invoke-static {p1, p2, p3, p4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/alivc/component/encoder/SurfaceReader;->mReader:Landroid/media/ImageReader;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ImageReader format "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alivc/component/encoder/SurfaceReader;->mReader:Landroid/media/ImageReader;

    invoke-virtual {p2}, Landroid/media/ImageReader;->getImageFormat()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "maximage"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alivc/component/encoder/SurfaceReader;->mReader:Landroid/media/ImageReader;

    invoke-virtual {p2}, Landroid/media/ImageReader;->getMaxImages()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/alivc/component/encoder/SurfaceReader$1;

    invoke-direct {p1, p0}, Lcom/alivc/component/encoder/SurfaceReader$1;-><init>(Lcom/alivc/component/encoder/SurfaceReader;)V

    iput-object p1, p0, Lcom/alivc/component/encoder/SurfaceReader;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object p2, p0, Lcom/alivc/component/encoder/SurfaceReader;->mReader:Landroid/media/ImageReader;

    iget-object p3, p0, Lcom/alivc/component/encoder/SurfaceReader;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alivc/component/encoder/SurfaceReader;)J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/component/encoder/SurfaceReader;->mBufferCallback:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/alivc/component/encoder/SurfaceReader;)J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/component/encoder/SurfaceReader;->timeStamp:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/alivc/component/encoder/SurfaceReader;J)J
    .locals 0

    iput-wide p1, p0, Lcom/alivc/component/encoder/SurfaceReader;->timeStamp:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/alivc/component/encoder/SurfaceReader;JIIIJLjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/alivc/component/encoder/SurfaceReader;->nativeWriteRGBABuffer(JIIIJLjava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alivc/component/encoder/SurfaceReader;JIIJ[Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/alivc/component/encoder/SurfaceReader;->nativeWriteYUV420Buffer(JIIJ[Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private native nativeWriteRGBABuffer(JIIIJLjava/nio/ByteBuffer;)V
.end method

.method private native nativeWriteYUV420Buffer(JIIJ[Ljava/nio/ByteBuffer;)V
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/alivc/component/encoder/SurfaceReader;->mReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public release()V
    .locals 3
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    const-string v0, "SurfaceReader"

    iget-object v1, p0, Lcom/alivc/component/encoder/SurfaceReader;->mReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    :cond_0
    iget-object v1, p0, Lcom/alivc/component/encoder/SurfaceReader;->mReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alivc/component/encoder/SurfaceReader;->mReader:Landroid/media/ImageReader;

    iput-object v1, p0, Lcom/alivc/component/encoder/SurfaceReader;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v2, p0, Lcom/alivc/component/encoder/SurfaceReader;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v2, p0, Lcom/alivc/component/encoder/SurfaceReader;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V

    iput-object v1, p0, Lcom/alivc/component/encoder/SurfaceReader;->mBackgroundThread:Landroid/os/HandlerThread;

    const-string v2, "setting background handler to null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/alivc/component/encoder/SurfaceReader;->mBackgroundHandler:Landroid/os/Handler;

    const-string v1, "background handler is now null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setBufferCallback(J)V
    .locals 0
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    iput-wide p1, p0, Lcom/alivc/component/encoder/SurfaceReader;->mBufferCallback:J

    return-void
.end method
