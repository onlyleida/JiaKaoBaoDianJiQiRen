.class public final Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/camera/b;
.implements Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u00112\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u0015\u001a\u00020\u0011H\u0016J\u0010\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0011H\u0016J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u001b\u001a\u00020\u0011H\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;",
        "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;",
        "intent",
        "Lcn/mucang/android/jky/camera/CameraIntent;",
        "(Lcn/mucang/android/jky/camera/CameraIntent;)V",
        "frameCallback",
        "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;",
        "noFaceTimeout",
        "Lcn/mucang/android/facelib/TimeOut;",
        "previewId",
        "",
        "time",
        "",
        "isPlaying",
        "",
        "onPreviewFrame",
        "",
        "data",
        "",
        "setYuvCallback",
        "start",
        "startPreview",
        "view",
        "Landroid/view/View;",
        "stop",
        "stopPreview",
        "tryReconnect",
        "yuvFormat",
        "Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jky/camera/CameraIntent;

.field private b:Lcn/mucang/android/jiakaoyi/framework/camera/c;

.field private c:J

.field private d:I

.field private e:Lcn/mucang/android/facelib/TimeOut;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jky/camera/CameraIntent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->a:Lcn/mucang/android/jky/camera/CameraIntent;

    return-void
.end method

.method public static final synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;)Lcn/mucang/android/jky/camera/CameraIntent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->a:Lcn/mucang/android/jky/camera/CameraIntent;

    return-object p0
.end method

.method public static final synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->d:I

    return p0
.end method

.method public static final synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;Lcn/mucang/android/facelib/TimeOut;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->e:Lcn/mucang/android/facelib/TimeOut;

    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;->IMAGE_FORMAT_YUVNV21:Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->hashCode()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->d:I

    .line 2
    instance-of v0, p1, Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    invoke-virtual {p1}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->a:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {p1}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->d:I

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/jky/camera/UsbCameraManager;->startPreviewCamera(Lcn/mucang/android/jky/camera/CameraIntent;Ljava/lang/Object;I)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;)V

    invoke-virtual {p1, v0}, Lcom/serenegiant/usb/widget/UVCCameraTextureView;->setCallback(Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;)V

    goto :goto_0

    .line 6
    :cond_1
    instance-of v0, p1, Landroid/view/TextureView;

    if-eqz v0, :cond_3

    .line 7
    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->a:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->d:I

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/jky/camera/UsbCameraManager;->startPreviewCamera(Lcn/mucang/android/jky/camera/CameraIntent;Ljava/lang/Object;I)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public c()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->c:J

    const-string v0, "\u91cd\u8bd5camera"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter$tryReconnect$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter$tryReconnect$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;Lkotlin/coroutines/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->d:I

    if-lez p1, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->a:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->stopPreviewCamera(Lcn/mucang/android/jky/camera/CameraIntent;I)V

    :cond_0
    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/framework/camera/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->b:Lcn/mucang/android/jiakaoyi/framework/camera/c;

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onConnect()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener$DefaultImpls;->onConnect(Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method public onDetached()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener$DefaultImpls;->onDetached(Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener$DefaultImpls;->onDisconnect(Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method public onPreviewFrame([B)V
    .locals 11

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->e:Lcn/mucang/android/facelib/TimeOut;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->a:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {v1}, Lcn/mucang/android/jky/camera/CameraIntent;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,\u6536\u5230\u89c6\u9891\u6d41"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcn/mucang/android/facelib/TimeOut;

    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/facelib/TimeOut;-><init>(Lkotlinx/coroutines/i0;J)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->e:Lcn/mucang/android/facelib/TimeOut;

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter$onPreviewFrame$1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter$onPreviewFrame$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/facelib/TimeOut;->e(Lkotlin/jvm/b/a;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->e:Lcn/mucang/android/facelib/TimeOut;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/facelib/TimeOut;->f()V

    .line 6
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->b:Lcn/mucang/android/jiakaoyi/framework/camera/c;

    if-nez v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getHeight()I

    move-result v4

    .line 8
    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getWidth()I

    move-result v5

    array-length v6, p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    const/16 v0, 0x3e8

    int-to-long v9, v0

    div-long/2addr v7, v9

    const/4 v9, 0x0

    move-object v2, p1

    .line 9
    invoke-interface/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/framework/camera/c;->a([BIIIIJI)V

    :goto_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->a:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {v0, v1, p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->registerCameraListener(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->a:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {v0, v1, p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->unregisterCameraListener(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method
