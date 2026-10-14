.class public Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;
.super Lf/a/a/e/a/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/usb/CameraDialog$CameraDialogParent;
.implements Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field private c:Lg/e/a/a;

.field private d:Lcom/serenegiant/usb/widget/CameraViewInterface;

.field private e:Z

.field private f:Z

.field private final g:Lg/e/a/a$b;

.field private final h:Lorg/opencv/android/BaseLoaderCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/a/a;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity$a;-><init>(Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->g:Lg/e/a/a$b;

    .line 3
    new-instance v0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity$b;

    invoke-direct {v0, p0, p0}, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity$b;-><init>(Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->h:Lorg/opencv/android/BaseLoaderCallback;

    return-void
.end method

.method static synthetic g(Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->e:Z

    return p0
.end method

.method static synthetic h(Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->e:Z

    return p1
.end method

.method static synthetic i(Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;)Lg/e/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    return-object p0
.end method

.method static synthetic j(Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->x(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->f:Z

    return p1
.end method

.method private l()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/opencv/android/OpenCVLoader;->initDebug()Z

    move-result v0

    const-string v1, "Debug"

    if-nez v0, :cond_0

    const-string v0, "Internal OpenCV library not found. Using OpenCV Manager for initialization"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->h:Lorg/opencv/android/BaseLoaderCallback;

    const-string v1, "4.2.0"

    invoke-static {v1, p0, v0}, Lorg/opencv/android/OpenCVLoader;->initAsync(Ljava/lang/String;Landroid/content/Context;Lorg/opencv/android/LoaderCallbackInterface;)Z

    goto :goto_0

    :cond_0
    const-string v0, "OpenCV library found inside package. Using it!"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->h:Lorg/opencv/android/BaseLoaderCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/opencv/android/BaseLoaderCallback;->onManagerConnected(I)V

    :goto_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jky/usbcamera/R$id;->backIv:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jky/usbcamera/adjust/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jky/usbcamera/adjust/b;-><init>(Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    sget v0, Lcn/mucang/android/jky/usbcamera/R$id;->titleTv:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u9760\u8fb9\u505c\u8f66\u8bbe\u7f6e"

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic n(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic p()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic r(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic t(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lg/e/a/a;->o()V

    .line 4
    :cond_0
    new-instance p1, Lcn/mucang/android/jky/usbcamera/adjust/c;

    invoke-direct {p1, p0}, Lcn/mucang/android/jky/usbcamera/adjust/c;-><init>(Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic v([B)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreviewResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n , width = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    .line 2
    invoke-virtual {p1}, Lg/e/a/a;->h()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n , height = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    .line 3
    invoke-virtual {p1}, Lg/e/a/a;->g()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n , height*width*1.5 = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    .line 4
    invoke-virtual {p1}, Lg/e/a/a;->h()I

    move-result p1

    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    invoke-virtual {v1}, Lg/e/a/a;->g()I

    move-result v1

    mul-int p1, p1, v1

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Debug"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v0

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x400

    div-int/lit16 v1, v1, 0x400

    .line 7
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    long-to-int v0, v2

    div-int/lit16 v0, v0, 0x400

    div-int/lit16 v0, v0, 0x400

    int-to-long v2, v0

    .line 8
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v4

    long-to-int v0, v4

    div-int/lit16 v0, v0, 0x400

    div-int/lit16 v0, v0, 0x400

    int-to-long v4, v0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6700\u5927="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "M,\u603b\u7528="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "M,\u5269\u4f59="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "M\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v0, Lcn/mucang/android/jky/usbcamera/adjust/e;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jky/usbcamera/adjust/e;-><init>(Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private x(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8fb9\u7ebf\u6821\u51c6\u9875\u9762"

    return-object v0
.end method

.method public getUSBMonitor()Lcom/serenegiant/usb/USBMonitor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    invoke-virtual {v0}, Lg/e/a/a;->i()Lcom/serenegiant/usb/USBMonitor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->n(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lf/a/a/e/a/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/jky/usbcamera/R$layout;->activity_usbcamera_adjust:I

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->m()V

    .line 4
    sget p1, Lcn/mucang/android/jky/usbcamera/R$id;->camera_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->a:Landroid/view/View;

    .line 5
    sget p1, Lcn/mucang/android/jky/usbcamera/R$id;->memory:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->b:Landroid/widget/TextView;

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    :goto_0
    sget p1, Lcn/mucang/android/jky/usbcamera/R$id;->toTest:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 10
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    new-instance v0, Lcn/mucang/android/jky/usbcamera/adjust/d;

    invoke-direct {v0, p0}, Lcn/mucang/android/jky/usbcamera/adjust/d;-><init>(Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->a:Landroid/view/View;

    check-cast p1, Lcom/serenegiant/usb/widget/CameraViewInterface;

    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->d:Lcom/serenegiant/usb/widget/CameraViewInterface;

    .line 15
    invoke-interface {p1, p0}, Lcom/serenegiant/usb/widget/CameraViewInterface;->setCallback(Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;)V

    .line 16
    invoke-static {}, Lg/e/a/a;->f()Lg/e/a/a;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lg/e/a/a;->q(I)V

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->d:Lcom/serenegiant/usb/widget/CameraViewInterface;

    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->g:Lg/e/a/a$b;

    invoke-virtual {p1, p0, v0, v1}, Lg/e/a/a;->k(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;Lg/e/a/a$b;)V

    .line 19
    sget p1, Lcn/mucang/android/jky/usbcamera/R$id;->video_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 21
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    invoke-virtual {v2}, Lg/e/a/a;->g()I

    move-result v2

    mul-int v1, v1, v2

    iget-object v2, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    invoke-virtual {v2}, Lg/e/a/a;->h()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 24
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 25
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    new-instance v0, Lcn/mucang/android/jky/usbcamera/adjust/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jky/usbcamera/adjust/a;-><init>(Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;)V

    invoke-virtual {p1, v0}, Lg/e/a/a;->r(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;)V

    .line 28
    new-instance p1, Lcn/mucang/android/jky/usbcamera/adjust/g;

    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    invoke-virtual {v0}, Lg/e/a/a;->h()I

    move-result v0

    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    invoke-virtual {v1}, Lg/e/a/a;->g()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcn/mucang/android/jky/usbcamera/adjust/g;-><init>(Landroid/app/Activity;II)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lg/e/a/a;->o()V

    :cond_0
    return-void
.end method

.method public onDialogResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "\u53d6\u6d88\u64cd\u4f5c"

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->x(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->l()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onStart()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lg/e/a/a;->n()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onStop()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lg/e/a/a;->u()V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    invoke-virtual {p1}, Lg/e/a/a;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    iget-object p2, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->d:Lcom/serenegiant/usb/widget/CameraViewInterface;

    invoke-virtual {p1, p2}, Lg/e/a/a;->s(Lcom/serenegiant/usb/widget/CameraViewInterface;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->f:Z

    :cond_0
    return-void
.end method

.method public onSurfaceDestroy(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    invoke-virtual {p1}, Lg/e/a/a;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->c:Lg/e/a/a;

    invoke-virtual {p1}, Lg/e/a/a;->t()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->f:Z

    :cond_0
    return-void
.end method

.method public synthetic q()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->p()V

    return-void
.end method

.method public synthetic s(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->r(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic u(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->t(Landroid/view/View;)V

    return-void
.end method

.method public synthetic w([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->v([B)V

    return-void
.end method
