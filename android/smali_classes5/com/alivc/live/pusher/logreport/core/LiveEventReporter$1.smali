.class Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$1;
.super Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$BaseParamGetCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

.field final synthetic val$param:Ljava/util/Map;

.field final synthetic val$topic:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$1;->this$0:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    iput-object p2, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$1;->val$topic:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    iput-object p3, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$1;->val$value:Ljava/lang/String;

    iput-object p4, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$1;->val$param:Ljava/util/Map;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$BaseParamGetCallback;-><init>(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$1;)V

    return-void
.end method


# virtual methods
.method public getTopic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$1;->val$topic:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicParam()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$1;->val$value:Ljava/lang/String;

    const-string v2, "value"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$1;->val$param:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$1;->val$param:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method
