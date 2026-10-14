.class Lcom/alivc/live/pusher/AlivcLivePusher$4$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alivc/live/pusher/AlivcLivePusher$4;->onNotify(ILjava/lang/String;IIIIIJLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alivc/live/pusher/AlivcLivePusher$4;


# direct methods
.method constructor <init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$4$8;->this$1:Lcom/alivc/live/pusher/AlivcLivePusher$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$4$8;->this$1:Lcom/alivc/live/pusher/AlivcLivePusher$4;

    iget-object v0, v0, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1200(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$4$8;->this$1:Lcom/alivc/live/pusher/AlivcLivePusher$4;

    iget-object v1, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-interface {v0, v1}, Lcom/alivc/live/pusher/AlivcLivePushInfoListener;->onPreviewStarted(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    return-void
.end method
