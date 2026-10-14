.class Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity$a;
.super Lorg/opencv/android/BaseLoaderCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity$a;->a:Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;

    invoke-direct {p0, p2}, Lorg/opencv/android/BaseLoaderCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onManagerConnected(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-super {p0, p1}, Lorg/opencv/android/BaseLoaderCallback;->onManagerConnected(I)V

    goto :goto_0

    :cond_0
    const-string p1, "Debug"

    const-string v0, "OpenCV loaded successfully"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/o;->f()V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity$a;->a:Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->g(Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;Z)Z

    :goto_0
    return-void
.end method
