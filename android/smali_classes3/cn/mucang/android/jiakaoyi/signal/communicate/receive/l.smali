.class public abstract Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Auth:I = 0x99

.field public static final Auth_Ai:I = 0xa1

.field public static final MASTER_ORDER:I = 0x1

.field public static final NO_REQUEST_PCK_INDEX:[I

.field public static final OBD_ORDER:I = 0x2

.field public static final PACKAGE_ORDER:I = 0x22

.field public static final PACKAGE_ORDER_V2:I = 0x63

.field public static final RECEIVE_ADVANCED_BRAKE:I = 0x4d

.field public static final RECEIVE_AI_COVER_RESULT:I = 0xbd

.field public static final RECEIVE_AI_DMS:I = 0x4

.field public static final RECEIVE_AI_ENABLE_COVER:I = 0xbc

.field public static final RECEIVE_AI_ERROR:I = 0x10

.field public static final RECEIVE_AI_FACE:I = 0x1

.field public static final RECEIVE_AI_HAND_ACTION:I = 0x3

.field public static final RECEIVE_AI_HEAD_ACTION:I = 0x2

.field public static final RECEIVE_AI_ORDER:I = 0xa2

.field public static final RECEIVE_AI_OTA:I = 0x1

.field public static final RECEIVE_AI_SIGNAL:I = 0xa0

.field public static final RECEIVE_AI_VERSION:I = 0x3

.field public static final RECEIVE_BOOTLOADER_WAIT_OBD:I = 0x18

.field public static final RECEIVE_BOOTLOADER_WAIT_OTA:I = 0x19

.field public static final RECEIVE_BOX_REBOOT_COMPLETE:I = 0x25

.field public static final RECEIVE_BOX_VERSION:I = 0x51

.field public static final RECEIVE_BRAKE_BY_SPEED:I = 0x57

.field public static final RECEIVE_BRAKE_RESPONSE:I = 0x1c

.field public static final RECEIVE_CALIBAR_AUTO_MOTOR:I = 0x63

.field public static final RECEIVE_CALIBAR_BRAKE:I = 0x45

.field public static final RECEIVE_CALIBAR_CLUTCH:I = 0x43

.field public static final RECEIVE_CALIBAR_GAS:I = 0x61

.field public static final RECEIVE_CALIBAR_MANUAL_MOTOR:I = 0x5f

.field public static final RECEIVE_CALIBAR_THR:I = 0x47

.field public static final RECEIVE_CALIBAR_WHEEL:I = 0x49

.field public static final RECEIVE_FAULT_CODE_CLEAR_RET:I = 0xf1

.field public static final RECEIVE_FAULT_CODE_REQ_RET:I = 0x79

.field public static final RECEIVE_FIRMWARE_UPGRADING:I = 0x28

.field public static final RECEIVE_FIRMWARE_UPGRADING_V2:I = 0x85

.field public static final RECEIVE_FORCE_BRAKE_RESPONSE:I = 0x5d

.field public static final RECEIVE_HARDWARE_INFO:I = 0x8

.field public static final RECEIVE_IO_RESPONSE:I = 0x31

.field public static final RECEIVE_MODULE_VERSION:I = 0x54

.field public static final RECEIVE_OTA_REQUEST_PACKAGE:I = 0x82

.field public static final RECEIVE_OTA_UPGRADE_COMPLETE:I = 0x24

.field public static final RECEIVE_OTA_UPGRADE_COMPLETE_V2:I = 0x84

.field public static final RECEIVE_OTA_UPGRADE_PACKAGE:I = 0x23

.field public static final RECEIVE_OTA_UPGRADE_START:I = 0x21

.field public static final RECEIVE_OTA_UPGRADE_START_V2:I = 0x81

.field public static final RECEIVE_REMOTE_GEAR_DATA_RESULT:I = 0x77

.field public static final RECEIVE_REMOTE_GEAR_RESULT:I = 0x75

.field public static final RECEIVE_RTMC_PACK_FINISH:I = 0x27

.field public static final RECEIVE_SAFE_FLAME_OUT:I = 0x1e

.field public static final RECEIVE_SAFE_MODULE_BELT_CHECK_RESPONSE:I = 0x59

.field public static final RECEIVE_SAFE_MODULE_CONTROL_RESPONSE:I = 0x53

.field public static final RECEIVE_SAFE_MODULE_DOOR_CHECK_RESPONSE:I = 0x5b

.field public static final RECEIVE_SAFE_MODULE_SPEED_CHECK_RESPONSE:I = 0x55

.field public static final RECEIVE_SAFE_SINGLE_CONFIG:I = 0x14

.field public static final RECEIVE_SAFE_SINGLE_QUERY:I = 0x16

.field public static final RECEIVE_SAFE_SPECIAL_COEFFICIENT:I = 0x4f

.field public static final RECEIVE_SENOR_INFO:I = 0x55

.field public static final RECEIVE_SET_CAR_TYPE:I = 0x3

.field public static final RECEIVE_TYPE_GPS:I = 0x11

.field public static final RECEIVE_TYPE_RADAR:I = 0x12

.field public static final RECEIVE_TYPE_SIGNAL:I = 0x10

.field public static final ReSendSubPack:I = 0x98

.field public static final Receive_Ai_Camera_Frame_Res:I = 0xad

.field public static final Receive_Ai_Camera_Res:I = 0xab

.field public static final Receive_Ai_Dms_Result:I = 0xb4

.field public static final Receive_Ai_Face_Result:I = 0xb1

.field public static final Receive_Ai_Hand_Result:I = 0xb3

.field public static final Receive_Ai_HeartBeat:I = 0xa2

.field public static final Receive_Ai_Login:I = 0xa1

.field public static final Receive_Ai_Mode_Res:I = 0xa9

.field public static final Receive_Ai_Module_Result:I = 0xb5

.field public static final Receive_Ai_Ota_Res:I = 0xa7

.field public static final Receive_Ai_Ota_Status:I = 0xb0

.field public static final Receive_Ai_Pose_Result:I = 0xb2

.field public static final Receive_Ai_Query_Info:I = 0xa5

.field public static final Receive_Ai_Result_Error:I = 0xb6

.field public static final Receive_Ai_SitPose_Result:I = 0xb9

.field public static final Receive_AutoAssist_Error:I = 0xf4

.field public static final Receive_AutoAssist_Response:I = 0xf3

.field public static final Receive_AutoPilot_Ctl:I = 0xc1

.field public static final Receive_AutoPilot_Response:I = 0xc2

.field public static final Receive_Bt_3d_Pos:I = 0xfe

.field public static final Receive_Bytes:I = 0x71

.field public static final Receive_GEAR_DATA:I = 0x92

.field public static final Receive_GEAR_DATA2:I = 0x91

.field public static final Receive_Gps_GGA:I = 0x52

.field public static final Receive_Gps_Heading:I = 0x60

.field public static final Receive_Rtcm_Ack_New:I = 0x29

.field public static final SEND_HEART:I = 0x2a

.field public static final START_ORDER:I = 0x20


# instance fields
.field public requestPackIndex:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->NO_REQUEST_PCK_INDEX:[I

    return-void

    :array_0
    .array-data 4
        0x10
        0x12
        0x11
        0x24
        0x84
        0x28
        0x85
        0x82
        0xc1
        0xc2
        0x92
        0x91
        0xf4
        0xfe
    .end array-data
.end method

.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->type:I

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;->useNonOldProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasRequestPackIndex(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->requestPackIndex:I

    :cond_1
    return-void
.end method


# virtual methods
.method protected hasByte(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->c()I

    move-result v0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d()I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    if-lt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected hasInt(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->c()I

    move-result v0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d()I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x4

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected hasRequestPackIndex(I)Z
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->NO_REQUEST_PCK_INDEX:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne p1, v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->c()I

    move-result v0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d()I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x2

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
