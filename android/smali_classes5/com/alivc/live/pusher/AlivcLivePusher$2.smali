.class Lcom/alivc/live/pusher/AlivcLivePusher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/AlivcLivePusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/live/pusher/AlivcLivePusher;


# direct methods
.method constructor <init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$2;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p2, "AlivcLivePusher"

    const-string p3, "LiveActivity-->Preview surface changed"

    invoke-static {p2, p3}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher$2;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {p2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$300(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/view/SurfaceView;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher$2;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object p3, Lcom/alivc/live/pusher/SurfaceStatus;->CHANGED:Lcom/alivc/live/pusher/SurfaceStatus;

    invoke-static {p2, p3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$402(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/SurfaceStatus;)Lcom/alivc/live/pusher/SurfaceStatus;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object p2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iget-object p3, p0, Lcom/alivc/live/pusher/AlivcLivePusher$2;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {p3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getPreviewOrientation()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/alivc/live/pusher/LivePusherJNI;->notifySurfaceChange(Landroid/view/Surface;I)V

    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "AlivcLivePusher"

    const-string v0, "LiveActivity-->Preview surface created"

    invoke-static {p1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$2;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$300(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/view/SurfaceView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$2;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$400(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/SurfaceStatus;

    move-result-object p1

    sget-object v0, Lcom/alivc/live/pusher/SurfaceStatus;->UNINITED:Lcom/alivc/live/pusher/SurfaceStatus;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$2;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v0, Lcom/alivc/live/pusher/SurfaceStatus;->CREATED:Lcom/alivc/live/pusher/SurfaceStatus;

    invoke-static {p1, v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$402(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/SurfaceStatus;)Lcom/alivc/live/pusher/SurfaceStatus;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$2;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$400(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/SurfaceStatus;

    move-result-object p1

    sget-object v0, Lcom/alivc/live/pusher/SurfaceStatus;->DESTROYED:Lcom/alivc/live/pusher/SurfaceStatus;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$2;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v0, Lcom/alivc/live/pusher/SurfaceStatus;->RECREATED:Lcom/alivc/live/pusher/SurfaceStatus;

    invoke-static {p1, v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$402(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/SurfaceStatus;)Lcom/alivc/live/pusher/SurfaceStatus;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object p1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$2;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$300(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alivc/live/pusher/LivePusherJNI;->notifySurfaceReCreate(Landroid/view/Surface;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "AlivcLivePusher"

    const-string v0, "LiveActivity-->Preview surface destroyed"

    invoke-static {p1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$2;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$300(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/view/SurfaceView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alivc/live/pusher/LivePusherJNI;->notifySurfaceDestroy()V

    :cond_1
    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$2;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v0, Lcom/alivc/live/pusher/SurfaceStatus;->DESTROYED:Lcom/alivc/live/pusher/SurfaceStatus;

    invoke-static {p1, v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$402(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/SurfaceStatus;)Lcom/alivc/live/pusher/SurfaceStatus;

    return-void
.end method
