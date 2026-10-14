.class public final synthetic Lcn/mucang/android/jky/camera/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/hardware/usb/UsbDevice;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/usb/UsbDevice;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jky/camera/n;->a:Landroid/hardware/usb/UsbDevice;

    iput-boolean p2, p0, Lcn/mucang/android/jky/camera/n;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jky/camera/n;->a:Landroid/hardware/usb/UsbDevice;

    iget-boolean v1, p0, Lcn/mucang/android/jky/camera/n;->b:Z

    invoke-static {v0, v1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->n(Landroid/hardware/usb/UsbDevice;Z)V

    return-void
.end method
