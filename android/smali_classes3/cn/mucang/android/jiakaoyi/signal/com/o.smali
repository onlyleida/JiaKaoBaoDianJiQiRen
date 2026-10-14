.class public Lcn/mucang/android/jiakaoyi/signal/com/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

.field private static final b:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

.field private static final c:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

.field private static final d:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

.field private static final e:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

.field private static final f:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

.field private static final g:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

.field private static final h:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

.field private static final i:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

.field private static j:[[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

.field private static k:[Ljava/lang/Integer;

.field private static l:[Ljava/lang/Integer;

.field private static m:[Ljava/lang/Integer;

.field private static n:[Ljava/lang/Integer;

.field private static o:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    const/16 v0, 0xc

    new-array v1, v0, [Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    .line 1
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderRequestHarderWareInfo:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v3, 0x0

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v2, v1, v3

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderSetCarModel:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v5, 0x1

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v2, v1, v5

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->SendHeart:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v7, 0x2

    .line 6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v2, v1, v7

    .line 7
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AutoPilotCtl:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v9, 0x3

    .line 8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v2, v1, v9

    .line 9
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AutoPilotResponse:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v11, 0x4

    .line 10
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v2, v1, v11

    .line 11
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->SendBytesNumber:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v13, 0x5

    .line 12
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v2, v1, v13

    .line 13
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderGearCalibration:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v15, 0x6

    .line 14
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v2, v1, v15

    .line 15
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderFaultCodeReq:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v15, 0x7

    .line 16
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v2, v1, v15

    .line 17
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderFaultCodeClear:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v15, 0x8

    .line 18
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v2, v1, v15

    .line 19
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderRemoteGearCalibration:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v15, 0x9

    aput-object v2, v1, v15

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderGetRemoteGeaData:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v22, 0xa

    aput-object v2, v1, v22

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AutoAssist:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v23, 0xb

    aput-object v2, v1, v23

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/com/o;->a:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    new-array v1, v11, [Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    .line 20
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->StartOrder:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v2, v1, v3

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->PackageOrder:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v2, v1, v5

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->StartOrderV2:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v2, v1, v7

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->PackageOrderV2:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v2, v1, v9

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/com/o;->b:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    new-array v2, v7, [Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    .line 21
    sget-object v24, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderSendRtcm:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v24, v2, v3

    sget-object v24, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->SendRtcmToJKY:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v24, v2, v5

    sput-object v2, Lcn/mucang/android/jiakaoyi/signal/com/o;->c:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    new-array v15, v0, [Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    .line 22
    sget-object v25, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiStartOrder:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v25, v15, v3

    sget-object v25, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiRequestVersion:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v25, v15, v5

    sget-object v25, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiHeartBeat:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v25, v15, v7

    sget-object v25, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiLogin:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v25, v15, v9

    sget-object v25, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiOtaStartUpdate:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v25, v15, v11

    sget-object v25, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiQueryInfo:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v25, v15, v13

    sget-object v25, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiSetCamera:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v17, 0x6

    aput-object v25, v15, v17

    sget-object v25, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiSetMode:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v19, 0x7

    aput-object v25, v15, v19

    sget-object v25, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiSetCameraFrame:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v21, 0x8

    aput-object v25, v15, v21

    sget-object v25, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiSetHardwareId:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v24, 0x9

    aput-object v25, v15, v24

    sget-object v25, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiSetStudentId:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v25, v15, v22

    sget-object v25, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiEnableFaceCover:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v25, v15, v23

    sput-object v15, Lcn/mucang/android/jiakaoyi/signal/com/o;->d:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    new-array v0, v5, [Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    .line 23
    sget-object v26, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderBoxVersion:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v26, v0, v3

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/com/o;->e:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v13, 0x11

    new-array v13, v13, [Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    .line 24
    sget-object v27, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->CmdSingleConfig:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v27, v13, v3

    sget-object v27, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->CmdSingleQuery:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v27, v13, v5

    sget-object v27, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->CmdPatchConfig:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v27, v13, v7

    sget-object v27, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->CmdPatchQuery:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v27, v13, v9

    sget-object v27, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderSendBrake:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v27, v13, v11

    sget-object v27, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderForceBrake:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v26, 0x5

    aput-object v27, v13, v26

    sget-object v27, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderSendFlameOut:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v17, 0x6

    aput-object v27, v13, v17

    sget-object v27, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderControlThrottleTrigger:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v19, 0x7

    aput-object v27, v13, v19

    sget-object v28, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderAdvancedBrake:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v21, 0x8

    aput-object v28, v13, v21

    sget-object v28, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderConfigSpecialCoefficient:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v24, 0x9

    aput-object v28, v13, v24

    sget-object v28, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderManualMotorCalibration:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v28, v13, v22

    sget-object v22, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderAutoMotorCalibration:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v22, v13, v23

    sget-object v22, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderConfigSpeedCheck:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v23, 0xc

    aput-object v22, v13, v23

    sget-object v22, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderSpeedBrake:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v23, 0xd

    aput-object v22, v13, v23

    sget-object v22, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderOpenSafeModule:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v23, 0xe

    aput-object v22, v13, v23

    sget-object v22, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderBeltBrake:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v23, 0xf

    aput-object v22, v13, v23

    sget-object v22, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderDoorBrake:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v23, 0x10

    aput-object v22, v13, v23

    sput-object v13, Lcn/mucang/android/jiakaoyi/signal/com/o;->f:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    new-array v11, v5, [Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    .line 25
    sget-object v23, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderSendIO:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v23, v11, v3

    sput-object v11, Lcn/mucang/android/jiakaoyi/signal/com/o;->g:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v9, 0x5

    new-array v7, v9, [Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    .line 26
    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderCalibarClutch:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v9, v7, v3

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderCalibarBrake:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v9, v7, v5

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderCalibarThrottle:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v25, 0x2

    aput-object v9, v7, v25

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderCalibarGas:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v23, 0x3

    aput-object v9, v7, v23

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderCalibarWheel:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v22, 0x4

    aput-object v9, v7, v22

    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/com/o;->h:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    new-array v9, v5, [Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v27, v9, v3

    .line 27
    sput-object v9, Lcn/mucang/android/jiakaoyi/signal/com/o;->i:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    move-object/from16 v28, v14

    const/16 v5, 0x9

    new-array v14, v5, [[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    .line 28
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/com/o;->a:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aput-object v5, v14, v3

    const/4 v5, 0x1

    aput-object v1, v14, v5

    const/4 v1, 0x2

    aput-object v2, v14, v1

    const/4 v2, 0x3

    aput-object v0, v14, v2

    aput-object v13, v14, v22

    const/4 v0, 0x5

    aput-object v11, v14, v0

    const/4 v11, 0x6

    aput-object v7, v14, v11

    const/4 v7, 0x7

    aput-object v9, v14, v7

    const/16 v9, 0x8

    aput-object v15, v14, v9

    sput-object v14, Lcn/mucang/android/jiakaoyi/signal/com/o;->j:[[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/16 v13, 0x9

    new-array v13, v13, [Ljava/lang/Integer;

    aput-object v4, v13, v3

    aput-object v6, v13, v5

    aput-object v8, v13, v1

    aput-object v20, v13, v2

    aput-object v10, v13, v22

    aput-object v12, v13, v0

    aput-object v28, v13, v11

    aput-object v16, v13, v7

    aput-object v18, v13, v9

    .line 29
    sput-object v13, Lcn/mucang/android/jiakaoyi/signal/com/o;->k:[Ljava/lang/Integer;

    new-array v9, v7, [Ljava/lang/Integer;

    aput-object v4, v9, v3

    aput-object v6, v9, v5

    aput-object v10, v9, v1

    aput-object v12, v9, v2

    aput-object v28, v9, v22

    aput-object v16, v9, v0

    aput-object v18, v9, v11

    .line 30
    sput-object v9, Lcn/mucang/android/jiakaoyi/signal/com/o;->l:[Ljava/lang/Integer;

    new-array v0, v5, [Ljava/lang/Integer;

    aput-object v8, v0, v3

    .line 31
    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/com/o;->m:[Ljava/lang/Integer;

    new-array v0, v5, [Ljava/lang/Integer;

    aput-object v20, v0, v3

    .line 32
    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/com/o;->n:[Ljava/lang/Integer;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v4, v0, v3

    aput-object v6, v0, v5

    const/4 v1, 0x2

    aput-object v10, v0, v1

    const/4 v1, 0x3

    aput-object v12, v0, v1

    const/4 v1, 0x4

    aput-object v28, v0, v1

    const/4 v1, 0x5

    aput-object v16, v0, v1

    const/4 v1, 0x6

    aput-object v18, v0, v1

    const/4 v1, 0x7

    aput-object v8, v0, v1

    .line 33
    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/com/o;->o:[Ljava/lang/Integer;

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/com/Cmd;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/o;->n:[Ljava/lang/Integer;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/com/o;->f([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/com/Cmd;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/o;->k:[Ljava/lang/Integer;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/com/o;->f([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/com/Cmd;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/o;->m:[Ljava/lang/Integer;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/com/o;->f([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/com/Cmd;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/o;->o:[Ljava/lang/Integer;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/com/o;->f([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/com/Cmd;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/o;->l:[Ljava/lang/Integer;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/com/o;->f([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs f([Ljava/lang/Integer;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/com/Cmd;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/com/o;->j:[[Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
