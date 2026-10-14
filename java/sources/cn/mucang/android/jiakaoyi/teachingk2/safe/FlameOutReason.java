package cn.mucang.android.jiakaoyi.teachingk2.safe;

/* JADX INFO: loaded from: classes4.dex */
public enum FlameOutReason {
    NONE((byte) 0, "无"),
    APP((byte) 1, "上位机熄火"),
    CONTROL((byte) 2, "控制中心熄火"),
    SERVER((byte) 3, "服务端熄火");

    public final String desc;
    public final byte value;

    FlameOutReason(byte b, String str) {
        this.value = b;
        this.desc = str;
    }
}
