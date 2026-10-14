package cn.mucang.android.jiakaoyi.signal.center.config;

/* JADX INFO: loaded from: classes3.dex */
public enum CarSignal {
    Door(1, "车门"),
    SafeBelt(2, "安全带"),
    HandBrake(3, "手刹"),
    FootBrake(4, "脚刹"),
    Clutch(5, "离合"),
    Horn(7, "喇叭"),
    TurnLeftLight(8, "左转向灯"),
    TurnRightLight(9, "右转向灯"),
    DoubleFlashLight(10, "应急灯"),
    NearLight(11, "近光灯"),
    FarLight(12, "远光灯"),
    WidthLight(13, "示宽灯"),
    FrontFogLight(14, "前雾灯"),
    RearFogLight(15, "后雾灯"),
    LeftFront(17, "前左"),
    RightFront(18, "前右"),
    LeftBack(19, "后左"),
    RightBack(20, "后右"),
    KongDang(21, "空挡"),
    TouchSeat(22, "三摸-座椅"),
    TouchOutsideMirror(23, "三摸-外后视镜"),
    TouchInsideMirror(24, "三摸-内后视镜"),
    FingerPrint(25, "指纹"),
    BackGear(26, "倒挡"),
    KeyStarting(27, "拧钥匙"),
    Wiper(28, "雨刮器"),
    Key(29, "钥匙状态");

    public final int id;
    public final String signalName;

    CarSignal(int i, String str) {
        this.id = i;
        this.signalName = str;
    }

    public static CarSignal parse(int i) {
        for (CarSignal carSignal : values()) {
            if (carSignal.id == i) {
                return carSignal;
            }
        }
        return null;
    }
}
