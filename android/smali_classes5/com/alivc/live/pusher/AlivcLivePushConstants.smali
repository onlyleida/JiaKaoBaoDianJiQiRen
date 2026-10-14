.class public Lcom/alivc/live/pusher/AlivcLivePushConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$Status;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$PublishStatus;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_720P_FLUENCY_FIRST;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_720P_RESOLUTION_FIRST;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_720P;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P_FLUENCY_FIRST;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P_RESOLUTION_FIRST;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_480P_FLUENCY_FIRST;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_480P_RESOLUTION_FIRST;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_480P;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_360P_FLUENCY_FIRST;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_360P_RESOLUTION_FIRST;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_360P;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P_FLUENCY_FIRST;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P_RESOLUTION_FIRST;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_180P_FLUENCY_FIRST;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_180P_RESOLUTION_FIRST;,
        Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_180P;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CONTROL_FAILED_TIME:I = 0x3

.field public static final DEFAULT_MAX_DIFF_PTS:I = 0x12c

.field public static final DEFAULT_MAX_TIMEOUT_COUNT:I = 0xa

.field public static final DEFAULT_MIN_BITRATE_CONTROL_INTERVAL:I = 0x4c4b40

.field public static final DEFAULT_NEED_UPBPS_CACHE_SIZE:I = 0x2

.field public static final DEFAULT_QUEUESIZE_NEED_BITRATE_CONTROL:I = 0x3c

.field public static final DEFAULT_RTMP_UPBPS_MIN_FREE_PERCENTAGE:I = 0x14

.field public static final DEFAULT_START_ALRAM_PACKET_SIZE:I = 0x3c

.field public static final DEFAULT_START_DROP_GOP_PACKET_SIZE:I = 0xc8

.field public static final DEFAULT_STOP_ALARM_PACKET_SIZE:I = 0x14

.field public static final DEFAULT_STOP_DROP_GOP_PACKET_SIZE:I = 0x28

.field public static final DEFAULT_UPBPS_REQUEST_FREE_DURATION:I = 0x1312d00

.field public static final DEFAULT_VALUE_AUDIO_ONLY:Z = false

.field public static final DEFAULT_VALUE_AUTO_FOCUS:Z = true

.field public static final DEFAULT_VALUE_FLASH:Z = false

.field public static final DEFAULT_VALUE_INT_AUDIO_RETRY_COUNT:I = 0x5

.field public static final DEFAULT_VALUE_INT_AUDIO_SAMPLE_RATE:I = 0x7d00

.field public static final DEFAULT_VALUE_INT_CAMERA_TYPE:I = 0x1

.field public static final DEFAULT_VALUE_INT_DEFINITION:Lcom/alivc/live/pusher/AlivcResolutionEnum;

.field public static final DEFAULT_VALUE_INT_INIT_BITRATE:I = 0x3e8

.field public static final DEFAULT_VALUE_INT_MIN_BITRATE:I = 0x12c

.field public static final DEFAULT_VALUE_INT_RETRY_INTERVAL:I = 0x3e8

.field public static final DEFAULT_VALUE_INT_SCREEN_ORIENTATION:I = 0x1

.field public static final DEFAULT_VALUE_INT_TARGET_BITRATE:I = 0x4b0

.field public static final DEFAULT_VALUE_INT_VIDEO_FPS:I = 0x14

.field public static final DEFAULT_VALUE_PREVIEW_MIRROR:Z = false

.field public static final DEFAULT_VALUE_PUSH_MIRROR:Z = false

.field public static final DEFAULT_VALUE_VIDEO_ONLY:Z = false

.field public static final RESOLUTION_1080:I = 0x438

.field public static final RESOLUTION_1280:I = 0x500

.field public static final RESOLUTION_180:I = 0xb4

.field public static final RESOLUTION_1920:I = 0x780

.field public static final RESOLUTION_240:I = 0xf0

.field public static final RESOLUTION_320:I = 0x140

.field public static final RESOLUTION_360:I = 0x168

.field public static final RESOLUTION_480:I = 0x1e0

.field public static final RESOLUTION_540:I = 0x21c

.field public static final RESOLUTION_640:I = 0x280

.field public static final RESOLUTION_720:I = 0x2d0

.field public static final RESOLUTION_848:I = 0x350

.field public static final RESOLUTION_960:I = 0x3c0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_540P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    sput-object v0, Lcom/alivc/live/pusher/AlivcLivePushConstants;->DEFAULT_VALUE_INT_DEFINITION:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
