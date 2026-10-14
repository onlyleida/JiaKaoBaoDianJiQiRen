.class public Lcn/mucang/sundial/android/tcp/message/handler/StudentLoginMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/StudentLoginMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 4

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v0

    const/16 v1, 0x201

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->onMessageReply(IZ)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->getResult()Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$Result;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b66\u5458\u767b\u5f55\u5e94\u7b54\uff1a "

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
    sget-object v1, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$Result;->SUCCESS:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$Result;

    if-ne v0, v1, :cond_1

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->getStudentNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getStudentInfo(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v1, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;->LOGIN:Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setStatus(I)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->getTotalDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setTotalDuration(I)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->getTotalMileage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setTotalMileage(I)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->getFinishedDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setFinishedDuration(I)V

    .line 12
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->getFinishedMileage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setFinishedMileage(I)V

    .line 13
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveStudent(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V

    .line 14
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->getInstance()Lcn/mucang/sundial/android/timer/location/LocationReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->restartIfNotInTempTrack()V

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->getSpeakExtraInfo()Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    move-result-object p1

    sget-object v1, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;->YES:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    if-ne p1, v1, :cond_2

    .line 18
    new-instance p1, Lcn/mucang/sundial/android/eventbus/event/TtsEvent;

    invoke-direct {p1, v0}, Lcn/mucang/sundial/android/eventbus/event/TtsEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    .line 19
    :cond_2
    new-instance p1, Lcn/mucang/sundial/android/eventbus/event/StudentLoginResponseEvent;

    invoke-direct {p1, v0}, Lcn/mucang/sundial/android/eventbus/event/StudentLoginResponseEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
