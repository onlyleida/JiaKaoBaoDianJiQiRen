.class Lcom/alivc/live/pusher/AlivcLivePushError$ErrorCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/AlivcLivePushError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorCode"
.end annotation


# static fields
.field protected static ALIVC_FRAMEWORK_AUDIO_ENCODER_START:I = 0x10003202

.field protected static ALIVC_FRAMEWORK_DECODER_ERROR_START:I = 0x10002000

.field protected static ALIVC_FRAMEWORK_ERROR_START:I = 0x10000000

.field protected static ALIVC_FRAMEWORK_MUXER_ERROR_START:I = 0x10001000

.field protected static ALIVC_FRAMEWORK_RENDER_ERROR_START:I = 0x10004000

.field protected static ALIVC_FRAMEWORK_VIDEO_ENCODER_ERROR_START:I = 0x10003000

.field protected static ALIVC_LIVE_ERROR_SYSTEM_RTMP_START:I = 0x30010900

.field protected static ALIVC_PUSHER_ERROR_NETWORK_ARTP_START:I = 0x30020a00

.field protected static ALIVC_PUSHER_ERROR_NETWORK_RTMP_START:I = 0x30020900

.field protected static ALIVC_PUSHER_ERROR_SDK_BGM_START:I = 0x30010500

.field protected static ALIVC_PUSHER_ERROR_SDK_CAPTURE_START:I = 0x10005000

.field protected static ALIVC_PUSHER_ERROR_SDK_LIVE_PUSH_START:I = 0x30020300

.field protected static ALIVC_PUSHER_ERROR_SDK_NATIVE_LIVE_PUSH_START:I = 0x30020200

.field protected static ALIVC_PUSHER_ERROR_SDK_PUSH_START:I = 0x30020900


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
