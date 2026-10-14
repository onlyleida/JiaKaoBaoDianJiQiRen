package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips;

/* JADX INFO: loaded from: classes4.dex */
public enum TeachTipType {
    Wheel(true),
    Stop(true),
    HandBrake(true),
    Light(true),
    Honk(true),
    Gear(true),
    RightDistance(true),
    RangeDistance(true),
    UnableDaoKu(false),
    UnableCeFang(false),
    UnableCeFangDaoKuStep1(false);

    public final boolean show;

    TeachTipType(boolean z) {
        this.show = z;
    }

    public boolean needShow() {
        return this.show;
    }
}
