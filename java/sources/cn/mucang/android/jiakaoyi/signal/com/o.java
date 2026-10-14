package cn.mucang.android.jiakaoyi.signal.com;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Cmd[] f5317a = {Cmd.OrderRequestHarderWareInfo, Cmd.OrderSetCarModel, Cmd.SendHeart, Cmd.AutoPilotCtl, Cmd.AutoPilotResponse, Cmd.SendBytesNumber, Cmd.OrderGearCalibration, Cmd.OrderFaultCodeReq, Cmd.OrderFaultCodeClear, Cmd.OrderRemoteGearCalibration, Cmd.OrderGetRemoteGeaData, Cmd.AutoAssist};
    private static final Cmd[] b;
    private static final Cmd[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Cmd[] f5318d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Cmd[] f5319e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Cmd[] f5320f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Cmd[] f5321g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Cmd[] f5322h;
    private static final Cmd[] i;
    private static Cmd[][] j;
    private static Integer[] k;
    private static Integer[] l;
    private static Integer[] m;
    private static Integer[] n;
    private static Integer[] o;

    static {
        Cmd[] cmdArr = {Cmd.StartOrder, Cmd.PackageOrder, Cmd.StartOrderV2, Cmd.PackageOrderV2};
        b = cmdArr;
        Cmd[] cmdArr2 = {Cmd.OrderSendRtcm, Cmd.SendRtcmToJKY};
        c = cmdArr2;
        Cmd[] cmdArr3 = {Cmd.AiStartOrder, Cmd.AiRequestVersion, Cmd.AiHeartBeat, Cmd.AiLogin, Cmd.AiOtaStartUpdate, Cmd.AiQueryInfo, Cmd.AiSetCamera, Cmd.AiSetMode, Cmd.AiSetCameraFrame, Cmd.AiSetHardwareId, Cmd.AiSetStudentId, Cmd.AiEnableFaceCover};
        f5318d = cmdArr3;
        Cmd[] cmdArr4 = {Cmd.OrderBoxVersion};
        f5319e = cmdArr4;
        Cmd cmd = Cmd.OrderControlThrottleTrigger;
        Cmd[] cmdArr5 = {Cmd.CmdSingleConfig, Cmd.CmdSingleQuery, Cmd.CmdPatchConfig, Cmd.CmdPatchQuery, Cmd.OrderSendBrake, Cmd.OrderForceBrake, Cmd.OrderSendFlameOut, cmd, Cmd.OrderAdvancedBrake, Cmd.OrderConfigSpecialCoefficient, Cmd.OrderManualMotorCalibration, Cmd.OrderAutoMotorCalibration, Cmd.OrderConfigSpeedCheck, Cmd.OrderSpeedBrake, Cmd.OrderOpenSafeModule, Cmd.OrderBeltBrake, Cmd.OrderDoorBrake};
        f5320f = cmdArr5;
        Cmd[] cmdArr6 = {Cmd.OrderSendIO};
        f5321g = cmdArr6;
        Cmd[] cmdArr7 = {Cmd.OrderCalibarClutch, Cmd.OrderCalibarBrake, Cmd.OrderCalibarThrottle, Cmd.OrderCalibarGas, Cmd.OrderCalibarWheel};
        f5322h = cmdArr7;
        Cmd[] cmdArr8 = {cmd};
        i = cmdArr8;
        j = new Cmd[][]{f5317a, cmdArr, cmdArr2, cmdArr4, cmdArr5, cmdArr6, cmdArr7, cmdArr8, cmdArr3};
        k = new Integer[]{0, 1, 2, 8, 3, 4, 5, 6, 7};
        l = new Integer[]{0, 1, 3, 4, 5, 6, 7};
        m = new Integer[]{2};
        n = new Integer[]{8};
        o = new Integer[]{0, 1, 3, 4, 5, 6, 7, 2};
    }

    public static List<Cmd> a() {
        return f(n);
    }

    public static List<Cmd> b() {
        return f(k);
    }

    public static List<Cmd> c() {
        return f(m);
    }

    public static List<Cmd> d() {
        return f(o);
    }

    public static List<Cmd> e() {
        return f(l);
    }

    public static List<Cmd> f(Integer... numArr) {
        LinkedList linkedList = new LinkedList();
        for (Integer num : numArr) {
            linkedList.addAll(Arrays.asList(j[num.intValue()]));
        }
        return linkedList;
    }
}
