.class public Lcom/alivc/component/capture/VideoPusher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;,
        Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;
    }
.end annotation


# static fields
.field private static MIN_CAP_RESOLUTION:I = 0xc0

.field private static final SCREEN_LANDSCAPE_LEFT:I = 0x5a

.field private static final SCREEN_LANDSCAPE_RIGHT:I = 0x10e

.field private static final SCREEN_PORTRAIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoPusher"

.field private static buffer:[B

.field private static buffer1:[B

.field private static buffer2:[B

.field private static sSupportedFormat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSupportedResolutionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;>;"
        }
    .end annotation
.end field

.field private static supportMaxWH:I


# instance fields
.field private final ACCEL_DELTAXYZ_DIFF:F

.field private final ACCEL_DELTA_DIFF:F

.field private final INITIATE_VALUE:F

.field private final MAG_DELTA_DIFF:F

.field private final TIME_MILLISECOND:I

.field private mAccelSensor:Landroid/hardware/Sensor;

.field private mAutoFocus:Z

.field private mAutoFocusing:Z

.field private mBaseWallTime:J

.field private mBelowMinFpsNumberTimes:I

.field private mCamera:Landroid/hardware/Camera;

.field private mCurrentFps:I

.field private mCustomRotation:I

.field private mDataOrientation:I

.field private mFlashOn:Z

.field private mLastCaptureTime:J

.field private mLastFpsCountTime:J

.field private mLastFpsCounter:I

.field private mLastXAccel:F

.field private mLastXMag:F

.field private mLastYAccel:F

.field private mLastYMag:F

.field private mLastZAccel:F

.field private mLastZMag:F

.field private mMagneticSensor:Landroid/hardware/Sensor;

.field private mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mOrientation:I

.field private mParam:Lcom/alivc/component/capture/VideoParam;

.field private mPause:Z

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewRunning:Z

.field private mScreen:I

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorFocus:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStartElapsedTime:J

.field private mSurfaceCbMode:Z

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureId:I

.field private mSwitchCamera:Z

.field private mVideoSourceListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

.field private mVideoSourceTextureListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alivc/component/capture/VideoPusher;->sSupportedResolutionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alivc/component/capture/VideoPusher;->sSupportedFormat:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alivc/component/capture/VideoPusher;->TIME_MILLISECOND:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alivc/component/capture/VideoPusher;->INITIATE_VALUE:F

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->MAG_DELTA_DIFF:F

    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->ACCEL_DELTA_DIFF:F

    const v1, 0x3fb33333    # 1.4f

    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->ACCEL_DELTAXYZ_DIFF:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mPause:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mVideoSourceListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    iput-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mVideoSourceTextureListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSwitchCamera:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/alivc/component/capture/VideoPusher;->mLastCaptureTime:J

    iput-wide v3, p0, Lcom/alivc/component/capture/VideoPusher;->mLastFpsCountTime:J

    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastFpsCounter:I

    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->mBelowMinFpsNumberTimes:I

    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCurrentFps:I

    iput-wide v3, p0, Lcom/alivc/component/capture/VideoPusher;->mBaseWallTime:J

    iput-wide v3, p0, Lcom/alivc/component/capture/VideoPusher;->mStartElapsedTime:J

    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTextureId:I

    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mFlashOn:Z

    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mAutoFocus:Z

    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mAutoFocusing:Z

    iput-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mAccelSensor:Landroid/hardware/Sensor;

    iput-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mMagneticSensor:Landroid/hardware/Sensor;

    iput v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastXAccel:F

    iput v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastYAccel:F

    iput v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastZAccel:F

    iput v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastXMag:F

    iput v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastYMag:F

    iput v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastZMag:F

    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCustomRotation:I

    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorFocus:Z

    new-instance v0, Lcom/alivc/component/capture/VideoPusher$1;

    invoke-direct {v0, p0}, Lcom/alivc/component/capture/VideoPusher$1;-><init>(Lcom/alivc/component/capture/VideoPusher;)V

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    new-instance v0, Lcom/alivc/component/capture/VideoPusher$2;

    invoke-direct {v0, p0}, Lcom/alivc/component/capture/VideoPusher$2;-><init>(Lcom/alivc/component/capture/VideoPusher;)V

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    new-instance v0, Lcom/alivc/component/capture/VideoPusher$4;

    invoke-direct {v0, p0}, Lcom/alivc/component/capture/VideoPusher$4;-><init>(Lcom/alivc/component/capture/VideoPusher;)V

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;
    .locals 0

    iget-object p0, p0, Lcom/alivc/component/capture/VideoPusher;->mVideoSourceTextureListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alivc/component/capture/VideoPusher;)J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/component/capture/VideoPusher;->mBaseWallTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/alivc/component/capture/VideoPusher;)J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastFpsCountTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/alivc/component/capture/VideoPusher;J)J
    .locals 0

    iput-wide p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastFpsCountTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/alivc/component/capture/VideoPusher;J)J
    .locals 0

    iput-wide p1, p0, Lcom/alivc/component/capture/VideoPusher;->mBaseWallTime:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/alivc/component/capture/VideoPusher;I)I
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mCurrentFps:I

    return p1
