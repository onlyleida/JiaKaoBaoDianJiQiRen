.class public Lcn/mucang/sundial/android/tcp/message/handler/TakePhotoMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/TakePhotoRequest;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/TakePhotoRequest;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/TakePhotoMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/TakePhotoRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/TakePhotoRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 11

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;-><init>()V

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->isIdle()Z

    move-result v1

    const-string v2, "TakePhotoMessageHandler"

    if-eqz v1, :cond_5

    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->isTakingPhoto()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "\u53ef\u4ee5\u62cd\u6444"

    .line 4
    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 6
    sget-object v1, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;->TAKE:Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;->valueOf()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->setResult(I)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/TakePhotoRequest;->getUploadMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 8
    sget-object v1, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->TMP_SAVE_LOCAL:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    goto :goto_0

    :cond_1
    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    .line 9
    sget-object v1, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->STOP_TO_UPLOAD:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    goto :goto_0

    .line 10
    :cond_2
    sget-object v1, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->SERVER_ORDER_UPLOAD:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    .line 11
    :goto_0
    sget-object v2, Lcn/mucang/sundial/android/PersonMode;->NONE:Lcn/mucang/sundial/android/PersonMode;

    .line 12
    sget-object v3, Lcn/mucang/sundial/android/tcp/upload/EventType;->PLATFORM_QUERY:Lcn/mucang/sundial/android/tcp/upload/EventType;

    .line 13
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/mucang/sundial/android/SundialManager;->studentLoginSuccess()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 14
    sget-object v2, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    .line 15
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/sundial/android/SundialManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v5

    .line 16
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/sundial/android/SundialManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v3

    .line 17
    sget-object v4, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_TRAINING:Lcn/mucang/sundial/android/tcp/upload/EventType;

    move-object v8, v3

    move-object v3, v4

    :goto_1
    move-object v9, v5

    goto :goto_2

    .line 18
    :cond_3
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/mucang/sundial/android/SundialManager;->coachLoginSuccess()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 19
    sget-object v2, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    .line 20
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/mucang/sundial/android/SundialManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v4

    move-object v8, v4

    goto :goto_1

    :cond_4
    move-object v8, v5

    move-object v9, v8

    .line 21
    :goto_2
    new-instance v10, Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;

    .line 22
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    .line 23
    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->valueOf()I

    move-result v6

    .line 24
    invoke-virtual {v3}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v7

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;-><init>(IIILcn/mucang/sundial/android/db/entity/CoachInfo;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V

    .line 25
    invoke-static {v10}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    :goto_3
    const-string v1, "\u6709\u4efb\u52a1\u5728\u4e0a\u4f20\u6216\u8005\u6b63\u5728\u62cd\u7167"

    .line 26
    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 28
    sget-object v1, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;->TAKING:Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;->valueOf()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->setResult(I)V

    .line 29
    :goto_4
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/TakePhotoRequest;->getUploadMode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->setUploadMode(I)V

    const/4 p1, 0x0

    .line 30
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->setCameraChannel(I)V

    const/4 p1, 0x4

    .line 31
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->setImageSize(I)V

    return-object v0
.end method
