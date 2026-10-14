package cn.mucang.android.jiakaoyi.signal.communicate.receive;

import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class l {
    public static final int Auth = 153;
    public static final int Auth_Ai = 161;
    public static final int MASTER_ORDER = 1;
    public static final int OBD_ORDER = 2;
    public static final int PACKAGE_ORDER = 34;
    public static final int PACKAGE_ORDER_V2 = 99;
    public static final int RECEIVE_ADVANCED_BRAKE = 77;
    public static final int RECEIVE_AI_COVER_RESULT = 189;
    public static final int RECEIVE_AI_DMS = 4;
    public static final int RECEIVE_AI_ENABLE_COVER = 188;
    public static final int RECEIVE_AI_ERROR = 16;
    public static final int RECEIVE_AI_FACE = 1;
    public static final int RECEIVE_AI_HAND_ACTION = 3;
    public static final int RECEIVE_AI_HEAD_ACTION = 2;
    public static final int RECEIVE_AI_ORDER = 162;
    public static final int RECEIVE_AI_OTA = 1;
    public static final int RECEIVE_AI_SIGNAL = 160;
    public static final int RECEIVE_AI_VERSION = 3;
    public static final int RECEIVE_BOOTLOADER_WAIT_OBD = 24;
    public static final int RECEIVE_BOOTLOADER_WAIT_OTA = 25;
    public static final int RECEIVE_BOX_REBOOT_COMPLETE = 37;
    public static final int RECEIVE_BOX_VERSION = 81;
    public static final int RECEIVE_BRAKE_BY_SPEED = 87;
    public static final int RECEIVE_BRAKE_RESPONSE = 28;
    public static final int RECEIVE_CALIBAR_AUTO_MOTOR = 99;
    public static final int RECEIVE_CALIBAR_BRAKE = 69;
    public static final int RECEIVE_CALIBAR_CLUTCH = 67;
    public static final int RECEIVE_CALIBAR_GAS = 97;
    public static final int RECEIVE_CALIBAR_MANUAL_MOTOR = 95;
    public static final int RECEIVE_CALIBAR_THR = 71;
    public static final int RECEIVE_CALIBAR_WHEEL = 73;
    public static final int RECEIVE_FAULT_CODE_CLEAR_RET = 241;
    public static final int RECEIVE_FAULT_CODE_REQ_RET = 121;
    public static final int RECEIVE_FIRMWARE_UPGRADING = 40;
    public static final int RECEIVE_FIRMWARE_UPGRADING_V2 = 133;
    public static final int RECEIVE_FORCE_BRAKE_RESPONSE = 93;
    public static final int RECEIVE_HARDWARE_INFO = 8;
    public static final int RECEIVE_IO_RESPONSE = 49;
    public static final int RECEIVE_MODULE_VERSION = 84;
    public static final int RECEIVE_OTA_REQUEST_PACKAGE = 130;
    public static final int RECEIVE_OTA_UPGRADE_COMPLETE = 36;
    public static final int RECEIVE_OTA_UPGRADE_COMPLETE_V2 = 132;
    public static final int RECEIVE_OTA_UPGRADE_PACKAGE = 35;
    public static final int RECEIVE_OTA_UPGRADE_START = 33;
    public static final int RECEIVE_OTA_UPGRADE_START_V2 = 129;
    public static final int RECEIVE_REMOTE_GEAR_DATA_RESULT = 119;
    public static final int RECEIVE_REMOTE_GEAR_RESULT = 117;
    public static final int RECEIVE_RTMC_PACK_FINISH = 39;
    public static final int RECEIVE_SAFE_FLAME_OUT = 30;
    public static final int RECEIVE_SAFE_MODULE_BELT_CHECK_RESPONSE = 89;
    public static final int RECEIVE_SAFE_MODULE_CONTROL_RESPONSE = 83;
    public static final int RECEIVE_SAFE_MODULE_DOOR_CHECK_RESPONSE = 91;
    public static final int RECEIVE_SAFE_MODULE_SPEED_CHECK_RESPONSE = 85;
    public static final int RECEIVE_SAFE_SINGLE_CONFIG = 20;
    public static final int RECEIVE_SAFE_SINGLE_QUERY = 22;
    public static final int RECEIVE_SAFE_SPECIAL_COEFFICIENT = 79;
    public static final int RECEIVE_SENOR_INFO = 85;
    public static final int RECEIVE_SET_CAR_TYPE = 3;
    public static final int RECEIVE_TYPE_GPS = 17;
    public static final int RECEIVE_TYPE_RADAR = 18;
    public static final int RECEIVE_TYPE_SIGNAL = 16;
    public static final int ReSendSubPack = 152;
    public static final int Receive_Ai_Camera_Frame_Res = 173;
    public static final int Receive_Ai_Camera_Res = 171;
    public static final int Receive_Ai_Dms_Result = 180;
    public static final int Receive_Ai_Face_Result = 177;
    public static final int Receive_Ai_Hand_Result = 179;
    public static final int Receive_Ai_HeartBeat = 162;
    public static final int Receive_Ai_Login = 161;
    public static final int Receive_Ai_Mode_Res = 169;
    public static final int Receive_Ai_Module_Result = 181;
    public static final int Receive_Ai_Ota_Res = 167;
    public static final int Receive_Ai_Ota_Status = 176;
    public static final int Receive_Ai_Pose_Result = 178;
    public static final int Receive_Ai_Query_Info = 165;
    public static final int Receive_Ai_Result_Error = 182;
    public static final int Receive_Ai_SitPose_Result = 185;
    public static final int Receive_AutoAssist_Response = 243;
    public static final int Receive_AutoPilot_Ctl = 193;
    public static final int Receive_Bytes = 113;
    public static final int Receive_Gps_GGA = 82;
    public static final int Receive_Gps_Heading = 96;
    public static final int Receive_Rtcm_Ack_New = 41;
    public static final int SEND_HEART = 42;
    public static final int START_ORDER = 32;
    public int requestPackIndex;
    public final int type;
    public static final int Receive_AutoPilot_Response = 194;
    public static final int Receive_GEAR_DATA = 146;
    public static final int Receive_GEAR_DATA2 = 145;
    public static final int Receive_AutoAssist_Error = 244;
    public static final int Receive_Bt_3d_Pos = 254;
    public static final int[] NO_REQUEST_PCK_INDEX = {16, 18, 17, 36, 132, 40, 133, 130, 193, Receive_AutoPilot_Response, Receive_GEAR_DATA, Receive_GEAR_DATA2, Receive_AutoAssist_Error, Receive_Bt_3d_Pos};

    public l(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        this.type = i;
        AbsSignalProvider absSignalProvider = (AbsSignalProvider) DataProviderRegister.f3433a.a(AbsSignalProvider.class, null);
        if ((absSignalProvider != null && absSignalProvider.useNonOldProtocol()) && hasRequestPackIndex(i)) {
            this.requestPackIndex = rVar.l();
        }
    }

    protected boolean hasByte(cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        return rVar.c() - rVar.d() >= 1;
    }

    protected boolean hasInt(cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        return rVar.c() - rVar.d() >= 4;
    }

    protected boolean hasRequestPackIndex(int i) {
        for (int i2 : NO_REQUEST_PCK_INDEX) {
            if (i == i2) {
                return false;
            }
        }
        return true;
    }

    protected boolean hasShort(cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        return rVar.c() - rVar.d() >= 2;
    }
}
