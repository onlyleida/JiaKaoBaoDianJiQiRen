.class public Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;
    }
.end annotation


# instance fields
.field private cameraChannel:I

.field private imageSize:I

.field private result:I

.field private uploadMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode()[B
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->result:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 3
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->uploadMode:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 4
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->cameraChannel:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 5
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->imageSize:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getCameraChannel()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->cameraChannel:I

    return v0
.end method

.method public getId()I
    .locals 1

    const/16 v0, 0x301

    return v0
.end method

.method public getImageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->imageSize:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->result:I

    return v0
.end method

.method public getUploadMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->uploadMode:I

    return v0
.end method

.method public synthetic isNeedReply()Z
    .locals 1

    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/message/training/a;->$default$isNeedReply(Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;)Z

    move-result v0

    return v0
.end method

.method public synthetic isRealtimeMessage()Z
    .locals 1

    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/message/training/a;->$default$isRealtimeMessage(Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;)Z

    move-result v0

    return v0
.end method

.method public setCameraChannel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->cameraChannel:I

    return-void
.end method

.method public setImageSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->imageSize:I

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->result:I

    return-void
.end method

.method public setUploadMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;->uploadMode:I

    return-void
.end method
