package cn.mucang.android.jiakaoyi.signal.autopilot;

/* JADX INFO: loaded from: classes3.dex */
public enum AutoPilotOrder {
    Wheel((byte) 4, "控制方向盘"),
    Gear((byte) 5, "控制档位"),
    Speed((byte) 6, "控制速度"),
    Collect((byte) 7, "采集轨迹"),
    State((byte) 8, "设置状态"),
    Path((byte) 9, "下发路线"),
    Motor((byte) 10, "挡位电机标定");

    public final String desc;
    public final byte order;

    AutoPilotOrder(byte b, String str) {
        this.order = b;
        this.desc = str;
    }
}
