package cn.mucang.android.jiakaoyi.signal.center.model;

/* JADX INFO: loaded from: classes3.dex */
public enum CarThrottleState {
    STATE_NONE(0, "油门无动作"),
    STATE_ACTION(1, "油门动作过程中"),
    STATE_DONE(2, "油门达到位置");

    public final int id;
    public final String state;

    CarThrottleState(int i, String str) {
        this.id = i;
        this.state = str;
    }

    public static CarThrottleState parse(int i) {
        for (CarThrottleState carThrottleState : values()) {
            if (carThrottleState.id == i) {
                return carThrottleState;
            }
        }
        return STATE_NONE;
    }
}
