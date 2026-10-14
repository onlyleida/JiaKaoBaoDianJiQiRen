.class public Lcn/mucang/sundial/android/tcp/message/handler/LocationQueryMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/receive/LocationQueryRequest;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/receive/LocationQueryRequest;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/LocationQueryMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/receive/LocationQueryRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/receive/LocationQueryRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 1

    .line 2
    new-instance p1, Lcn/mucang/sundial/android/tcp/message/send/LocationQueryResponse;

    invoke-direct {p1}, Lcn/mucang/sundial/android/tcp/message/send/LocationQueryResponse;-><init>()V

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->getGNSSData()Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/tcp/message/send/LocationQueryResponse;->setGnssData(Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;)V

    return-object p1
.end method
