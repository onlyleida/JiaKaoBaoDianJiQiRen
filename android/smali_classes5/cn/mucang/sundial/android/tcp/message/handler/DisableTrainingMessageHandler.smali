.class public Lcn/mucang/sundial/android/tcp/message/handler/DisableTrainingMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/DisableTrainingRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleMessage(Lcn/mucang/sundial/android/tcp/message/Message;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/DisableTrainingRequest;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/DisableTrainingMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/DisableTrainingRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/DisableTrainingRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 5

    const-string v0, "sundial-TAG"

    const-string v1, "\u6536\u5230\u7981\u8bad\u7684\u6d88\u606f\u3002\u3002\u3002"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/send/DisableTrainingResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/send/DisableTrainingResponse;-><init>()V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/training/send/DisableTrainingResponse;->setResult(I)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/DisableTrainingRequest;->getStatus()I

    move-result v2

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->setTrainingDisable(Z)V

    .line 8
    invoke-virtual {v0, v2}, Lcn/mucang/sundial/android/tcp/message/training/send/DisableTrainingResponse;->setStatus(I)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/DisableTrainingRequest;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/DisableTrainingResponse;->setMessage(Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcn/mucang/sundial/android/eventbus/event/DisableTrainingEvent;

    invoke-direct {v1, v2}, Lcn/mucang/sundial/android/eventbus/event/DisableTrainingEvent;-><init>(I)V

    invoke-static {v1}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    .line 12
    new-instance v1, Lcn/mucang/sundial/android/eventbus/event/TtsEvent;

    invoke-direct {v1, p1}, Lcn/mucang/sundial/android/eventbus/event/TtsEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    return-object v0
.end method
