.class public Lcom/alivc/component/encoder/MediaCodecData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/alivc/component/encoder/NativeUsed;
.end annotation


# static fields
.field public static final DATA_KEY_FRAME:I = 0x3

.field public static final DATA_NORMAL_FRAME:I = 0x2

.field public static final DATA_TYPE_SPECIFIC:I = 0x1

.field public static final ERROR_CODE_OK:I = 0x0

.field public static final ERROR_CODE_TRY_AGAIN:I = 0x1

.field public static final ERROR_UNKNOWN:I = -0x1


# instance fields
.field private isEos:Z

.field private mCode:I

.field private mCodecData:Ljava/nio/ByteBuffer;

.field private mDataType:I

.field private mDts:J

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mOutputBufferId:I

.field private mPts:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    iget v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mCode:I

    return v0
.end method

.method public getCodecData()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mCodecData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDataType()I
    .locals 1
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    iget v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mDataType:I

    return v0
.end method

.method public getDts()J
    .locals 2
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    iget-wide v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mDts:J

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mCodecData:Ljava/nio/ByteBuffer;

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
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    iget-wide v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mPts:J

    return-wide v0
.end method

.method public isEOS()Z
    .locals 1
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    iget-boolean v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->isEos:Z

    return v0
.end method

.method public release()V
    .locals 4
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/alivc/component/encoder/MediaCodecData;->mOutputBufferId:I

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iput-object v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mMediaCodec:Landroid/media/MediaCodec;

    iput v3, p0, Lcom/alivc/component/encoder/MediaCodecData;->mOutputBufferId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseOutputBuffer error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaCodecData"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mCodecData:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mCode:I

    return-void
.end method

.method public setCodecData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec;I)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mCodecData:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/alivc/component/encoder/MediaCodecData;->mMediaCodec:Landroid/media/MediaCodec;

    iput p3, p0, Lcom/alivc/component/encoder/MediaCodecData;->mOutputBufferId:I

    return-void
.end method

.method public setDataType(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mDataType:I

    return-void
.end method

.method public setDts(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mDts:J

    return-void
.end method

.method public setEos(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/component/encoder/MediaCodecData;->isEos:Z

    return-void
.end method

.method public setPts(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mPts:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaCodecData{mDataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mDataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mPts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mDts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
