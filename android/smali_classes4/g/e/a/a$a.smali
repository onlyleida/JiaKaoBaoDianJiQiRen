.class Lg/e/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/e/a/a;->k(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;Lg/e/a/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/e/a/a$b;

.field final synthetic b:Lg/e/a/a;


# direct methods
.method constructor <init>(Lg/e/a/a;Lg/e/a/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a$a;->b:Lg/e/a/a;

    iput-object p2, p0, Lg/e/a/a$a;->a:Lg/e/a/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a$a;->a:Lg/e/a/a$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lg/e/a/a$b;->d(Landroid/hardware/usb/UsbDevice;)V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    return-void
.end method

.method public onConnect(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;Z)V
    .locals 0

    .line 1
    iget-object p3, p0, Lg/e/a/a$a;->b:Lg/e/a/a;

    invoke-static {p3, p2}, Lg/e/a/a;->a(Lg/e/a/a;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    .line 2
    iget-object p3, p0, Lg/e/a/a$a;->b:Lg/e/a/a;

    invoke-static {p3, p2}, Lg/e/a/a;->b(Lg/e/a/a;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V

    .line 3
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lg/e/a/a$a$a;

    invoke-direct {p3, p0}, Lg/e/a/a$a$a;-><init>(Lg/e/a/a$a;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 5
    iget-object p2, p0, Lg/e/a/a$a;->a:Lg/e/a/a$b;

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    .line 6
    invoke-interface {p2, p1, p3}, Lg/e/a/a$b;->c(Landroid/hardware/usb/UsbDevice;Z)V

    :cond_0
    return-void
.end method

.method public onDettach(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a$a;->a:Lg/e/a/a$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lg/e/a/a$b;->a(Landroid/hardware/usb/UsbDevice;)V

    :cond_0
    return-void
.end method

.method public onDisconnect(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lg/e/a/a$a;->a:Lg/e/a/a$b;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lg/e/a/a$b;->b(Landroid/hardware/usb/UsbDevice;)V

    :cond_0
    return-void
.end method
