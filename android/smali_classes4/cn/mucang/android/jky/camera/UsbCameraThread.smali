.class public final Lcn/mucang/android/jky/camera/UsbCameraThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/usb/IFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jky/camera/UsbCameraThread$UsbCameraCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002:\u00011B/\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000bJ\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0008H\u0002J\n\u0010\u001f\u001a\u0004\u0018\u00010\u0014H\u0002J\u0008\u0010 \u001a\u00020\u001cH\u0002J\u0012\u0010!\u001a\u00020\u00162\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0002J\u001a\u0010$\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001e\u001a\u00020\u0008H\u0002J\u0008\u0010%\u001a\u00020\u001cH\u0002J\u0010\u0010&\u001a\u00020\u001c2\u0006\u0010\'\u001a\u00020(H\u0016J \u0010)\u001a\u0004\u0018\u00010\u00002\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\u0016J\u0006\u0010+\u001a\u00020\u001cJ\u0010\u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020\u0018H\u0002J\u0018\u0010.\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001e\u001a\u00020\u0008J\u0008\u0010/\u001a\u00020\u001cH\u0002J\u000e\u00100\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u0008R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcn/mucang/android/jky/camera/UsbCameraThread;",
        "Landroid/os/HandlerThread;",
        "Lcom/serenegiant/usb/IFrameCallback;",
        "name",
        "",
        "callback",
        "Lcn/mucang/android/jky/camera/UsbCameraThread$UsbCameraCallback;",
        "width",
        "",
        "height",
        "mode",
        "(Ljava/lang/String;Lcn/mucang/android/jky/camera/UsbCameraThread$UsbCameraCallback;III)V",
        "cameraView",
        "Lcom/serenegiant/usb/widget/NoViewSurface;",
        "currentPreviewId",
        "",
        "currentSurface",
        "device",
        "Landroid/hardware/usb/UsbDevice;",
        "handler",
        "Landroid/os/Handler;",
        "quit",
        "",
        "uvcCamera",
        "Lcom/serenegiant/usb/UVCCamera;",
        "yuv",
        "",
        "doHandlePreview",
        "",
        "surface",
        "previewId",
        "getThreadHandler",
        "handleClose",
        "handleOpen",
        "ctrlBlock",
        "Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;",
        "handlePreview",
        "handleRelease",
        "onFrame",
        "frame",
        "Ljava/nio/ByteBuffer;",
        "openCameraBlock",
        "previewInOpen",
        "release",
        "setPreviewSize",
        "camera",
        "startPreviewCamera",
        "startPreviewDefault",
        "stopPreviewCamera",
        "UsbCameraCallback",
        "usbcamera_release"
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
.field private final callback:Lcn/mucang/android/jky/camera/UsbCameraThread$UsbCameraCallback;

.field private cameraView:Lcom/serenegiant/usb/widget/NoViewSurface;

.field private currentPreviewId:Ljava/lang/Object;

.field private currentSurface:Ljava/lang/Object;

.field private device:Landroid/hardware/usb/UsbDevice;

.field private handler:Landroid/os/Handler;

.field private final height:I

.field private final mode:I

.field private quit:Z

.field private uvcCamera:Lcom/serenegiant/usb/UVCCamera;

.field private final width:I

