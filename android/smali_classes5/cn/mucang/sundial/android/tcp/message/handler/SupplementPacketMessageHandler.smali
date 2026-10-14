.class public Lcn/mucang/sundial/android/tcp/message/handler/SupplementPacketMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;",
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

.method static synthetic a(Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;[I)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;->getOriginalMessageSerialNo()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcn/mucang/sundial/android/SundialManager;->resendPacket(I[I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleMessage(Lcn/mucang/sundial/android/tcp/message/Message;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/SupplementPacketMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 5

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;->getPacketIndex()[I

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6536\u5230\u8865\u4f20\u5206\u5305\u8bf7\u6c42\uff0c\u521d\u59cb\u5305\u6d41\u6c34\u53f7\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;->getOriginalMessageSerialNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 5
    array-length v2, v0

    if-lez v2, :cond_1

    const-string v2, "\uff0c\u5206\u5305ID\u4e3a\uff1a"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v2, Lcn/mucang/sundial/android/tcp/message/handler/b;

    invoke-direct {v2, p1, v0}, Lcn/mucang/sundial/android/tcp/message/handler/b;-><init>(Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;[I)V

    invoke-static {v2}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const-string v0, "\uff0c\u65e0\u5206\u5305ID"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sundial-TAG"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;->getRawMessage()Lcn/mucang/sundial/android/tcp/message/RawMessage;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/message/send/ClientCommonResponse;->createSuccess(Lcn/mucang/sundial/android/tcp/message/RawMessage;)Lcn/mucang/sundial/android/tcp/message/send/ClientCommonResponse;

    move-result-object p1

    return-object p1
.end method
