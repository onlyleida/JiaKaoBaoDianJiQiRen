.class Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$BaseParamGetCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParamGetCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;


# direct methods
.method private constructor <init>(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$BaseParamGetCallback;->this$0:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$BaseParamGetCallback;-><init>(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;)V

    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$BaseParamGetCallback;->this$0:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->access$100(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    const-string v0, "AliLiveSDK"

    return-object v0
.end method

.method public getPushId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$BaseParamGetCallback;->this$0:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->access$300(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushProtocol()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$BaseParamGetCallback;->getPushUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtmp"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "artc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "rts"

    goto :goto_0

    :cond_1
    const-string v1, "None"

    :goto_0
    return-object v1
.end method

.method public getPushUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$BaseParamGetCallback;->this$0:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->access$000(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;)Lcom/alivc/live/pusher/AlivcLivePusher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getPushUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$BaseParamGetCallback;->this$0:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->access$200(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopicParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$BaseParamGetCallback;->this$0:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->access$000(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;)Lcom/alivc/live/pusher/AlivcLivePusher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getLiveTraceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAudioOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$BaseParamGetCallback;->this$0:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->access$100(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isAudioOnly()Z

    move-result v0

    return v0
.end method

.method public isExternStream()Z
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$BaseParamGetCallback;->this$0:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->access$100(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isExternMainStream()Z

    move-result v0

    return v0
.end method

.method public isPush()Z
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$BaseParamGetCallback;->this$0:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->access$000(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;)Lcom/alivc/live/pusher/AlivcLivePusher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->isPushing()Z

    move-result v0

    return v0
.end method

.method public isVideoOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$BaseParamGetCallback;->this$0:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->access$100(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;)Lcom/alivc/live/pusher/AlivcLivePushConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isVideoOnly()Z

    move-result v0

    return v0
.end method