.field private yuv:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/mucang/android/jky/camera/UsbCameraThread$UsbCameraCallback;III)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->callback:Lcn/mucang/android/jky/camera/UsbCameraThread$UsbCameraCallback;

    .line 3
    iput p3, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->width:I

    .line 4
    iput p4, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->height:I

    .line 5
    iput p5, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->mode:I

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jky/camera/UsbCameraThread;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;ZLkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/jky/camera/UsbCameraThread;->openCameraBlock$lambda-0(Lcn/mucang/android/jky/camera/UsbCameraThread;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;ZLkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jky/camera/UsbCameraThread;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraThread;->stopPreviewCamera$lambda-2(Lcn/mucang/android/jky/camera/UsbCameraThread;)V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/jky/camera/UsbCameraThread;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraThread;->release$lambda-3(Lcn/mucang/android/jky/camera/UsbCameraThread;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jky/camera/UsbCameraThread;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jky/camera/UsbCameraThread;->startPreviewCamera$lambda-1(Lcn/mucang/android/jky/camera/UsbCameraThread;Ljava/lang/Object;I)V

    return-void
.end method

.method private final doHandlePreview(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->currentSurface:Ljava/lang/Object;

    const-string v1, "doHandlePreview"

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->uvcCamera:Lcom/serenegiant/usb/UVCCamera;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/serenegiant/usb/UVCCamera;->stopPreview()V

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->currentSurface:Ljava/lang/Object;

    .line 5
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jky/camera/UsbCameraThread;->handlePreview(Ljava/lang/Object;I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->currentSurface:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 7
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jky/camera/UsbCameraThread;->handlePreview(Ljava/lang/Object;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final getThreadHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->quit:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->handler:Landroid/os/Handler;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->quit:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "\u83b7\u53d6handler\u5931\u8d25:quit="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private final handleClose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->cameraView:Lcom/serenegiant/usb/widget/NoViewSurface;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/serenegiant/usb/widget/NoViewSurface;->destroy()V

    :goto_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->cameraView:Lcom/serenegiant/usb/widget/NoViewSurface;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->uvcCamera:Lcom/serenegiant/usb/UVCCamera;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/serenegiant/usb/UVCCamera;->destroy()V

    .line 4
    :goto_1
    iput-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->uvcCamera:Lcom/serenegiant/usb/UVCCamera;

    return-void
.end method

.method private final handleOpen(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jky/camera/UsbCameraThread;->handleClose()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "start open :"

    .line 2
    iget-object v2, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->device:Landroid/hardware/usb/UsbDevice;

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lcom/serenegiant/usb/UVCCamera;

    invoke-direct {v1}, Lcom/serenegiant/usb/UVCCamera;-><init>()V

    .line 4
    invoke-virtual {v1, p1}, Lcom/serenegiant/usb/UVCCamera;->open(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V

    .line 5
    invoke-direct {p0, v1}, Lcn/mucang/android/jky/camera/UsbCameraThread;->setPreviewSize(Lcom/serenegiant/usb/UVCCamera;)V

    .line 6
    iput-object v1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->uvcCamera:Lcom/serenegiant/usb/UVCCamera;

    const-string p1, "open success:"

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->device:Landroid/hardware/usb/UsbDevice;

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jky/camera/UsbCameraThread;->handleRelease()V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->device:Landroid/hardware/usb/UsbDevice;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_3
    return p1
.end method

.method private final handlePreview(Ljava/lang/Object;I)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 1
    iget-object v1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->uvcCamera:Lcom/serenegiant/usb/UVCCamera;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->currentSurface:Ljava/lang/Object;

    if-nez v2, :cond_a

    instance-of v2, p1, Landroid/view/SurfaceHolder;

    if-nez v2, :cond_0

    instance-of v3, p1, Landroid/view/Surface;

    if-nez v3, :cond_0

    instance-of v3, p1, Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_0

    goto :goto_6

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    .line 2
    invoke-virtual {v1, p0, v3}, Lcom/serenegiant/usb/UVCCamera;->setFrameCallback(Lcom/serenegiant/usb/IFrameCallback;I)V

    :goto_0
    if-eqz v2, :cond_3

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->uvcCamera:Lcom/serenegiant/usb/UVCCamera;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Lcom/serenegiant/usb/UVCCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 4
    :cond_3
    :goto_1
    instance-of v1, p1, Landroid/view/Surface;

    if-eqz v1, :cond_5

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->uvcCamera:Lcom/serenegiant/usb/UVCCamera;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p1

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/serenegiant/usb/UVCCamera;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_2

    .line 6
    :cond_5
    iget-object v1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->uvcCamera:Lcom/serenegiant/usb/UVCCamera;

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, p1

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Lcom/serenegiant/usb/UVCCamera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 7
    :goto_2
    iget-object v1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->uvcCamera:Lcom/serenegiant/usb/UVCCamera;

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Lcom/serenegiant/usb/UVCCamera;->startPreview()V

    .line 8
    :goto_3
    iget-object v1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->uvcCamera:Lcom/serenegiant/usb/UVCCamera;

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Lcom/serenegiant/usb/UVCCamera;->updateCameraParams()V

    .line 9
    :goto_4
    iput-object p1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->currentSurface:Ljava/lang/Object;

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->currentPreviewId:Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->device:Landroid/hardware/usb/UsbDevice;

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    :goto_5
    const-string p1, "\u9884\u89c8\u6210\u529f:"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_a
    :goto_6
    iget-object p1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->device:Landroid/hardware/usb/UsbDevice;

    if-nez p1, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    :goto_7
    const-string p1, "handlePreview \u8fd4\u56de : "

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private final handleRelease()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->quit:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->handler:Landroid/os/Handler;

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jky/camera/UsbCameraThread;->handleClose()V

    .line 4
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method private static final openCameraBlock$lambda-0(Lcn/mucang/android/jky/camera/UsbCameraThread;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;ZLkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$ctrlBlock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$success"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$countDownLatch"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jky/camera/UsbCameraThread;->handleOpen(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jky/camera/UsbCameraThread;->startPreviewDefault()V

    :cond_0
    const/4 p0, 0x1

    .line 3
    iput-boolean p0, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 4
    iput-boolean p0, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 5
    :goto_0
    invoke-virtual {p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static final release$lambda-3(Lcn/mucang/android/jky/camera/UsbCameraThread;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jky/camera/UsbCameraThread;->handleRelease()V

    return-void
.end method

.method private final setPreviewSize(Lcom/serenegiant/usb/UVCCamera;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/serenegiant/usb/UVCCamera;->getSupportedSize()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/serenegiant/usb/UVCCamera;->getSupportedSize(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v3, "getSupportedSize(4, camera.supportedSize)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/s;->O0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/serenegiant/usb/UVCCamera;->getSupportedSize()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/serenegiant/usb/UVCCamera;->getSupportedSize(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v5, "getSupportedSize(6, camera.supportedSize)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 5
    check-cast v5, Lcom/serenegiant/usb/Size;

    const-string v6, "null cannot be cast to non-null type com.serenegiant.usb.Size"

    .line 6
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/serenegiant/usb/Size;

    .line 9
    iget v8, v8, Lcom/serenegiant/usb/Size;->width:I

    iget v9, v0, Lcn/mucang/android/jky/camera/UsbCameraThread;->width:I

    if-lt v8, v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_1

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {v1}, Lkotlin/collections/s;->O0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    .line 11
    iget v1, v0, Lcn/mucang/android/jky/camera/UsbCameraThread;->mode:I

    if-lez v1, :cond_4

    const/4 v1, 0x6

    goto :goto_3

    :cond_4
    const/4 v1, 0x4

    .line 12
    :goto_3
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v9, 0x0

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/serenegiant/usb/Size;

    .line 13
    iget v11, v10, Lcom/serenegiant/usb/Size;->height:I

    iget v12, v0, Lcn/mucang/android/jky/camera/UsbCameraThread;->height:I

    if-ne v11, v12, :cond_6

    iget v11, v10, Lcom/serenegiant/usb/Size;->width:I

    iget v12, v0, Lcn/mucang/android/jky/camera/UsbCameraThread;->width:I

    if-ne v11, v12, :cond_6

    iget v10, v10, Lcom/serenegiant/usb/Size;->type:I

    if-ne v10, v1, :cond_6

    const/4 v10, 0x1

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_5

    goto :goto_5

    :cond_7
    move-object v5, v9

    .line 14
    :goto_5
    check-cast v5, Lcom/serenegiant/usb/Size;

    if-nez v5, :cond_c

    .line 15
    iget v1, v0, Lcn/mucang/android/jky/camera/UsbCameraThread;->mode:I

    if-lez v1, :cond_8

    goto :goto_6

    :cond_8
    const/4 v2, 0x6

    .line 16
    :goto_6
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/serenegiant/usb/Size;

    .line 17
    iget v10, v5, Lcom/serenegiant/usb/Size;->height:I

    iget v11, v0, Lcn/mucang/android/jky/camera/UsbCameraThread;->height:I

    if-ne v10, v11, :cond_a

    iget v10, v5, Lcom/serenegiant/usb/Size;->width:I

    iget v11, v0, Lcn/mucang/android/jky/camera/UsbCameraThread;->width:I

    if-ne v10, v11, :cond_a

    iget v5, v5, Lcom/serenegiant/usb/Size;->type:I

    if-ne v5, v2, :cond_a

    const/4 v5, 0x1

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_9

    move-object v9, v3

    .line 18
    :cond_b
    move-object v5, v9

    check-cast v5, Lcom/serenegiant/usb/Size;

    :cond_c
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 19
    sget-object v14, Lcn/mucang/android/jky/camera/UsbCameraThread$setPreviewSize$2;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraThread$setPreviewSize$2;

    const/16 v15, 0x1f

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/s;->m0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-eqz v5, :cond_e

    .line 20
    iget v1, v5, Lcom/serenegiant/usb/Size;->type:I

    if-ne v1, v4, :cond_d

    goto :goto_8

    :cond_d
    const/4 v6, 0x0

    .line 21
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usb \u8bbe\u7f6e\u5bbd\u9ad8\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lcom/serenegiant/usb/Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lcom/serenegiant/usb/Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 22
    iget v1, v5, Lcom/serenegiant/usb/Size;->width:I

    iget v2, v5, Lcom/serenegiant/usb/Size;->height:I

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2, v6}, Lcom/serenegiant/usb/UVCCamera;->setPreviewSize(III)V

    return-void

    .line 23
    :cond_e
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "usb \u672a\u627e\u5230\u5408\u9002\u7684\u5c3a\u5bf8"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final startPreviewCamera$lambda-1(Lcn/mucang/android/jky/camera/UsbCameraThread;Ljava/lang/Object;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jky/camera/UsbCameraThread;->doHandlePreview(Ljava/lang/Object;I)V

    return-void
.end method

.method private final startPreviewDefault()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->cameraView:Lcom/serenegiant/usb/widget/NoViewSurface;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/serenegiant/usb/widget/NoViewSurface;

    iget v1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->width:I

    iget v2, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->height:I

    invoke-direct {v0, v1, v2}, Lcom/serenegiant/usb/widget/NoViewSurface;-><init>(II)V

    iput-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->cameraView:Lcom/serenegiant/usb/widget/NoViewSurface;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->cameraView:Lcom/serenegiant/usb/widget/NoViewSurface;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/serenegiant/usb/widget/NoViewSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const-string v1, "cameraView!!.surface"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jky/camera/UsbCameraThread;->doHandlePreview(Ljava/lang/Object;I)V

    return-void
.end method

.method private static final stopPreviewCamera$lambda-2(Lcn/mucang/android/jky/camera/UsbCameraThread;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jky/camera/UsbCameraThread;->startPreviewDefault()V

    return-void
.end method


# virtual methods
.method public onFrame(Ljava/nio/ByteBuffer;)V
    .locals 2

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->yuv:[B

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 3
    :cond_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->yuv:[B

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->yuv:[B

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->callback:Lcn/mucang/android/jky/camera/UsbCameraThread$UsbCameraCallback;

    iget-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->device:Landroid/hardware/usb/UsbDevice;

    iget-object v1, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->yuv:[B

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {p1, v0, v1}, Lcn/mucang/android/jky/camera/UsbCameraThread$UsbCameraCallback;->onPreviewFrame(Landroid/hardware/usb/UsbDevice;[B)V

    return-void
.end method

.method public final openCameraBlock(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;Landroid/hardware/usb/UsbDevice;Z)Lcn/mucang/android/jky/camera/UsbCameraThread;
    .locals 9

    const-string v0, "ctrlBlock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "device"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p2, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->device:Landroid/hardware/usb/UsbDevice;

    .line 2
    new-instance p2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jky/camera/UsbCameraThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v8, Lcn/mucang/android/jky/camera/s;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jky/camera/s;-><init>(Lcn/mucang/android/jky/camera/UsbCameraThread;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;ZLkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const-wide/16 v1, 0x5

    .line 5
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 6
    iget-boolean p1, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final release()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jky/camera/UsbCameraThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcn/mucang/android/jky/camera/u;

    invoke-direct {v1, p0}, Lcn/mucang/android/jky/camera/u;-><init>(Lcn/mucang/android/jky/camera/UsbCameraThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final startPreviewCamera(Ljava/lang/Object;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jky/camera/UsbCameraThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcn/mucang/android/jky/camera/v;

    invoke-direct {v1, p0, p1, p2}, Lcn/mucang/android/jky/camera/v;-><init>(Lcn/mucang/android/jky/camera/UsbCameraThread;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final stopPreviewCamera(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraThread;->currentPreviewId:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-gtz p1, :cond_2

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jky/camera/UsbCameraThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcn/mucang/android/jky/camera/t;

    invoke-direct {v0, p0}, Lcn/mucang/android/jky/camera/t;-><init>(Lcn/mucang/android/jky/camera/UsbCameraThread;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
