.class public final synthetic Lcn/mucang/android/jky/usbcamera/detectside/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jky/usbcamera/detectside/u;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jky/usbcamera/detectside/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/j;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    return-void
.end method


# virtual methods
.method public final onPreviewResult([B)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/j;->a:Lcn/mucang/android/jky/usbcamera/detectside/u;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jky/usbcamera/detectside/u;->m([B)V

    return-void
.end method
