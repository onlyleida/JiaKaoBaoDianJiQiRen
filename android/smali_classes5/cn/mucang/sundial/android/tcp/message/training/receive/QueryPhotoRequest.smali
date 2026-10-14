.class public Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;
.super Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;
.source "SourceFile"


# instance fields
.field private endTime:Ljava/lang/String;

.field private queryType:I

.field private startTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;->queryType:I

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    const v0, 0x8302

    return v0
.end method

.method public getQueryType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;->queryType:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public init([B)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;->queryType:I

    const/4 p1, 0x6

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBCD(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;->startTime:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBCD(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;->endTime:Ljava/lang/String;

    return-void
.end method
