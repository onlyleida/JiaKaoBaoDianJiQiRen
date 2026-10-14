.class public Lcom/serenegiant/media/MediaAudioEncoder;
.super Lcom/serenegiant/media/MediaEncoder;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/media/IAudioEncoder;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;
    }
.end annotation


# static fields
.field private static final AUDIO_SOURCES:[I

.field private static final BIT_RATE:I = 0xfa00

.field private static final DEBUG:Z = false

.field public static final FRAMES_PER_BUFFER:I = 0x19

.field private static final MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final SAMPLES_PER_FRAME:I = 0x400

.field private static final SAMPLE_RATE:I = 0xac44

.field private static final TAG:Ljava/lang/String; = "MediaAudioEncoder"


# instance fields
.field private mAudioThread:Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/serenegiant/media/MediaAudioEncoder;->AUDIO_SOURCES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x1
        0x0
        0x7
        0x6
    .end array-data
.end method

.method public constructor <init>(Lcom/serenegiant/media/MediaMovieRecorder;Lcom/serenegiant/media/IMediaCodecCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/serenegiant/media/MediaEncoder;-><init>(ZLcom/serenegiant/media/AbstractRecorder;Lcom/serenegiant/media/IMediaCodecCallback;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/serenegiant/media/MediaAudioEncoder;->mAudioThread:Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;

    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/serenegiant/media/MediaAudioEncoder;->AUDIO_SOURCES:[I

    return-object v0
.end method


# virtual methods
.method public prepare()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/serenegiant/media/MediaEncoder;->mTrackIndex:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/serenegiant/media/MediaEncoder;->mIsEOS:Z

    iput-boolean v0, p0, Lcom/serenegiant/media/MediaEncoder;->mMuxerStarted:Z

    const-string v0, "audio/mp4a-latm"

    .line 3
    invoke-static {v0}, Lcom/serenegiant/media/MediaCodecHelper;->selectAudioEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "MediaAudioEncoder"

    const-string v1, "Unable to find an appropriate codec for audio/mp4a-latm"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v1, 0xac44

    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const/4 v3, 0x2

    const-string v4, "aac-profile"

    .line 6
    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v3, 0x10

    const-string v4, "channel-mask"

    .line 7
    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v3, 0xfa00

    const-string v4, "bitrate"

    .line 8
    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "channel-count"

    .line 9
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 10
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 12
    iget-object v0, p0, Lcom/serenegiant/media/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 13
    iput-boolean v2, p0, Lcom/serenegiant/media/MediaEncoder;->mIsPrepared:Z

    .line 14
    invoke-virtual {p0}, Lcom/serenegiant/media/MediaEncoder;->callOnPrepared()V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/serenegiant/media/MediaAudioEncoder;->mAudioThread:Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;

    .line 2
    invoke-super {p0}, Lcom/serenegiant/media/MediaEncoder;->release()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/serenegiant/media/MediaEncoder;->start()V

    .line 2
    iget-object v0, p0, Lcom/serenegiant/media/MediaAudioEncoder;->mAudioThread:Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;-><init>(Lcom/serenegiant/media/MediaAudioEncoder;Lcom/serenegiant/media/MediaAudioEncoder$1;)V

    iput-object v0, p0, Lcom/serenegiant/media/MediaAudioEncoder;->mAudioThread:Lcom/serenegiant/media/MediaAudioEncoder$AudioThread;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
