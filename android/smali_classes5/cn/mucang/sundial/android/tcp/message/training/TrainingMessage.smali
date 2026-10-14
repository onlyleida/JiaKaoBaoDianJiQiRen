.class public Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/Send;
.implements Lcn/mucang/sundial/android/tcp/message/Receive;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;
    }
.end annotation


# instance fields
.field private body:[B

.field private deviceId:Ljava/lang/String;

.field private extendAttribute:Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;

.field private sequence:I

.field private tid:I

.field private verified:Z

.field private verify:[B


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

    const/16 v1, 0x13

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->getMsgBody()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->verify:[B

    invoke-static {v1}, Lcn/mucang/sundial/android/tcp/utils/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->verify:[B

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getBody()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->body:[B

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendAttribute()Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->extendAttribute:Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;

    return-object v0
.end method

.method public getMsgBody()[B
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->tid:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->extendAttribute:Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 4
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->sequence:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 5
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->deviceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 6
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->body:[B

    invoke-static {v1}, Lcn/mucang/sundial/android/tcp/utils/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->body:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 8
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->body:[B

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 10
    :goto_0
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->sequence:I

    return v0
.end method

.method public getTid()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->tid:I

    return v0
.end method

.method public getVerify()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->verify:[B

    return-object v0
.end method

.method public init([B)V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;-><init>([B)V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBYTE()I

    move-result p1

    const/16 v1, 0x13

    if-ne p1, v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->tid:I

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result p1

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->from(I)Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->extendAttribute:Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;

    .line 5
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readWORD()I

    move-result p1

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->sequence:I

    const/16 p1, 0x10

    .line 6
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBytes(I)[B

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->deviceId:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readDWORD()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    long-to-int p1, v1

    .line 8
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBytes(I)[B

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->body:[B

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->available()I

    move-result p1

    .line 10
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/decoder/BytesDecoder;->readBytes(I)[B

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->verify:[B

    return-void

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u975e\u6cd5\u7684\u900f\u4f20\u6d88\u606f\uff0c\u76ee\u524d\u4ec5\u652f\u63010x13\uff0c\u800c\u6536\u5230\u7684\u662f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVerified()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->verified:Z

    return v0
.end method

.method public setBody([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->body:[B

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 2
    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 3
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->deviceId:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u957f\u5ea6\u5fc5\u987b\u662f16\u5b57\u8282\uff0c\u975e\u6cd5\u7684\u8bbe\u5907\u7f16\u53f7:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtendAttribute(Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->extendAttribute:Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;

    return-void
.end method

.method public setSequence(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->sequence:I

    return-void
.end method

.method public setTid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->tid:I

    return-void
.end method

.method public setVerified(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->verified:Z

    return-void
.end method

.method public setVerify([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->verify:[B

    return-void
.end method
