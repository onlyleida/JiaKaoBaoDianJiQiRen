.class Lcom/alivc/live/pusher/AlivcLivePusher$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alivc/live/pusher/AlivcLivePusher;->startScheduleExecutor()V
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

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$6;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$6;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2200(Lcom/alivc/live/pusher/AlivcLivePusher;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2202(Lcom/alivc/live/pusher/AlivcLivePusher;I)I

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$6;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2200(Lcom/alivc/live/pusher/AlivcLivePusher;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$6;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2300(Lcom/alivc/live/pusher/AlivcLivePusher;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$6;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2400(Lcom/alivc/live/pusher/AlivcLivePusher;)I

    move-result v0

    const/16 v2, 0x3c

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$6;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$100(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$6;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$100(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$6;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-interface {v0, v1}, Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;->onPushURLAuthenticationOverdue(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$6;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-virtual {v1, v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->reconnectPushAsync(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$6;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2400(Lcom/alivc/live/pusher/AlivcLivePusher;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2402(Lcom/alivc/live/pusher/AlivcLivePusher;I)I

    :cond_1
    :goto_0
    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherHeartBeatEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherHeartBeatEvent$Args;-><init>()V

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$6;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2500(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alivc/live/pusher/logreport/PusherHeartBeatEvent$Args;->mediaInfo:Ljava/lang/String;

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$6;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v1

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherHeartBeatEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherHeartBeatEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherHeartBeatEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherHeartBeatEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$6;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2202(Lcom/alivc/live/pusher/AlivcLivePusher;I)I

    :cond_2
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$6;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1200(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$6;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-virtual {v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->getLivePushStatsInfo()Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alivc/live/pusher/AlivcLivePushInfoListener;->onPushStatistics(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;)V

    return-void
.end method
