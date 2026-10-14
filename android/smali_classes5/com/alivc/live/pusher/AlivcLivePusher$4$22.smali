.class Lcom/alivc/live/pusher/AlivcLivePusher$4$22;
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

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;I)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$4$22;->this$1:Lcom/alivc/live/pusher/AlivcLivePusher$4;

    iput p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher$4$22;->val$what:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$4$22;->this$1:Lcom/alivc/live/pusher/AlivcLivePusher$4;

    iget-object v0, v0, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2100(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$4$22;->this$1:Lcom/alivc/live/pusher/AlivcLivePusher$4;

    iget-object v1, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2000(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/Map;

    move-result-object v2

    iget v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher$4$22;->val$what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alivc/live/pusher/AlivcLivePushError;

    invoke-interface {v0, v1, v2}, Lcom/alivc/live/pusher/AlivcLivePushErrorListener;->onSDKError(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushError;)V

    return-void
.end method
