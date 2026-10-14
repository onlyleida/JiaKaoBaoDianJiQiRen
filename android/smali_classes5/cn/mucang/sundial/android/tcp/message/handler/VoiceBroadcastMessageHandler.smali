.class public Lcn/mucang/sundial/android/tcp/message/handler/VoiceBroadcastMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/VoiceBroadcastMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse;->getResult()I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u64ad\u62a5\u7c7b\u578b\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Tts"

    invoke-static {v3, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 5
    sget-object v1, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;->TEXT_BROADCAST:Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 6
    new-instance v0, Lcn/mucang/sundial/android/eventbus/event/TtsEvent;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse;->getExtraMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/eventbus/event/TtsEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;->TEXT_DIALOG:Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 8
    new-instance v0, Lcn/mucang/sundial/android/eventbus/event/DialogEvent;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse;->getExtraMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/eventbus/event/DialogEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
