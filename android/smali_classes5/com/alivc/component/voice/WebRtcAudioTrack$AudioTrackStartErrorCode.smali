.class public final enum Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/voice/WebRtcAudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioTrackStartErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;

.field public static final enum AUDIO_TRACK_START_EXCEPTION:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;

.field public static final enum AUDIO_TRACK_START_STATE_MISMATCH:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;

    const-string v1, "AUDIO_TRACK_START_EXCEPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;->AUDIO_TRACK_START_EXCEPTION:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;

    new-instance v1, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;

    const-string v3, "AUDIO_TRACK_START_STATE_MISMATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;->AUDIO_TRACK_START_STATE_MISMATCH:Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;->$VALUES:[Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;
    .locals 1

    const-class v0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;
    .locals 1

    sget-object v0, Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;->$VALUES:[Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;

    invoke-virtual {v0}, [Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/component/voice/WebRtcAudioTrack$AudioTrackStartErrorCode;

    return-object v0
.end method
