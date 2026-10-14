package cn.mucang.android.jiakaoyi.signal.autopilot;

/* JADX INFO: loaded from: classes3.dex */
public enum AutoPilotMode {
    None(-1, "未知状态"),
    Manual(0, "人工驾驶模式"),
    Preparing(1, "无人驾驶准备状态"),
    Ready(2, "无人驾驶就绪状态"),
    Running(3, "无人驾驶状态"),
    Pause(4, "无人驾驶暂停状态"),
    Pending(5, "自动驾驶待结束状态"),
    Waiting(6, "等待新轨迹模式");

    public final String desc;
    public final int mode;
    public int unknownCode;

    AutoPilotMode(int i, String str) {
        this.mode = i;
        this.desc = str;
    }

    public static AutoPilotMode parse(int i) {
        for (AutoPilotMode autoPilotMode : values()) {
            if (autoPilotMode.mode == i) {
                return autoPilotMode;
            }
        }
        AutoPilotMode autoPilotMode2 = None;
        autoPilotMode2.unknownCode = i;
        return autoPilotMode2;
    }
}
