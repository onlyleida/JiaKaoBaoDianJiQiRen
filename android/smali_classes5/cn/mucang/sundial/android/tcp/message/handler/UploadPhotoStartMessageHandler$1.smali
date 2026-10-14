.class Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler$1;->this$0:Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u7167\u7247\u6570\u636e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "[\u6210\u529f]"

    goto :goto_0

    :cond_0
    const-string v1, "[\u5931\u8d25]"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler$1;->this$0:Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler;

    if-eqz p1, :cond_1

    sget p1, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->SUCCESS:I

    goto :goto_1

    :cond_1
    sget p1, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->ERROR:I

    :goto_1
    invoke-static {v0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler;->access$000(Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler;I)V

    return-void
.end method

.method public onTimeout()V
    .locals 1

    const-string v0, "\u53d1\u9001\u7167\u7247\u6570\u636e[\u8d85\u65f6]"

    .line 1
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    return-void
.end method
