.class public Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;
.super Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;,
        Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$Result;
    }
.end annotation


# instance fields
.field private extraInfo:Ljava/lang/String;

.field private finishedDuration:I

.field private finishedMileage:I

.field private result:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$Result;

.field private speakExtraInfo:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

.field private studentNo:Ljava/lang/String;

.field private totalDuration:I

.field private totalMileage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;->YES:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->speakExtraInfo:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    return-void
.end method


# virtual methods
.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishedDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->finishedDuration:I

    return v0
.end method

.method public getFinishedMileage()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->finishedMileage:I

    return v0
.end method

.method public getId()I
    .locals 1

    const v0, 0x8201

    return v0
.end method

.method public getResult()Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$Result;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->result:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$Result;

    return-object v0
.end method

.method public getSpeakExtraInfo()Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->speakExtraInfo:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    return-object v0
.end method

.method public getStudentNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->studentNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->totalDuration:I

    return v0
.end method

.method public getTotalMileage()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->totalMileage:I

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

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$Result;->from(I)Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$Result;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->result:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$Result;

    const/16 p1, 0x10

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->studentNo:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->totalDuration:I

    .line 5
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->finishedDuration:I

    .line 6
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->totalMileage:I

    .line 7
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->finishedMileage:I

    .line 8
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;->from(I)Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->speakExtraInfo:Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse$SpeakOption;

    .line 9
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    if-lez p1, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;->extraInfo:Ljava/lang/String;

    :cond_0
    return-void
.end method
