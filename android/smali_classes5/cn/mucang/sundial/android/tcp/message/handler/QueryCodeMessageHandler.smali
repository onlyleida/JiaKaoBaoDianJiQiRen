.class public Lcn/mucang/sundial/android/tcp/message/handler/QueryCodeMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/QueryCodeResponse;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryCodeResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/QueryCodeMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/QueryCodeResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/QueryCodeResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 5

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v0

    const/16 v1, 0x402

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->onMessageReply(IZ)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u8bf7\u6c42\u7edf\u4e00\u7f16\u7801\u6d88\u606f\uff0c\u8bf7\u6c42\u5e8f\u53f7: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryCodeResponse;->getSequence()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \u8bf7\u6c42\u7ed3\u679c\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryCodeResponse;->getResult()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", \u7edf\u4e00\u7f16\u53f7\uff1a "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryCodeResponse;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "sundial-TAG"

    .line 6
    invoke-static {v4, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryCodeResponse;->getSequence()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryCodeResponse;->getResult()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryCodeResponse;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
