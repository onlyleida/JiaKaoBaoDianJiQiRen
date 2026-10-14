.class public Lcn/mucang/android/jky/usbcamera/detectside/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/usb/CameraDialog$CameraDialogParent;
.implements Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;


# instance fields
.field private a:Lg/e/a/a;

.field private b:Lcom/serenegiant/usb/widget/NoViewSurface;

.field private c:Z

.field private d:Z

.field private volatile e:Z

.field private final f:Lorg/opencv/android/BaseLoaderCallback;

.field private final g:Lg/e/a/a$b;

.field private h:Lorg/opencv/core/Mat;

.field private i:I

.field private final j:Lcn/mucang/android/jky/usbcamera/detectside/s;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->e:Z

    .line 3
    new-instance v1, Lcn/mucang/android/jky/usbcamera/detectside/u$a;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcn/mucang/android/jky/usbcamera/detectside/u$a;-><init>(Lcn/mucang/android/jky/usbcamera/detectside/u;Landroid/content/Context;)V

    iput-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->f:Lorg/opencv/android/BaseLoaderCallback;

    .line 4
    new-instance v1, Lcn/mucang/android/jky/usbcamera/detectside/u$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jky/usbcamera/detectside/u$b;-><init>(Lcn/mucang/android/jky/usbcamera/detectside/u;)V

    iput-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->g:Lg/e/a/a$b;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->h:Lorg/opencv/core/Mat;

    .line 6
    iput v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->i:I

    .line 7
    new-instance v0, Lcn/mucang/android/jky/usbcamera/detectside/s;

    invoke-direct {v0}, Lcn/mucang/android/jky/usbcamera/detectside/s;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->j:Lcn/mucang/android/jky/usbcamera/detectside/s;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jky/usbcamera/detectside/u;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->e:Z

    return p1
.end method

