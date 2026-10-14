.class public Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse;
.super Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;
    }
.end annotation


# instance fields
.field private extraMessage:Ljava/lang/String;

.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtraMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse;->extraMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    const v0, 0x9000

    return v0
.end method

.method public getResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse;->result:I

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

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse;->result:I

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse;->extraMessage:Ljava/lang/String;

    :cond_0
    return-void
.end method
