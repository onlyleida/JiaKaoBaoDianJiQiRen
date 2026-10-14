.class public final Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "cn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter$startPreview$2",
        "Landroid/view/TextureView$SurfaceTextureListener;",
        "onSurfaceTextureAvailable",
        "",
        "surface",
        "Landroid/graphics/SurfaceTexture;",
        "width",
        "",
        "height",
        "onSurfaceTextureDestroyed",
        "",
        "onSurfaceTextureSizeChanged",
        "onSurfaceTextureUpdated",
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

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter$b;->a:Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string p2, "surface"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    iget-object p3, p0, Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter$b;->a:Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;

    invoke-static {p3}, Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;->f(Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;)Lcn/mucang/android/jky/camera/CameraIntent;

    move-result-object p3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter$b;->a:Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;->g(Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;)I

    move-result v0

    invoke-virtual {p2, p3, p1, v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->startPreviewCamera(Lcn/mucang/android/jky/camera/CameraIntent;Ljava/lang/Object;I)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p2, "surface"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
