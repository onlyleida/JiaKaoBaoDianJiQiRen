package cn.mucang.android.jiakaoyi.teachingk2.record;

import com.autonavi.base.amap.mapcore.tools.GLMapStaticValue;
import com.iflytek.cloud.ErrorCode;
import com.serenegiant.net.SocketChannelDataLink;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b4\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8¨\u00069"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;", "", "code", "", SocialConstants.PARAM_APP_DESC, "", "(Ljava/lang/String;IILjava/lang/String;)V", "getCode", "()I", "getDesc", "()Ljava/lang/String;", "Fatigue", "HeadDown", "OneHand", "OffHand", "Drink", "Smoke", "Call", "OneHandOpenDoor", "Start", "Bow2Left", "Bow2Right", "SitTiltForward", "SitTiltLeft", "SitTiltRight", "Happy", "Amazed", "Sad", "Angry", "SingleLeftHand", "SingleRightHand", "HandCross", "TwoHandOpenDoor", "Belt", "OpenDoor", "FlameOut", "HouLiu", "Speed", "Fence", "Radar", "WheelLoss", "LongTimeNoAction", "VideoStart", "VideoEnd", "TrainStart", "TrainEnd", "VoiceWake", "VoiceQuit", "TraceStart", "TraceEnd", "AutoTeachStart", "AutoTeachEnd", "K2Train", "FpReport", "FpResult", "FpInBoundary", "LockCar", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum RecordEvent {
    Fatigue(1000, "疲劳驾驶"),
    HeadDown(1001, "低头驾驶"),
    OneHand(1002, "单手打方向盘"),
    OffHand(1003, "双手离开方向盘"),
    Drink(1004, "行驶中喝水"),
    Smoke(1005, "行驶中抽烟"),
    Call(1006, "行驶中打电话"),
    OneHandOpenDoor(1007, "单手开车门"),
    Start(1008, "起步未观察"),
    Bow2Left(1009, "低头左摆头"),
    Bow2Right(1010, "低头右摆头"),
    SitTiltForward(1011, "坐姿前倾"),
    SitTiltLeft(1012, "坐姿左倾大于10度"),
    SitTiltRight(1013, "坐姿右倾大于10度"),
    Happy(1014, "高兴"),
    Amazed(1015, "惊讶"),
    Sad(1016, "悲伤"),
    Angry(1017, "生气"),
    SingleLeftHand(1018, "单左手"),
    SingleRightHand(1019, "单右手"),
    HandCross(1020, "双手交叉"),
    TwoHandOpenDoor(1021, "双手开车门"),
    Belt(2000, "行驶中解开安全带"),
    OpenDoor(2001, "行驶中打开车门"),
    FlameOut(2002, "车辆熄火"),
    HouLiu(2003, "车辆后溜"),
    Speed(2004, "车辆超速"),
    Fence(2005, "触碰电子围栏"),
    Radar(2006, "触碰障碍物"),
    WheelLoss(2007, "原地打方向盘"),
    LongTimeNoAction(2048, "长时间无动作"),
    VideoStart(3000, "开始视频"),
    VideoEnd(GLMapStaticValue.AM_PARAMETERNAME_PROCESS_REALCITY, "结束视频"),
    TrainStart(4000, "开始训练"),
    TrainEnd(GLMapStaticValue.AM_PARAMETERNAME_HALF_LEVEL_ZOOM, "结束训练"),
    VoiceWake(5000, "唤醒语音"),
    VoiceQuit(GLMapStaticValue.AM_PARAMETERNAME_NETWORK, "退出语音"),
    TraceStart(SocketChannelDataLink.DEFAULT_SERVER_PORT, "开始回放"),
    TraceEnd(6001, "退出回放"),
    AutoTeachStart(9000, "开始示教"),
    AutoTeachEnd(Videoio.CAP_PROP_IOS_DEVICE_FOCUS, "结束示教"),
    K2Train(9200, "科二专项练习"),
    FpReport(ErrorCode.MSP_ERROR_LOGIN_SUCCESS, "首训不在库位内"),
    FpResult(11001, "首训结果"),
    FpInBoundary(11002, "首训进入库位内"),
    LockCar(2008, "车辆锁定状态");

    private final int code;
    private final String desc;

    RecordEvent(int i, String str) {
        this.code = i;
        this.desc = str;
    }

    public final int getCode() {
        return this.code;
    }

    public final String getDesc() {
        return this.desc;
    }
}
