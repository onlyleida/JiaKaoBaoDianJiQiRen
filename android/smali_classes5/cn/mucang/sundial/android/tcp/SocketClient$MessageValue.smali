.class Lcn/mucang/sundial/android/tcp/SocketClient$MessageValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/SocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageValue"
.end annotation


# instance fields
.field private messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/tcp/message/RawMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient$MessageValue;->messageList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/sundial/android/tcp/SocketClient$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/SocketClient$MessageValue;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcn/mucang/sundial/android/tcp/SocketClient$MessageValue;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/android/tcp/SocketClient$MessageValue;->messageList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method addPacket(Lcn/mucang/sundial/android/tcp/message/RawMessage;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/SocketClient$MessageValue;->messageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u5206\u5305\uff0c\u5e8f\u53f7\u4e3a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getSplitIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u603b\u6570\u4e3a\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getPacket()Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->getTotal()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\uff0csequence="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v4

    invoke-virtual {v4}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageSequence()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "sundial-TAG"

    invoke-static {v4, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getSplitIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getPacket()Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Packet;->getTotal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageSequence()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    return-void
.end method
