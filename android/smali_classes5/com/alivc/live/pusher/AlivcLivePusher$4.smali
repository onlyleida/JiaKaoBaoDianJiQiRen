.class Lcom/alivc/live/pusher/AlivcLivePusher$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alivc/live/pusher/LivePusherJNI$LivePusherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alivc/live/pusher/AlivcLivePusher;->init(Landroid/content/Context;Lcom/alivc/live/pusher/AlivcLivePushConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/alivc/live/pusher/AlivcLivePusher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(ILjava/lang/String;IIIIIJLjava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p8

    move-object/from16 v9, p11

    sget-object v10, Lcom/alivc/live/pusher/AlivcLivePushError;->ALIVC_PUSHER_ERROR_SDK_LIVE_PUSH_NETWORK_TOO_POOR:Lcom/alivc/live/pusher/AlivcLivePushError;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/AlivcLivePushError;->getCode()I

    move-result v10

    const/4 v11, 0x0

    const-string v12, "AlivcLivePusher"

    if-ne v0, v10, :cond_1

    const-string v0, "AlivcLivePusher Callback Network Too Poor"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$100(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$1;

    invoke-direct {v2, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$1;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v0

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherNetworkPoorEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherNetworkPoorEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v11}, Lcom/alivc/live/pusher/logreport/PusherNetworkPoorEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherNetworkPoorEvent$Args;)Ljava/util/Map;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v2, v3, v4}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_d

    :cond_1
    sget-object v10, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_PUSH_NETWORK_RECOVERY:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v10

    if-ne v0, v10, :cond_3

    const-string v0, "AlivcLivePusher Callback Network Recovery"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$100(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$2;

    invoke-direct {v2, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$2;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v0

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherNetworkRecoveryEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherNetworkRecoveryEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v11}, Lcom/alivc/live/pusher/logreport/PusherNetworkRecoveryEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherNetworkRecoveryEvent$Args;)Ljava/util/Map;

    move-result-object v4

    goto :goto_0

    :cond_3
    sget-object v10, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_PUSH_RECONNECT_START:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v10

    const/4 v13, 0x1

    if-ne v0, v10, :cond_5

    const-string v0, "AlivcLivePusher Callback Reconnect Start"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$000(Lcom/alivc/live/pusher/AlivcLivePusher;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0, v13}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$002(Lcom/alivc/live/pusher/AlivcLivePusher;Z)Z

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$100(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$3;

    invoke-direct {v2, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$3;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherReconnectStartEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherReconnectStartEvent$Args;-><init>()V

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v2

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherReconnectStartEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v4, Lcom/alivc/live/pusher/logreport/PusherReconnectStartEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherReconnectStartEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherReconnectStartEvent$Args;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_d

    :cond_5
    sget-object v10, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_PUSH_RECONNECT_SUCCESS:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v10

    const/16 v14, 0x12

    if-ne v0, v10, :cond_8

    const-string v0, "AlivcLivePusher Callback Reconnect Success"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$900(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$900(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$900(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v14, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1000(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v0

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->PAUSED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v2, :cond_7

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1002(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushStats;)Lcom/alivc/live/pusher/AlivcLivePushStats;

    :cond_7
    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v0

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherReconnectSuccessEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherReconnectSuccessEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v11}, Lcom/alivc/live/pusher/logreport/PusherReconnectSuccessEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherReconnectSuccessEvent$Args;)Ljava/util/Map;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    sget-object v10, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_PUSH_CONNECTION_LOST:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v10

    if-ne v0, v10, :cond_c

    const-string v0, "AlivcLivePusher Callback Connection Lost"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$100(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$4;

    invoke-direct {v2, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$4;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_9
    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherConnectionLostEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherConnectionLostEvent$Args;-><init>()V

    if-nez v3, :cond_a

    const-string v2, "rtmp_"

    :goto_2
    iput-object v2, v0, Lcom/alivc/live/pusher/logreport/PusherConnectionLostEvent$Args;->reason:Ljava/lang/String;

    goto :goto_3

    :cond_a
    if-ne v3, v13, :cond_b

    const-string v2, "artc_"

    goto :goto_2

    :cond_b
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/alivc/live/pusher/logreport/PusherConnectionLostEvent$Args;->reason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alivc/live/pusher/logreport/PusherConnectionLostEvent$Args;->reason:Ljava/lang/String;

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v2

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherConnectionLostEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v4, Lcom/alivc/live/pusher/logreport/PusherConnectionLostEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherConnectionLostEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherConnectionLostEvent$Args;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    sget-object v10, Lcom/alivc/live/pusher/AlivcLivePushError;->ALIVC_PUSHER_ERROR_SDK_PUSH_RECONNECT_FAIL:Lcom/alivc/live/pusher/AlivcLivePushError;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/AlivcLivePushError;->getCode()I

    move-result v15

    if-ne v0, v15, :cond_f

    const-string v3, "AlivcLivePusher Callback Reconnect Fail"

    invoke-static {v12, v3}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$002(Lcom/alivc/live/pusher/AlivcLivePusher;Z)Z

    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$900(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$900(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$100(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Lcom/alivc/live/pusher/AlivcLivePusher$4$5;

    invoke-direct {v4, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$5;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_e
    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v4, Lcom/alivc/live/pusher/AlivcLivePushStats;->ERROR:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-static {v3, v4}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1002(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushStats;)Lcom/alivc/live/pusher/AlivcLivePushStats;

    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3, v10}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1102(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushError;)Lcom/alivc/live/pusher/AlivcLivePushError;

    new-instance v3, Lcom/alivc/live/pusher/logreport/PusherReconnectFailedEvent$Args;

    invoke-direct {v3}, Lcom/alivc/live/pusher/logreport/PusherReconnectFailedEvent$Args;-><init>()V

    iput v0, v3, Lcom/alivc/live/pusher/logreport/PusherReconnectFailedEvent$Args;->errCode:I

    iput-object v2, v3, Lcom/alivc/live/pusher/logreport/PusherReconnectFailedEvent$Args;->errMsg:Ljava/lang/String;

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v0

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherReconnectFailedEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v4, Lcom/alivc/live/pusher/logreport/PusherReconnectFailedEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/alivc/live/pusher/logreport/PusherReconnectFailedEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherReconnectFailedEvent$Args;)Ljava/util/Map;

    move-result-object v3

    :goto_4
    invoke-virtual {v0, v2, v4, v3}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_d

    :cond_f
    sget-object v10, Lcom/alivc/live/pusher/AlivcLivePushError;->ALIVC_PUSHER_ERROR_SDK_PUSH_SEND_DATA_TIMEOUT:Lcom/alivc/live/pusher/AlivcLivePushError;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/AlivcLivePushError;->getCode()I

    move-result v10

    if-ne v0, v10, :cond_11

    const-string v0, "AlivcLivePusher Callback Send Data Timeout"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$100(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$6;

    invoke-direct {v2, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$6;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v0

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherSendDataTimeoutEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherSendDataTimeoutEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v11}, Lcom/alivc/live/pusher/logreport/PusherSendDataTimeoutEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherSendDataTimeoutEvent$Args;)Ljava/util/Map;

    move-result-object v4

    goto/16 :goto_0

    :cond_11
    sget-object v10, Lcom/alivc/live/pusher/AlivcLivePushError;->ALIVC_PUSHER_ERROR_SDK_PUSH_CONNECT:Lcom/alivc/live/pusher/AlivcLivePushError;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/AlivcLivePushError;->getCode()I

    move-result v10

    if-eq v0, v10, :cond_50

    sget-object v10, Lcom/alivc/live/pusher/AlivcLivePushError;->ALIVC_LIVE_ERROR_SYSTEM_RTMP_OOM:Lcom/alivc/live/pusher/AlivcLivePushError;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/AlivcLivePushError;->getCode()I

    move-result v10

    if-eq v0, v10, :cond_50

    sget-object v10, Lcom/alivc/live/pusher/AlivcLivePushError;->ALIVC_PUSHER_ERROR_SDK_PUSH_SETUPURL:Lcom/alivc/live/pusher/AlivcLivePushError;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/AlivcLivePushError;->getCode()I

    move-result v10

    if-eq v0, v10, :cond_50

    sget-object v10, Lcom/alivc/live/pusher/AlivcLivePushError;->ALIVC_PUSHER_ERROR_SDK_PUSH_CONNECT_STREAM:Lcom/alivc/live/pusher/AlivcLivePushError;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/AlivcLivePushError;->getCode()I

    move-result v10

    if-eq v0, v10, :cond_50

    sget-object v10, Lcom/alivc/live/pusher/AlivcLivePushError;->ALIVC_PUSHER_ERROR_SDK_PUSH_START_PUSH_TIMEOUT:Lcom/alivc/live/pusher/AlivcLivePushError;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/AlivcLivePushError;->getCode()I

    move-result v10

    if-ne v0, v10, :cond_12

    goto/16 :goto_c

    :cond_12
    sget-object v10, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_INIT_SUCCESS:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v10

    if-ne v0, v10, :cond_13

    goto/16 :goto_d

    :cond_13
    sget-object v10, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PREVIEW_STARTED:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v10

    if-ne v0, v10, :cond_15

    const-string v0, "AlivcLivePusher Callback Preview Started"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1200(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$8;

    invoke-direct {v2, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$8;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_14
    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1002(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushStats;)Lcom/alivc/live/pusher/AlivcLivePushStats;

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1300(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    goto/16 :goto_d

    :cond_15
    sget-object v10, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PREVIEW_STOPED:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v10

    if-ne v0, v10, :cond_17

    const-string v0, "AlivcLivePusher Callback Preview Stoped"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1200(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$9;

    invoke-direct {v2, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$9;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_16
    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->INIT:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1002(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushStats;)Lcom/alivc/live/pusher/AlivcLivePushStats;

    goto/16 :goto_d

    :cond_17
    sget-object v10, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_PUSH_STARTED:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v10

    if-ne v0, v10, :cond_19

    const-string v0, "AlivcLivePusher Callback Push Started"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1002(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushStats;)Lcom/alivc/live/pusher/AlivcLivePushStats;

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1200(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$10;

    invoke-direct {v2, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$10;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_18
    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherStartPushSuccessEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherStartPushSuccessEvent$Args;-><init>()V

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1400()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushSuccessEvent$Args;->url:Ljava/lang/String;

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v2

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherStartPushSuccessEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v4, Lcom/alivc/live/pusher/logreport/PusherStartPushSuccessEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherStartPushSuccessEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherStartPushSuccessEvent$Args;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_1

    :cond_19
    sget-object v10, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_PUSH_STOPED:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v10

    if-ne v0, v10, :cond_1b

    const-string v0, "AlivcLivePusher Callback Push Stoped"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1200(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$11;

    invoke-direct {v2, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$11;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1a
    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherStopPushSuccessEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherStopPushSuccessEvent$Args;-><init>()V

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1400()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alivc/live/pusher/logreport/PusherStopPushSuccessEvent$Args;->url:Ljava/lang/String;

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v2

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherStopPushSuccessEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v4, Lcom/alivc/live/pusher/logreport/PusherStopPushSuccessEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherStopPushSuccessEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherStopPushSuccessEvent$Args;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_1

    :cond_1b
    sget-object v10, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_PUSH_CRASH:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v10

    if-ne v0, v10, :cond_1c

    const-string v0, "found SDK crashed!"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v0

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherSDKCrashEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherSDKCrashEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {}, Lcom/alivc/live/pusher/logreport/PusherSDKCrashEvent;->getArgsStr()Ljava/util/Map;

    move-result-object v4

    goto/16 :goto_0

    :cond_1c
    sget-object v10, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_GENERAL_MONITOR:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v10}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v10

    if-ne v0, v10, :cond_22

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->event:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    long-to-int v2, v7

    if-eqz v2, :cond_20

    if-eq v2, v13, :cond_1f

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1d

    goto :goto_5

    :cond_1d
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->biz:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    goto :goto_5

    :cond_1e
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->error:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    :cond_1f
    :goto_5
    move-object v2, v0

    goto :goto_6

    :cond_20
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->action:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    goto :goto_5

    :goto_6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid json object: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v0

    move-object/from16 v4, p10

    goto/16 :goto_4

    :cond_22
    sget-object v9, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_PUSH_DELAY_INFO:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v9}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v9

    if-ne v0, v9, :cond_23

    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherDelayInfoEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherDelayInfoEvent$Args;-><init>()V

    iput v3, v0, Lcom/alivc/live/pusher/logreport/PusherDelayInfoEvent$Args;->totalDelay:I

    iput v4, v0, Lcom/alivc/live/pusher/logreport/PusherDelayInfoEvent$Args;->captureDelay:I

    iput v5, v0, Lcom/alivc/live/pusher/logreport/PusherDelayInfoEvent$Args;->encoderDelay:I

    iput v6, v0, Lcom/alivc/live/pusher/logreport/PusherDelayInfoEvent$Args;->sendDelay:I

    const-string v2, "AlivcLivePusher push delay"

    invoke-static {v12, v2}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v2

    sget-object v4, Lcom/alivc/live/pusher/logreport/PusherDelayInfoEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v5, Lcom/alivc/live/pusher/logreport/PusherDelayInfoEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherDelayInfoEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherDelayInfoEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v4, v5, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "gdelay"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 p1, v2

    move-object/from16 p2, v0

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    invoke-static/range {p1 .. p6}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1500(Lcom/alivc/live/pusher/AlivcLivePusher;Ljava/lang/String;IIZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_d

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d

    :cond_23
    sget-object v9, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PUSH_PAUSED:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v9}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v9

    if-ne v0, v9, :cond_25

    const-string v0, "AlivcLivePusher Callback Push Paused"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1200(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$12;

    invoke-direct {v2, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$12;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_24
    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v0

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherOnPauseEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherOnPauseEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v11}, Lcom/alivc/live/pusher/logreport/PusherOnPauseEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherOnPauseEvent$Args;)Ljava/util/Map;

    move-result-object v4

    goto/16 :goto_0

    :cond_25
    sget-object v9, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PUSH_RESUMED:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v9}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v9

    if-ne v0, v9, :cond_28

    const-string v0, "AlivcLivePusher Callback Push Resumed"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->isPushing()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    goto :goto_9

    :cond_26
    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    :goto_9
    invoke-static {v0, v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1002(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushStats;)Lcom/alivc/live/pusher/AlivcLivePushStats;

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1200(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$13;

    invoke-direct {v2, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$13;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_27
    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v0

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherOnResumeEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherOnResumeEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v11}, Lcom/alivc/live/pusher/logreport/PusherOnResumeEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherOnResumeEvent$Args;)Ljava/util/Map;

    move-result-object v4

    goto/16 :goto_0

    :cond_28
    sget-object v9, Lcom/alivc/live/pusher/AlivcLivePushError;->ALIVC_FRAMEWORK_RENDER_FIRST_FRAME_PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushError;

    invoke-virtual {v9}, Lcom/alivc/live/pusher/AlivcLivePushError;->getCode()I

    move-result v9

    if-ne v0, v9, :cond_29

    const-string v0, "AlivcLivePusher Callback Preview First Frame"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1200(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$14;

    invoke-direct {v2, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$14;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    :goto_a
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_d

    :cond_29
    sget-object v9, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_PUSH_RESTARTED:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v9}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v9

    if-ne v0, v9, :cond_2b

    const-string v0, "AlivcLivePusher Callback Push Restarted"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1002(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushStats;)Lcom/alivc/live/pusher/AlivcLivePushStats;

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1200(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$15;

    invoke-direct {v2, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$15;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2a
    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v0

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherOnRestartEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherOnRestartEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v11}, Lcom/alivc/live/pusher/logreport/PusherOnRestartEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherOnRestartEvent$Args;)Ljava/util/Map;

    move-result-object v4

    goto/16 :goto_0

    :cond_2b
    sget-object v9, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_PUSH_DROP_FRAME:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v9}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v9

    if-ne v0, v9, :cond_2c

    const-string v0, "AlivcLivePusher Callback Drop Frame"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherDropFrameEvent$PusherDropFrameArgs;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherDropFrameEvent$PusherDropFrameArgs;-><init>()V

    iput v3, v0, Lcom/alivc/live/pusher/logreport/PusherDropFrameEvent$PusherDropFrameArgs;->vpiubbd:I

    iput v4, v0, Lcom/alivc/live/pusher/logreport/PusherDropFrameEvent$PusherDropFrameArgs;->vpiubad:I

    iput v5, v0, Lcom/alivc/live/pusher/logreport/PusherDropFrameEvent$PusherDropFrameArgs;->apiubbd:I

    iput v6, v0, Lcom/alivc/live/pusher/logreport/PusherDropFrameEvent$PusherDropFrameArgs;->apiubad:I

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v2

    sget-object v5, Lcom/alivc/live/pusher/logreport/PusherDropFrameEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v6, Lcom/alivc/live/pusher/logreport/PusherDropFrameEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherDropFrameEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherDropFrameEvent$PusherDropFrameArgs;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v5, v6, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1200(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$16;

    invoke-direct {v2, v1, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePusher$4$16;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;II)V

    goto :goto_a

    :cond_2c
    sget-object v5, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_ADJUST_BITRATE:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_2e

    const-string v0, "AlivcLivePusher Callback Adjust Bitrate"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherAdjustBitrateEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherAdjustBitrateEvent$Args;-><init>()V

    div-int/lit16 v2, v3, 0x3e8

    iput v2, v0, Lcom/alivc/live/pusher/logreport/PusherAdjustBitrateEvent$Args;->oeb:I

    div-int/lit16 v2, v4, 0x3e8

    iput v2, v0, Lcom/alivc/live/pusher/logreport/PusherAdjustBitrateEvent$Args;->neb:I

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1600(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2d

    const-string v5, "mVideoEncodeBitrate"

    invoke-static {v2, v5}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v5

    const-string v6, "mAudioEncodeBitrate"

    invoke-static {v2, v6}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alivc/live/pusher/logreport/PusherAdjustBitrateEvent$Args;->ceb:I

    const-string v5, "mAudioUploadBitrate"

    invoke-static {v2, v5}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v5

    const-string v6, "mVideoUploadBitrate"

    invoke-static {v2, v6}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v5, v2

    iput v5, v0, Lcom/alivc/live/pusher/logreport/PusherAdjustBitrateEvent$Args;->cub:I

    :cond_2d
    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v2

    sget-object v5, Lcom/alivc/live/pusher/logreport/PusherAdjustBitrateEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v6, Lcom/alivc/live/pusher/logreport/PusherAdjustBitrateEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherAdjustBitrateEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherAdjustBitrateEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v5, v6, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1200(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$17;

    invoke-direct {v2, v1, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePusher$4$17;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;II)V

    goto/16 :goto_a

    :cond_2e
    sget-object v5, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_CHANGE_FPS:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_2f

    const-string v0, "AlivcLivePusher Callback Change FPS"

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherAdjustFpsEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherAdjustFpsEvent$Args;-><init>()V

    iput v3, v0, Lcom/alivc/live/pusher/logreport/PusherAdjustFpsEvent$Args;->oldFps:I

    iput v4, v0, Lcom/alivc/live/pusher/logreport/PusherAdjustFpsEvent$Args;->newFps:I

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v2

    sget-object v5, Lcom/alivc/live/pusher/logreport/PusherAdjustFpsEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v6, Lcom/alivc/live/pusher/logreport/PusherAdjustFpsEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherAdjustFpsEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherAdjustFpsEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v5, v6, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1200(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$18;

    invoke-direct {v2, v1, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePusher$4$18;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;II)V

    goto/16 :goto_a

    :cond_2f
    sget-object v5, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_CHANGE_RESOLUTION:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_30

    goto/16 :goto_d

    :cond_30
    sget-object v5, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_PUSH_SENDED_FIRST_AV:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_32

    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;-><init>()V

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->vutMs:J

    int-to-long v2, v3

    iput-wide v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->autMs:J

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getResolution()Lcom/alivc/live/pusher/AlivcResolutionEnum;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->resolution:Ljava/lang/String;

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getAudioChannels()I

    move-result v2

    if-ne v2, v13, :cond_31

    const-string v2, "single"

    goto :goto_b

    :cond_31
    const-string v2, "dual"

    :goto_b
    iput-object v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->st:Ljava/lang/String;

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isAudioOnly()Z

    move-result v2

    iput-boolean v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->ao:Z

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isVideoOnly()Z

    move-result v2

    iput-boolean v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->vo:Z

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getVideoEncodeMode()Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    move-result-object v2

    sget-object v3, Lcom/alivc/live/pusher/AlivcEncodeModeEnum;->Encode_MODE_HARD:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->he:Z

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getWaterMarkInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->wc:I

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isPushMirror()Z

    move-result v2

    iput-boolean v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->pum:Z

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getFps()I

    move-result v2

    iput v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->fps:I

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getInitialVideoBitrate()I

    move-result v2

    iput v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->ivb:I

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getTargetVideoBitrate()I

    move-result v2

    iput v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->mavb:I

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMinVideoBitrate()I

    move-result v2

    iput v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->mivb:I

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getAudioSamepleRate()Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;->getAudioSampleRate()I

    move-result v2

    iput v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->asr:I

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getPreviewOrientation()I

    move-result v2

    iput v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->po:I

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getCameraType()I

    move-result v2

    iput v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->ct:I

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isFlash()Z

    move-result v2

    iput-boolean v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->flash:Z

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getConnectRetryCount()I

    move-result v2

    iput v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->crmc:I

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getConnectRetryInterval()I

    move-result v2

    iput v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->cri:I

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isPreviewMirror()Z

    move-result v2

    iput-boolean v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->prm:Z

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getVideoEncodeGop()I

    move-result v2

    iput v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->gop:I

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getConnectRetryCount()I

    move-result v2

    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getConnectRetryInterval()I

    move-result v3

    mul-int v2, v2, v3

    div-int/lit16 v2, v2, 0x3e8

    iput v2, v0, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;->utm:I

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v2

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v4, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherFirstFrameSentEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1200(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$19;

    invoke-direct {v2, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$19;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    goto/16 :goto_a

    :cond_32
    sget-object v5, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_CAPTURE_OPEN_CAMERA_SUCCESS:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_33

    goto/16 :goto_d

    :cond_33
    sget-object v5, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_CAPTURE_OPEN_MIC_SUCCESS:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_34

    goto/16 :goto_d

    :cond_34
    sget-object v5, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_CAPTURE_CLOSE_CAMERA_SUCCESS:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_35

    goto/16 :goto_d

    :cond_35
    sget-object v5, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_OPEN_VIDEO_ENCODER_SUCCESS:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_36

    goto/16 :goto_d

    :cond_36
    sget-object v5, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_CAPTURE_VIDEO_SAMPLES_OVERFLOW:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_37

    goto/16 :goto_d

    :cond_37
    sget-object v5, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_PUSH_SENDED_SEI:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_38

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$100(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePusher$4$20;

    invoke-direct {v2, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$20;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    goto/16 :goto_a

    :cond_38
    sget-object v5, Lcom/alivc/live/pusher/AlivcLivePushError;->ALIVC_PUSHER_ERROR_BGM_OPEN_FAILED:Lcom/alivc/live/pusher/AlivcLivePushError;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/AlivcLivePushError;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_3a

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePlayStats;->IDLE:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1702(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePlayStats;)Lcom/alivc/live/pusher/AlivcLivePlayStats;

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alivc/live/pusher/AlivcLivePushBGMListener;->onOpenFailed()V

    :cond_39
    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->stopBGM()V

    goto/16 :goto_d

    :cond_3a
    sget-object v5, Lcom/alivc/live/pusher/AlivcLivePushError;->ALIVC_PUSHER_ERROR_BGM_TIMEOUT:Lcom/alivc/live/pusher/AlivcLivePushError;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/AlivcLivePushError;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_3b

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePlayStats;->IDLE:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1702(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePlayStats;)Lcom/alivc/live/pusher/AlivcLivePlayStats;

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alivc/live/pusher/AlivcLivePushBGMListener;->onDownloadTimeout()V

    goto/16 :goto_d

    :cond_3b
    sget-object v5, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_BGM_OPEN_SUCCESS:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_3c

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePlayStats;->STARTED:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1702(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePlayStats;)Lcom/alivc/live/pusher/AlivcLivePlayStats;

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alivc/live/pusher/AlivcLivePushBGMListener;->onStarted()V

    goto/16 :goto_d

    :cond_3c
    sget-object v5, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_BGM_STOP_SUCCESS:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_3d

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePlayStats;->STOPED:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1702(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePlayStats;)Lcom/alivc/live/pusher/AlivcLivePlayStats;

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alivc/live/pusher/AlivcLivePushBGMListener;->onStoped()V

    goto/16 :goto_d

    :cond_3d
    sget-object v5, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_BGM_PAUSE_SUCCESS:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_3e

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePlayStats;->PAUSED:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1702(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePlayStats;)Lcom/alivc/live/pusher/AlivcLivePlayStats;

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alivc/live/pusher/AlivcLivePushBGMListener;->onPaused()V

    goto/16 :goto_d

    :cond_3e
    sget-object v5, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_BGM_RESUME_SUCCESS:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_3f

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePlayStats;->STARTED:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1702(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePlayStats;)Lcom/alivc/live/pusher/AlivcLivePlayStats;

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alivc/live/pusher/AlivcLivePushBGMListener;->onResumed()V

    goto/16 :goto_d

    :cond_3f
    sget-object v5, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_BGM_COMPLETED:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_41

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alivc/live/pusher/AlivcLivePushBGMListener;->onCompleted()V

    :cond_40
    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePlayStats;->IDLE:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1702(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePlayStats;)Lcom/alivc/live/pusher/AlivcLivePlayStats;

    goto/16 :goto_d

    :cond_41
    sget-object v5, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_BGM_PROGRESS:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v5}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v5

    if-ne v0, v5, :cond_42

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    move-result-object v0

    int-to-long v2, v3

    int-to-long v4, v4

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/alivc/live/pusher/AlivcLivePushBGMListener;->onProgress(JJ)V

    goto/16 :goto_d

    :cond_42
    sget-object v3, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_CAPTURE_OPEN_SCREENCAPTURE_SUCCESS:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v3}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v3

    if-ne v0, v3, :cond_43

    goto/16 :goto_d

    :cond_43
    sget-object v3, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_CAPTURE_CLOSE_SCREENCAPTURE_SUCCESS:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v3}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v3

    if-ne v0, v3, :cond_44

    goto/16 :goto_d

    :cond_44
    sget-object v3, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_GL_CONTEXT_CREATED:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v3}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v3

    if-ne v0, v3, :cond_45

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1900(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePusherRenderContextListener;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1900(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePusherRenderContextListener;

    move-result-object v0

    invoke-interface {v0, v7, v8}, Lcom/alivc/live/pusher/AlivcLivePusherRenderContextListener;->onSharedContextCreated(J)V

    goto/16 :goto_d

    :cond_45
    sget-object v3, Lcom/alivc/live/pusher/LivePushNotification;->ALIVC_PUSHER_EVENT_NATIVE_LIVE_PUSH_GL_CONTEXT_DESTROYED:Lcom/alivc/live/pusher/LivePushNotification;

    invoke-virtual {v3}, Lcom/alivc/live/pusher/LivePushNotification;->getCode()I

    move-result v3

    if-ne v0, v3, :cond_46

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1900(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePusherRenderContextListener;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1900(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePusherRenderContextListener;

    move-result-object v0

    invoke-interface {v0, v7, v8}, Lcom/alivc/live/pusher/AlivcLivePusherRenderContextListener;->onSharedContextDestroyed(J)V

    goto/16 :goto_d

    :cond_46
    const/high16 v3, 0x30010000

    const-string v4, "mTotalTimeOfPublishing"

    const-string v5, "mTotalSizeOfUploadedPackets"

    if-le v0, v3, :cond_4b

    const/high16 v3, 0x30020000

    if-ge v0, v3, :cond_4b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AlivcLivePusher SystemError Callback error: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2000(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/Map;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_47

    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2000(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/Map;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alivc/live/pusher/AlivcLivePushError;

    invoke-virtual {v3, v2}, Lcom/alivc/live/pusher/AlivcLivePushError;->setMsg(Ljava/lang/String;)V

    :cond_47
    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2100(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushErrorListener;

    move-result-object v3

    if-eqz v3, :cond_48

    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v6, Lcom/alivc/live/pusher/AlivcLivePusher$4$21;

    invoke-direct {v6, v1, v0}, Lcom/alivc/live/pusher/AlivcLivePusher$4$21;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;I)V

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_48
    new-instance v3, Lcom/alivc/live/pusher/logreport/PusherSystemErrorEvent$Args;

    invoke-direct {v3}, Lcom/alivc/live/pusher/logreport/PusherSystemErrorEvent$Args;-><init>()V

    iget-object v6, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v6}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1600(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_4a

    invoke-static {v6, v5}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/alivc/live/pusher/logreport/PusherSystemErrorEvent$Args;->totalUploadSize:J

    invoke-static {v6, v4}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alivc/live/pusher/logreport/PusherSystemErrorEvent$Args;->totalTime:J

    int-to-long v4, v0

    iput-wide v4, v3, Lcom/alivc/live/pusher/logreport/PusherSystemErrorEvent$Args;->error_code:J

    iget-object v4, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v4}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2000(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/Map;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_49

    iput-object v2, v3, Lcom/alivc/live/pusher/logreport/PusherSystemErrorEvent$Args;->error_msg:Ljava/lang/String;

    :cond_49
    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v2

    sget-object v4, Lcom/alivc/live/pusher/logreport/PusherSystemErrorEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v5, Lcom/alivc/live/pusher/logreport/PusherSystemErrorEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/alivc/live/pusher/logreport/PusherSystemErrorEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherSystemErrorEvent$Args;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4a
    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v3, Lcom/alivc/live/pusher/AlivcLivePushStats;->ERROR:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-static {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1002(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushStats;)Lcom/alivc/live/pusher/AlivcLivePushStats;

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static/range {p1 .. p1}, Lcom/alivc/live/pusher/AlivcLivePushError;->getErrorByCode(I)Lcom/alivc/live/pusher/AlivcLivePushError;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1102(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushError;)Lcom/alivc/live/pusher/AlivcLivePushError;

    goto/16 :goto_d

    :cond_4b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AlivcLivePusher SDKError Callback error: 0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2000(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/Map;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4c

    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2000(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/Map;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alivc/live/pusher/AlivcLivePushError;

    invoke-virtual {v3, v2}, Lcom/alivc/live/pusher/AlivcLivePushError;->setMsg(Ljava/lang/String;)V

    :cond_4c
    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2100(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushErrorListener;

    move-result-object v3

    if-eqz v3, :cond_4d

    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v6, Lcom/alivc/live/pusher/AlivcLivePusher$4$22;

    invoke-direct {v6, v1, v0}, Lcom/alivc/live/pusher/AlivcLivePusher$4$22;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;I)V

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4d
    new-instance v3, Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent$Args;

    invoke-direct {v3}, Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent$Args;-><init>()V

    iget-object v6, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v6}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1600(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_4f

    invoke-static {v6, v5}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent$Args;->totalUploadSize:J

    invoke-static {v6, v4}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent$Args;->totalTime:J

    int-to-long v4, v0

    iput-wide v4, v3, Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent$Args;->error_code:J

    iget-object v4, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v4}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2000(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/Map;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4e

    iput-object v2, v3, Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent$Args;->error_msg:Ljava/lang/String;

    :cond_4e
    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v2

    sget-object v4, Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v5, Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent$Args;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4f
    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v3, Lcom/alivc/live/pusher/AlivcLivePushStats;->ERROR:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-static {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1002(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushStats;)Lcom/alivc/live/pusher/AlivcLivePushStats;

    iget-object v2, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static/range {p1 .. p1}, Lcom/alivc/live/pusher/AlivcLivePushError;->getErrorByCode(I)Lcom/alivc/live/pusher/AlivcLivePushError;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1102(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushError;)Lcom/alivc/live/pusher/AlivcLivePushError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msg is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_50
    :goto_c
    const-string v3, "AlivcLivePusher Callback Push Connect Fail"

    invoke-static {v12, v3}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$100(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;

    move-result-object v3

    if-eqz v3, :cond_51

    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Lcom/alivc/live/pusher/AlivcLivePusher$4$7;

    invoke-direct {v4, v1}, Lcom/alivc/live/pusher/AlivcLivePusher$4$7;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$4;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_51
    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    sget-object v4, Lcom/alivc/live/pusher/AlivcLivePushStats;->ERROR:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-static {v3, v4}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1002(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushStats;)Lcom/alivc/live/pusher/AlivcLivePushStats;

    iget-object v3, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static/range {p1 .. p1}, Lcom/alivc/live/pusher/AlivcLivePushError;->getErrorByCode(I)Lcom/alivc/live/pusher/AlivcLivePushError;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1102(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushError;)Lcom/alivc/live/pusher/AlivcLivePushError;

    new-instance v3, Lcom/alivc/live/pusher/logreport/PusherStartPushFailedEvent$Args;

    invoke-direct {v3}, Lcom/alivc/live/pusher/logreport/PusherStartPushFailedEvent$Args;-><init>()V

    iput v0, v3, Lcom/alivc/live/pusher/logreport/PusherStartPushFailedEvent$Args;->errCode:I

    iput-object v2, v3, Lcom/alivc/live/pusher/logreport/PusherStartPushFailedEvent$Args;->errMsg:Ljava/lang/String;

    iget-object v0, v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    move-result-object v0

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherStartPushFailedEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v4, Lcom/alivc/live/pusher/logreport/PusherStartPushFailedEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/alivc/live/pusher/logreport/PusherStartPushFailedEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherStartPushFailedEvent$Args;)Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_4

    :cond_52
    :goto_d
    return-void
.end method
