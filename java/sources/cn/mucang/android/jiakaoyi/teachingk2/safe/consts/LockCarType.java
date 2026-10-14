package cn.mucang.android.jiakaoyi.teachingk2.safe.consts;

/* JADX INFO: loaded from: classes4.dex */
public enum LockCarType {
    NONE(0, "无"),
    APP_PODAO(1, "坡起危险锁车"),
    CONTROL(2, "监控中心锁车");

    public final String desc;
    public final int value;

    LockCarType(int i, String str) {
        this.value = i;
        this.desc = str;
    }

    public static LockCarType getLockType(int i) {
        for (LockCarType lockCarType : values()) {
            if (i == lockCarType.value) {
                return lockCarType;
            }
        }
        return NONE;
    }
}
