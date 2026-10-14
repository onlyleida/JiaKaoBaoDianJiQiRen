.class public Lcn/mucang/sundial/android/tcp/message/handler/QueryDeviceConfigMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/QueryDeviceConfigRequest;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryDeviceConfigRequest;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/QueryDeviceConfigMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/QueryDeviceConfigRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/QueryDeviceConfigRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 1

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDeviceConfig()Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    move-result-object p1

    .line 3
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/send/QueryDeviceConfigResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/send/QueryDeviceConfigResponse;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/QueryDeviceConfigResponse;->setDeviceConfig(Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/QueryDeviceConfigResponse;->setResult(I)V

    return-object v0
.end method
