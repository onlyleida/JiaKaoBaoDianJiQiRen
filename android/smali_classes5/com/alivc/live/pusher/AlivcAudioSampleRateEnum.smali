.class public final enum Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

.field public static final enum AUDIO_SAMPLE_RATE_16000:Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

.field public static final enum AUDIO_SAMPLE_RATE_32000:Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

.field public static final enum AUDIO_SAMPLE_RATE_44100:Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

.field public static final enum AUDIO_SAMPLE_RATE_48000:Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;


# instance fields
.field private mAudioSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    const-string v1, "AUDIO_SAMPLE_RATE_16000"

    const/4 v2, 0x0

    const/16 v3, 0x3e80

    invoke-direct {v0, v1, v2, v3}, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;->AUDIO_SAMPLE_RATE_16000:Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    new-instance v1, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    const-string v3, "AUDIO_SAMPLE_RATE_32000"

    const/4 v4, 0x1

    const/16 v5, 0x7d00

    invoke-direct {v1, v3, v4, v5}, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;->AUDIO_SAMPLE_RATE_32000:Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    new-instance v3, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    const-string v5, "AUDIO_SAMPLE_RATE_44100"

    const/4 v6, 0x2

    const v7, 0xac44

    invoke-direct {v3, v5, v6, v7}, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;->AUDIO_SAMPLE_RATE_44100:Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    new-instance v5, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    const-string v7, "AUDIO_SAMPLE_RATE_48000"

    const/4 v8, 0x3

    const v9, 0xbb80

    invoke-direct {v5, v7, v8, v9}, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;->AUDIO_SAMPLE_RATE_48000:Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;->mAudioSampleRate:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    return-object v0
.end method


# virtual methods
.method public getAudioSampleRate()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;->mAudioSampleRate:I

    return v0
.end method
