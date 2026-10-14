.class public Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;
.super Landroidx/appcompat/app/d;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/usb/CameraDialog$CameraDialogParent;
.implements Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageView;

.field private e:Lg/e/a/a;

.field private f:Lcom/serenegiant/usb/widget/CameraViewInterface;

.field private g:Z

.field private h:Z

.field private volatile i:Z

.field private j:Lcn/mucang/android/jky/usbcamera/detectside/s;

.field private final k:Lorg/opencv/android/BaseLoaderCallback;

.field private final l:Lg/e/a/a$b;

.field private m:Lorg/opencv/core/Mat;

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->i:Z

    .line 3
    new-instance v1, Lcn/mucang/android/jky/usbcamera/detectside/s;

    invoke-direct {v1}, Lcn/mucang/android/jky/usbcamera/detectside/s;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->j:Lcn/mucang/android/jky/usbcamera/detectside/s;

    .line 4
    new-instance v1, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity$a;

    invoke-direct {v1, p0, p0}, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity$a;-><init>(Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->k:Lorg/opencv/android/BaseLoaderCallback;

    .line 5
    new-instance v1, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity$b;-><init>(Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;)V

    iput-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->l:Lg/e/a/a$b;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->m:Lorg/opencv/core/Mat;

    .line 7
    iput v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->n:I

    return-void
.end method

.method static synthetic g(Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->i:Z

    return p1
.end method

.method static synthetic h(Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->g:Z

    return p0
.end method

.method static synthetic i(Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->g:Z

    return p1
.end method

.method static synthetic j(Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;)Lg/e/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    return-object p0
.end method

.method static synthetic k(Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->t(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->h:Z

    return p1
.end method

.method private m()V
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
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->k:Lorg/opencv/android/BaseLoaderCallback;

    const-string v1, "4.2.0"

    invoke-static {v1, p0, v0}, Lorg/opencv/android/OpenCVLoader;->initAsync(Ljava/lang/String;Landroid/content/Context;Lorg/opencv/android/LoaderCallbackInterface;)Z

    goto :goto_0

    :cond_0
    const-string v0, "OpenCV library found inside package. Using it!"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->k:Lorg/opencv/android/BaseLoaderCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/opencv/android/BaseLoaderCallback;->onManagerConnected(I)V

    :goto_0
    return-void
.end method

.method private synthetic n(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic p(Landroid/graphics/Bitmap;Ljava/util/List;J)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->j:Lcn/mucang/android/jky/usbcamera/detectside/s;

    invoke-virtual {p1, p2, p3, p4}, Lcn/mucang/android/jky/usbcamera/detectside/s;->d(Ljava/util/List;J)V

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->b:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->j:Lcn/mucang/android/jky/usbcamera/detectside/s;

    invoke-virtual {v0}, Lcn/mucang/android/jky/usbcamera/detectside/s;->b()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "CM"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6267\u884c\u4e86:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p3

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Debug"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic r([B)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreviewResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n , width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    .line 2
    invoke-virtual {v1}, Lg/e/a/a;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n , height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    .line 3
    invoke-virtual {v1}, Lg/e/a/a;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n , height*width*1.5 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    .line 4
    invoke-virtual {v1}, Lg/e/a/a;->h()I

    move-result v1

    iget-object v2, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    invoke-virtual {v2}, Lg/e/a/a;->g()I

    move-result v2

    mul-int v1, v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Debug"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    long-to-int v2, v1

    div-int/lit16 v2, v2, 0x400

    div-int/lit16 v2, v2, 0x400

    .line 7
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v3

    long-to-int v1, v3

    div-int/lit16 v1, v1, 0x400

    div-int/lit16 v1, v1, 0x400

    int-to-long v3, v1

    .line 8
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v5

    long-to-int v1, v5

    div-int/lit16 v1, v1, 0x400

    div-int/lit16 v1, v1, 0x400

    int-to-long v5, v1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6700\u5927="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "M,\u603b\u7528="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "M,\u5269\u4f59="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "M\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Lcn/mucang/android/jky/usbcamera/detectside/m;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/jky/usbcamera/detectside/m;-><init>(Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 11
    iget v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->n:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->n:I

    .line 12
    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_0

    .line 13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->i:Z

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->m:Lorg/opencv/core/Mat;

    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    invoke-virtual {v0}, Lg/e/a/a;->g()I

    move-result v0

    .line 17
    iget-object v2, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    invoke-virtual {v2}, Lg/e/a/a;->h()I

    move-result v2

    .line 18
    new-instance v3, Lorg/opencv/core/Mat;

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v0, v4

    sget v4, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v3, v0, v2, v4}, Lorg/opencv/core/Mat;-><init>(III)V

    iput-object v3, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->m:Lorg/opencv/core/Mat;

    .line 19
    :cond_1
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/o;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->m:Lorg/opencv/core/Mat;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p1}, Lorg/opencv/core/Mat;->put(II[B)I

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->m:Lorg/opencv/core/Mat;

    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    invoke-virtual {v0}, Lg/e/a/a;->g()I

    move-result v0

    iget-object v3, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    invoke-virtual {v3}, Lg/e/a/a;->h()I

    move-result v3

    invoke-virtual {p1, v2, v0, v2, v3}, Lorg/opencv/core/Mat;->submat(IIII)Lorg/opencv/core/Mat;

    move-result-object p1

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v1}, Lcn/mucang/android/jky/usbcamera/detectside/o;->d(Lorg/opencv/core/Mat;JZ)V

    :cond_2
    return-void
.end method

.method private t(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public getUSBMonitor()Lcom/serenegiant/usb/USBMonitor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    invoke-virtual {v0}, Lg/e/a/a;->i()Lcom/serenegiant/usb/USBMonitor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->n(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/jky/usbcamera/R$layout;->activity_usbcamera:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->setContentView(I)V

    .line 3
    sget p1, Lcn/mucang/android/jky/usbcamera/R$id;->camera_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->a:Landroid/view/View;

    .line 4
    sget p1, Lcn/mucang/android/jky/usbcamera/R$id;->detect_info:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->b:Landroid/widget/TextView;

    .line 5
    sget p1, Lcn/mucang/android/jky/usbcamera/R$id;->memory:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->c:Landroid/widget/TextView;

    .line 6
    sget p1, Lcn/mucang/android/jky/usbcamera/R$id;->detect_result:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->d:Landroid/widget/ImageView;

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->a:Landroid/view/View;

    check-cast p1, Lcom/serenegiant/usb/widget/CameraViewInterface;

    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->f:Lcom/serenegiant/usb/widget/CameraViewInterface;

    .line 8
    invoke-interface {p1, p0}, Lcom/serenegiant/usb/widget/CameraViewInterface;->setCallback(Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;)V

    .line 9
    invoke-static {}, Lg/e/a/a;->f()Lg/e/a/a;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lg/e/a/a;->q(I)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->f:Lcom/serenegiant/usb/widget/CameraViewInterface;

    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->l:Lg/e/a/a$b;

    invoke-virtual {p1, p0, v0, v1}, Lg/e/a/a;->k(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;Lg/e/a/a$b;)V

    .line 12
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/o;->f()V

    .line 13
    new-instance p1, Lcn/mucang/android/jky/usbcamera/detectside/l;

    invoke-direct {p1, p0}, Lcn/mucang/android/jky/usbcamera/detectside/l;-><init>(Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;)V

    invoke-static {p1}, Lcn/mucang/android/jky/usbcamera/detectside/o;->g(Lcn/mucang/android/jky/usbcamera/detectside/o$c;)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    new-instance v0, Lcn/mucang/android/jky/usbcamera/detectside/n;

    invoke-direct {v0, p0}, Lcn/mucang/android/jky/usbcamera/detectside/n;-><init>(Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;)V

    invoke-virtual {p1, v0}, Lg/e/a/a;->r(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onDestroy()V

    .line 2
    invoke-static {}, Lg/e/a/b/a;->a()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lg/e/a/a;->o()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->m:Lorg/opencv/core/Mat;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->m:Lorg/opencv/core/Mat;

    :cond_1
    return-void
.end method

.method public onDialogResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "\u53d6\u6d88\u64cd\u4f5c"

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->t(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onResume()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->m()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onStart()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lg/e/a/a;->n()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onStop()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lg/e/a/a;->u()V

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/o;->h()V

    return-void
.end method

.method public onSurfaceChanged(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->h:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    invoke-virtual {p1}, Lg/e/a/a;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    iget-object p2, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->f:Lcom/serenegiant/usb/widget/CameraViewInterface;

    invoke-virtual {p1, p2}, Lg/e/a/a;->s(Lcom/serenegiant/usb/widget/CameraViewInterface;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->h:Z

    :cond_0
    return-void
.end method

.method public onSurfaceDestroy(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    invoke-virtual {p1}, Lg/e/a/a;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->e:Lg/e/a/a;

    invoke-virtual {p1}, Lg/e/a/a;->t()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->h:Z

    :cond_0
    return-void
.end method

.method public synthetic q(Landroid/graphics/Bitmap;Ljava/util/List;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->p(Landroid/graphics/Bitmap;Ljava/util/List;J)V

    return-void
.end method

.method public synthetic s([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->r([B)V

    return-void
.end method
