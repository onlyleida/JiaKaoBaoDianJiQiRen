.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public brakeDesc:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

.field public carFlameoutSource:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

.field public collectBoardAd:[F

.field public collectBoardOutState:[Z

.field public collectBoardPwm:[I

.field public collectBoardState:I

.field public diState:[Z

.field public gearBoardState:I

.field public mainBoardAd:[F

.field public mainBoardState:I

.field public microwaveState:I

.field public originGyro2:F

.field public pitch2:F

.field public rearMirrorAdjust:I

.field public rearMirrorAdjustDir:I

.field public roll2:F

.field public safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

.field public safeBoardState:I

.field public safeModuleBrakeReason:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

.field public safeModuleClutchState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

.field public throttleBoardState:I

.field public throttleState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

.field public ultrasonic1State:I

.field public ultrasonic2State:I

.field public yaw2:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->mainBoardAd:[F

    new-array v1, v0, [Z

    .line 3
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->diState:[Z

    const/16 v1, 0xa

    new-array v1, v1, [F

    .line 4
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->collectBoardAd:[F

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->collectBoardPwm:[I

    const/16 v0, 0xc

    new-array v0, v0, [Z

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->collectBoardOutState:[Z

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;->CLUTCH_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleClutchState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->BRAKE_SOURCE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleBrakeReason:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->FLAMEOUT_SOURCE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->carFlameoutSource:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->throttleState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    .line 12
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->brakeDesc:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiveSenorInfo{yaw2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->yaw2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pitch2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->pitch2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", roll2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->roll2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", originGyro2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->originGyro2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rearMirrorAdjust="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->rearMirrorAdjust:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rearMirrorAdjustDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->rearMirrorAdjustDir:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mainBoardAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->mainBoardAd:[F

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", diState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->diState:[Z

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", collectBoardAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->collectBoardAd:[F

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", collectBoardPwm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->collectBoardPwm:[I

    .line 5
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", collectBoardOutState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->collectBoardOutState:[Z

    .line 6
    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", safeBoardBrakeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", safeModuleClutchState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleClutchState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", safeModuleBrakeReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleBrakeReason:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", throttleState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->throttleState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainBoardState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->mainBoardState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", collectBoardState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->collectBoardState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ultrasonic1State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->ultrasonic1State:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ultrasonic2State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->ultrasonic2State:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", microwaveState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->microwaveState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", safeBoardState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", throttleBoardState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->throttleBoardState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gearBoardState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->gearBoardState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
