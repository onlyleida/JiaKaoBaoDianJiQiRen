.class public Lcom/alivc/component/voice/WebRtcAudioRecord$AudioSamples;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/voice/WebRtcAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioSamples"
.end annotation


# instance fields
.field private final audioFormat:I

.field private final channelCount:I

.field private final data:[B

.field private final sampleRate:I


# direct methods
.method private constructor <init>(Landroid/media/AudioRecord;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v0

    iput v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioSamples;->audioFormat:I

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    iput v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioSamples;->channelCount:I

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioSamples;->sampleRate:I

    iput-object p2, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioSamples;->data:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioRecord;[BLcom/alivc/component/voice/WebRtcAudioRecord$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioSamples;-><init>(Landroid/media/AudioRecord;[B)V

    return-void
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    iget v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioSamples;->audioFormat:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    iget v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioSamples;->channelCount:I

    return v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioSamples;->data:[B

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioSamples;->sampleRate:I

    return v0
.end method
