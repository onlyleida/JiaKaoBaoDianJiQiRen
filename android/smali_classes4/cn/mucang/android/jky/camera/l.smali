.class public final synthetic Lcn/mucang/android/jky/camera/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/hardware/usb/UsbDevice;

.field public final synthetic b:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jky/camera/l;->a:Landroid/hardware/usb/UsbDevice;

    iput-object p2, p0, Lcn/mucang/android/jky/camera/l;->b:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jky/camera/l;->a:Landroid/hardware/usb/UsbDevice;

    iget-object v1, p0, Lcn/mucang/android/jky/camera/l;->b:Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    invoke-static {v0, v1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->l(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V

    return-void
.end method
