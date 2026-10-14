.class public Lcom/serenegiant/usb/widget/NoViewSurface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/usb/widget/CameraViewInterface;


# instance fields
.field private callback:Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;

.field private final height:I

.field private isDestroyed:Z

.field private final listener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private preSurface:Landroid/graphics/SurfaceTexture;

.field private ratio:D

.field private surface:Landroid/view/Surface;

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->isDestroyed:Z

    .line 3
    new-instance v0, Lcom/serenegiant/usb/widget/NoViewSurface$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/usb/widget/NoViewSurface$1;-><init>(Lcom/serenegiant/usb/widget/NoViewSurface;)V

    iput-object v0, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->listener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 4
    iput p1, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->width:I

    .line 5
    iput p2, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->height:I

    .line 6
    new-instance v1, Landroid/graphics/SurfaceTexture;

    const v2, 0x8d65

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->preSurface:Landroid/graphics/SurfaceTexture;

    .line 7
    invoke-virtual {v1, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 8
    iget-object p1, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->preSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/usb/widget/NoViewSurface;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->isDestroyed:Z

    return p0
.end method


# virtual methods
.method public captureStillImage(II)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->isDestroyed:Z

    .line 2
    iget-object v0, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->callback:Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/serenegiant/usb/widget/NoViewSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;->onSurfaceDestroy(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->preSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->preSurface:Landroid/graphics/SurfaceTexture;

    .line 6
    iput-object v0, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->surface:Landroid/view/Surface;

    return-void
.end method

.method public getAspectRatio()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->ratio:D

    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->surface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->preSurface:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->surface:Landroid/view/Surface;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->preSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public hasSurface()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setAspectRatio(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->ratio:D

    return-void
.end method

.method public setAspectRatio(II)V
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    int-to-double p1, p2

    div-double/2addr v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/serenegiant/usb/widget/NoViewSurface;->setAspectRatio(D)V

    return-void
.end method

.method public setCallback(Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/serenegiant/usb/widget/NoViewSurface;->callback:Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/usb/widget/NoViewSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;->onSurfaceCreated(Lcom/serenegiant/usb/widget/CameraViewInterface;Landroid/view/Surface;)V

    return-void
.end method
