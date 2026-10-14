.class public final enum Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum DriveEnd:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum EmergencyStop:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum FlameOut:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum FootBrakeDown:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum GPS:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum GPSRecover:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum GearShiftTimeOut:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum HandbrakeUp:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum ManualEnd:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum MotorError:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum Normal:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum OffTrack:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum OpenBelt:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum OpenDoor:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum OtherBrake:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum P0Error:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum RadarBrake:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum RadarBrakeRecover:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum TakeOverWheel:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum Unknown:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

.field public static final enum WaitPathTimeOut:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;


# instance fields
.field public final desc:Ljava/lang/String;

.field public final error:I

.field public unknownCode:I

.field public zhDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v0, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_unknown:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "Unknown"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v5, "\u672a\u77e5\u7c7b\u578b"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->Unknown:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v1, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_normal:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v11

    const-string v8, "Normal"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v12, "\u6b63\u5e38"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->Normal:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v2, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_offtrack:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v17

    const-string v14, "OffTrack"

    const/4 v15, 0x2

    const/16 v16, 0x1

    const-string v18, "\u504f\u79bb\u8f68\u8ff9"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->OffTrack:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v3, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_p0_problem:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v11

    const-string v8, "P0Error"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const-string v12, "P0\u6545\u969c"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->P0Error:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 5
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v4, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_obstacle_braking:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v17

    const-string v14, "RadarBrake"

    const/4 v15, 0x4

    const/16 v16, 0x3

    const-string v18, "\u969c\u788d\u7269\u5239\u8f66"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->RadarBrake:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 6
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v5, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_stop_switch_trigger:I

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v11

    const-string v8, "EmergencyStop"

    const/4 v9, 0x5

    const/4 v10, 0x4

    const-string v12, "\u6025\u505c\u5f00\u5173\u89e6\u53d1"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->EmergencyStop:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 7
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v7, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_non_obstacle_braking:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v17

    const-string v14, "OtherBrake"

    const/4 v15, 0x6

    const/16 v16, 0x5

    const-string v18, "\u975e\u969c\u788d\u7269\u5239\u505c"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->OtherBrake:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 8
    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v7, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gps_no_4:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v11

    const-string v8, "GPS"

    const/4 v9, 0x7

    const/4 v10, 0x6

    const-string v12, "GPS\u4fe1\u53f7\u5f31"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->GPS:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 9
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v8, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_obstacle_miss:I

    invoke-static {v8}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v18

    const-string v15, "RadarBrakeRecover"

    const/16 v16, 0x8

    const/16 v17, 0x7

    const-string v19, "\u969c\u788d\u7269\u6d88\u5931\uff0c\u6062\u590d\u81ea\u52a8\u9a7e\u9a76"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->RadarBrakeRecover:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 10
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v9, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gps_regain:I

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v24

    const-string v21, "GPSRecover"

    const/16 v22, 0x9

    const/16 v23, 0x8

    const-string v25, "GPS\u4fe1\u53f7\u6062\u590d\uff0c\u6062\u590d\u81ea\u52a8\u9a7e\u9a76"

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->GPSRecover:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 11
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v10, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_hand_brake_up:I

    invoke-static {v10}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v18

    const-string v15, "HandbrakeUp"

    const/16 v16, 0xa

    const/16 v17, 0x9

    const-string v19, "\u624b\u5239\u62c9\u8d77"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->HandbrakeUp:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 12
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v11, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_run_end_pos:I

    invoke-static {v11}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v24

    const-string v21, "DriveEnd"

    const/16 v22, 0xb

    const/16 v23, 0xa

    const-string v25, "\u884c\u9a76\u5230\u7ec8\u70b9"

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->DriveEnd:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 13
    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v12, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_manual_end:I

    invoke-static {v12}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v18

    const-string v15, "ManualEnd"

    const/16 v16, 0xc

    const/16 v17, 0xb

    const-string v19, "\u624b\u52a8\u7ed3\u675f"

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->ManualEnd:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 14
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v14, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_car_flameout:I

    invoke-static {v14}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v24

    const-string v21, "FlameOut"

    const/16 v22, 0xd

    const/16 v23, 0xc

    const-string v25, "\u8f66\u8f86\u7184\u706b"

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->FlameOut:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 15
    new-instance v20, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v14, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_foot_brake_down:I

    invoke-static {v14}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v18

    const-string v15, "FootBrakeDown"

    const/16 v16, 0xe

    const/16 v17, 0xd

    const-string v19, "\u811a\u5239\u8e29\u4e0b"

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v20, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->FootBrakeDown:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 16
    new-instance v14, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v15, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_control_steering_wheel:I

    invoke-static {v15}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v25

    const-string v22, "TakeOverWheel"

    const/16 v23, 0xf

    const/16 v24, 0xe

    const-string v26, "\u63a5\u7ba1\u65b9\u5411\u76d8"

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->TakeOverWheel:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 17
    new-instance v15, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v16, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear_motor_fault:I

    invoke-static/range {v16 .. v16}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v31

    const-string v28, "MotorError"

    const/16 v29, 0x10

    const/16 v30, 0xf

    const-string v32, "\u6362\u6321\u7535\u673a\u6545\u969c"

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->MotorError:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 18
    new-instance v16, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v17, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_change_gear_time_out:I

    invoke-static/range {v17 .. v17}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v25

    const-string v22, "GearShiftTimeOut"

    const/16 v23, 0x11

    const/16 v24, 0x10

    const-string v26, "\u6362\u6321\u8d85\u65f6"

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v16, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->GearShiftTimeOut:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 19
    new-instance v17, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v18, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_wait_new_route_time_out:I

    invoke-static/range {v18 .. v18}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v31

    const-string v28, "WaitPathTimeOut"

    const/16 v29, 0x12

    const/16 v30, 0x11

    const-string v32, "\u7b49\u5f85\u65b0\u8f68\u8ff9\u8d85\u65f6"

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v17, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->WaitPathTimeOut:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 20
    new-instance v18, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v19, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_open_sefe_belt:I

    invoke-static/range {v19 .. v19}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v25

    const-string v22, "OpenBelt"

    const/16 v23, 0x13

    const/16 v24, 0x12

    const-string v26, "\u89e3\u5f00\u5b89\u5168\u5e26"

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v18, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->OpenBelt:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    .line 21
    new-instance v19, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    sget v21, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_open_door:I

    invoke-static/range {v21 .. v21}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v31

    const-string v28, "OpenDoor"

    const/16 v29, 0x14

    const/16 v30, 0x13

    const-string v32, "\u6253\u5f00\u8f66\u95e8"

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v19, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->OpenDoor:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    move-object/from16 v21, v15

    const/16 v15, 0x15

    new-array v15, v15, [Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    const/16 v22, 0x0

    aput-object v6, v15, v22

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v21, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    .line 22
    sput-object v15, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->error:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->desc:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->zhDesc:Ljava/lang/String;

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->values()[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->error:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->Unknown:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    iput p0, v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->unknownCode:I

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    return-object v0
.end method
