.class public final Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jky/camera/UsbCameraManager;->startPreviewCamera$lambda-20(Lcn/mucang/android/jky/camera/CameraIntent;Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "cn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1",
        "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;",
        "onConnect",
        "",
        "onPreviewFrame",
        "data",
        "",
        "usbcamera_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $intent:Lcn/mucang/android/jky/camera/CameraIntent;

.field final synthetic $previewId:I

.field final synthetic $removeTask:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $surface:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jky/camera/CameraIntent;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lcn/mucang/android/jky/camera/CameraIntent;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;->$removeTask:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;->$intent:Lcn/mucang/android/jky/camera/CameraIntent;

    iput-object p3, p0, Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;->$surface:Ljava/lang/Object;

    iput p4, p0, Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;->$previewId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 3

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener$DefaultImpls;->onConnect(Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;->$removeTask:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    iget-object v1, p0, Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;->$intent:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {v0, v1, p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->unregisterCameraListener(Lcn/mucang/android/jky/camera/CameraIntent;Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;->$intent:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-static {v0, v1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->access$getCameraThread(Lcn/mucang/android/jky/camera/UsbCameraManager;Lcn/mucang/android/jky/camera/CameraIntent;)Lcn/mucang/android/jky/camera/UsbCameraThread;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;->$surface:Ljava/lang/Object;

    iget v2, p0, Lcn/mucang/android/jky/camera/UsbCameraManager$startPreviewCamera$1$listener$1;->$previewId:I

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jky/camera/UsbCameraThread;->startPreviewCamera(Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method public onDetached()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener$DefaultImpls;->onDetached(Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener$DefaultImpls;->onDisconnect(Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;)V

    return-void
.end method

.method public onPreviewFrame([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
