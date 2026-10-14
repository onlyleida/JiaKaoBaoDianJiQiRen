.class public Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/Send;


# instance fields
.field private accOffCoachAutoLogoutDelay:I

.field private accOffGnssUploadInterval:I

.field private accOffStopDelay:I

.field private authenticationInterval:I

.field private coachCrossSchool:I

.field private photoUploadMode:I

.field private respondSameMessageInterval:I

.field private speakExtraInfo:I

.field private studentCrossSchool:I

.field private takePhotoInterval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    return-void
.end method

.method public static from(Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;)Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->takePhotoInterval:I

    .line 3
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->photoUploadMode:I

    .line 4
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->speakExtraInfo:I

    .line 5
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->accOffStopDelay:I

    .line 6
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->accOffGnssUploadInterval:I

    .line 7
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->accOffCoachAutoLogoutDelay:I

    .line 8
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->authenticationInterval:I

    .line 9
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->coachCrossSchool:I

    .line 10
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->studentCrossSchool:I

    .line 11
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result p0

    iput p0, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->respondSameMessageInterval:I

    return-object v0
.end method

.method public static from(Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;I)Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;
    .locals 2

    if-nez p1, :cond_0

    .line 12
    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->from(Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;)Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    move-result-object p0

    return-object p0

    .line 13
    :cond_0
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;-><init>()V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->takePhotoInterval:I

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 15
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->photoUploadMode:I

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 16
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->speakExtraInfo:I

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 17
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->accOffStopDelay:I

    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    .line 18
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->accOffGnssUploadInterval:I

    :cond_5
    const/4 v1, 0x6

    if-ne p1, v1, :cond_6

    .line 19
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result v1

    iput v1, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->accOffCoachAutoLogoutDelay:I

    :cond_6
    const/4 v1, 0x7

    if-ne p1, v1, :cond_7

    .line 20
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result p0

    iput p0, v0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->authenticationInterval:I

    :cond_7
    return-object v0
.end method


# virtual methods
.method public encode()[B
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->takePhotoInterval:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 3
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->photoUploadMode:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 4
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->speakExtraInfo:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 5
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->accOffStopDelay:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 6
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->accOffGnssUploadInterval:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 7
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->accOffCoachAutoLogoutDelay:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 8
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->authenticationInterval:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 9
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->coachCrossSchool:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 10
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->studentCrossSchool:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 11
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->respondSameMessageInterval:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 12
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getAccOffCoachAutoLogoutDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->accOffCoachAutoLogoutDelay:I

    return v0
.end method

.method public getAccOffGnssUploadInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->accOffGnssUploadInterval:I

    return v0
.end method

.method public getAccOffStopDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->accOffStopDelay:I

    return v0
.end method

.method public getAuthenticationInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->authenticationInterval:I

    return v0
.end method

.method public getCoachCrossSchool()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->coachCrossSchool:I

    return v0
.end method

.method public getPhotoUploadMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->photoUploadMode:I

    return v0
.end method

.method public getRespondSameMessageInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->respondSameMessageInterval:I

    return v0
.end method

.method public getSpeakExtraInfo()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->speakExtraInfo:I

    return v0
.end method

.method public getStudentCrossSchool()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->studentCrossSchool:I

    return v0
.end method

.method public getTakePhotoInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->takePhotoInterval:I

    return v0
.end method

.method public setAccOffCoachAutoLogoutDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->accOffCoachAutoLogoutDelay:I

    return-void
.end method

.method public setAccOffGnssUploadInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->accOffGnssUploadInterval:I

    return-void
.end method

.method public setAccOffStopDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->accOffStopDelay:I

    return-void
.end method

.method public setAuthenticationInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->authenticationInterval:I

    return-void
.end method

.method public setCoachCrossSchool(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->coachCrossSchool:I

    return-void
.end method

.method public setPhotoUploadMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->photoUploadMode:I

    return-void
.end method

.method public setRespondSameMessageInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->respondSameMessageInterval:I

    return-void
.end method

.method public setSpeakExtraInfo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->speakExtraInfo:I

    return-void
.end method

.method public setStudentCrossSchool(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->studentCrossSchool:I

    return-void
.end method

.method public setTakePhotoInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->takePhotoInterval:I

    return-void
.end method
