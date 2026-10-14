package cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker;

/* JADX INFO: loaded from: classes2.dex */
public enum SubStep {
    None,
    Step1,
    Step2,
    Step3,
    Step4,
    Step5,
    Step6,
    Step7,
    Step8,
    Step9;

    public static SubStep find(int i) {
        for (SubStep subStep : values()) {
            if (subStep.ordinal() == i) {
                return subStep;
            }
        }
        return None;
    }
}
