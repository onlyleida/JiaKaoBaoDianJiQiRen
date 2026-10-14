.class public Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoResultMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse;",
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

.method private convertResult(I)I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;->SUCCESS:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    sget p1, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->SUCCESS:I

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;->FACE_ERROR:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4
    sget p1, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->FACE_ERROR:I

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;->LIVE_ERROR:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 6
    sget p1, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->LIVE_ERROR:I

    goto :goto_0

    .line 7
    :cond_2
    sget p1, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->ERROR:I

    :goto_0
    return p1
.end method


# virtual methods
.method public bridge synthetic handleMessage(Lcn/mucang/sundial/android/tcp/message/Message;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoResultMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse;->getResult()I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u4f20\u7167\u7247\u5e94\u7b54\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UploadImageManager"

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
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v1

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoResultMessageHandler;->convertResult(I)I

    move-result v0

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse;->getExtraMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->uploadComplete(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
