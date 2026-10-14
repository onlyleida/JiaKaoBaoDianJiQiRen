.class Lorg/opencv/android/Camera2Renderer$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/opencv/android/Camera2Renderer;
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
    iput-object p1, p0, Lorg/opencv/android/Camera2Renderer$1;->this$0:Lorg/opencv/android/Camera2Renderer;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 2
    iget-object p1, p0, Lorg/opencv/android/Camera2Renderer$1;->this$0:Lorg/opencv/android/Camera2Renderer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/opencv/android/Camera2Renderer;->access$002(Lorg/opencv/android/Camera2Renderer;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 3
    iget-object p1, p0, Lorg/opencv/android/Camera2Renderer$1;->this$0:Lorg/opencv/android/Camera2Renderer;

    invoke-static {p1}, Lorg/opencv/android/Camera2Renderer;->access$100(Lorg/opencv/android/Camera2Renderer;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 2
    iget-object p1, p0, Lorg/opencv/android/Camera2Renderer$1;->this$0:Lorg/opencv/android/Camera2Renderer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/opencv/android/Camera2Renderer;->access$002(Lorg/opencv/android/Camera2Renderer;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 3
    iget-object p1, p0, Lorg/opencv/android/Camera2Renderer$1;->this$0:Lorg/opencv/android/Camera2Renderer;

    invoke-static {p1}, Lorg/opencv/android/Camera2Renderer;->access$100(Lorg/opencv/android/Camera2Renderer;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/opencv/android/Camera2Renderer$1;->this$0:Lorg/opencv/android/Camera2Renderer;

    invoke-static {v0, p1}, Lorg/opencv/android/Camera2Renderer;->access$002(Lorg/opencv/android/Camera2Renderer;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 2
    iget-object p1, p0, Lorg/opencv/android/Camera2Renderer$1;->this$0:Lorg/opencv/android/Camera2Renderer;

    invoke-static {p1}, Lorg/opencv/android/Camera2Renderer;->access$100(Lorg/opencv/android/Camera2Renderer;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3
    iget-object p1, p0, Lorg/opencv/android/Camera2Renderer$1;->this$0:Lorg/opencv/android/Camera2Renderer;

    invoke-static {p1}, Lorg/opencv/android/Camera2Renderer;->access$200(Lorg/opencv/android/Camera2Renderer;)V

    return-void
.end method
