package cn.mucang.android.jiakaoyi.signal.center.model;

import cn.mucang.android.jiakaoyi.signal.utils.f;

/* JADX INFO: loaded from: classes3.dex */
public enum GearType {
    manual("手动挡", 1),
    auto("自动挡", 2);

    public final String gearName;
    public final int type;

    GearType(String str, int i) {
        this.gearName = str;
        this.type = i;
    }

    public static GearType parse(int i) {
        GearType gearType = manual;
        return i == gearType.type ? gearType : auto;
    }

    public boolean isAuto() {
        return f.b();
    }

    public boolean isManual() {
        return f.c();
    }
}
