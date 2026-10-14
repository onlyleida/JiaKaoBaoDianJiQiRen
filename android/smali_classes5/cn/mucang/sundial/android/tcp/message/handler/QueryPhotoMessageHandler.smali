.class public Lcn/mucang/sundial/android/tcp/message/handler/QueryPhotoMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/QueryPhotoMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 4

    const-string v0, "sundial-TAG"

    const-string v1, "\u6536\u5230\u67e5\u8be2\u7167\u7247\u7684\u6d88\u606f\u3002\u3002\u3002"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/send/QueryPhotoResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/send/QueryPhotoResponse;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;->getQueryType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Lcn/mucang/sundial/android/tcp/message/training/send/QueryPhotoResponse;->setResult(I)V

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/SundialManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->toTimestamp(Ljava/lang/String;)J

    move-result-wide v0

    .line 9
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;->getEndTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->toTimestamp(Ljava/lang/String;)J

    move-result-wide v2

    .line 10
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->queryPhotoRecord(JJ)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    .line 11
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/QueryPhotoResponse;->setResult(I)V

    .line 12
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/SundialManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
