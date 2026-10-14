.class public final enum Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/voice/WebRtcAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioRecordStartErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;

.field public static final enum AUDIO_RECORD_START_EXCEPTION:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;

.field public static final enum AUDIO_RECORD_START_STATE_MISMATCH:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;

    const-string v1, "AUDIO_RECORD_START_EXCEPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;->AUDIO_RECORD_START_EXCEPTION:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;

    new-instance v1, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;

    const-string v3, "AUDIO_RECORD_START_STATE_MISMATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;->AUDIO_RECORD_START_STATE_MISMATCH:Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;->$VALUES:[Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;
    .locals 1

    const-class v0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;
    .locals 1

    sget-object v0, Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;->$VALUES:[Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;

    invoke-virtual {v0}, [Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/component/voice/WebRtcAudioRecord$AudioRecordStartErrorCode;

    return-object v0
.end method
