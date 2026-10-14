.class Lcom/serenegiant/usb/widget/NoViewSurface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/widget/NoViewSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/usb/widget/NoViewSurface;


# direct methods
.method constructor <init>(Lcom/serenegiant/usb/widget/NoViewSurface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/usb/widget/NoViewSurface$1;->this$0:Lcom/serenegiant/usb/widget/NoViewSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/serenegiant/usb/widget/NoViewSurface$1;->this$0:Lcom/serenegiant/usb/widget/NoViewSurface;

    invoke-static {p1}, Lcom/serenegiant/usb/widget/NoViewSurface;->access$000(Lcom/serenegiant/usb/widget/NoViewSurface;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method