.method static synthetic b(Lcn/mucang/android/jky/usbcamera/detectside/u;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->c:Z

    return p0
.end method

.method static synthetic c(Lcn/mucang/android/jky/usbcamera/detectside/u;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->c:Z

    return p1
.end method

.method static synthetic d(Lcn/mucang/android/jky/usbcamera/detectside/u;)Lg/e/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/android/jky/usbcamera/detectside/u;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jky/usbcamera/detectside/u;->r(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcn/mucang/android/jky/usbcamera/detectside/u;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->d:Z

    return p1
.end method

.method private i()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/opencv/android/OpenCVLoader;->initDebug()Z

    move-result v0

    const-string v1, "Debug"

    if-nez v0, :cond_0

    const-string v0, "Internal OpenCV library not found. Using OpenCV Manager for initialization"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->f:Lorg/opencv/android/BaseLoaderCallback;

    const-string v2, "4.2.0"

    invoke-static {v2, v0, v1}, Lorg/opencv/android/OpenCVLoader;->initAsync(Ljava/lang/String;Landroid/content/Context;Lorg/opencv/android/LoaderCallbackInterface;)Z

    goto :goto_0

    :cond_0
    const-string v0, "OpenCV library found inside package. Using it!"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->f:Lorg/opencv/android/BaseLoaderCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/opencv/android/BaseLoaderCallback;->onManagerConnected(I)V

    :goto_0
    return-void
.end method

.method private synthetic j(Landroid/graphics/Bitmap;Ljava/util/List;J)V
    .locals 2

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcn/mucang/android/jky/usbcamera/detectside/u;->q(Ljava/util/List;J)V

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->j:Lcn/mucang/android/jky/usbcamera/detectside/s;

    invoke-virtual {p1, p2, p3, p4}, Lcn/mucang/android/jky/usbcamera/detectside/s;->d(Ljava/util/List;J)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->j:Lcn/mucang/android/jky/usbcamera/detectside/s;

    invoke-virtual {p1}, Lcn/mucang/android/jky/usbcamera/detectside/s;->a()V

    .line 4
    :goto_0
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

.method private synthetic l([B)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreviewResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n , width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    .line 2
    invoke-virtual {v1}, Lg/e/a/a;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n , height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    .line 3
    invoke-virtual {v1}, Lg/e/a/a;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n , height*width*1.5 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    .line 4
    invoke-virtual {v1}, Lg/e/a/a;->h()I

    move-result v1

    iget-object v2, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

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
    iget v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->i:I

    .line 7
    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->e:Z

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->h:Lorg/opencv/core/Mat;

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    invoke-virtual {v0}, Lg/e/a/a;->g()I

    move-result v0

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    invoke-virtual {v1}, Lg/e/a/a;->h()I

    move-result v1

    .line 13
    new-instance v2, Lorg/opencv/core/Mat;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v0, v3

    sget v3, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v2, v0, v1, v3}, Lorg/opencv/core/Mat;-><init>(III)V

    iput-object v2, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->h:Lorg/opencv/core/Mat;

    .line 14
    :cond_1
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/o;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->h:Lorg/opencv/core/Mat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lorg/opencv/core/Mat;->put(II[B)I

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->h:Lorg/opencv/core/Mat;

    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    invoke-virtual {v0}, Lg/e/a/a;->g()I

    move-result v0

    iget-object v2, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    invoke-virtual {v2}, Lg/e/a/a;->h()I

    move-result v2

    invoke-virtual {p1, v1, v0, v1, v2}, Lorg/opencv/core/Mat;->submat(IIII)Lorg/opencv/core/Mat;

    move-result-object p1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v1}, Lcn/mucang/android/jky/usbcamera/detectside/o;->d(Lorg/opencv/core/Mat;JZ)V

    :cond_2
    return-void
.end method

.method private n()V
    .locals 4

    .line 1
    invoke-static {}, Lg/e/a/a;->f()Lg/e/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    .line 2
    new-instance v1, Lcom/serenegiant/usb/widget/NoViewSurface;

    invoke-virtual {v0}, Lg/e/a/a;->h()I

    move-result v0

    iget-object v2, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    invoke-virtual {v2}, Lg/e/a/a;->g()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/serenegiant/usb/widget/NoViewSurface;-><init>(II)V

    iput-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->b:Lcom/serenegiant/usb/widget/NoViewSurface;

    .line 3
    invoke-virtual {v1, p0}, Lcom/serenegiant/usb/widget/NoViewSurface;->setCallback(Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg/e/a/a;->q(I)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->b:Lcom/serenegiant/usb/widget/NoViewSurface;

    iget-object v3, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->g:Lg/e/a/a$b;

    invoke-virtual {v0, v1, v2, v3}, Lg/e/a/a;->k(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;Lg/e/a/a$b;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/o;->f()V

    .line 7
    new-instance v0, Lcn/mucang/android/jky/usbcamera/detectside/k;

    invoke-direct {v0, p0}, Lcn/mucang/android/jky/usbcamera/detectside/k;-><init>(Lcn/mucang/android/jky/usbcamera/detectside/u;)V

    invoke-static {v0}, Lcn/mucang/android/jky/usbcamera/detectside/o;->g(Lcn/mucang/android/jky/usbcamera/detectside/o$c;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    new-instance v1, Lcn/mucang/android/jky/usbcamera/detectside/j;

    invoke-direct {v1, p0}, Lcn/mucang/android/jky/usbcamera/detectside/j;-><init>(Lcn/mucang/android/jky/usbcamera/detectside/u;)V

    invoke-virtual {v0, v1}, Lg/e/a/a;->r(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;)V

    return-void
.end method

.method private q(Ljava/util/List;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jky/usbcamera/detectside/q;",
            ">;J)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jky/usbcamera/detectside/q;

    const-string v0, "Radius="

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Lcn/mucang/android/jky/usbcamera/detectside/q;->h:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Lcn/mucang/android/jky/usbcamera/detectside/p;->f(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "cm,Theta="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Lcn/mucang/android/jky/usbcamera/detectside/q;->g:F

    float-to-double v0, v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \u524d\u8ddd\u79bb="

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Lcn/mucang/android/jky/usbcamera/detectside/q;->r:F

    float-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "cm,\u540e\u8ddd\u79bb="

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Lcn/mucang/android/jky/usbcamera/detectside/q;->s:F

    float-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\u524d\u8f6e="

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Lcn/mucang/android/jky/usbcamera/detectside/q;->p:F

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\u540e\u8f6e="

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcn/mucang/android/jky/usbcamera/detectside/q;->q:F

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "cm\n<br/>"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TAG"

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private r(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->b:Lcom/serenegiant/usb/widget/NoViewSurface;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/serenegiant/usb/widget/NoViewSurface;->destroy()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lg/e/a/a;->u()V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    invoke-virtual {v0}, Lg/e/a/a;->o()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->h:Lorg/opencv/core/Mat;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 8
    iput-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->h:Lorg/opencv/core/Mat;

    .line 9
    :cond_2
    invoke-static {v1}, Lcn/mucang/android/jky/usbcamera/detectside/o;->g(Lcn/mucang/android/jky/usbcamera/detectside/o$c;)V

    return-void
.end method

.method public getUSBMonitor()Lcom/serenegiant/usb/USBMonitor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    invoke-virtual {v0}, Lg/e/a/a;->i()Lcom/serenegiant/usb/USBMonitor;

    move-result-object v0

    return-object v0
.end method

.method public h()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->j:Lcn/mucang/android/jky/usbcamera/detectside/s;

    invoke-virtual {v0}, Lcn/mucang/android/jky/usbcamera/detectside/s;->b()F

    move-result v0

    return v0
.end method

.method public synthetic k(Landroid/graphics/Bitmap;Ljava/util/List;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/jky/usbcamera/detectside/u;->j(Landroid/graphics/Bitmap;Ljava/util/List;J)V

    return-void
.end method

.method public synthetic m([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jky/usbcamera/detectside/u;->l([B)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lg/e/a/a;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    :goto_0
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/o;->h()V

    return-void
.end method

.method public onDialogResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "\u53d6\u6d88\u64cd\u4f5c"

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jky/usbcamera/detectside/u;->r(Ljava/lang/String;)V

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
    iget-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->d:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    invoke-virtual {p1}, Lg/e/a/a;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    iget-object p2, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->b:Lcom/serenegiant/usb/widget/NoViewSurface;

    invoke-virtual {p1, p2}, Lg/e/a/a;->s(Lcom/serenegiant/usb/widget/CameraViewInterface;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->d:Z

    :cond_0
    return-void
.end method

.method public onSurfaceDestroy(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    invoke-virtual {p1}, Lg/e/a/a;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    invoke-virtual {p1}, Lg/e/a/a;->t()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->d:Z

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u;->a:Lg/e/a/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lg/e/a/a;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    :goto_0
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/o;->f()V

    return-void
.end method

.method public s()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jky/usbcamera/detectside/u;->i()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jky/usbcamera/detectside/u;->n()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jky/usbcamera/detectside/u;->p()V

    return-void
.end method
