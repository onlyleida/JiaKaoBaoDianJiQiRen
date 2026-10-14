.class public final Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u001c\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "cn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter$startPreview$1",
        "Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;",
        "onSurfaceChanged",
        "",
        "view",
        "Lcom/serenegiant/usb/widget/CameraViewInterface;",
        "surface",
        "Landroid/view/Surface;",
        "width",
        "",
        "height",
        "onSurfaceCreated",
        "onSurfaceDestroy",
        "sundial_release"
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
.field final synthetic a:Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter$a;->a:Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;)V
    .locals 2

    .line 1
    sget-object p1, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter$a;->a:Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;->f(Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;)Lcn/mucang/android/jky/camera/CameraIntent;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter$a;->a:Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;->g(Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;)I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->startPreviewCamera(Lcn/mucang/android/jky/camera/CameraIntent;Ljava/lang/Object;I)V

    return-void
.end method

.method public onSurfaceDestroy(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;)V
    .locals 0

    return-void
.end method
