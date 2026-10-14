.class public Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoRequest;",
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

.method static synthetic a(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/MiscUtils;->p(J)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u670d\u52a1\u5668\u62c9\u53d6\u6307\u5b9a\u7167\u7247\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->uploadPhoto(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public bridge synthetic handleMessage(Lcn/mucang/sundial/android/tcp/message/Message;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoRequest;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoRequest;->getPhotoId()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getPhotoRecord(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    move-result-object v0

    .line 4
    new-instance v1, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoResponse;

    invoke-direct {v1}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoResponse;-><init>()V

    if-eqz v0, :cond_2

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoResponse;->setResult(I)V

    .line 8
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/c;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const/16 p1, 0x9

    .line 9
    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoResponse;->setResult(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 10
    invoke-virtual {v1, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoResponse;->setResult(I)V

    :goto_1
    return-object v1
.end method
