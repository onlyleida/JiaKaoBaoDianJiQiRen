package cn.mucang.android.jiakaoyi.signal.center.model;

/* JADX INFO: loaded from: classes3.dex */
public enum CarClutchState {
    CLUTCH_NONE(0, "离合无动作"),
    CLUTCH_DONE(1, "离合达到位置");

    public int id;
    public String state;

    CarClutchState(int i, String str) {
        this.id = i;
        this.state = str;
    }

    public static CarClutchState parse(int i) {
        for (CarClutchState carClutchState : values()) {
            if (carClutchState.id == i) {
                return carClutchState;
            }
        }
        return CLUTCH_NONE;
    }
}
