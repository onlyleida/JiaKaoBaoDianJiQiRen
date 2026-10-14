.class public Lcn/mucang/sundial/android/tcp/message/handler/DeviceControlMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/DeviceControlMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;->getControl()Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$DeviceControl;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$PowerOffControl;

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Lcn/mucang/sundial/android/eventbus/event/PowerOffEvent;

    invoke-direct {p1}, Lcn/mucang/sundial/android/eventbus/event/PowerOffEvent;-><init>()V

    invoke-static {p1}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;

    .line 7
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
