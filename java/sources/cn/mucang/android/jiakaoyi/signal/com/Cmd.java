package cn.mucang.android.jiakaoyi.signal.com;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.google.common.primitives.UnsignedBytes;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'OrderRequestHarderWareInfo' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
public final class Cmd {
    private static final /* synthetic */ Cmd[] $VALUES;
    public static final Cmd AiEnableFaceCover;
    public static final Cmd AiHeartBeat;
    public static final Cmd AiLogin;
    public static final Cmd AiOtaStartUpdate;
    public static final Cmd AiQueryInfo;
    public static final Cmd AiRequestVersion;
    public static final Cmd AiSetCamera;
    public static final Cmd AiSetCameraFrame;
    public static final Cmd AiSetHardwareId;
    public static final Cmd AiSetMode;
    public static final Cmd AiSetStudentId;
    public static final Cmd AiStartOrder;
    public static final Cmd AutoAssist;
    public static final Cmd AutoPilotCtl;
    public static final Cmd AutoPilotResponse;
    public static final Cmd CmdPatchConfig;
    public static final Cmd CmdPatchQuery;
    public static final Cmd CmdSingleConfig;
    public static final Cmd CmdSingleQuery;
    public static final Cmd OrderAdvancedBrake;
    public static final Cmd OrderAutoMotorCalibration;
    public static final Cmd OrderBeltBrake;
    public static final Cmd OrderBoxVersion;
    public static final Cmd OrderCalibarBrake;
    public static final Cmd OrderCalibarClutch;
    public static final Cmd OrderCalibarGas;
    public static final Cmd OrderCalibarThrottle;
    public static final Cmd OrderCalibarWheel;
    public static final Cmd OrderConfigSpecialCoefficient;
    public static final Cmd OrderConfigSpeedCheck;
    public static final Cmd OrderControlThrottleTrigger;
    public static final Cmd OrderDoorBrake;
    public static final Cmd OrderFaultCodeClear;
    public static final Cmd OrderFaultCodeReq;
    public static final Cmd OrderForceBrake;
    public static final Cmd OrderGearCalibration;
    public static final Cmd OrderGetRemoteGeaData;
    public static final Cmd OrderManualMotorCalibration;
    public static final Cmd OrderOpenSafeModule;
    public static final Cmd OrderRemoteGearCalibration;
    public static final Cmd OrderRequestHarderWareInfo;
    public static final Cmd OrderSendBrake;
    public static final Cmd OrderSendFlameOut;
    public static final Cmd OrderSendIO;
    public static final Cmd OrderSendRtcm;
    public static final Cmd OrderSetAppModel;
    public static final Cmd OrderSetCarModel;
    public static final Cmd OrderSpeedBrake;
    public static final Cmd PackageOrder;
    public static final Cmd PackageOrderV2;
    public static final Cmd SendBytesNumber;
    public static final Cmd SendHeart;
    public static final Cmd SendRtcmToJKY;
    public static final Cmd StartOrder;
    public static final Cmd StartOrderV2;
    public final String desc;
    public final byte order;
    public final String orderDesc;
    public final Type type;

    public enum Type {
        All("ALL"),
        Master("主控"),
        Gps("GPS"),
        Ai("AI");

        public final String typeName;

        Type(String str) {
            this.typeName = str;
        }
    }

