package cn.mucang.android.jiakaoyi.framework.utils;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000ej\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001c¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/utils/CheckSignal;", "", "str", "", "tip", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "hasPlayErrTip", "", "getHasPlayErrTip", "()Z", "setHasPlayErrTip", "(Z)V", "signalName", "getSignalName", "()Ljava/lang/String;", "state", "", "getState", "()I", "setState", "(I)V", "getTip", "GPS", "KEY", "GEAR", "SPEED", "RPM", "THROTTLE", "GYRO", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum CheckSignal {
    GPS("GPS", "请检查OBD盒子绿灯状态，如闪亮，则GPS信号不好，请将车辆开至空旷地段，如未亮，请检查GPS天线是否松动"),
    KEY("钥匙", "请确认车型是否选择正确，如需改车型，请点击\"路考仪设置-车辆信号检测\""),
    GEAR("变速箱", "请确认车型是否选择正确，如需改车型，请点击\"路考仪设置-车辆信号检测\""),
    SPEED("OBD车速", "请确认车型是否选择正确，如需改车型，请点击\"路考仪设置-车辆信号检测\""),
    RPM("OBD转速", "请确认车型是否选择正确，如需改车型，请点击\"路考仪设置-车辆信号检测\""),
    THROTTLE("油门", "请确认车型是否选择正确，如需改车型，请点击\"路考仪设置-车辆信号检测\""),
    GYRO("陀螺仪", "请检查陀螺仪线是否松动");

    private boolean hasPlayErrTip;
    private final String signalName;
    private int state;
    private final String tip;

    CheckSignal(String str, String str2) {
        this.tip = str2;
        this.signalName = str;
    }

    public final boolean getHasPlayErrTip() {
        return this.hasPlayErrTip;
    }

    public final String getSignalName() {
        return this.signalName;
    }

    public final int getState() {
        return this.state;
    }

    public final String getTip() {
        return this.tip;
    }

    public final void setHasPlayErrTip(boolean z) {
        this.hasPlayErrTip = z;
    }

    public final void setState(int i) {
        this.state = i;
    }
}
