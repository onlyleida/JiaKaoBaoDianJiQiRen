.class public Lcom/alivc/live/pusher/AlivcLivePusher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alivc/live/pusher/ILivePusher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;
    }
.end annotation


# static fields
.field private static final AUTH_KEY:Ljava/lang/String; = "auth_key="

.field private static final AlivcLivePushPublishType_RTMP:I = 0x1

.field private static final AlivcLivePushPublishType_RTP:I = 0x2

.field private static final MAX_CHATS:I = 0xfa0

.field private static final MAX_DYNAMIC_ADDSON_COUNT:I = 0x3

.field private static final MESSAGE_RECONNECT_SUCCESS:I = 0x12

.field private static final NTP_TIME_OUT_MILLISECOND:I = 0x3e8

.field private static final SECOND:I = 0x3e8

.field private static final TEXTURE_RANGE_MAX:F = 1.0f

.field private static final TEXTURE_RANGE_MIN:F = 0.0f

.field private static final TIMESTAMP_LENGTH:I = 0xa

.field private static isDebugView:Z

.field private static mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

.field private static mPushUrl:Ljava/lang/String;

.field private static res:Lcom/alivc/live/pusher/AlivcResolutionEnum;


# instance fields
.field private isReconnect:Z

.field private mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBGMVolume:I

.field private mBigEye:I

.field protected mBluetoothHelper:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

.field private mBright:I

.field private mCaptureVolume:I

.field private mCheekPink:I

.field private mContext:Landroid/content/Context;

.field private mDebugFunctionText:Ljava/lang/String;

.field private mDynamicAddsonCount:I

.field private mErrorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alivc/live/pusher/AlivcLivePushError;",
            ">;"
        }
    .end annotation
.end field

.field private mExpiryTime:I

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

.field private mInnerSnapshotListener:Lcom/alivc/live/pusher/AlivcSnapshotListener;

.field private mLastError:Lcom/alivc/live/pusher/AlivcLivePushError;

.field private mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

.field private mLogLevel:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

.field private mMute:Z

.field private mPlayStats:Lcom/alivc/live/pusher/AlivcLivePlayStats;

.field private mPreviewCallback:Landroid/view/SurfaceHolder$Callback;

.field private mPreviewView:Landroid/view/SurfaceView;

.field private mPushBGMListener:Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

.field private mPushErrorListener:Lcom/alivc/live/pusher/AlivcLivePushErrorListener;

.field private mPushInfoListener:Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

.field private mPushNetworkListener:Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;

.field private mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

.field private mRenderContextListener:Lcom/alivc/live/pusher/AlivcLivePusherRenderContextListener;

.field private mScreenStatus:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

.field private mShortenFace:I

.field private mSkinSmooth:I

.field private mSlimFace:I

.field private mSnapshotListener:Lcom/alivc/live/pusher/AlivcSnapshotListener;

.field private mSurfaceStatus:Lcom/alivc/live/pusher/SurfaceStatus;

.field private mTelephoneReceiver:Landroid/content/BroadcastReceiver;

.field private mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mTimeCount:I

.field private mTimeStamp:J

.field private mWhiten:I

.field private mWholePink:I

.field private manager:Landroid/telephony/TelephonyManager;

.field private mixRequireMain:Z

.field private registeredCallback:Z

.field private scheduleExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_540P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    sput-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->res:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    const/4 v0, 0x0

    sput-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushUrl:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alivc/live/pusher/AlivcLivePusher;->isDebugView:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushStats;->IDLE:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePlayStats;->IDLE:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPlayStats:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushError;->ALIVC_COMMON_RETURN_SUCCESS:Lcom/alivc/live/pusher/AlivcLivePushError;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLastError:Lcom/alivc/live/pusher/AlivcLivePushError;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushInfoListener:Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushErrorListener:Lcom/alivc/live/pusher/AlivcLivePushErrorListener;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushNetworkListener:Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushBGMListener:Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mRenderContextListener:Lcom/alivc/live/pusher/AlivcLivePusherRenderContextListener;

    sget-object v1, Lcom/alivc/live/pusher/SurfaceStatus;->UNINITED:Lcom/alivc/live/pusher/SurfaceStatus;

    iput-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mSurfaceStatus:Lcom/alivc/live/pusher/SurfaceStatus;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPreviewView:Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAudioManager:Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mErrorMap:Ljava/util/Map;

    const/16 v1, 0x28

    iput v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mSkinSmooth:I

    const/16 v2, 0x46

    iput v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mWhiten:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mBright:I

    const/16 v3, 0xf

    iput v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mCheekPink:I

    iput v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mWholePink:I

    iput v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mSlimFace:I

    const/16 v1, 0x32

    iput v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mShortenFace:I

    const/16 v3, 0x1e

    iput v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mBigEye:I

    iput v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mBGMVolume:I

    iput v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mCaptureVolume:I

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mMute:Z

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->manager:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->AlivcLivePushLogLevelWarn:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    iput-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLogLevel:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->registeredCallback:Z

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->isReconnect:Z

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mTimeStamp:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mExpiryTime:I

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mixRequireMain:Z

    iput v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mDynamicAddsonCount:I

    iput v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mTimeCount:I

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mSnapshotListener:Lcom/alivc/live/pusher/AlivcSnapshotListener;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->SCREEN_RECORD_NONE:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    iput-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mScreenStatus:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v8, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    const/4 v3, 0x3

    const/4 v4, 0x5

    const-wide/16 v5, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v1, "[%1$s] <thread:%2$s> "

    iput-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mDebugFunctionText:Ljava/lang/String;

    new-instance v1, Lcom/alivc/live/pusher/AlivcLivePusher$1;

    invoke-direct {v1, p0}, Lcom/alivc/live/pusher/AlivcLivePusher$1;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    iput-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alivc/live/pusher/AlivcLivePusher$2;

    invoke-direct {v1, p0}, Lcom/alivc/live/pusher/AlivcLivePusher$2;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    iput-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPreviewCallback:Landroid/view/SurfaceHolder$Callback;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->scheduleExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/alivc/live/pusher/AlivcLivePusher$7;

    invoke-direct {v0, p0}, Lcom/alivc/live/pusher/AlivcLivePusher$7;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/alivc/live/pusher/AlivcLivePusher$8;

    invoke-direct {v0, p0}, Lcom/alivc/live/pusher/AlivcLivePusher$8;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mTelephoneReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/alivc/live/pusher/AlivcLivePusher$11;

    invoke-direct {v0, p0}, Lcom/alivc/live/pusher/AlivcLivePusher$11;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mInnerSnapshotListener:Lcom/alivc/live/pusher/AlivcSnapshotListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alivc/live/pusher/AlivcLivePusher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->isReconnect:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alivc/live/pusher/AlivcLivePusher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->isReconnect:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushNetworkListener:Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushStats;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushStats;)Lcom/alivc/live/pusher/AlivcLivePushStats;
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushError;)Lcom/alivc/live/pusher/AlivcLivePushError;
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLastError:Lcom/alivc/live/pusher/AlivcLivePushError;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushInfoListener:Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 0

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->addWaterMark()V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alivc/live/pusher/AlivcLivePusher;Ljava/lang/String;IIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/alivc/live/pusher/AlivcLivePusher;->sendMessageInternal(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getPerformanceMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1702(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePlayStats;)Lcom/alivc/live/pusher/AlivcLivePlayStats;
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPlayStats:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushBGMListener;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushBGMListener:Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePusherRenderContextListener;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mRenderContextListener:Lcom/alivc/live/pusher/AlivcLivePusherRenderContextListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mErrorMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushErrorListener:Lcom/alivc/live/pusher/AlivcLivePushErrorListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/alivc/live/pusher/AlivcLivePusher;)I
    .locals 0

    iget p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mTimeCount:I

    return p0
