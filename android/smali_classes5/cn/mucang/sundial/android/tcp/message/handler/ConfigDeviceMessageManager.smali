.class public Lcn/mucang/sundial/android/tcp/message/handler/ConfigDeviceMessageManager;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/ConfigDeviceRequest;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/ConfigDeviceRequest;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/ConfigDeviceMessageManager;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/ConfigDeviceRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/ConfigDeviceRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/ConfigDeviceRequest;->getConfigId()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/ConfigDeviceRequest;->getDeviceConfig()Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    move-result-object p1

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDeviceConfig()Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->getTakePhotoInterval()I

    move-result p1

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->setTakePhotoInterval(I)V

    .line 6
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveDeviceConfig(Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;)V

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 8
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->start(Z)V

    goto/16 :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 9
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->getPhotoUploadMode()I

    move-result p1

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->setPhotoUploadMode(I)V

    .line 10
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveDeviceConfig(Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;)V

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 11
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->getSpeakExtraInfo()I

    move-result p1

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->setSpeakExtraInfo(I)V

    .line 12
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveDeviceConfig(Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    .line 13
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->getAccOffStopDelay()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->setAccOffStopDelay(I)V

    .line 14
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveDeviceConfig(Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    .line 15
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->getAccOffGnssUploadInterval()I

    move-result p1

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->setAccOffGnssUploadInterval(I)V

    .line 16
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveDeviceConfig(Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x6

    if-ne v0, v3, :cond_6

    .line 17
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->getAccOffCoachAutoLogoutDelay()I

    move-result p1

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->setAccOffCoachAutoLogoutDelay(I)V

    .line 18
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveDeviceConfig(Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;)V

    goto :goto_1

    :cond_6
    const/4 v3, 0x7

    if-ne v0, v3, :cond_8

    .line 19
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->getAuthenticationInterval()I

    move-result p1

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->setAuthenticationInterval(I)V

    .line 20
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveDeviceConfig(Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;)V

    goto :goto_1

    .line 21
    :cond_7
    :goto_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveDeviceConfig(Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;)V

    .line 22
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 23
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->start(Z)V

    .line 24
    :cond_8
    :goto_1
    new-instance p1, Lcn/mucang/sundial/android/tcp/message/training/send/ConfigDeviceResponse;

    invoke-direct {p1}, Lcn/mucang/sundial/android/tcp/message/training/send/ConfigDeviceResponse;-><init>()V

    .line 25
    invoke-virtual {p1, v2}, Lcn/mucang/sundial/android/tcp/message/training/send/ConfigDeviceResponse;->setResult(I)V

    return-object p1
.end method
