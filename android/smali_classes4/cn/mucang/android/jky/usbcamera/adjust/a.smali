.class public final synthetic Lcn/mucang/android/jky/usbcamera/adjust/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/adjust/a;->a:Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;

    return-void
.end method


# virtual methods
.method public final onPreviewResult([B)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/adjust/a;->a:Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jky/usbcamera/adjust/AdjustSideActivity;->w([B)V

    return-void
.end method
