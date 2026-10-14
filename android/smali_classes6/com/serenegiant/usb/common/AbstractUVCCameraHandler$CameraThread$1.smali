.class Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/usb/IFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;


# direct methods
.method constructor <init>(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrame(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$300(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$300(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)[B

    move-result-object v1

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    new-array v0, v0, [B

    invoke-static {v1, v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$302(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;[B)[B

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$300(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    sget-object p1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mPreviewListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$300(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;->onPreviewResult([B)V

    .line 7
    :cond_2
    sget-boolean p1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->isCaptureStill:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$400(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 8
    sput-boolean p1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->isCaptureStill:Z

    .line 9
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1$1;-><init>(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void
.end method
