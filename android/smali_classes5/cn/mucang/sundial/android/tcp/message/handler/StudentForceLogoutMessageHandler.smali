.class public Lcn/mucang/sundial/android/tcp/message/handler/StudentForceLogoutMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/StudentForceLogoutMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 4

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v0

    const/16 v1, 0x7000

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->onMessageReply(IZ)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse;->getResult()Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse$Result;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b66\u5458\u5f3a\u5236\u767b\u51fa\u5e94\u7b54\uff1a "

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
    sget-object v1, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse$Result;->SUCCESS:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse$Result;

    if-ne v0, v1, :cond_0

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse;->getStudentNo()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;->INIT:Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

    invoke-virtual {v0, p1, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->updateStudentStatus(Ljava/lang/String;Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;)V

    .line 8
    invoke-static {}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getInstance()Lcn/mucang/sundial/android/timer/train/TrainManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->stop()V

    .line 9
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->stop()V

    .line 10
    invoke-static {}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->getInstance()Lcn/mucang/sundial/android/timer/location/LocationReportManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->restartIfNotInTempTrack()V

    .line 11
    :cond_0
    new-instance p1, Lcn/mucang/sundial/android/eventbus/event/StudentLogoutResponseEvent;

    invoke-direct {p1}, Lcn/mucang/sundial/android/eventbus/event/StudentLogoutResponseEvent;-><init>()V

    invoke-static {p1}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
