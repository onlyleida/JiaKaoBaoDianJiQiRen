.class public Lcn/mucang/sundial/android/tcp/message/handler/ReportVehicleBindMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/ReportVehicleBindResponse;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/ReportVehicleBindResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/ReportVehicleBindMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/ReportVehicleBindResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/ReportVehicleBindResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 2

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object p1

    const/16 v0, 0x403

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->onMessageReply(IZ)V

    const/4 p1, 0x0

    return-object p1
.end method
