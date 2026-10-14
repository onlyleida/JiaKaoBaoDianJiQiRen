.class public Lcn/mucang/sundial/android/tcp/message/handler/StudentCleanMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/StudentCleanResponse;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentCleanResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/StudentCleanMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/StudentCleanResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/StudentCleanResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u91cd\u590d\u767b\u5f55\u6e05\u9664\u5b66\u5458\u4fe1\u606f\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentCleanResponse;->getStudentNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentCleanResponse;->getStudentNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentCleanResponse;->getStudentNo()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;->INIT:Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

    invoke-virtual {v0, p1, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->updateStudentStatus(Ljava/lang/String;Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;)V

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getInstance()Lcn/mucang/sundial/android/timer/train/TrainManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->stop()V

    .line 6
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->stop()V

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->getInstance()Lcn/mucang/sundial/android/timer/location/LocationReportManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->restartIfNotInTempTrack()V

    .line 8
    :cond_0
    new-instance p1, Lcn/mucang/sundial/android/eventbus/event/StudentLogoutResponseEvent;

    invoke-direct {p1}, Lcn/mucang/sundial/android/eventbus/event/StudentLogoutResponseEvent;-><init>()V

    invoke-static {p1}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
