.class Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity$a;->a:Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity$a;->a:Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity;

    iget-object v0, v0, Lcn/mucang/android/jky/usbcamera/detectside/USBCameraNoViewActivity;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Distance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/t;->b()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x1f4

    .line 2
    invoke-static {p0, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method
