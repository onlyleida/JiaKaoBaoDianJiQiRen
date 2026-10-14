.class public Lcom/alivc/component/encoder/AudioCodecEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/alivc/component/encoder/LiveNativeUsed;
.end annotation


# static fields
.field public static final ERROR_API_LEVEL:I = 0x10003100

.field public static final ERROR_INPUT_BUFFER_ERROR:I = 0x10003102

.field public static final ERROR_NO_BUFFER_AVAILABLE:I = 0x10003103

.field public static final ERROR_STATE:I = 0x10003101

.field public static final OK:I = 0x0

.field private static final STATE_ENCODING:I = 0x2

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final STATE_UNINITIALIZED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "com.alivc.component.encoder.AudioCodecEncoder"


# instance fields
.field final kBitRates:[I

.field final kSampleRates:[I

.field mAudioBytes:I

.field mAudioTime:J

.field private mBitrate:I

.field mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mBytesPerSecond:J

.field private mChannels:I

.field mCodecCaps:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private mCurInputBufferIndex:I

.field mFirstPts:J

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mSampleRateInHz:I

.field private mSaveAAC:Ljava/io/BufferedOutputStream;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mAudioBytes:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mAudioTime:J

    iput-wide v1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mFirstPts:J

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->kSampleRates:[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    iput-object v4, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->kBitRates:[I

    iput v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mState:I

    iput v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mSampleRateInHz:I

    iput v3, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mChannels:I

    iput v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mBitrate:I

    iput-wide v1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mBytesPerSecond:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mCurInputBufferIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mSaveAAC:Ljava/io/BufferedOutputStream;

    iput-object v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mCodecCaps:Landroid/media/MediaCodecInfo$CodecCapabilities;

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void

    :array_0
    .array-data 4
        0x1f40
        0x2b11
        0x5622
        0xac44
        0xbb80
    .end array-data

    :array_1
    .array-data 4
        0xfa00
        0x1f400
    .end array-data
.end method

.method private addADTStoPacket([BI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, -0x7

    aput-byte v1, p1, v0

    const/16 v0, 0x54

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    shr-int/lit8 v0, p2, 0xb

    add-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p1, v1

    and-int/lit16 v0, p2, 0x7ff

    shr-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x4

    aput-byte v0, p1, v1

    and-int/lit8 p2, p2, 0x7

    const/4 v0, 0x5

    shl-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1f

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    const/4 p2, 0x6

    const/4 v0, -0x4

    aput-byte v0, p1, p2

    return-void
.end method

.method public static clone(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method private isSupportFormat(I)Z
    .locals 2

    iget-object v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mCodecCaps:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "aac-profile"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mCodecCaps:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFormatSupported(Landroid/media/MediaFormat;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private selectCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    aget-object v6, v4, v5

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getBuffer(J)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation runtime Lcom/alivc/component/encoder/LiveNativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p1

    iput p1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mCurInputBufferIndex:I

    if-ltz p1, :cond_1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    iget-object p2, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, p2, p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dequeueInputBuffer failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mCurInputBufferIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AndroidAudio"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Ljava/lang/String;IIII)Z
    .locals 6
    .annotation runtime Lcom/alivc/component/encoder/LiveNativeUsed;
    .end annotation

    iput p3, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mSampleRateInHz:I

    iput p2, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mChannels:I

    iput p4, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mBitrate:I

    iget v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mState:I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alivc/component/encoder/AudioCodecEncoder;->selectCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object p2, Lcom/alivc/component/encoder/AudioCodecEncoder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not supported mime type ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    sget-object v3, Lcom/alivc/component/encoder/AudioCodecEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create MediaCodec "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    iput-object v2, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mCodecCaps:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/16 v2, 0x17

    const/4 v3, 0x2

    if-ne p5, v2, :cond_1

    const/4 p5, 0x2

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_2

    invoke-direct {p0, p5}, Lcom/alivc/component/encoder/AudioCodecEncoder;->isSupportFormat(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 p5, 0x2

    :cond_2
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    const-string v4, "mime"

    invoke-virtual {v2, v4, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "channel-count"

    invoke-virtual {v2, v4, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "sample-rate"

    invoke-virtual {v2, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "bitrate"

    invoke-virtual {v2, p2, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "aac-profile"

    invoke-virtual {v2, p2, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "max-input-size"

    const/16 p3, 0x1f40

    invoke-virtual {v2, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p2, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 p3, 0x0

    invoke-virtual {p2, v2, p3, p3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object p2, Lcom/alivc/component/encoder/AudioCodecEncoder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "codec \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' failed configuration."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget p1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mSampleRateInHz:I

    iget p2, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mChannels:I

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mBytesPerSecond:J

    iput v1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mState:I

    sget-object p1, Lcom/alivc/component/encoder/AudioCodecEncoder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Phone Model: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_2
    move-exception p1

    sget-object p2, Lcom/alivc/component/encoder/AudioCodecEncoder;->TAG:Ljava/lang/String;

    const-string p3, "Create MediaCodec Failed"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v0

    :cond_3
    return v1
.end method

.method public inputFrame(IJ)I
    .locals 10
    .annotation runtime Lcom/alivc/component/encoder/LiveNativeUsed;
    .end annotation

    if-lez p1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mCurInputBufferIndex:I

    if-ltz v4, :cond_3

    iget-object v3, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move v6, p1

    move-wide v7, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    :cond_1
    :goto_0
    iget p1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mCurInputBufferIndex:I

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 p2, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p1

    iput p1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mCurInputBufferIndex:I

    :cond_2
    iget-object v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mCurInputBufferIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public release()I
    .locals 2
    .annotation runtime Lcom/alivc/component/encoder/LiveNativeUsed;
    .end annotation

    iget v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mState:I

    return v0

    :cond_0
    const v0, 0x10003101

    return v0
.end method

.method public start()I
    .locals 4
    .annotation runtime Lcom/alivc/component/encoder/LiveNativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const v1, 0x10003101

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x2

    iput v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mState:I

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public stop()I
    .locals 2
    .annotation runtime Lcom/alivc/component/encoder/LiveNativeUsed;
    .end annotation

    iget v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mState:I

    const/4 v0, 0x0

    return v0

    :cond_0
    const v0, 0x10003101

    return v0
.end method

.method public tryRead(J)Lcom/alivc/component/encoder/AudioCodecData;
    .locals 7
    .annotation runtime Lcom/alivc/component/encoder/LiveNativeUsed;
    .end annotation

    new-instance v0, Lcom/alivc/component/encoder/AudioCodecData;

    invoke-direct {v0}, Lcom/alivc/component/encoder/AudioCodecData;-><init>()V

    iget-object v1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v3, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3, v1, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    const/4 p2, 0x1

    const-string v1, "AndroidAudio"

    if-ltz p1, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dequeueOutputBuffer suc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", outindex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", cur "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, p1

    :goto_0
    iget-object v3, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_2

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_2
    iget-object v3, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mSaveAAC:Ljava/io/BufferedOutputStream;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v4, v3, 0x7

    new-array v5, v4, [B

    invoke-direct {p0, v5, v4}, Lcom/alivc/component/encoder/AudioCodecEncoder;->addADTStoPacket([BI)V

    const/4 v6, 0x7

    invoke-virtual {v1, v5, v6, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :try_start_0
    iget-object v3, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mSaveAAC:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3, v5, v2, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget-object v2, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mSaveAAC:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alivc/component/encoder/AudioCodecData;->setCodecData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/alivc/component/encoder/AudioCodecData;->setPts(J)V

    iget-object p1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_4

    invoke-virtual {v0, p2}, Lcom/alivc/component/encoder/AudioCodecData;->setDataType(I)V

    goto :goto_3

    :cond_4
    and-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_5

    invoke-virtual {v0, p2}, Lcom/alivc/component/encoder/AudioCodecData;->setEos(Z)V

    goto :goto_3

    :cond_5
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/alivc/component/encoder/AudioCodecData;->setDataType(I)V

    goto :goto_3

    :cond_6
    const/4 v2, -0x2

    if-ne p1, v2, :cond_7

    const-string p1, "dequeueOutputBuffer INFO_OUTPUT_FORMAT_CHANGED"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    :goto_2
    invoke-virtual {v0, p2}, Lcom/alivc/component/encoder/AudioCodecData;->setCode(I)V

    goto :goto_3

    :cond_7
    const/4 v2, -0x1

    if-ne p1, v2, :cond_8

    const-string p1, "dequeueOutputBuffer INFO_TRY_AGAIN_LATER"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    const/4 v2, -0x3

    if-ne p1, v2, :cond_9

    const-string p1, "dequeueOutputBuffer INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/alivc/component/encoder/AudioCodecEncoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_9
    const-string p1, "dequeueOutputBuffer ERROR"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x58

    invoke-virtual {v0, p1}, Lcom/alivc/component/encoder/AudioCodecData;->setCode(I)V

    :goto_3
    return-object v0
.end method