.end method

.method static synthetic access$2202(Lcom/alivc/live/pusher/AlivcLivePusher;I)I
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mTimeCount:I

    return p1
.end method

.method static synthetic access$2300(Lcom/alivc/live/pusher/AlivcLivePusher;)J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/alivc/live/pusher/AlivcLivePusher;J)J
    .locals 0

    iput-wide p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/alivc/live/pusher/AlivcLivePusher;)I
    .locals 0

    iget p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mExpiryTime:I

    return p0
.end method

.method static synthetic access$2402(Lcom/alivc/live/pusher/AlivcLivePusher;I)I
    .locals 0

    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mExpiryTime:I

    return p1
.end method

.method static synthetic access$2500(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getHeartBeatInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->manager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/alivc/live/pusher/AlivcLivePusher;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->manager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/alivc/live/pusher/AlivcLivePusher;Ljava/lang/String;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->getTimeFromNtpServer(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$2800(Lcom/alivc/live/pusher/AlivcLivePusher;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->getTimestamp(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcSnapshotListener;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mSnapshotListener:Lcom/alivc/live/pusher/AlivcSnapshotListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPreviewView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/SurfaceStatus;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mSurfaceStatus:Lcom/alivc/live/pusher/SurfaceStatus;

    return-object p0
.end method

.method static synthetic access$402(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/SurfaceStatus;)Lcom/alivc/live/pusher/SurfaceStatus;
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mSurfaceStatus:Lcom/alivc/live/pusher/SurfaceStatus;

    return-object p1
.end method

.method static synthetic access$500()Lcom/alivc/live/pusher/LivePusherJNI;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcLivePushConfig;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addWaterMark()V
    .locals 12

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getWaterMarkInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget-object v4, v4, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkPath:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/alivc/live/pusher/AlivcLivePusher;->getImageWidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_2

    aget v5, v4, v2

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    aget v6, v4, v5

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v6}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getPreviewOrientation()I

    move-result v6

    sget-object v7, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->ORIENTATION_LANDSCAPE_HOME_LEFT:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    invoke-virtual {v7}, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->getOrientation()I

    move-result v7

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v6}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getPreviewOrientation()I

    move-result v6

    sget-object v7, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->ORIENTATION_LANDSCAPE_HOME_RIGHT:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    invoke-virtual {v7}, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->getOrientation()I

    move-result v7

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget v6, v6, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkWidth:F

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget v7, v7, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkWidth:F

    aget v5, v4, v5

    int-to-float v5, v5

    mul-float v7, v7, v5

    aget v4, v4, v2

    int-to-float v4, v4

    div-float/2addr v7, v4

    iget-object v4, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v4}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v7, v7, v4

    iget-object v4, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v4}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getHeight()I

    move-result v4

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget v6, v6, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkWidth:F

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget v7, v7, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkWidth:F

    aget v5, v4, v5

    int-to-float v5, v5

    mul-float v7, v7, v5

    aget v4, v4, v2

    int-to-float v4, v4

    div-float/2addr v7, v4

    iget-object v4, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v4}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v7, v7, v4

    iget-object v4, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v4}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getWidth()I

    move-result v4

    :goto_2
    move v5, v7

    move v7, v6

    int-to-float v4, v4

    div-float v8, v5, v4

    sget-object v5, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget-object v6, v4, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget v4, v4, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkCoordX:F

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget v9, v9, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v9, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget v4, v4, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkCoordY:F

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget v11, v11, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkHeight:F

    div-float/2addr v11, v10

    add-float v10, v4, v11

    invoke-virtual/range {v5 .. v10}, Lcom/alivc/live/pusher/LivePusherJNI;->addWaterMark(Ljava/lang/String;FFFF)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private checkConfig(Lcom/alivc/live/pusher/AlivcLivePushConfig;)V
    .locals 4

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isVideoOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isAudioOnly()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot set video only and audio only simultaneously"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getTargetVideoBitrate()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_a

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getTargetVideoBitrate()I

    move-result v0

    const/16 v2, 0x1388

    if-gt v0, v2, :cond_a

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMinVideoBitrate()I

    move-result v0

    if-lt v0, v1, :cond_9

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMinVideoBitrate()I

    move-result v0

    if-gt v0, v2, :cond_9

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getInitialVideoBitrate()I

    move-result v0

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMinVideoBitrate()I

    move-result v3

    if-lt v0, v3, :cond_8

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getInitialVideoBitrate()I

    move-result v0

    if-lt v0, v1, :cond_8

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getInitialVideoBitrate()I

    move-result v0

    if-gt v0, v2, :cond_8

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getConnectRetryCount()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getConnectRetryCount()I

    move-result v0

    if-gt v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getConnectRetryInterval()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getConnectRetryInterval()I

    move-result v0

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMinFps()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMinFps()I

    move-result v0

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getFps()I

    move-result v1

    if-gt v0, v1, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getWaterMarkInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getWaterMarkInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget v1, v1, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkCoordX:F

    const-string v2, "watermark param error"

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_3

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getWaterMarkInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget v1, v1, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkWidth:F

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_3

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getWaterMarkInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget v1, v1, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkCoordY:F

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_3

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getWaterMarkInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget v1, v1, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkHeight:F

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_3

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getWaterMarkInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget v1, v1, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkCoordX:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getWaterMarkInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget v1, v1, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkWidth:F

    cmpg-float v1, v1, v3

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getWaterMarkInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget v1, v1, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkCoordY:F

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getWaterMarkInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alivc/live/pusher/WaterMarkInfo;

    iget v1, v1, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkHeight:F

    cmpg-float v1, v1, v3

    if-lez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "fps error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "connect retry interval error, Range:[0 10000]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "connect retry count error, Range:[0 100]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "init bitrate error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "video min bitrate error, Range:[100 5000]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "video target bitrate error, Range:[100 5000]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parameter, config is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getBGMVolume()I
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mMute:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mBGMVolume:I

    return v0
.end method

.method private getBlueToothHeadSetOn()Z
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mBluetoothHelper:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->isOnHeadsetSco()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getCaptureVolume()I
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mMute:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mCaptureVolume:I

    return v0
.end method

.method private getFormatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "auth_key="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private getHeadSetPlugOn()Z
    .locals 1

    sget-boolean v0, Lcom/alivc/live/pusher/LivePusherJNI;->headSetOn:Z

    return v0
.end method

