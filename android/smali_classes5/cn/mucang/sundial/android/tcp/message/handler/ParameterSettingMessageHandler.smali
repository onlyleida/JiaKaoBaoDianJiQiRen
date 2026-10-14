.class public Lcn/mucang/sundial/android/tcp/message/handler/ParameterSettingMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/receive/ParameterSettingRequest;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/receive/ParameterSettingRequest;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/ParameterSettingMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/receive/ParameterSettingRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/receive/ParameterSettingRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 7

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/ParameterSettingRequest;->getSettingsList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/android/tcp/message/Parameter;

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveDeviceParameter(Lcn/mucang/sundial/android/tcp/message/Parameter;)V

    .line 5
    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getParameterId()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 6
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->getInstance()Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;

    move-result-object v2

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getObjectValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->setHeartBeatPeriod(J)V

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->getInstance()Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->stop()V

    .line 8
    invoke-static {}, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->getInstance()Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x2

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    const-wide/16 v4, 0x3

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    const-wide/16 v4, 0x20

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    const-wide/16 v4, 0x29

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    const-wide/16 v4, 0x2c

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    const-wide/16 v4, 0x22

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    const-wide/16 v4, 0x2d

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x55

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    const-wide/16 v4, 0x56

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x71

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 9
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    const/16 v3, 0x78

    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getIntValue(I)I

    move-result v1

    invoke-static {v2, v1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->setBrightness(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 10
    :cond_5
    :goto_1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->updateOverSpeedParam()V

    goto/16 :goto_0

    .line 11
    :cond_6
    :goto_2
    invoke-static {}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->getInstance()Lcn/mucang/sundial/android/timer/location/LocationReportManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->restartIfNotInTempTrack()V

    goto/16 :goto_0

    .line 12
    :cond_7
    :goto_3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->updateByDeviceParameter()V

    goto/16 :goto_0

    .line 13
    :cond_8
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;->getRawMessage()Lcn/mucang/sundial/android/tcp/message/RawMessage;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/message/send/ClientCommonResponse;->createSuccess(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Lcn/mucang/sundial/android/tcp/message/send/ClientCommonResponse;

    move-result-object p1

    return-object p1
.end method
