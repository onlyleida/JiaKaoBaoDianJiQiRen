.class public final synthetic Lcn/mucang/android/jky/usbcamera/detectside/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/m;->a:Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;

    iput-object p2, p0, Lcn/mucang/android/jky/usbcamera/detectside/m;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/m;->a:Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;

    iget-object v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraActivity;->o(Ljava/lang/String;)V

    return-void
.end method
