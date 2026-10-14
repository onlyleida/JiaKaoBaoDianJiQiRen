.class public Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse;",
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

.method static synthetic access$000(Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler;->uploadComplete(I)V

    return-void
.end method

.method private hasCustomResponse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private uploadComplete(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->uploadComplete(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public bridge synthetic handleMessage(Lcn/mucang/sundial/android/tcp/message/Message;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 3

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v0

    const/16 v1, 0x305

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->onMessageReply(IZ)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse;->getResult()I

    move-result p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0a\u4f20\u521d\u59cb\u5316\u5e94\u7b54\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 5
    sget-object v0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;->SUCCESS:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 6
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler;->hasCustomResponse()Z

    move-result v0

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getPackageRequest()Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoPacketRequest;

    move-result-object v1

    const-string v2, "\u5f00\u59cb\u53d1\u9001\u7167\u7247\u6570\u636e"

    .line 8
    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler$1;-><init>(Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler;)V

    goto :goto_1

    :cond_1
    move-object v0, p1

    .line 10
    :goto_1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcn/mucang/sundial/android/SundialManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)Z

    goto :goto_2

    .line 11
    :cond_2
    sget v0, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->ERROR:I

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler;->uploadComplete(I)V

    :goto_2
    return-object p1
.end method