.end method

.method static synthetic access$1200(Lcom/alivc/component/capture/VideoPusher;)I
    .locals 0

    iget p0, p0, Lcom/alivc/component/capture/VideoPusher;->mBelowMinFpsNumberTimes:I

    return p0
.end method

.method static synthetic access$1202(Lcom/alivc/component/capture/VideoPusher;I)I
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mBelowMinFpsNumberTimes:I

    return p1
.end method

.method static synthetic access$1208(Lcom/alivc/component/capture/VideoPusher;)I
    .locals 2

    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mBelowMinFpsNumberTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->mBelowMinFpsNumberTimes:I

    return v0
.end method

.method static synthetic access$1300(Lcom/alivc/component/capture/VideoPusher;)F
    .locals 0

    iget p0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastXMag:F

    return p0
.end method

.method static synthetic access$1302(Lcom/alivc/component/capture/VideoPusher;F)F
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastXMag:F

    return p1
.end method

.method static synthetic access$1400(Lcom/alivc/component/capture/VideoPusher;)F
    .locals 0

    iget p0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastYMag:F

    return p0
.end method

.method static synthetic access$1402(Lcom/alivc/component/capture/VideoPusher;F)F
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastYMag:F

    return p1
.end method

.method static synthetic access$1500(Lcom/alivc/component/capture/VideoPusher;)F
    .locals 0

    iget p0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastZMag:F

    return p0
.end method

.method static synthetic access$1502(Lcom/alivc/component/capture/VideoPusher;F)F
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastZMag:F

    return p1
.end method

.method static synthetic access$1600(Lcom/alivc/component/capture/VideoPusher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alivc/component/capture/VideoPusher;->mAutoFocusing:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/alivc/component/capture/VideoPusher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/component/capture/VideoPusher;->mAutoFocusing:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/alivc/component/capture/VideoPusher;)V
    .locals 0

    invoke-direct {p0}, Lcom/alivc/component/capture/VideoPusher;->cameraAutoFocus()V

    return-void
.end method

.method static synthetic access$1800(Lcom/alivc/component/capture/VideoPusher;)F
    .locals 0

    iget p0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastXAccel:F

    return p0
.end method

.method static synthetic access$1802(Lcom/alivc/component/capture/VideoPusher;F)F
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastXAccel:F

    return p1
.end method

.method static synthetic access$1900(Lcom/alivc/component/capture/VideoPusher;)F
    .locals 0

    iget p0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastYAccel:F

    return p0
.end method

.method static synthetic access$1902(Lcom/alivc/component/capture/VideoPusher;F)F
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastYAccel:F

    return p1
.end method

.method static synthetic access$200(Lcom/alivc/component/capture/VideoPusher;)J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/component/capture/VideoPusher;->mStartElapsedTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/alivc/component/capture/VideoPusher;)F
    .locals 0

    iget p0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastZAccel:F

    return p0
.end method

.method static synthetic access$2002(Lcom/alivc/component/capture/VideoPusher;F)F
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastZAccel:F

    return p1
.end method

.method static synthetic access$202(Lcom/alivc/component/capture/VideoPusher;J)J
    .locals 0

    iput-wide p1, p0, Lcom/alivc/component/capture/VideoPusher;->mStartElapsedTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;
    .locals 0

    iget-object p0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alivc/component/capture/VideoPusher;)I
    .locals 0

    iget p0, p0, Lcom/alivc/component/capture/VideoPusher;->mCustomRotation:I

    return p0
.end method