.method private getHeartBeatInfo()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->getPusherInfo()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",cpu:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->getCPUUsageRatio()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mem:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->getMemoryUsageRatio()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImageWidthHeight(Ljava/lang/String;)[I
    .locals 4

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x2

    :try_start_0
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-array p1, v2, [I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v3, 0x0

    aput v2, p1, v3

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v0, p1, v1

    return-object p1

    :catch_0
    new-array p1, v2, [I

    fill-array-data p1, :array_0

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getNetworkTime()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/alivc/live/pusher/AlivcLivePusher$10;

    invoke-direct {v1, p0}, Lcom/alivc/live/pusher/AlivcLivePusher$10;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    new-instance v1, Lcom/alivc/live/pusher/AlivcLivePusher$9;

    invoke-direct {v1, p0}, Lcom/alivc/live/pusher/AlivcLivePusher$9;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getPerformanceMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->getPerformanceInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v3, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-direct {v0, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    :goto_2
    return-object v1
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alivc/live/pusher/LivePusherJNI;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeFromNtpServer(Ljava/lang/String;)J
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get time from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alivc/live/pusher/SntpClient;

    invoke-direct {v0}, Lcom/alivc/live/pusher/SntpClient;-><init>()V

    const/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1}, Lcom/alivc/live/pusher/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/alivc/live/pusher/SntpClient;->getNtpTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getTimestamp(Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->getFormatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Long;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private registerHeadsetPlugReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mTelephoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->registeredCallback:Z

    return-void
.end method

.method private reportStartPushEvent(ZZ)V
    .locals 4

    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;-><init>()V

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getPerformanceMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-boolean p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->sync:Z

    const-string p2, "mVideoDurationFromeCaptureToUpload"

    invoke-static {v1, p2}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result p2

    int-to-long v2, p2

    iput-wide v2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->vutMs:J

    const-string p2, "mAudioDurationFromeCaptureToUpload"

    invoke-static {v1, p2}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->autMs:J

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getResolution()Lcom/alivc/live/pusher/AlivcResolutionEnum;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xb

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->resolution:Ljava/lang/String;

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getAudioChannels()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const-string p2, "single"

    goto :goto_0

    :cond_0
    const-string p2, "dual"

    :goto_0
    iput-object p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->st:Ljava/lang/String;

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isAudioOnly()Z

    move-result p2

    iput-boolean p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->ao:Z

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isVideoOnly()Z

    move-result p2

    iput-boolean p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->vo:Z

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getVideoEncodeMode()Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    move-result-object p2

    sget-object v1, Lcom/alivc/live/pusher/AlivcEncodeModeEnum;->Encode_MODE_HARD:Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->he:Z

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getWaterMarkInfos()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->wc:I

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isPushMirror()Z

    move-result p2

    iput-boolean p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->pum:Z

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getFps()I

    move-result p2

    iput p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->fps:I

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getInitialVideoBitrate()I

    move-result p2

    iput p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->ivb:I

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getTargetVideoBitrate()I

    move-result p2

    iput p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->mavb:I

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMinVideoBitrate()I

    move-result p2

    iput p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->mivb:I

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getAudioSamepleRate()Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcAudioSampleRateEnum;->getAudioSampleRate()I

    move-result p2

    iput p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->asr:I

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getPreviewOrientation()I

    move-result p2

    iput p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->po:I

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getCameraType()I

    move-result p2

    iput p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->ct:I

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isFlash()Z

    move-result p2

    iput-boolean p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->flash:Z

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getConnectRetryCount()I

    move-result p2

    iput p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->crmc:I

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getConnectRetryInterval()I

    move-result p2

    iput p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->cri:I

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isPreviewMirror()Z

    move-result p2

    iput-boolean p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->prm:Z

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getVideoEncodeGop()I

    move-result p2

    iput p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->gop:I

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getConnectRetryCount()I

    move-result p2

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getConnectRetryInterval()I

    move-result v1

    mul-int p2, p2, v1

    div-int/lit16 p2, p2, 0x3e8

    iput p2, v0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->utm:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object p2, Lcom/alivc/live/pusher/logreport/PusherRestartPushEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v1, Lcom/alivc/live/pusher/logreport/PusherRestartPushEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherRestartPushEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object p2, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v1, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, p2, v1, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method private sendMessageInternal(Ljava/lang/String;IIZZ)V
    .locals 6

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->isPushing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The maximum length is 4000"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alivc/live/pusher/LivePusherJNI;->addSeiInfo(Ljava/lang/String;IIZZ)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Status error, status should be PUSHED"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid parameter on sendMessageInternal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private startScheduleExecutor()V
    .locals 10

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->scheduleExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/alivc/live/pusher/AlivcLivePusher$5;

    invoke-direct {v1, p0}, Lcom/alivc/live/pusher/AlivcLivePusher$5;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->scheduleExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_2
    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->scheduleExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/alivc/live/pusher/AlivcLivePusher$6;

    invoke-direct {v4, p0}, Lcom/alivc/live/pusher/AlivcLivePusher$6;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x7d0

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private stop5Interval()V
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->scheduleExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->scheduleExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->scheduleExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public addDynamicsAddons(Ljava/lang/String;FFFF)I
    .locals 13

    move-object v0, p0

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-ltz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v2

    if-gtz v3, :cond_2

    cmpg-float v3, p3, v1

    if-ltz v3, :cond_2

    cmpl-float v3, p3, v2

    if-gtz v3, :cond_2

    cmpg-float v3, p4, v1

    if-ltz v3, :cond_2

    cmpl-float v3, p4, v2

    if-gtz v3, :cond_2

    cmpg-float v1, p5, v1

    if-ltz v1, :cond_2

    cmpl-float v1, p5, v2

    if-gtz v1, :cond_2

    iget v1, v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mDynamicAddsonCount:I

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-lt v1, v2, :cond_0

    return v3

    :cond_0
    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mDynamicAddsonCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    const-wide/16 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v2

    move-object v2, p1

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v1 .. v12}, Lcom/alivc/live/pusher/LivePusherJNI;->addDynamicsAddons(Ljava/lang/String;JJFFFFIZ)I

    move-result v1

    return v1

    :cond_1
    return v3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "x, y, w, h should in range [0~1.0f]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addMixAudio(ILcom/alivc/live/pusher/AlivcSoundFormat;I)I
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcSoundFormat;->getAlivcSoundFormat()I

    move-result p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/alivc/live/pusher/LivePusherJNI;->addMixAudio(III)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public addMixVideo(Lcom/alivc/live/pusher/AlivcImageFormat;IIIFFFFZ)I
    .locals 10

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcImageFormat;->getAlivcImageFormat()I

    move-result v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/alivc/live/pusher/LivePusherJNI;->addMixVideo(IIIIFFFFZ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public changeResolution(Lcom/alivc/live/pusher/AlivcResolutionEnum;)V
    .locals 2

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->INIT:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "changeResolution can only be called in inited or previewed status"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcResolutionEnum;->GetResolutionWidth(Lcom/alivc/live/pusher/AlivcResolutionEnum;)I

    move-result v1

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcResolutionEnum;->GetResolutionHeight(Lcom/alivc/live/pusher/AlivcResolutionEnum;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->changeResolution(II)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Please excute init first "

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()V
    .locals 4

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->destroy"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alivc/live/pusher/LivePusherJNI;->release()V

    :cond_0
    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alivc/live/pusher/LivePusherJNI;->release()V

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mDynamicAddsonCount:I

    iget-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->registeredCallback:Z

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mTelephoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "unregisterReceiver exception"

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-boolean v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->registeredCallback:Z

    :cond_2
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mBluetoothHelper:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->stop()V

    :cond_3
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushStats;->IDLE:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->stop5Interval()V

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushInfoListener:Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushErrorListener:Lcom/alivc/live/pusher/AlivcLivePushErrorListener;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushNetworkListener:Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPreviewView:Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mErrorMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPreviewCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/alivc/component/player/BGMPlayerJNI;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public focusCameraAtAdjustedPoint(FFZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlivcLivePusher-->focusCameraAtAdjustedPoint x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " auto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlivcLivePusher"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "status error current state is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object p3

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p3, p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0, p3, p1, p2}, Lcom/alivc/live/pusher/LivePusherJNI;->setCameraFocus(ZFF)I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "illegal State, you should init first"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCurrentExposure()I
    .locals 4

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->getCurrentExposure"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->getCurrentExposureCompensation()I

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentStatus()Lcom/alivc/live/pusher/AlivcLivePushStats;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    return-object v0
.end method

.method public getCurrentZoom()I
    .locals 4

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->getCurrentZoom"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->getCameraCurrentZoom()I

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastError()Lcom/alivc/live/pusher/AlivcLivePushError;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLastError:Lcom/alivc/live/pusher/AlivcLivePushError;

    return-object v0
.end method

.method public getLivePushStatsInfo()Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;
    .locals 9

    const-string v0, "mLastAudioFramePTSInQueue"

    const-string v1, "mLastVideoFramePTSInQueue"

    const-string v2, "AlivcLivePusher"

    const-string v3, "AlivcLivePusher-->getLivePushStatsInfo"

    invoke-static {v2, v3}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    new-instance v2, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;

    invoke-direct {v2}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;-><init>()V

    sget-object v4, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v4}, Lcom/alivc/live/pusher/LivePusherJNI;->getPerformanceInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, "|"

    invoke-direct {v6, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    invoke-direct {v4, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :try_start_0
    const-string v3, "mVideoCaptureFps"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoCaptureFps(I)V

    const-string v3, "mAudioEncodeBitrate"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setAudioEncodeBitrate(I)V

    const-string v3, "mVideoRenderingFPS"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoRenderFps(I)V

    const-string v3, "mAudioEncodeFps"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setAudioEncodeFps(I)V

    invoke-static {}, Lcom/alivc/live/pusher/AlivcEncodeModeEnum;->values()[Lcom/alivc/live/pusher/AlivcEncodeModeEnum;

    move-result-object v3

    const-string v4, "mPresetVideoEncoderMode"

    invoke-static {v5, v4}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoEncodeMode(Lcom/alivc/live/pusher/AlivcEncodeModeEnum;)V

    const-string v3, "mVideoEncodeBitrate"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoEncodeBitrate(I)V

    const-string v3, "mVideoEncodedFps"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoEncodeFps(I)V

    const-string v3, "mTotalFramesOfEncodedVideo"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setTotalFramesOfEncodedVideo(J)V

    const-string v3, "mTotalTimeOfEncodedVideo"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setTotalTimeOfEncodedVideo(J)V

    const-string v3, "mPresetVideoEncoderBitrate"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoEncodeParam(I)V

    const-string v3, "mAudioUploadBitrate"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setAudioUploadBitrate(I)V

    const-string v3, "mVideoUploadBitrate"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoUploadBitrate(I)V

    const-string v3, "mAudioPacketsInBuffer"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setAudioPacketsInUploadBuffer(I)V

    const-string v3, "mVideoPacketsInBuffer"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoPacketsInUploadBuffer(I)V

    const-string v3, "mVideoUploadedFps"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoUploadeFps(I)V

    const-string v3, "mAudioUploadingPacketsPerSecond"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setAudioUploadFps(I)V

    const-string v3, "mCurrentlyUploadedVideoFramePts"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setCurrentlyUploadedVideoFramePts(J)V

    const-string v3, "mCurrentlyUploadedAudioFramePts"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setCurrentlyUploadedAudioFramePts(J)V

    const-string v3, "mPreviousKeyFramePts"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setPreviousVideoKeyFramePts(J)V

    invoke-static {v5, v1}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setLastVideoPtsInBuffer(J)V

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setLastAudioPtsInBuffer(J)V

    const-string v3, "mTotalSizeOfUploadedPackets"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setTotalSizeOfUploadedPackets(J)V

    const-string v3, "mTotalTimeOfPublishing"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setTotalTimeOfUploading(J)V

    const-string v3, "mTotalFramesOfVideoUploaded"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setTotalFramesOfUploadedVideo(J)V

    const-string v3, "mDropDurationOfVideoFrames"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setTotalDurationOfDropingVideoFrames(J)V

    const-string v3, "mTotalDroppedTimes"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setTotalTimesOfDropingVideoFrames(J)V

    const-string v3, "mTotalNetworkDisconnectedTimes"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setTotalTimesOfDisconnect(I)V

    const-string v3, "mTotalNetworkReconnectedTimes"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setTotalTimesOfReconnect(I)V

    const-string v3, "mVideoDurationFromeCaptureToUpload"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoDurationFromeCaptureToUpload(I)V

    const-string v3, "mAudioDurationFromeCaptureToUpload"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setAudioDurationFromeCaptureToUpload(I)V

    const-string v3, "mCurrentUploadingPacketSize"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setCurrentUploadPacketSize(I)V

    const-string v3, "mMaxVideoPacketSize"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setMaxSizeOfVideoPacketsInBuffer(I)V

    const-string v3, "mMaxAudioPacketSize"

    invoke-static {v5, v3}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setMaxSizeOfAudioPacketsInBuffer(I)V

    invoke-static {v5, v1}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setLastVideoFramePTSInQueue(J)V

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setLastAudioFramePTSInQueue(J)V

    const-string v0, "mAvPTSInterval"

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setAvPTSInterval(J)V

    const-string v0, "mAudioFramesInEncoderQueue"

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setAudioFrameInEncodeBuffer(I)V

    const-string v0, "mVideoFramesInEncoderQueue"

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoFramesInEncodeBuffer(I)V

    const-string v0, "mVideoFramesInRenderQueue"

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoFramesInRenderBuffer(I)V

    const-string v0, "mVideoRenderConsumingTimePerFrame"

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoRenderConsumingTimePerFrame(I)V

    const-string v0, "mTotalDroppedAudioFrames"

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setTotalDroppedAudioFrames(I)V

    const-string v0, "mRtt"

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setRtt(I)V

    const-string v0, "mVideoLostRate"

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoLostRate(I)V

    const-string v0, "mAudioLostRate"

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setAudioLostRate(I)V

    const-string v0, "mVideoReSendBitRate"

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoReSendBitRate(I)V

    const-string v0, "mAudioReSendBitRate"

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setAudioReSendBitRate(I)V

    const-string v0, "mVideoEncodingWidth"

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoEncodingWidth(I)V

    const-string v0, "mVideoEncodingHeight"

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoEncodingHeight(I)V

    const-string v0, "mVideoEncodingGopSize"

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setVideoEncodingGopSize(I)V

    const-string v0, "mAudioCapturingSampleRate"

    invoke-static {v5, v0}, Lcom/alivc/live/pusher/ParameterUtil;->getInteger(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setAudioCapturingSampleRate(I)V

    invoke-static {}, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->getCPUUsageRatio()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setCpu(F)V

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alivc/live/pusher/ParameterUtil;->getRunningAppProcessInfo(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setMemory(F)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushUrl:Ljava/lang/String;

    const-string v1, "rtmp://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setAlivcLivePushPublishType(I)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;->setAlivcLivePushPublishType(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_2
    return-object v2

    :cond_5
    :goto_3
    return-object v3
.end method

.method public getLiveTraceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->getPusherTraceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxZoom()I
    .locals 4

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->getMaxZoom"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->getCameraMaxZoom()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPushUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->getPushUrl"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedMaxExposure()I
    .locals 4

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->getSupportedMaxExposure"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->getMaxExposureCompensation()I

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSupportedMinExposure()I
    .locals 4

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->getSupportedMinExposure"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->getMinExposureCompensation()I

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/alivc/live/pusher/AlivcLivePushConfig;)V
    .locals 5

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->init"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->IDLE:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->INIT:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init state error, current state is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->registerHeadsetPlugReceiver()V

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->setSDKContext(Landroid/content/Context;)V

    new-instance p1, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mBluetoothHelper:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    new-instance v1, Lcom/alivc/live/pusher/AlivcLivePusher$3;

    invoke-direct {v1, p0}, Lcom/alivc/live/pusher/AlivcLivePusher$3;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    invoke-virtual {p1, v1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->start(Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;)V

    iput-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-direct {p0, p2}, Lcom/alivc/live/pusher/AlivcLivePusher;->checkConfig(Lcom/alivc/live/pusher/AlivcLivePushConfig;)V

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getResolution()Lcom/alivc/live/pusher/AlivcResolutionEnum;

    move-result-object p1

    sput-object p1, Lcom/alivc/live/pusher/AlivcLivePusher;->res:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushError;->values()[Lcom/alivc/live/pusher/AlivcLivePushError;

    move-result-object p1

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mErrorMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushError;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-direct {p1, v0, p0, v1}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;-><init>(Landroid/content/Context;Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushConfig;)V

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    new-instance p1, Lcom/alivc/live/pusher/LivePusherJNI;

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/alivc/live/pusher/AlivcLivePusher$4;

    invoke-direct {v1, p0}, Lcom/alivc/live/pusher/AlivcLivePusher$4;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    invoke-direct {p1, v0, p2, v1}, Lcom/alivc/live/pusher/LivePusherJNI;-><init>(Landroid/content/Context;Lcom/alivc/live/pusher/AlivcLivePushConfig;Lcom/alivc/live/pusher/LivePusherJNI$LivePusherListener;)V

    sput-object p1, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {p1}, Lcom/alivc/live/pusher/LivePusherJNI;->init()V

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alivc/component/player/BGMPlayerJNI;->setContext(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLogLevel:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    invoke-virtual {p0, p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->setLogLevel(Lcom/alivc/live/pusher/AlivcLivePushLogLevel;)V

    sget-object p1, Lcom/alivc/live/pusher/AlivcLivePushStats;->INIT:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    return-void
.end method

.method public inputMixAudioData(I[BIJ)Z
    .locals 6

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alivc/live/pusher/LivePusherJNI;->inputMixAudioData(I[BIJ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public inputMixAudioPtr(IJIJ)Z
    .locals 7

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alivc/live/pusher/LivePusherJNI;->inputMixAudioPtr(IJIJ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public inputMixTexture(IIIIJI)V
    .locals 8

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alivc/live/pusher/LivePusherJNI;->inputMixTexture(IIIIJI)V

    :cond_0
    return-void
.end method

.method public inputMixVideoData(I[BIIIIJI)V
    .locals 10

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/alivc/live/pusher/LivePusherJNI;->inputMixVideoData(I[BIIIIJI)V

    :cond_0
    return-void
.end method

.method public inputMixVideoPtr(IJIIIIJI)V
    .locals 11

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/alivc/live/pusher/LivePusherJNI;->inputMixVideoPtr(IJIIIIJI)V

    :cond_0
    return-void
.end method

.method public inputStreamAudioData([BIIIJ)V
    .locals 7

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alivc/live/pusher/LivePusherJNI;->inputStreamAudioData([BIIIJ)V

    :cond_0
    return-void
.end method

.method public inputStreamAudioPtr(JIIIJ)V
    .locals 8

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alivc/live/pusher/LivePusherJNI;->inputStreamAudioPtr(JIIIJ)V

    :cond_0
    return-void
.end method

.method public inputStreamTexture(IIIIJIJ)V
    .locals 10

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/alivc/live/pusher/LivePusherJNI;->inputStreamTexture(IIIIJIJ)V

    :cond_0
    return-void
.end method

.method public inputStreamVideoData([BIIIIJI)V
    .locals 9

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/alivc/live/pusher/LivePusherJNI;->inputStreamVideoData([BIIIIJI)V

    :cond_0
    return-void
.end method

.method public inputStreamVideoPtr(JIIIIJI)V
    .locals 10

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/alivc/live/pusher/LivePusherJNI;->inputStreamVideoPtr(JIIIIJI)V

    :cond_0
    return-void
.end method

.method public isCameraSupportAutoFocus()Z
    .locals 4

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->isCameraSupportAutoFocus"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->isCameraSupportAutoFocus()Z

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCameraSupportFlash()Z
    .locals 4

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->isCameraSupportFlash"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->isCameraSupportFlash()Z

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNetworkPushing()Z
    .locals 2

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->isNetworkPushing"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->isNetworkPushing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPushing()Z
    .locals 2

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->isPushing"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->isPushing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mixStreamChangePosition(IFFFF)I
    .locals 6

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alivc/live/pusher/LivePusherJNI;->mixStreamChangePosition(IFFFF)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public mixStreamMirror(IZ)V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/alivc/live/pusher/LivePusherJNI;->setMixStreamMirror(IZ)V

    :cond_0
    return-void
.end method

.method public mixStreamRequireMain(IZ)I
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/alivc/live/pusher/LivePusherJNI;->mixStreamRequireMain(IZ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public pause()V
    .locals 4

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->pause"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isExternMainStream()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PAUSED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushStats;->PAUSED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->pause()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alivc/live/pusher/logreport/PusherPauseEvent;->mLastPauseTime:J

    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherPauseEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherPauseEvent$Args;-><init>()V

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getPerformanceMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/alivc/live/pusher/logreport/PusherPauseEvent$Args;->isPauseScreen:Z

    const-string v2, "mTotalSizeOfUploadedPackets"

    invoke-static {v1, v2}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alivc/live/pusher/logreport/PusherPauseEvent$Args;->totalUploadSize:J

    const-string v2, "mTotalTimeOfPublishing"

    invoke-static {v1, v2}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alivc/live/pusher/logreport/PusherPauseEvent$Args;->totalTime:J

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherPauseEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherPauseEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherPauseEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherPauseEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pauseBGM()V
    .locals 4

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPlayStats:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePlayStats;->STARTED:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->pauseBGM()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePlayStats;->values()[Lcom/alivc/live/pusher/AlivcLivePlayStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPlayStats:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pauseScreenCapture()V
    .locals 4

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PAUSED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushStats;->PAUSED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alivc/live/pusher/logreport/PusherPauseEvent;->mLastPauseTime:J

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->pauseScreenCapture()V

    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherPauseEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherPauseEvent$Args;-><init>()V

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getPerformanceMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/alivc/live/pusher/logreport/PusherPauseEvent$Args;->isPauseScreen:Z

    const-string v2, "mTotalSizeOfUploadedPackets"

    invoke-static {v1, v2}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alivc/live/pusher/logreport/PusherPauseEvent$Args;->totalUploadSize:J

    const-string v2, "mTotalTimeOfPublishing"

    invoke-static {v1, v2}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alivc/live/pusher/logreport/PusherPauseEvent$Args;->totalTime:J

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherPauseEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherPauseEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherPauseEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherPauseEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reconnectPushAsync(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->reconnectPushAsync"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->PAUSED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->ERROR:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const-string v0, ""

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->isNetworkPushing()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sput-object p1, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getNetworkTime()V

    :cond_4
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/alivc/live/pusher/LivePusherJNI;->reconnect(Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_8

    iput-boolean v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->isReconnect:Z

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_5

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iput-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMediaProjectionPermissionResultData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->SCREEN_RECORD_NORMAL:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mScreenStatus:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    :cond_6
    new-instance p1, Lcom/alivc/live/pusher/logreport/PusherReconnectEvent$Args;

    invoke-direct {p1}, Lcom/alivc/live/pusher/logreport/PusherReconnectEvent$Args;-><init>()V

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getPerformanceMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "mVideoDurationFromeCaptureToUpload"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/alivc/live/pusher/logreport/PusherReconnectEvent$Args;->vutMs:J

    const-string v1, "mAudioDurationFromeCaptureToUpload"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/alivc/live/pusher/logreport/PusherReconnectEvent$Args;->autMs:J

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v1, Lcom/alivc/live/pusher/logreport/PusherReconnectEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherReconnectEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {p1}, Lcom/alivc/live/pusher/logreport/PusherReconnectEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherReconnectEvent$Args;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "reconnect push async error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeDynamicsAddons(I)V
    .locals 2

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mDynamicAddsonCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mDynamicAddsonCount:I

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->removeDynamicsAddons(I)V

    :cond_0
    return-void
.end method

.method public removeMixAudio(I)V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->removeMixAudio(I)V

    :cond_0
    return-void
.end method

.method public removeMixVideo(I)V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->removeMixVideo(I)V

    :cond_0
    return-void
.end method

.method public restartPush()V
    .locals 5

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->restartPush"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPreviewView:Landroid/view/SurfaceView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMediaProjectionPermissionResultData()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isAudioOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isAudioOnly()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isVideoOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushUrl:Ljava/lang/String;

    const-string v1, "artc://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_3
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_5

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->ERROR:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mDynamicAddsonCount:I

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->stop5Interval()V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPreviewView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Lcom/alivc/live/pusher/LivePusherJNI;->restartPush(Landroid/view/Surface;ZI)I

    move-result v0

    if-nez v0, :cond_9

    iput-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMediaProjectionPermissionResultData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->SCREEN_RECORD_NORMAL:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mScreenStatus:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    :cond_6
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getPausePushImage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getPausePushImage()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getNetworkPoorPushImage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getNetworkPoorPushImage()Ljava/lang/String;

    move-result-object v1

    :goto_3
    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v2, v0, v1}, Lcom/alivc/live/pusher/LivePusherJNI;->addPushImage(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, v4}, Lcom/alivc/live/pusher/AlivcLivePusher;->reportStartPushEvent(ZZ)V

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->startScheduleExecutor()V

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "restart push error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RTC protocol don\'t support audio/video only stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restartPushAync()V
    .locals 4

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->restartPushAync"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPreviewView:Landroid/view/SurfaceView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMediaProjectionPermissionResultData()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isAudioOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isAudioOnly()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isVideoOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushUrl:Ljava/lang/String;

    const-string v1, "artc://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_3
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->ERROR:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPreviewView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/alivc/live/pusher/LivePusherJNI;->restartPush(Landroid/view/Surface;ZI)I

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushStats;->RESTARTING:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getPausePushImage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getPausePushImage()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getNetworkPoorPushImage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getNetworkPoorPushImage()Ljava/lang/String;

    move-result-object v1

    :goto_3
    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v2, v0, v1}, Lcom/alivc/live/pusher/LivePusherJNI;->addPushImage(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->stop5Interval()V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->reportStartPushEvent(ZZ)V

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->startScheduleExecutor()V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "restart push aysnc error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RTC protocol don\'t support audio/video only stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resume()V
    .locals 7

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->resume"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isExternMainStream()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PAUSED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->ERROR:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alivc/live/pusher/LivePusherJNI;->resume(Z)V

    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;-><init>()V

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getPerformanceMap()Ljava/util/Map;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_4

    iput-boolean v1, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->sync:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->isResumeScreen:Z

    const-string v1, "mTotalSizeOfUploadedPackets"

    invoke-static {v2, v1}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->totalUploadSize:J

    const-string v1, "mTotalTimeOfPublishing"

    invoke-static {v2, v1}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->totalTime:J

    sget-wide v1, Lcom/alivc/live/pusher/logreport/PusherPauseEvent;->mLastPauseTime:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    iput-wide v3, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->cost:J

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v5, Lcom/alivc/live/pusher/logreport/PusherPauseEvent;->mLastPauseTime:J

    sub-long/2addr v1, v5

    iput-wide v1, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->cost:J

    :goto_1
    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherResumeEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v5, Lcom/alivc/live/pusher/logreport/PusherResumeEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherResumeEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v5, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    sput-wide v3, Lcom/alivc/live/pusher/logreport/PusherPauseEvent;->mLastPauseTime:J

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->isPushing()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    :goto_2
    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeAsync()V
    .locals 7

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->resumeAsync"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isExternMainStream()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PAUSED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->ERROR:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushStats;->RESUMING:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alivc/live/pusher/LivePusherJNI;->resume(Z)V

    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;-><init>()V

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getPerformanceMap()Ljava/util/Map;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_4

    iput-boolean v1, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->sync:Z

    iput-boolean v1, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->isResumeScreen:Z

    const-string v1, "mTotalSizeOfUploadedPackets"

    invoke-static {v2, v1}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->totalUploadSize:J

    const-string v1, "mTotalTimeOfPublishing"

    invoke-static {v2, v1}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->totalTime:J

    sget-wide v1, Lcom/alivc/live/pusher/logreport/PusherPauseEvent;->mLastPauseTime:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    iput-wide v3, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->cost:J

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v5, Lcom/alivc/live/pusher/logreport/PusherPauseEvent;->mLastPauseTime:J

    sub-long/2addr v1, v5

    iput-wide v1, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->cost:J

    :goto_1
    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherResumeEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v5, Lcom/alivc/live/pusher/logreport/PusherResumeEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherResumeEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v5, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    sput-wide v3, Lcom/alivc/live/pusher/logreport/PusherPauseEvent;->mLastPauseTime:J

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeBGM()V
    .locals 4

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPlayStats:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePlayStats;->PAUSED:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->resumeBGM()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePlayStats;->values()[Lcom/alivc/live/pusher/AlivcLivePlayStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPlayStats:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeScreenCapture()V
    .locals 5

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PAUSED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->resumeScreenCapture()I

    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;-><init>()V

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getPerformanceMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->sync:Z

    iput-boolean v2, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->isResumeScreen:Z

    const-string v2, "mTotalSizeOfUploadedPackets"

    invoke-static {v1, v2}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->totalUploadSize:J

    const-string v2, "mTotalTimeOfPublishing"

    invoke-static {v1, v2}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->totalTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/alivc/live/pusher/logreport/PusherPauseEvent;->mLastPauseTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->cost:J

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherResumeEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherResumeEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherResumeEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alivc/live/pusher/logreport/PusherPauseEvent;->mLastPauseTime:J

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->isPushing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    :goto_0
    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMessage(Ljava/lang/String;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alivc/live/pusher/AlivcLivePusher;->sendMessageInternal(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public setAudioDenoise(Z)V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setAudioDenoise(Z)V

    :cond_0
    return-void
.end method

.method public setAutoFocus(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlivcLivePusher-->setAutoFocus auto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlivcLivePusher"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/alivc/live/pusher/LivePusherJNI;->setCameraFocus(ZFF)I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBGMEarsBack(Z)V
    .locals 3

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setEarsBack(Z)V

    :cond_0
    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherSetBGMEarsBackEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherSetBGMEarsBackEvent$Args;-><init>()V

    iput-boolean p1, v0, Lcom/alivc/live/pusher/logreport/PusherSetBGMEarsBackEvent$Args;->value:Z

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getBlueToothHeadSetOn()Z

    move-result p1

    iput p1, v0, Lcom/alivc/live/pusher/logreport/PusherSetBGMEarsBackEvent$Args;->bh:I

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getHeadSetPlugOn()Z

    move-result p1

    iput p1, v0, Lcom/alivc/live/pusher/logreport/PusherSetBGMEarsBackEvent$Args;->eh:I

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/logreport/PusherSetBGMEarsBackEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherSetBGMEarsBackEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherSetBGMEarsBackEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherSetBGMEarsBackEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public setBGMLoop(Z)V
    .locals 3

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setBGMLoop(Z)V

    :cond_0
    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherSetBGMLoopEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherSetBGMLoopEvent$Args;-><init>()V

    iput-boolean p1, v0, Lcom/alivc/live/pusher/logreport/PusherSetBGMLoopEvent$Args;->value:Z

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v1, Lcom/alivc/live/pusher/logreport/PusherSetBGMLoopEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherSetBGMLoopEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherSetBGMLoopEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherSetBGMLoopEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setBGMVolume(I)V
    .locals 2

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_1

    const/16 v1, 0xa

    if-lez p1, :cond_0

    if-ge p1, v1, :cond_0

    const/16 p1, 0xa

    :cond_0
    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mBGMVolume:I

    div-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setBackgroundMusicVolume(I)V

    :cond_1
    return-void
.end method

.method public setCaptureVolume(I)V
    .locals 2

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_1

    const/16 v1, 0xa

    if-lez p1, :cond_0

    if-ge p1, v1, :cond_0

    const/16 p1, 0xa

    :cond_0
    iput p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mCaptureVolume:I

    div-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setAudioVolume(I)V

    :cond_1
    return-void
.end method

.method public setCustomDetect(Lcom/alivc/component/custom/AlivcLivePushCustomDetect;)V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setCustomDetect(Lcom/alivc/component/custom/AlivcLivePushCustomDetect;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method public setCustomFilter(Lcom/alivc/component/custom/AlivcLivePushCustomFilter;)V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setCustomFilter(Lcom/alivc/component/custom/AlivcLivePushCustomFilter;)V

    :cond_0
    return-void
.end method

.method public setExposure(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlivcLivePusher-->setExposure exposure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlivcLivePusher"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setExposureCompensation(I)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFlash(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlivcLivePusher-->setFlash flash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlivcLivePusher"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setFlash(Z)I

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->setFlash(Z)V

    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherSetFlashEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherSetFlashEvent$Args;-><init>()V

    iput-boolean p1, v0, Lcom/alivc/live/pusher/logreport/PusherSetFlashEvent$Args;->isOpen:Z

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v1, Lcom/alivc/live/pusher/logreport/PusherSetFlashEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherSetFlashEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherSetFlashEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherSetFlashEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLivePushBGMListener(Lcom/alivc/live/pusher/AlivcLivePushBGMListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushBGMListener:Lcom/alivc/live/pusher/AlivcLivePushBGMListener;

    return-void
.end method

.method public setLivePushErrorListener(Lcom/alivc/live/pusher/AlivcLivePushErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushErrorListener:Lcom/alivc/live/pusher/AlivcLivePushErrorListener;

    return-void
.end method

.method public setLivePushInfoListener(Lcom/alivc/live/pusher/AlivcLivePushInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushInfoListener:Lcom/alivc/live/pusher/AlivcLivePushInfoListener;

    return-void
.end method

.method public setLivePushNetworkListener(Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushNetworkListener:Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;

    return-void
.end method

.method public setLivePushRenderContextListener(Lcom/alivc/live/pusher/AlivcLivePusherRenderContextListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mRenderContextListener:Lcom/alivc/live/pusher/AlivcLivePusherRenderContextListener;

    return-void
.end method

.method public setLogDirPath(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlivcLivePusher-->setLogDirPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlivcLivePusher"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setLogDirPath(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLogLevel(Lcom/alivc/live/pusher/AlivcLivePushLogLevel;)V
    .locals 2

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->setLogLevel"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->getLevel()I

    move-result v0

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->AlivcLivePushLogLevelWarn:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    invoke-virtual {v1}, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->getLevel()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/alivc/live/pusher/LogUtil;->disableDebug()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/alivc/live/pusher/LogUtil;->enalbeDebug()V

    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->getLevel()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setLogLevel(I)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMainStreamPosition(FFFF)V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alivc/live/pusher/LivePusherJNI;->setMainStreamPosition(FFFF)V

    :cond_0
    return-void
.end method

.method public setMinVideoBitrate(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlivcLivePusher-->setMinVideoBitrate minVideoBitrate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlivcLivePusher"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/alivc/live/pusher/LivePusherJNI;->setVideoBitrateRange(III)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMute(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlivcLivePusher-->setMute mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlivcLivePusher"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PAUSED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setMute(Z)I

    iput-boolean p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mMute:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/alivc/live/pusher/logreport/PusherMuteOnEvent$Args;

    invoke-direct {p1}, Lcom/alivc/live/pusher/logreport/PusherMuteOnEvent$Args;-><init>()V

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v1, Lcom/alivc/live/pusher/logreport/PusherMuteOffEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherMuteOffEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {p1}, Lcom/alivc/live/pusher/logreport/PusherMuteOnEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherMuteOnEvent$Args;)Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/alivc/live/pusher/logreport/PusherMuteOffEvent$Args;

    invoke-direct {p1}, Lcom/alivc/live/pusher/logreport/PusherMuteOffEvent$Args;-><init>()V

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v1, Lcom/alivc/live/pusher/logreport/PusherMuteOffEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherMuteOffEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {p1}, Lcom/alivc/live/pusher/logreport/PusherMuteOffEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherMuteOffEvent$Args;)Ljava/util/Map;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, v1, v2, p1}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPreviewMirror(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlivcLivePusher-->setPreviewMirror previewMirror: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlivcLivePusher"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setPreviewMirror(Z)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPreviewMode(Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;)V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMediaProjectionPermissionResultData()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;->getPreviewDisplayMode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setDisplayMode(I)V

    :cond_0
    return-void
.end method

.method public setPreviewOrientation(Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;)V
    .locals 3

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->setPreviewOrientation"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->getOrientation()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setOrientaion(I)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPushMirror(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlivcLivePusher-->setPushMirror pushMirror: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlivcLivePusher"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setPusherMirror(Z)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setQualityMode(Lcom/alivc/live/pusher/AlivcQualityModeEnum;)V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcQualityModeEnum;->QM_CUSTOM:Lcom/alivc/live/pusher/AlivcQualityModeEnum;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcQualityModeEnum;->getQualityMode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setQualityMode(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set QM_CUSTOM dynamically"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScreenOrientation(I)V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMediaProjectionPermissionResultData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setScreenOrientation(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not in ScreenCapture Mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Please excute init first "

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTargetVideoBitrate(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlivcLivePusher-->setTargetVideoBitrate targetVideoBitrate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlivcLivePusher"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setVideoBitrateRange(III)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWaterMarkVisible(Z)V
    .locals 3

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setWaterMarkVisible(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setZoom(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlivcLivePusher-->setZoom zoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlivcLivePusher"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setCameraZoom(F)I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public snapshot(IILcom/alivc/live/pusher/AlivcSnapshotListener;)V
    .locals 1

    iput-object p3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mSnapshotListener:Lcom/alivc/live/pusher/AlivcSnapshotListener;

    sget-object p3, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mInnerSnapshotListener:Lcom/alivc/live/pusher/AlivcSnapshotListener;

    invoke-virtual {p3, p1, p2, v0}, Lcom/alivc/live/pusher/LivePusherJNI;->snapshot(IILcom/alivc/live/pusher/AlivcSnapshotListener;)V

    :cond_0
    return-void
.end method

.method public startBGMAsync(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->IDLE:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->ERROR:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPlayStats:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePlayStats;->IDLE:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePlayStats;->STOPED:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent$Args;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent$Args;->isOpen:Z

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getBGMVolume()I

    move-result v1

    iput v1, v0, Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent$Args;->music:I

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getCaptureVolume()I

    move-result v1

    iput v1, v0, Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent$Args;->voice:I

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->resumeBGM()V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->stopBGM()V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->startBGMAsync(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid parameter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startCamera(Landroid/view/SurfaceView;)I
    .locals 2

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMediaProjectionPermissionResultData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mScreenStatus:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->SCREEN_RECORD_NORMAL:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    :cond_0
    sget-object p1, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {p1, v0}, Lcom/alivc/live/pusher/LivePusherJNI;->startCamera(Landroid/view/Surface;)I

    move-result p1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->SCREEN_RECORD_CAMERA_START:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mScreenStatus:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "you should start push screen first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not in ScreenCapture Mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Please excute init first "

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startCameraMix(FFFF)I
    .locals 2

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMediaProjectionPermissionResultData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mScreenStatus:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->SCREEN_RECORD_CAMERA_START:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alivc/live/pusher/LivePusherJNI;->startCameraMix(FFFF)I

    move-result p1

    sget-object p2, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->SCREEN_RECORD_CAMERA_MIX_START:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    iput-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mScreenStatus:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You should start camera first"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not in ScreenCapture Mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Please excute init first "

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startPreview(Landroid/view/SurfaceView;)V
    .locals 5

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->startPreview"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent$Args;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent$Args;->sync:Z

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v4, Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->INIT:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPreviewView:Landroid/view/SurfaceView;

    const-string v0, "start preview error"

    if-nez p1, :cond_3

    sget-object p1, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/alivc/live/pusher/LivePusherJNI;->startPreview(Landroid/view/Surface;Z)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/alivc/live/pusher/LivePusherJNI;->startPreview(Landroid/view/Surface;Z)I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPreviewCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :goto_1
    sget-object p1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMediaProjectionPermissionResultData()Landroid/content/Intent;

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startPreviewAysnc(Landroid/view/SurfaceView;)V
    .locals 5

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->startPreviewAysnc"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent$Args;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent$Args;->sync:Z

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v4, Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->INIT:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEING:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPreviewView:Landroid/view/SurfaceView;

    const-string v0, "start preview aysnc error"

    if-nez p1, :cond_3

    sget-object p1, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/alivc/live/pusher/LivePusherJNI;->startPreview(Landroid/view/Surface;Z)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/alivc/live/pusher/LivePusherJNI;->startPreview(Landroid/view/Surface;Z)I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPreviewCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :goto_1
    sget-object p1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMediaProjectionPermissionResultData()Landroid/content/Intent;

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startPush(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->startPush"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isAudioOnly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isVideoOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "artc://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_1
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->INIT:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->INIT:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPreviewView:Landroid/view/SurfaceView;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v2, v0, v1}, Lcom/alivc/live/pusher/LivePusherJNI;->startPreview(Landroid/view/Surface;Z)I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "start push error : create gl resource failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    sput-object p1, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushUrl:Ljava/lang/String;

    const-string v0, "auth_key="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getNetworkTime()V

    :cond_6
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->refreshPushId()V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0, p1, v1}, Lcom/alivc/live/pusher/LivePusherJNI;->startPush(Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq p1, v0, :cond_7

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMediaProjectionPermissionResultData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->SCREEN_RECORD_NORMAL:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mScreenStatus:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    :cond_7
    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->reportStartPushEvent(ZZ)V

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getPausePushImage()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_8

    move-object p1, v0

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getPausePushImage()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getNetworkPoorPushImage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getNetworkPoorPushImage()Ljava/lang/String;

    move-result-object v0

    :goto_3
    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v1, p1, v0}, Lcom/alivc/live/pusher/LivePusherJNI;->addPushImage(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->startScheduleExecutor()V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "start push error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RTC protocol don\'t support audio/video only stream"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startPushAysnc(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->startPushAysnc"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->INIT:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status error current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v1

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isAudioOnly()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->isVideoOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "artc://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_3
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->INIT:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPreviewView:Landroid/view/SurfaceView;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alivc/live/pusher/LivePusherJNI;->startPreview(Landroid/view/Surface;Z)I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "start push error : create gl resource failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    sput-object p1, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushUrl:Ljava/lang/String;

    const-string v0, "auth_key="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getNetworkTime()V

    :cond_6
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->refreshPushId()V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alivc/live/pusher/LivePusherJNI;->startPush(Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq p1, v0, :cond_7

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMediaProjectionPermissionResultData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->SCREEN_RECORD_NORMAL:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mScreenStatus:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    :cond_7
    invoke-direct {p0, v1, v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->reportStartPushEvent(ZZ)V

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getPausePushImage()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_8

    move-object p1, v0

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getPausePushImage()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getNetworkPoorPushImage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getNetworkPoorPushImage()Ljava/lang/String;

    move-result-object v0

    :goto_3
    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v1, p1, v0}, Lcom/alivc/live/pusher/LivePusherJNI;->addPushImage(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->startScheduleExecutor()V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "start push aysnc error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RTC protocol don\'t support audio/video only stream"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal State, you should init first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopBGMAsync()V
    .locals 4

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPlayStats:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePlayStats;->IDLE:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->stopBGM()V

    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent$Args;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent$Args;->isOpen:Z

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getBGMVolume()I

    move-result v1

    iput v1, v0, Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent$Args;->music:I

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getCaptureVolume()I

    move-result v1

    iput v1, v0, Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent$Args;->voice:I

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherSetBGMEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePlayStats;->values()[Lcom/alivc/live/pusher/AlivcLivePlayStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPlayStats:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopCamera()V
    .locals 2

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMediaProjectionPermissionResultData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->stopCamera()V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->SCREEN_RECORD_NORMAL:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mScreenStatus:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not in ScreenCapture Mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please excute init first "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopCameraMix()V
    .locals 2

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getMediaProjectionPermissionResultData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->stopCameraMix()V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->SCREEN_RECORD_CAMERA_START:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mScreenStatus:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not in ScreenCapture Mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please excute init first "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopPreview()V
    .locals 4

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->stopPreview"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v1, Lcom/alivc/live/pusher/logreport/PusherStopPreviewEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherStopPreviewEvent;->kTopicValue:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/alivc/live/pusher/logreport/PusherStopPreviewEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherStopPreviewEvent$Args;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mDynamicAddsonCount:I

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->INIT:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->stopPreview()I

    move-result v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stop preview error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopPush()V
    .locals 4

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->stopPush"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherStopPushEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherStopPushEvent$Args;-><init>()V

    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->getPerformanceMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "mTotalSizeOfUploadedPackets"

    invoke-static {v1, v2}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alivc/live/pusher/logreport/PusherStopPushEvent$Args;->totalUploadSize:J

    const-string v2, "mTotalTimeOfPublishing"

    invoke-static {v1, v2}, Lcom/alivc/live/pusher/ParameterUtil;->getLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alivc/live/pusher/logreport/PusherStopPushEvent$Args;->totalTime:J

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherStopPushEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherStopPushEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherStopPushEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherStopPushEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_2

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->PAUSED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushStats;->ERROR:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->stopPush()I

    move-result v0

    if-nez v0, :cond_4

    iput-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPreviewView:Landroid/view/SurfaceView;

    if-nez v0, :cond_3

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->stopPreview()I

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushStats;->INIT:Lcom/alivc/live/pusher/AlivcLivePushStats;

    iput-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    :cond_3
    invoke-direct {p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->stop5Interval()V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stop push error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public switchCamera()V
    .locals 4

    const-string v0, "AlivcLivePusher"

    const-string v1, "AlivcLivePusher-->switchCamera"

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PREVIEWED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushStats;->PUSHED:Lcom/alivc/live/pusher/AlivcLivePushStats;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status error current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePushStats;->values()[Lcom/alivc/live/pusher/AlivcLivePushStats;

    move-result-object v2

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mPushStatus:Lcom/alivc/live/pusher/AlivcLivePushStats;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher;->mNativeAlivcLivePusher:Lcom/alivc/live/pusher/LivePusherJNI;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/LivePusherJNI;->switchCamera()I

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getCameraType()I

    move-result v0

    sget-object v1, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;->CAMERA_TYPE_FRONT:Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

    invoke-virtual {v1}, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;->getCameraId()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    sget-object v2, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;->CAMERA_TYPE_BACK:Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

    invoke-virtual {v0, v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->setCameraType(Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v0, v1}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->setCameraType(Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;)V

    :goto_1
    new-instance v0, Lcom/alivc/live/pusher/logreport/PusherSwitchCameraEvent$Args;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/PusherSwitchCameraEvent$Args;-><init>()V

    iget-object v2, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mAlivcLivePushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-virtual {v2}, Lcom/alivc/live/pusher/AlivcLivePushConfig;->getCameraType()I

    move-result v2

    invoke-virtual {v1}, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;->getCameraId()I

    move-result v1

    if-ne v2, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v0, Lcom/alivc/live/pusher/logreport/PusherSwitchCameraEvent$Args;->isFrontCamera:Z

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher;->mLiveEventReporter:Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;

    sget-object v2, Lcom/alivc/live/pusher/logreport/PusherSwitchCameraEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sget-object v3, Lcom/alivc/live/pusher/logreport/PusherSwitchCameraEvent;->kTopicValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/alivc/live/pusher/logreport/PusherSwitchCameraEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherSwitchCameraEvent$Args;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal State, you should init first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