    static {
        Type type = Type.Master;
        OrderRequestHarderWareInfo = new Cmd("OrderRequestHarderWareInfo", 0, (byte) 1, "请求设备id", type);
        OrderSetCarModel = new Cmd("OrderSetCarModel", 1, (byte) 2, "设置车型", type);
        OrderSetAppModel = new Cmd("OrderSetAppModel", 2, (byte) 4, "机型设置", type);
        SendHeart = new Cmd("SendHeart", 3, (byte) 42, "心跳消息", type);
        SendBytesNumber = new Cmd("SendBytesNumber", 4, (byte) 112, "查询字节数", type);
        StartOrder = new Cmd("StartOrder", 5, (byte) 32, "开始升级", type);
        PackageOrder = new Cmd("PackageOrder", 6, (byte) 34, "分包", type);
        StartOrderV2 = new Cmd("StartOrderV2", 7, UnsignedBytes.MAX_POWER_OF_TWO, "开始升级", type);
        PackageOrderV2 = new Cmd("PackageOrderV2", 8, (byte) -125, "协议2.0分包", type);
        OrderSendRtcm = new Cmd("OrderSendRtcm", 9, (byte) 38, "下发差分数据", Type.Gps);
        SendRtcmToJKY = new Cmd("SendRtcmToJKY", 10, (byte) 40, "下发差分数据", type);
        Type type2 = Type.Ai;
        AiStartOrder = new Cmd("AiStartOrder", 11, (byte) 0, "OTA升级指令", type2);
        AiRequestVersion = new Cmd("AiRequestVersion", 12, (byte) 2, "版本查询指令", type2);
        AiLogin = new Cmd("AiLogin", 13, (byte) -96, "Ai登录", type2);
        AiHeartBeat = new Cmd("AiHeartBeat", 14, (byte) -94, "Ai心跳", type2);
        AiQueryInfo = new Cmd("AiQueryInfo", 15, (byte) -92, "Ai信息查询", type2);
        AiOtaStartUpdate = new Cmd("AiOtaStartUpdate", 16, (byte) -90, "AiOta升级", type2);
        AiSetMode = new Cmd("AiSetMode", 17, (byte) -88, "Ai设置识别模式", type2);
        AiSetCamera = new Cmd("AiSetCamera", 18, (byte) -86, "Ai设置推流相机", type2);
        AiSetCameraFrame = new Cmd("AiSetCameraFrame", 19, (byte) -84, "Ai设置相机画框", type2);
        AiSetHardwareId = new Cmd("AiSetHardwareId", 20, (byte) -73, "Ai设置主控硬件ID", type2);
        AiSetStudentId = new Cmd("AiSetStudentId", 21, (byte) -72, "Ai设置登录学员ID", type2);
        AiEnableFaceCover = new Cmd("AiEnableFaceCover", 22, (byte) -69, "Ai是否打开遮挡检测", type2);
        OrderBoxVersion = new Cmd("OrderBoxVersion", 23, (byte) 80, "盒子接线", type);
        CmdSingleConfig = new Cmd("CmdSingleConfig", 24, (byte) 19, "单条设置", type);
        CmdSingleQuery = new Cmd("CmdSingleQuery", 25, Ascii.NAK, "单条查询", type);
        CmdPatchConfig = new Cmd("CmdPatchConfig", 26, (byte) 56, "批量设置", type);
        CmdPatchQuery = new Cmd("CmdPatchQuery", 27, SignedBytes.MAX_POWER_OF_TWO, "批量查询", type);
        OrderSendBrake = new Cmd("OrderSendBrake", 28, Ascii.ESC, "快速刹车解刹指令", type);
        OrderForceBrake = new Cmd("OrderForceBrake", 29, (byte) 92, "强制刹车解刹指令", type);
        OrderSendFlameOut = new Cmd("OrderSendFlameOut", 30, Ascii.GS, "熄火指令", type);
        OrderAdvancedBrake = new Cmd("OrderAdvancedBrake", 31, (byte) 76, "高级解除刹车，用于强制解刹，30S后强制解刹自动消除", type);
        OrderConfigSpecialCoefficient = new Cmd("OrderConfigSpecialCoefficient", 32, (byte) 78, "特殊区域设置系数指令", type);
        OrderManualMotorCalibration = new Cmd("OrderManualMotorCalibration", 33, (byte) 94, "安全模块手动电机标定", type);
        OrderAutoMotorCalibration = new Cmd("OrderAutoMotorCalibration", 34, (byte) 98, "安全模块自动电机标定", type);
        OrderOpenSafeModule = new Cmd("OrderOpenSafeModule", 35, (byte) 82, "关闭安全模块", type);
        OrderGearCalibration = new Cmd("OrderGearCalibration", 36, (byte) -111, "档位标定", type);
        OrderRemoteGearCalibration = new Cmd("OrderRemoteGearCalibration", 37, (byte) 116, "远程档位标定", type);
        OrderGetRemoteGeaData = new Cmd("OrderGetRemoteGeaData", 38, (byte) 118, "获取档位数据", type);
        OrderSendIO = new Cmd("OrderSendIO", 39, (byte) 48, "采集板IO指令", type);
        OrderCalibarClutch = new Cmd("OrderCalibarClutch", 40, (byte) 66, "离合行程标定指令:0:未踩，2：踩满", type);
        OrderCalibarBrake = new Cmd("OrderCalibarBrake", 41, (byte) 68, "刹车行程标定指令:0:未踩，2：踩满", type);
        OrderCalibarThrottle = new Cmd("OrderCalibarThrottle", 42, (byte) 70, "油门行程标定指令:0:未踩，2：踩满", type);
        OrderCalibarGas = new Cmd("OrderCalibarGas", 43, (byte) 96, "油门行程标定指令:0:未踩，1：踩满", type);
        OrderCalibarWheel = new Cmd("OrderCalibarWheel", 44, (byte) 72, "方向盘标定:类型 0:左打死，1回正，2右打死,3:恢复方向盘默认标定值", type);
        OrderConfigSpeedCheck = new Cmd("OrderConfigSpeedCheck", 45, (byte) 84, "开启关闭安全模块超速刹车", type);
        OrderSpeedBrake = new Cmd("OrderSpeedBrake", 46, (byte) 86, "带刹车行程", type);
        OrderBeltBrake = new Cmd("OrderBeltBrake", 47, (byte) 88, "行驶中解开安全带刹车开关指令,0x01:启用  0x00：不启用", type);
        Type type3 = Type.Master;
        OrderDoorBrake = new Cmd("OrderDoorBrake", 48, (byte) 90, "行驶中打开车门刹车开关指令,0x01:启用  0x00：不启用", type3);
        OrderControlThrottleTrigger = new Cmd("OrderControlThrottleTrigger", 49, (byte) 74, "油门模块控制触发设置", type3);
        AutoPilotCtl = new Cmd("AutoPilotCtl", 50, (byte) -64, "自动驾驶控制指令", type3);
        AutoPilotResponse = new Cmd("AutoPilotResponse", 51, (byte) -61, "C2指令响应", type3);
        OrderFaultCodeReq = new Cmd("OrderFaultCodeReq", 52, (byte) 120, "机器人车辆故障码请求", type3);
        OrderFaultCodeClear = new Cmd("OrderFaultCodeClear", 53, (byte) -16, "机器人车辆故障码清除", type3);
        AutoAssist = new Cmd("AutoAssist", 54, (byte) -14, "坡起控速辅助指令", type3);
        $VALUES = new Cmd[]{OrderRequestHarderWareInfo, OrderSetCarModel, OrderSetAppModel, SendHeart, SendBytesNumber, StartOrder, PackageOrder, StartOrderV2, PackageOrderV2, OrderSendRtcm, SendRtcmToJKY, AiStartOrder, AiRequestVersion, AiLogin, AiHeartBeat, AiQueryInfo, AiOtaStartUpdate, AiSetMode, AiSetCamera, AiSetCameraFrame, AiSetHardwareId, AiSetStudentId, AiEnableFaceCover, OrderBoxVersion, CmdSingleConfig, CmdSingleQuery, CmdPatchConfig, CmdPatchQuery, OrderSendBrake, OrderForceBrake, OrderSendFlameOut, OrderAdvancedBrake, OrderConfigSpecialCoefficient, OrderManualMotorCalibration, OrderAutoMotorCalibration, OrderOpenSafeModule, OrderGearCalibration, OrderRemoteGearCalibration, OrderGetRemoteGeaData, OrderSendIO, OrderCalibarClutch, OrderCalibarBrake, OrderCalibarThrottle, OrderCalibarGas, OrderCalibarWheel, OrderConfigSpeedCheck, OrderSpeedBrake, OrderBeltBrake, OrderDoorBrake, OrderControlThrottleTrigger, AutoPilotCtl, AutoPilotResponse, OrderFaultCodeReq, OrderFaultCodeClear, AutoAssist};
    }

    private Cmd(String str, int i, byte b, String str2, Type type) {
        super(str, i);
        this.order = b;
        this.desc = str2;
        this.type = type;
        this.orderDesc = Integer.toHexString(b & UnsignedBytes.MAX_VALUE).toUpperCase();
    }

    public static boolean isSendOTAOrder(int i) {
        return StartOrder.order == i || PackageOrder.order == i || StartOrderV2.order == i || PackageOrderV2.order == i;
    }

    public static Cmd valueOf(String str) {
        return (Cmd) Enum.valueOf(Cmd.class, str);
    }

    public static Cmd[] values() {
        return (Cmd[]) $VALUES.clone();
    }
}
