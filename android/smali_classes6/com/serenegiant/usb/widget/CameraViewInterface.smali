.class public interface abstract Lcom/serenegiant/usb/widget/CameraViewInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/widget/IAspectRatioView;
.implements Lcom/serenegiant/usb/widget/CaptureStillImageInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;
    }
.end annotation


# virtual methods
.method public abstract getSurface()Landroid/view/Surface;
.end method

.method public abstract getSurfaceTexture()Landroid/graphics/SurfaceTexture;
.end method

.method public abstract hasSurface()Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setCallback(Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;)V
.end method
