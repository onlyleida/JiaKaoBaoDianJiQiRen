.class public Lcn/mucang/sundial/android/tcp/message/handler/ServerCommonMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/receive/ServerCommonResponse;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/receive/ServerCommonResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/ServerCommonMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/receive/ServerCommonResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/receive/ServerCommonResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 6

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->getResponseMessageId()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->getResult()I

    move-result v1

    invoke-static {v1}, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;->from(I)Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6536\u5230\u6d88\u606f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->formatMessageId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u7684\u670d\u52a1\u7aef\u901a\u7528\u5e94\u7b54\uff0c\u5e94\u7b54\u7ed3\u679c\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "sundial-TAG"

    invoke-static {v5, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->formatMessageId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->onMessageReply(IZ)V

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->getInstance()Lcn/mucang/sundial/android/tcp/PacketResponseObserver;

    move-result-object v2

    .line 8
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->getResponseSerialNo()I

    move-result v4

    .line 9
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->getResult()I

    move-result p1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    .line 10
    :cond_0
    invoke-virtual {v2, v4, v3}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->onPacketResponse(IZ)V

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/16 p1, 0x102

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    sget-object p1, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;->SUCCESS:Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    if-ne v1, p1, :cond_3

    const-string p1, "\u9274\u6743\u6210\u529f\u540e\uff0c\u5f00\u59cb\u53d1\u9001\u5fc3\u8df3\u5305"

    .line 12
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->getInstance()Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;->start()V

    .line 14
    invoke-static {}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->getInstance()Lcn/mucang/sundial/android/timer/location/LocationReportManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->start()V

    goto :goto_0

    .line 15
    :cond_2
    sget-object p1, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;->SUCCESS:Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    if-ne v1, p1, :cond_3

    const-string p1, "\u7ec8\u7aef\u767b\u51fa\u6210\u529f"

    .line 16
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->clearRegisterInfo()V

    .line 18
    new-instance p1, Lcn/mucang/sundial/android/eventbus/event/UnRegisterResponseEvent;

    invoke-direct {p1}, Lcn/mucang/sundial/android/eventbus/event/UnRegisterResponseEvent;-><init>()V

    invoke-static {p1}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->getInstance()Lcn/mucang/sundial/android/timer/location/LocationReportManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->stop()V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
