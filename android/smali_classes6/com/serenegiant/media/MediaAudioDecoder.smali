.class public Lcom/serenegiant/media/MediaAudioDecoder;
.super Lcom/serenegiant/media/MediaDecoder;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private mAudioChannels:I

.field private mAudioInputBufSize:I

.field private mAudioOutTempBuf:[B

.field private mAudioSampleRate:I

.field private mAudioTrack:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/serenegiant/media/MediaDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCodec(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/serenegiant/media/MediaDecoder;->createCodec(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 p3, 0x0

    .line 3
    aget-object p2, p2, p3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    if-gtz p2, :cond_0

    .line 4
    iget p2, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioInputBufSize:I

    .line 5
    :cond_0
    new-array p2, p2, [B

    iput-object p2, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioOutTempBuf:[B

    .line 6
    :try_start_0
    new-instance p2, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    iget v2, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioSampleRate:I

    iget p3, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioChannels:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const/4 p3, 0x4

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/16 p3, 0xc

    const/16 v3, 0xc

    :goto_0
    const/4 v4, 0x2

    iget v5, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioInputBufSize:I

    const/4 v6, 0x1

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p2, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    .line 7
    invoke-virtual {p2}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    iget-object p2, p0, Lcom/serenegiant/media/MediaDecoder;->TAG:Ljava/lang/String;

    const-string p3, "failed to start audio track playing"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    iget-object p2, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p2}, Landroid/media/AudioTrack;->release()V

    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    .line 12
    :cond_2
    throw p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method protected getOutputSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleOutput(Ljava/nio/ByteBuffer;IIJ)Z
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioOutTempBuf:[B

    array-length p4, p4

    if-ge p4, p3, :cond_0

    .line 2
    new-array p4, p3, [B

    iput-object p4, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioOutTempBuf:[B

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget-object p2, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioOutTempBuf:[B

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 6
    iget-object p1, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz p1, :cond_1

    .line 7
    iget-object p2, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioOutTempBuf:[B

    invoke-virtual {p1, p2, p4, p3}, Landroid/media/AudioTrack;->write([BII)I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected handlePrepare(Landroid/media/MediaExtractor;)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const-string v0, "audio/"

    .line 1
    invoke-static {p1, v0}, Lcom/serenegiant/media/MediaDecoder;->selectTrack(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 2
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v1, "channel-count"

    .line 3
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioChannels:I

    const-string v1, "sample-rate"

    .line 4
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioSampleRate:I

    .line 5
    iget v2, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioChannels:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    :goto_0
    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    const-string v2, "max-input-size"

    .line 6
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    if-lez v1, :cond_1

    .line 7
    iget v2, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioChannels:I

    mul-int v1, v1, v2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    iput v1, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioInputBufSize:I

    if-le v1, p1, :cond_2

    .line 8
    iput p1, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioInputBufSize:I

    .line 9
    :cond_2
    iget p1, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioChannels:I

    mul-int/lit8 p1, p1, 0x2

    .line 10
    iget v1, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioInputBufSize:I

    div-int/2addr v1, p1

    mul-int v1, v1, p1

    iput v1, p0, Lcom/serenegiant/media/MediaAudioDecoder;->mAudioInputBufSize:I

    :cond_3
    return v0
.end method
