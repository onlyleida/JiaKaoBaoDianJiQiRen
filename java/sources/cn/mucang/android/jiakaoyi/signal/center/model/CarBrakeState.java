package cn.mucang.android.jiakaoyi.signal.center.model;

/* JADX INFO: loaded from: classes3.dex */
public enum CarBrakeState {
    STATE_NONE(0, "刹车无动作"),
    STATE_BRAKE(1, "已刹车");

    public final int id;
    public final String state;

    CarBrakeState(int i, String str) {
        this.id = i;
        this.state = str;
    }

    public static CarBrakeState parse(int i) {
        for (CarBrakeState carBrakeState : values()) {
            if (carBrakeState.id == i) {
                return carBrakeState;
            }
        }
        return STATE_NONE;
    }
}
