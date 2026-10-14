.class public final synthetic Lcn/mucang/android/jky/camera/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jky/camera/CameraIntent;

.field public final synthetic b:Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jky/camera/a;->a:Lcn/mucang/android/jky/camera/CameraIntent;

    iput-object p2, p0, Lcn/mucang/android/jky/camera/a;->b:Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jky/camera/a;->a:Lcn/mucang/android/jky/camera/CameraIntent;

    iget-object v1, p0, Lcn/mucang/android/jky/camera/a;->b:Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;

    invoke-static {v0, v1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->a(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;)V

    return-void
.end method
