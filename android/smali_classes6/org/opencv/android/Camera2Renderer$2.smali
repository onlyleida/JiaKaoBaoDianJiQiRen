.class Lorg/opencv/android/Camera2Renderer$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/opencv/android/Camera2Renderer;->createCameraPreviewSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/opencv/android/Camera2Renderer;


# direct methods
.method constructor <init>(Lorg/opencv/android/Camera2Renderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/opencv/android/Camera2Renderer$2;->this$0:Lorg/opencv/android/Camera2Renderer;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    const-string p1, "Camera2Renderer"

    const-string v0, "createCameraPreviewSession failed"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lorg/opencv/android/Camera2Renderer$2;->this$0:Lorg/opencv/android/Camera2Renderer;

    invoke-static {p1}, Lorg/opencv/android/Camera2Renderer;->access$100(Lorg/opencv/android/Camera2Renderer;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    const-string v0, "Camera2Renderer"

    .line 1
    iget-object v1, p0, Lorg/opencv/android/Camera2Renderer$2;->this$0:Lorg/opencv/android/Camera2Renderer;

    invoke-static {v1, p1}, Lorg/opencv/android/Camera2Renderer;->access$302(Lorg/opencv/android/Camera2Renderer;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 2
    :try_start_0
    iget-object p1, p0, Lorg/opencv/android/Camera2Renderer$2;->this$0:Lorg/opencv/android/Camera2Renderer;

    invoke-static {p1}, Lorg/opencv/android/Camera2Renderer;->access$400(Lorg/opencv/android/Camera2Renderer;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lorg/opencv/android/Camera2Renderer$2;->this$0:Lorg/opencv/android/Camera2Renderer;

    invoke-static {p1}, Lorg/opencv/android/Camera2Renderer;->access$400(Lorg/opencv/android/Camera2Renderer;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lorg/opencv/android/Camera2Renderer$2;->this$0:Lorg/opencv/android/Camera2Renderer;

    invoke-static {p1}, Lorg/opencv/android/Camera2Renderer;->access$300(Lorg/opencv/android/Camera2Renderer;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    iget-object v1, p0, Lorg/opencv/android/Camera2Renderer$2;->this$0:Lorg/opencv/android/Camera2Renderer;

    invoke-static {v1}, Lorg/opencv/android/Camera2Renderer;->access$400(Lorg/opencv/android/Camera2Renderer;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/opencv/android/Camera2Renderer$2;->this$0:Lorg/opencv/android/Camera2Renderer;

    invoke-static {v3}, Lorg/opencv/android/Camera2Renderer;->access$500(Lorg/opencv/android/Camera2Renderer;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const-string p1, "CameraPreviewSession has been started"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "createCaptureSession failed"

    .line 6
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    iget-object p1, p0, Lorg/opencv/android/Camera2Renderer$2;->this$0:Lorg/opencv/android/Camera2Renderer;

    invoke-static {p1}, Lorg/opencv/android/Camera2Renderer;->access$100(Lorg/opencv/android/Camera2Renderer;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
