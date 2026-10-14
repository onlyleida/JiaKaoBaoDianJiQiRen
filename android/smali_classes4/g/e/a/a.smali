.class public Lg/e/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/e/a/a$b;
    }
.end annotation


# static fields
.field private static i:Lg/e/a/a;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lcom/serenegiant/usb/USBMonitor;

.field private e:Lcom/serenegiant/usb/common/UVCCameraHandler;

.field private f:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

.field private g:Landroid/app/Activity;

.field private h:Lcom/serenegiant/usb/widget/CameraViewInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x500

    .line 2
    iput v0, p0, Lg/e/a/a;->a:I

    const/16 v0, 0x2d0

    .line 3
    iput v0, p0, Lg/e/a/a;->b:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lg/e/a/a;->c:I

    return-void
.end method

.method static synthetic a(Lg/e/a/a;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a;->f:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    return-object p1
.end method

.method static synthetic b(Lg/e/a/a;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/e/a/a;->m(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V

    return-void
.end method

.method static synthetic c(Lg/e/a/a;)Lcom/serenegiant/usb/widget/CameraViewInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/e/a/a;->h:Lcom/serenegiant/usb/widget/CameraViewInterface;

    return-object p0
.end method

.method public static declared-synchronized f()Lg/e/a/a;
    .locals 2

    const-class v0, Lg/e/a/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lg/e/a/a;->i:Lg/e/a/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lg/e/a/a;

    invoke-direct {v1}, Lg/e/a/a;-><init>()V

    sput-object v1, Lg/e/a/a;->i:Lg/e/a/a;

    .line 3
    :cond_0
    sget-object v1, Lg/e/a/a;->i:Lg/e/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private m(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a;->e:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->open(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a;->e:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->close()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 9

    .line 1
    iget-object v0, p0, Lg/e/a/a;->h:Lcom/serenegiant/usb/widget/CameraViewInterface;

    const-string v1, "CameraViewInterface cannot be null!"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lg/e/a/a;->e:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lg/e/a/a;->e:Lcom/serenegiant/usb/common/UVCCameraHandler;

    .line 5
    :cond_0
    iget-object v0, p0, Lg/e/a/a;->h:Lcom/serenegiant/usb/widget/CameraViewInterface;

    iget v1, p0, Lg/e/a/a;->a:I

    int-to-float v1, v1

    iget v2, p0, Lg/e/a/a;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lcom/serenegiant/widget/IAspectRatioView;->setAspectRatio(D)V

    .line 6
    iget-object v3, p0, Lg/e/a/a;->g:Landroid/app/Activity;

    iget-object v4, p0, Lg/e/a/a;->h:Lcom/serenegiant/usb/widget/CameraViewInterface;

    const/4 v5, 0x2

    iget v6, p0, Lg/e/a/a;->a:I

    iget v7, p0, Lg/e/a/a;->b:I

    iget v8, p0, Lg/e/a/a;->c:I

    invoke-static/range {v3 .. v8}, Lcom/serenegiant/usb/common/UVCCameraHandler;->createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIII)Lcom/serenegiant/usb/common/UVCCameraHandler;

    move-result-object v0

    iput-object v0, p0, Lg/e/a/a;->e:Lcom/serenegiant/usb/common/UVCCameraHandler;

    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a;->b:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a;->a:I

    return v0
.end method

.method public i()Lcom/serenegiant/usb/USBMonitor;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a;->d:Lcom/serenegiant/usb/USBMonitor;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/e/a/a;->g:Landroid/app/Activity;

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/mucang/android/jky/usbcamera/R$xml;->device_filter:I

    invoke-static {v0, v1}, Lcom/serenegiant/usb/DeviceFilter;->getDeviceFilters(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lg/e/a/a;->d:Lcom/serenegiant/usb/USBMonitor;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1, v0}, Lcom/serenegiant/usb/USBMonitor;->getDeviceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public k(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;Lg/e/a/a$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lg/e/a/a;->g:Landroid/app/Activity;

    .line 2
    iput-object p2, p0, Lg/e/a/a;->h:Lcom/serenegiant/usb/widget/CameraViewInterface;

    .line 3
    new-instance p2, Lcom/serenegiant/usb/USBMonitor;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lg/e/a/a$a;

    invoke-direct {v0, p0, p3}, Lg/e/a/a$a;-><init>(Lg/e/a/a;Lg/e/a/a$b;)V

    invoke-direct {p2, p1, v0}, Lcom/serenegiant/usb/USBMonitor;-><init>(Landroid/content/Context;Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;)V

    iput-object p2, p0, Lg/e/a/a;->d:Lcom/serenegiant/usb/USBMonitor;

    .line 4
    invoke-virtual {p0}, Lg/e/a/a;->e()V

    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a;->e:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->isOpened()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a;->d:Lcom/serenegiant/usb/USBMonitor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/serenegiant/usb/USBMonitor;->register()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a;->e:Lcom/serenegiant/usb/common/UVCCameraHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->release()V

    .line 3
    iput-object v1, p0, Lg/e/a/a;->e:Lcom/serenegiant/usb/common/UVCCameraHandler;

    .line 4
    :cond_0
    iget-object v0, p0, Lg/e/a/a;->d:Lcom/serenegiant/usb/USBMonitor;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/serenegiant/usb/USBMonitor;->destroy()V

    .line 6
    iput-object v1, p0, Lg/e/a/a;->d:Lcom/serenegiant/usb/USBMonitor;

    :cond_1
    return-void
.end method

.method public p(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lg/e/a/a;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index illegal,should be < devList.size()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lg/e/a/a;->d:Lcom/serenegiant/usb/USBMonitor;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lg/e/a/a;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/USBMonitor;->requestPermission(Landroid/hardware/usb/UsbDevice;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a;->d:Lcom/serenegiant/usb/USBMonitor;

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lg/e/a/a;->c:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultFrameFormat should be call before initMonitor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a;->e:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->setOnPreViewResultListener(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;)V

    :cond_0
    return-void
.end method

.method public s(Lcom/serenegiant/usb/widget/CameraViewInterface;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/serenegiant/usb/widget/CameraViewInterface;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lg/e/a/a;->e:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/common/UVCCameraHandler;->startPreview(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a;->e:Lcom/serenegiant/usb/common/UVCCameraHandler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->stopPreview()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a;->d:Lcom/serenegiant/usb/USBMonitor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/serenegiant/usb/USBMonitor;->unregister()V

    :cond_0
    return-void
.end method