.method static synthetic access$500(Lcom/alivc/component/capture/VideoPusher;)I
    .locals 0

    iget p0, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    return p0
.end method

.method static synthetic access$600(Lcom/alivc/component/capture/VideoPusher;)J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastCaptureTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/alivc/component/capture/VideoPusher;J)J
    .locals 0

    iput-wide p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastCaptureTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/alivc/component/capture/VideoPusher;)I
    .locals 0

    iget p0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastFpsCounter:I

    return p0
.end method

.method static synthetic access$702(Lcom/alivc/component/capture/VideoPusher;I)I
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastFpsCounter:I

    return p1
.end method

.method static synthetic access$708(Lcom/alivc/component/capture/VideoPusher;)I
    .locals 2

    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastFpsCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastFpsCounter:I

    return v0
.end method

.method static synthetic access$800(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;
    .locals 0

    iget-object p0, p0, Lcom/alivc/component/capture/VideoPusher;->mVideoSourceListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alivc/component/capture/VideoPusher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alivc/component/capture/VideoPusher;->mPause:Z

    return p0
.end method

.method private cameraAutoFocus()V
    .locals 4

    const-string v0, "auto"

    const-string v1, "VideoPusher"

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/alivc/component/capture/VideoPusher;->mAutoFocusing:Z

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "continuous-video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParameters failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lcom/alivc/component/capture/VideoPusher$5;

    invoke-direct {v2, p0}, Lcom/alivc/component/capture/VideoPusher$5;-><init>(Lcom/alivc/component/capture/VideoPusher;)V

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParameters failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static getSupportedFormats()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/alivc/component/capture/VideoPusher;->sSupportedFormat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alivc/component/capture/VideoPusher;->sSupportedFormat:Ljava/util/List;

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    :goto_0
    sget-object v0, Lcom/alivc/component/capture/VideoPusher;->sSupportedFormat:Ljava/util/List;

    return-object v0
.end method

.method public static getSupportedResolutions(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/alivc/component/capture/VideoPusher;->sSupportedResolutionMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    sget-object v0, Lcom/alivc/component/capture/VideoPusher;->sSupportedResolutionMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    sget-object v0, Lcom/alivc/component/capture/VideoPusher;->sSupportedResolutionMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private isHasPermission()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mHasPermission"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private preparePublisher(II)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "prepare publisher. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/alivc/component/capture/VideoPusher;->mOrientation:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {p2}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoPusher"

    invoke-static {p2, p1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/alivc/component/capture/VideoPusher;->mSwitchCamera:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/alivc/component/capture/VideoPusher;->mPause:Z

    if-nez p1, :cond_0

    const-string p1, "prepare publisher over."

    invoke-static {p2, p1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alivc/component/capture/VideoPusher;->mSwitchCamera:Z

    :goto_0
    return-void
.end method

.method private setPreviewFpsRange(Landroid/hardware/Camera$Parameters;)V
    .locals 10

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getFps()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v6, v3, v5

    sub-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aget v7, v3, v4

    sub-int/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v3, v5

    aput v7, v2, v5

    aget v3, v3, v4

    aput v3, v2, v4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v8, v7, v5

    sub-int/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    aget v9, v7, v4

    sub-int/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    if-ge v8, v6, :cond_1

    aget v6, v7, v5

    aput v6, v2, v5

    aget v6, v7, v4

    aput v6, v2, v4

    move v6, v8

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :try_start_0
    aget v0, v2, v5

    aget v1, v2, v4

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getFps()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u9884\u89c8\u5e27\u7387 fps:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPusher"

    invoke-static {v0, p1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setPreviewOrientation(Landroid/hardware/Camera$Parameters;I)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SetRotation : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPusher"

    invoke-static {v0, p1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v0

    invoke-static {v0, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alivc/component/capture/VideoPusher;->mScreen:I

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_0

    goto :goto_3

    :cond_0
    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v0, :cond_1

    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v3, p0, Lcom/alivc/component/capture/VideoPusher;->mOrientation:I

    add-int/2addr v1, v3

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    rsub-int v1, v1, 0x168

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v3, p0, Lcom/alivc/component/capture/VideoPusher;->mOrientation:I

    sub-int/2addr v1, v3

    add-int/lit16 v1, v1, 0x168

    :goto_0
    add-int/2addr v1, v2

    goto :goto_2

    :cond_2
    iget v2, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v0, :cond_3

    iget v2, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v3, p0, Lcom/alivc/component/capture/VideoPusher;->mOrientation:I

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    rsub-int v2, v2, 0x168

    goto :goto_1

    :cond_3
    iget v2, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v3, p0, Lcom/alivc/component/capture/VideoPusher;->mOrientation:I

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x168

    :goto_1
    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    goto :goto_3

    :cond_4
    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v0, :cond_5

    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v2, p0, Lcom/alivc/component/capture/VideoPusher;->mOrientation:I

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    rsub-int v1, v1, 0x168

    add-int/lit16 v1, v1, 0xb4

    goto :goto_2

    :cond_5
    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v2, p0, Lcom/alivc/component/capture/VideoPusher;->mOrientation:I

    sub-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x168

    :goto_2
    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    :goto_3
    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    if-ne v1, v0, :cond_6

    add-int/2addr p1, p2

    rem-int/lit16 p1, p1, 0x168

    rsub-int p1, p1, 0x168

    goto :goto_4

    :cond_6
    sub-int/2addr p1, p2

    add-int/lit16 p1, p1, 0x168

    :goto_4
    rem-int/lit16 p1, p1, 0x168

    :try_start_0
    iget-object p2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setPreviewSize(Landroid/hardware/Camera$Parameters;)V
    .locals 12

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u652f\u6301:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "VideoPusher"

    if-eqz v7, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u652f\u6301 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v9}, Lcom/alivc/component/capture/VideoParam;->getPreviewWidth()I

    move-result v9

    if-ne v8, v9, :cond_1

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v9}, Lcom/alivc/component/capture/VideoParam;->getPreviewHeight()I

    move-result v9

    if-eq v8, v9, :cond_2

    :cond_1
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v9}, Lcom/alivc/component/capture/VideoParam;->getPreviewHeight()I

    move-result v9

    if-ne v8, v9, :cond_3

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v9}, Lcom/alivc/component/capture/VideoParam;->getPreviewWidth()I

    move-result v9

    if-ne v8, v9, :cond_3

    :cond_2
    move-object v3, v7

    :cond_3
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    const/16 v9, 0x500

    const/16 v10, 0x2d0

    if-ne v8, v10, :cond_4

    iget v11, v7, Landroid/hardware/Camera$Size;->height:I

    if-eq v11, v9, :cond_5

    :cond_4
    if-ne v8, v9, :cond_8

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    if-ne v8, v10, :cond_8

    :cond_5
    iget-object v8, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v8}, Lcom/alivc/component/capture/VideoParam;->getPreviewWidth()I

    move-result v8

    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v9}, Lcom/alivc/component/capture/VideoParam;->getPreviewHeight()I

    move-result v9

    if-le v8, v9, :cond_6

    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget v9, v7, Landroid/hardware/Camera$Size;->height:I

    if-lt v8, v9, :cond_7

    :cond_6
    iget-object v8, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v8}, Lcom/alivc/component/capture/VideoParam;->getPreviewWidth()I

    move-result v8

    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v9}, Lcom/alivc/component/capture/VideoParam;->getPreviewHeight()I

    move-result v9

    if-ge v8, v9, :cond_8

    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget v9, v7, Landroid/hardware/Camera$Size;->height:I

    if-le v8, v9, :cond_8

    :cond_7
    move-object v4, v7

    :cond_8
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v9}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v9

    if-lt v8, v9, :cond_9

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v9}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_a

    :cond_9
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v9}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v9

    if-lt v8, v9, :cond_f

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v9}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v9

    if-lt v8, v9, :cond_f

    :cond_a
    if-nez v6, :cond_c

    iget v5, v7, Landroid/hardware/Camera$Size;->width:I

    iget v6, v7, Landroid/hardware/Camera$Size;->height:I

    mul-int v6, v6, v5

    :cond_b
    :goto_2
    move-object v5, v7

    goto :goto_3

    :cond_c
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget v9, v7, Landroid/hardware/Camera$Size;->height:I

    mul-int v10, v8, v9

    if-ge v10, v6, :cond_d

    move-object v5, v7

    move v6, v10

    goto :goto_3

    :cond_d
    if-ne v10, v6, :cond_f

    if-ge v8, v9, :cond_e

    iget-object v8, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v8}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v9}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v9

    if-lt v8, v9, :cond_b

    :cond_e
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget v9, v7, Landroid/hardware/Camera$Size;->height:I

    if-le v8, v9, :cond_f

    iget-object v8, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v8}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v9}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_f

    goto :goto_2

    :cond_f
    :goto_3
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    mul-int v8, v8, v7

    sget v7, Lcom/alivc/component/capture/VideoPusher;->supportMaxWH:I

    if-le v8, v7, :cond_10

    goto :goto_4

    :cond_10
    move v8, v7

    :goto_4
    sput v8, Lcom/alivc/component/capture/VideoPusher;->supportMaxWH:I

    goto/16 :goto_1

    :cond_11
    if-nez v3, :cond_12

    if-eqz v4, :cond_12

    move-object v3, v4

    :cond_12
    if-nez v3, :cond_13

    if-eqz v5, :cond_13

    goto :goto_5

    :cond_13
    move-object v5, v3

    :goto_5
    if-nez v5, :cond_14

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/hardware/Camera$Size;

    :cond_14
    sget-object v0, Lcom/alivc/component/capture/VideoPusher;->buffer:[B

    if-nez v0, :cond_15

    sget v0, Lcom/alivc/component/capture/VideoPusher;->supportMaxWH:I

    if-lez v0, :cond_15

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/alivc/component/capture/VideoPusher;->buffer:[B

    :cond_15
    sget-object v0, Lcom/alivc/component/capture/VideoPusher;->buffer1:[B

    if-nez v0, :cond_16

    sget v0, Lcom/alivc/component/capture/VideoPusher;->supportMaxWH:I

    if-lez v0, :cond_16

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/alivc/component/capture/VideoPusher;->buffer1:[B

    :cond_16
    sget-object v0, Lcom/alivc/component/capture/VideoPusher;->buffer2:[B

    if-nez v0, :cond_17

    sget v0, Lcom/alivc/component/capture/VideoPusher;->supportMaxWH:I

    if-lez v0, :cond_17

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/alivc/component/capture/VideoPusher;->buffer2:[B

    :cond_17
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    iget v1, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Lcom/alivc/component/capture/VideoParam;->setWidth(I)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    iget v1, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Lcom/alivc/component/capture/VideoParam;->setHeight(I)V

    :try_start_0
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u9884\u89c8\u5206\u8fa8\u7387 width:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startPreview0()V
    .locals 6

    const-string v0, "permission not allowed"

    iget-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mPreviewRunning:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    sget-object v3, Lcom/alivc/component/capture/VideoPusher;->sSupportedResolutionMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v4}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/alivc/component/capture/VideoPusher;->sSupportedResolutionMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v4}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v3, Lcom/alivc/component/capture/VideoPusher;->sSupportedFormat:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/alivc/component/capture/VideoPusher;->sSupportedFormat:Ljava/util/List;

    :cond_2
    invoke-direct {p0}, Lcom/alivc/component/capture/VideoPusher;->isHasPermission()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    const/4 v3, 0x1

    if-nez v0, :cond_3

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    :goto_0
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getCurrentZoom()I

    move-result v0

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v4

    if-lt v0, v4, :cond_4

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alivc/component/capture/VideoParam;->setCurrentZoom(I)V

    :cond_4
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getCurrentZoom()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alivc/component/capture/VideoParam;->setMaxZoom(I)V

    :cond_5
    invoke-direct {p0, v1}, Lcom/alivc/component/capture/VideoPusher;->setPreviewSize(Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0, v1}, Lcom/alivc/component/capture/VideoPusher;->setPreviewFpsRange(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getRotation()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/alivc/component/capture/VideoPusher;->setPreviewOrientation(Landroid/hardware/Camera$Parameters;I)V

    :try_start_1
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start camera, parameters "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPusher"

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alivc/component/capture/VideoPusher;->buffer:[B

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v4}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v4

    mul-int v0, v0, v4

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/alivc/component/capture/VideoPusher;->buffer:[B

    :cond_6
    sget-object v0, Lcom/alivc/component/capture/VideoPusher;->buffer1:[B

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v4}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v4

    mul-int v0, v0, v4

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/alivc/component/capture/VideoPusher;->buffer1:[B

    :cond_7
    sget-object v0, Lcom/alivc/component/capture/VideoPusher;->buffer2:[B

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v4}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v4

    mul-int v0, v0, v4

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/alivc/component/capture/VideoPusher;->buffer2:[B

    :cond_8
    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTextureId:I

    if-ltz v0, :cond_a

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_9
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTextureId:I

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto :goto_2

    :cond_a
    :try_start_2
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    sget-object v2, Lcom/alivc/component/capture/VideoPusher;->buffer:[B

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    sget-object v2, Lcom/alivc/component/capture/VideoPusher;->buffer1:[B

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    sget-object v2, Lcom/alivc/component/capture/VideoPusher;->buffer2:[B

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :try_start_3
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :try_start_5
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    iput-boolean v3, p0, Lcom/alivc/component/capture/VideoPusher;->mPreviewRunning:Z

    const-string v0, "start preivew over."

    invoke-static {v1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    iput-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_5
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    iput-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static turnLightOff(Landroid/hardware/Camera;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v3, "off"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string p0, "VideoPusher"

    const-string v0, "FLASH_MODE_OFF not supported"

    invoke-static {p0, v0}, Lcom/alivc/live/pusher/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static turnLightOn(Landroid/hardware/Camera;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "torch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string v0, "VideoPusher"

    const-string v1, "destroy."

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    return-void
.end method

.method public getCurrentExposure()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFps()I
    .locals 1

    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCurrentFps:I

    return v0
.end method

.method public getCurrentZoom()I
    .locals 2

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getLastCaptureTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastCaptureTime:J

    return-wide v0
.end method

.method public getMaxExposure()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxZoom()I
    .locals 2

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMinExposure()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTransformMatrix([F)V
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const-string p1, "VideoPusherRotation"

    const-string v0, "getTransformMatrix return null !"

    invoke-static {p1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    return-void
.end method

.method public init(IIIIIIZZLandroid/content/Context;)V
    .locals 9

    move-object v0, p0

    move/from16 v1, p7

    new-instance v8, Lcom/alivc/component/capture/VideoParam;

    move-object v2, v8

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p1

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/alivc/component/capture/VideoParam;-><init>(IIIII)V

    iput-object v8, v0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    iput-boolean v1, v0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    move v2, p6

    iput v2, v0, Lcom/alivc/component/capture/VideoPusher;->mCustomRotation:I

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/SurfaceTexture;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, v0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_0
    iget-object v1, v0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_1

    const-string v1, "sensor"

    move-object/from16 v2, p9

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, v0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_1
    iget-object v1, v0, Lcom/alivc/component/capture/VideoPusher;->mAccelSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v0, Lcom/alivc/component/capture/VideoPusher;->mAccelSensor:Landroid/hardware/Sensor;

    :cond_2
    iget-object v1, v0, Lcom/alivc/component/capture/VideoPusher;->mMagneticSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v0, Lcom/alivc/component/capture/VideoPusher;->mMagneticSensor:Landroid/hardware/Sensor;

    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MI MAX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "MIX"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "MIX 2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iput-boolean v2, v0, Lcom/alivc/component/capture/VideoPusher;->mSensorFocus:Z

    :cond_5
    const-string v1, "VideoPusher"

    if-eqz p8, :cond_6

    iput-boolean v2, v0, Lcom/alivc/component/capture/VideoPusher;->mSensorFocus:Z

    const-string v2, "set focus by Sensor"

    invoke-static {v1, v2}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====> Init src: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p5

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mSurfaceCbMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isPreviewRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mPreviewRunning:Z

    return v0
.end method

.method public isSupportAutoFocus()Z
    .locals 2

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportFlash()Z
    .locals 2

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "torch"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause(Z)V
    .locals 1

    const-string p1, "VideoPusher"

    const-string v0, "pause preview."

    invoke-static {p1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alivc/component/capture/VideoPusher;->mPause:Z

    return-void
.end method

.method public resume()V
    .locals 2

    const-string v0, "VideoPusher"

    const-string v1, "resume preview."

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mPause:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alivc/component/capture/VideoPusher;->stopInner()V

    :try_start_0
    invoke-virtual {p0}, Lcom/alivc/component/capture/VideoPusher;->startInner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mPause:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setAutoFocus(Z)V
    .locals 4

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "auto"

    if-eqz p1, :cond_1

    :try_start_1
    iget-boolean v2, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorFocus:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_0
    :try_start_3
    const-string v1, "continuous-video"

    :cond_1
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    :goto_0
    :try_start_4
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/alivc/component/capture/VideoPusher;->mAutoFocus:Z

    return-void
.end method

.method public setExposure(I)V
    .locals 2

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    if-gt p1, v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setFlashOn(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->turnLightOn(Landroid/hardware/Camera;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->turnLightOff(Landroid/hardware/Camera;)V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/alivc/component/capture/VideoPusher;->mFlashOn:Z

    return-void
.end method

.method public setFocus(FF)V
    .locals 6

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focusAreas is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoPusher"

    invoke-static {v3, v2}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    const/high16 v2, 0x44fa0000    # 2000.0f

    mul-float p1, p1, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    sub-float/2addr p1, v3

    float-to-int p1, p1

    mul-float p2, p2, v2

    sub-float/2addr p2, v3

    float-to-int p2, p2

    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v4, p1, -0x32

    add-int/lit8 v5, p2, -0x32

    add-int/lit8 p1, p1, 0x32

    add-int/lit8 p2, p2, 0x32

    invoke-direct {v3, v4, v5, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v2, v3, v1}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :try_start_2
    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    :try_start_3
    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    new-instance p2, Lcom/alivc/component/capture/VideoPusher$3;

    invoke-direct {p2, p0}, Lcom/alivc/component/capture/VideoPusher$3;-><init>(Lcom/alivc/component/capture/VideoPusher;)V

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-void
.end method

.method public setLastCaptureTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastCaptureTime:J

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    const-string p1, "VideoPusher"

    const-string v0, "setOrientation."

    invoke-static {p1, v0}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoSourceListener(Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusher;->mVideoSourceListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    return-void
.end method

.method public setVideoSourceTextureListener(Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusher;->mVideoSourceTextureListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    return-void
.end method

.method public setZoom(F)V
    .locals 2

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getCurrentZoom()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    :goto_0
    invoke-virtual {p1, v1}, Lcom/alivc/component/capture/VideoParam;->setCurrentZoom(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    if-lt p1, v1, :cond_1

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v1, p1}, Lcom/alivc/component/capture/VideoParam;->setCurrentZoom(I)V

    :goto_1
    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {p1}, Lcom/alivc/component/capture/VideoParam;->getCurrentZoom()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_2
    return-void
.end method

.method public setZoom(I)V
    .locals 2

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v1, p1}, Lcom/alivc/component/capture/VideoParam;->setCurrentZoom(I)V

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {p1}, Lcom/alivc/component/capture/VideoParam;->getCurrentZoom()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method

.method public start(I)V
    .locals 2

    const-string v0, "VideoPusher"

    const-string v1, "start."

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTextureId:I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/SurfaceTexture;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alivc/component/capture/VideoPusher;->startInner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    throw p1
.end method

.method public startInner()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/alivc/component/capture/VideoPusher;->startPreview0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {p0}, Lcom/alivc/component/capture/VideoPusher;->stopInner()V

    :try_start_1
    invoke-direct {p0}, Lcom/alivc/component/capture/VideoPusher;->startPreview0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mFlashOn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/alivc/component/capture/VideoPusher;->setFlashOn(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mAutoFocus:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/alivc/component/capture/VideoPusher;->setAutoFocus(Z)V

    :cond_1
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorFocus:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mAccelSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mMagneticSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method public stop()V
    .locals 2

    const-string v0, "VideoPusher"

    const-string v1, "stop."

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alivc/component/capture/VideoPusher;->stopInner()V

    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTextureId:I

    :cond_0
    return-void
.end method

.method public stopInner()V
    .locals 3

    const-string v0, "VideoPusher"

    const-string v1, "stopInner."

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorFocus:Z

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mPreviewRunning:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    iput-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mPreviewRunning:Z

    const-string v1, "stopInner over."

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public switchCamera()V
    .locals 2

    const-string v0, "VideoPusher"

    const-string v1, "switchCamera."

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alivc/component/capture/VideoParam;->setCameraId(I)V

    invoke-virtual {p0}, Lcom/alivc/component/capture/VideoPusher;->stopInner()V

    invoke-virtual {p0}, Lcom/alivc/component/capture/VideoPusher;->startInner()V

    return-void
.end method

.method public updateTexImage()I
    .locals 1

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    const/4 v0, 0x0

    return v0
.end method
