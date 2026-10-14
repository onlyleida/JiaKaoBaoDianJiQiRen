.class public Lcn/mucang/sundial/android/tcp/message/handler/CoachLoginMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/CoachLoginMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 4

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v0

    const/16 v1, 0x101

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->onMessageReply(IZ)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;->getResult()Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$Result;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6559\u7ec3\u5458\u767b\u5f55\u5e94\u7b54\uff1a "

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
    sget-object v1, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$Result;->SUCCESS:Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$Result;

    if-ne v0, v1, :cond_0

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;->getCoachNo()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;->LOGIN:Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/data/DataManager;->updateCoachStatus(Ljava/lang/String;Lcn/mucang/sundial/android/db/entity/CoachInfo$STATUS;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;->getSpeakExtraInfo()Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$SpeakOption;

    move-result-object v1

    sget-object v2, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$SpeakOption;->YES:Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$SpeakOption;

    if-eq v1, v2, :cond_1

    .line 11
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;->getSpeakExtraInfo()Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$SpeakOption;

    move-result-object p1

    sget-object v1, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$SpeakOption;->GLOBAL_CONFIG:Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse$SpeakOption;

    if-ne p1, v1, :cond_2

    .line 12
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->deviceConfigSpeechExtraInfo()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    :cond_1
    new-instance p1, Lcn/mucang/sundial/android/eventbus/event/TtsEvent;

    invoke-direct {p1, v0}, Lcn/mucang/sundial/android/eventbus/event/TtsEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    .line 14
    :cond_2
    new-instance p1, Lcn/mucang/sundial/android/eventbus/event/CoachLoginResponseEvent;

    invoke-direct {p1, v0}, Lcn/mucang/sundial/android/eventbus/event/CoachLoginResponseEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
