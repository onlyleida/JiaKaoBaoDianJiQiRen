package cn.mucang.android.jiakaoyi.signal.center.model;

import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;

/* JADX INFO: loaded from: classes3.dex */
public enum EnergyType {
    oil("油车", 1),
    electric("电车", 2);

    public final int type;
    public final String typeName;

    EnergyType(String str, int i) {
        this.typeName = str;
        this.type = i;
    }

    public static EnergyType parse(int i) {
        EnergyType energyType = oil;
        return i == energyType.type ? energyType : electric;
    }

    public boolean isElectric() {
        return SelectCarManager.c().type == electric.type;
    }

    public boolean isOil() {
        return SelectCarManager.c().type == oil.type;
    }
}
