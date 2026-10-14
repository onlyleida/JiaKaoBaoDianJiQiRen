.class public Lcn/mucang/sundial/android/tcp/message/handler/CoachLogoutMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLogoutResponse;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLogoutResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/CoachLogoutMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLogoutResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLogoutResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 4

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v0

    const/16 v1, 0x102

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->onMessageReply(IZ)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLogoutResponse;->getResult()Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLogoutResponse$Result;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6559\u7ec3\u5458\u767b\u51fa\u5e94\u7b54\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sundial-TAG"

    invoke-static {v3, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 6
    sget-object v1, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLogoutResponse$Result;->SUCCESS:Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLogoutResponse$Result;

    if-ne v0, v1, :cond_0

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLogoutResponse;->getCoachNo()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;->INIT:Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;

    invoke-virtual {v0, p1, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->updateCoachStatus(Ljava/lang/String;Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;)V

    .line 8
    :cond_0
    new-instance p1, Lcn/mucang/sundial/android/eventbus/event/CoachLogoutResponseEvent;

    invoke-direct {p1}, Lcn/mucang/sundial/android/eventbus/event/CoachLogoutResponseEvent;-><init>()V

    invoke-static {p1}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
