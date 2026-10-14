.class Lcn/mucang/android/jky/usbcamera/detectside/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/e/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jky/usbcamera/detectside/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jky/usbcamera/detectside/u;


# direct methods
.method constructor <init>(Lcn/mucang/android/jky/usbcamera/detectside/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u$b;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u$b;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    invoke-static {v0}, Lcn/mucang/android/jky/usbcamera/detectside/u;->b(Lcn/mucang/android/jky/usbcamera/detectside/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u$b;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jky/usbcamera/detectside/u;->c(Lcn/mucang/android/jky/usbcamera/detectside/u;Z)Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u$b;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    invoke-static {v0}, Lcn/mucang/android/jky/usbcamera/detectside/u;->d(Lcn/mucang/android/jky/usbcamera/detectside/u;)Lg/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/e/a/a;->d()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/u$b;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is out"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jky/usbcamera/detectside/u;->e(Lcn/mucang/android/jky/usbcamera/detectside/u;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u$b;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    const-string v0, "disconnecting"

    invoke-static {p1, v0}, Lcn/mucang/android/jky/usbcamera/detectside/u;->e(Lcn/mucang/android/jky/usbcamera/detectside/u;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/hardware/usb/UsbDevice;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u$b;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    const-string p2, "fail to connect,please check resolution params"

    invoke-static {p1, p2}, Lcn/mucang/android/jky/usbcamera/detectside/u;->e(Lcn/mucang/android/jky/usbcamera/detectside/u;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u$b;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/mucang/android/jky/usbcamera/detectside/u;->f(Lcn/mucang/android/jky/usbcamera/detectside/u;Z)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u$b;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcn/mucang/android/jky/usbcamera/detectside/u;->f(Lcn/mucang/android/jky/usbcamera/detectside/u;Z)Z

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u$b;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    const-string p2, "connecting"

    invoke-static {p1, p2}, Lcn/mucang/android/jky/usbcamera/detectside/u;->e(Lcn/mucang/android/jky/usbcamera/detectside/u;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u$b;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    invoke-static {p1}, Lcn/mucang/android/jky/usbcamera/detectside/u;->b(Lcn/mucang/android/jky/usbcamera/detectside/u;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u$b;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/mucang/android/jky/usbcamera/detectside/u;->c(Lcn/mucang/android/jky/usbcamera/detectside/u;Z)Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u$b;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    invoke-static {p1}, Lcn/mucang/android/jky/usbcamera/detectside/u;->d(Lcn/mucang/android/jky/usbcamera/detectside/u;)Lg/e/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/u$b;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    invoke-static {p1}, Lcn/mucang/android/jky/usbcamera/detectside/u;->d(Lcn/mucang/android/jky/usbcamera/detectside/u;)Lg/e/a/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/e/a/a;->p(I)V

    :cond_0
    return-void
.end method
