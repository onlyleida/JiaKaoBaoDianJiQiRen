.class public Lcn/mucang/sundial/android/tcp/message/training/receive/TakePhotoRequest;
.super Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;
.source "SourceFile"


# instance fields
.field private cameraChannel:I

.field private imageSize:I

.field private uploadMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraChannel()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/TakePhotoRequest;->cameraChannel:I

    return v0
.end method

.method public getId()I
    .locals 1

    const v0, 0x8301

    return v0
.end method

.method public getImageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/TakePhotoRequest;->imageSize:I

    return v0
.end method

.method public getUploadMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/TakePhotoRequest;->uploadMode:I

    return v0
.end method

.method public init([B)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/TakePhotoRequest;->uploadMode:I

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/TakePhotoRequest;->cameraChannel:I

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/TakePhotoRequest;->imageSize:I

    return-void
.end method
