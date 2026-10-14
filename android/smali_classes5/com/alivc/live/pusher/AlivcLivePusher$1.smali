.class Lcom/alivc/live/pusher/AlivcLivePusher$1;
.super Landroid/os/Handler;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$1;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string p1, "AlivcLivePusher"

    const-string v0, "AlivcLivePusher reconnect success"

    invoke-static {p1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$1;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$002(Lcom/alivc/live/pusher/AlivcLivePusher;Z)Z

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$1;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$100(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$1;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-instance v0, Lcom/alivc/live/pusher/AlivcLivePusher$1$1;

    invoke-direct {v0, p0}, Lcom/alivc/live/pusher/AlivcLivePusher$1$1;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$1;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
