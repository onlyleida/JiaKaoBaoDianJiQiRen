package cn.mucang.android.jiakaoyi.signal.center.model;

/* JADX INFO: loaded from: classes3.dex */
public enum CarFlameoutSource {
    FLAMEOUT_SOURCE_NONE(255, "无效值"),
    FLAMEOUT_BY_LOWER_COMPUTER(1, "下位机熄火"),
    FLAMEOUT_BY_UPPER_COMPUTER(2, "上位机熄火"),
    FLAMEOUT_BY_REMOTER_COMPUTER(3, "远程熄火"),
    FLAMEOUT_BY_CONTROL_CENTER(4, "控制中心熄火");

    public final int id;
    public final String src;

    CarFlameoutSource(int i, String str) {
        this.id = i;
        this.src = str;
    }

    public static CarFlameoutSource parse(int i) {
        for (CarFlameoutSource carFlameoutSource : values()) {
            if (carFlameoutSource.id == i) {
                return carFlameoutSource;
            }
        }
        return FLAMEOUT_SOURCE_NONE;
    }
}
