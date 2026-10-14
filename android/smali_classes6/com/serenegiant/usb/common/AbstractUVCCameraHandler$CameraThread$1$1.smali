.class Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;->onFrame(Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;


# direct methods
.method constructor <init>(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1$1;->this$1:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1$1;->this$1:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;

    iget-object v0, v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$400(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1$1;->this$1:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;

    iget-object v2, v2, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$1;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v2}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$300(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$500(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;Ljava/lang/String;[B)V

    return-void
.end method
