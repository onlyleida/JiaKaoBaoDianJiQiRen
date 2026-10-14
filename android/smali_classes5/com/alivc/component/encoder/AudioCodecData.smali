.class public Lcom/alivc/component/encoder/AudioCodecData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/alivc/component/encoder/LiveNativeUsed;
.end annotation


# static fields
.field public static final DATA_NORMAL_FRAME:I = 0x2

.field public static final DATA_TYPE_SPECIFIC:I = 0x1

.field public static final ERROR_CODE_OK:I = 0x0

.field public static final ERROR_CODE_TRY_AGAIN:I = 0x1

.field public static final ERROR_UNKNOWN:I = -0x58


# instance fields
.field private mCode:I

.field private mCodecData:Ljava/nio/ByteBuffer;

.field private mDataType:I

.field private mEos:Z

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mOutputBufferId:I

.field private mPts:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alivc/component/encoder/AudioCodecData;->mCode:I

    iput-boolean v0, p0, Lcom/alivc/component/encoder/AudioCodecData;->mEos:Z

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1
    .annotation runtime Lcom/alivc/component/encoder/LiveNativeUsed;
    .end annotation

    iget v0, p0, Lcom/alivc/component/encoder/AudioCodecData;->mCode:I

    return v0
.end method

.method public getCodecData()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation runtime Lcom/alivc/component/encoder/LiveNativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/alivc/component/encoder/AudioCodecData;->mCodecData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDataType()I
    .locals 1
    .annotation runtime Lcom/alivc/component/encoder/LiveNativeUsed;
    .end annotation

    iget v0, p0, Lcom/alivc/component/encoder/AudioCodecData;->mDataType:I

    return v0
.end method

.method public getEos()Z
    .locals 1
    .annotation runtime Lcom/alivc/component/encoder/LiveNativeUsed;
    .end annotation

    iget-boolean v0, p0, Lcom/alivc/component/encoder/AudioCodecData;->mEos:Z

    return v0
.end method

.method public getPosition()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dequeueOutputBuffer get position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alivc/component/encoder/AudioCodecData;->mCodecData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidAudio"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alivc/component/encoder/AudioCodecData;->mCodecData:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPts()J
    .locals 2
    .annotation runtime Lcom/alivc/component/encoder/LiveNativeUsed;
    .end annotation

    iget-wide v0, p0, Lcom/alivc/component/encoder/AudioCodecData;->mPts:J

    return-wide v0
.end method

.method public release()V
    .locals 4
    .annotation runtime Lcom/alivc/component/encoder/LiveNativeUsed;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/alivc/component/encoder/AudioCodecData;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/alivc/component/encoder/AudioCodecData;->mOutputBufferId:I

    if-ltz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iput-object v1, p0, Lcom/alivc/component/encoder/AudioCodecData;->mMediaCodec:Landroid/media/MediaCodec;

    iput v3, p0, Lcom/alivc/component/encoder/AudioCodecData;->mOutputBufferId:I

    :cond_0
    iput-object v1, p0, Lcom/alivc/component/encoder/AudioCodecData;->mCodecData:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/component/encoder/AudioCodecData;->mCode:I

    return-void
.end method

.method public setCodecData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec;I)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/encoder/AudioCodecData;->mCodecData:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/alivc/component/encoder/AudioCodecData;->mMediaCodec:Landroid/media/MediaCodec;

    iput p3, p0, Lcom/alivc/component/encoder/AudioCodecData;->mOutputBufferId:I

    return-void
.end method

.method public setDataType(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/component/encoder/AudioCodecData;->mDataType:I

    return-void
.end method

.method public setEos(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/component/encoder/AudioCodecData;->mEos:Z

    return-void
.end method

.method public setPts(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/component/encoder/AudioCodecData;->mPts:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaCodecData{mDataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/component/encoder/AudioCodecData;->mDataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/component/encoder/AudioCodecData;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/component/encoder/AudioCodecData;->mPts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
