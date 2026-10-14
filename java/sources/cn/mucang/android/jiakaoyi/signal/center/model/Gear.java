package cn.mucang.android.jiakaoyi.signal.center.model;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.R;

/* JADX INFO: loaded from: classes3.dex */
public enum Gear {
    GearN(0, k0.a(R.string.signal_gear_n), 0, 5, "空挡"),
    Gear1(1, k0.a(R.string.signal_gear1), 0, 0, "1挡"),
    Gear2(2, k0.a(R.string.signal_gear2), 0, 0, "2挡"),
    Gear3(3, k0.a(R.string.signal_gear3), 0, 0, "3挡"),
    Gear4(4, k0.a(R.string.signal_gear4), 0, 0, "4挡"),
    Gear5(5, k0.a(R.string.signal_gear5), 0, 0, "5挡"),
    Gear6(6, k0.a(R.string.signal_gear6), 0, 0, "6挡"),
    GearP(7, k0.a(R.string.signal_gear_p), 0, 0, "P挡"),
    GearD(8, k0.a(R.string.signal_gear_d), 0, 0, "D挡"),
    GearS(9, k0.a(R.string.signal_gear_s), 0, 0, "S挡"),
    GearBack(10, k0.a(R.string.signal_gear_back), 0, 0, "倒挡"),
    GearM(11, k0.a(R.string.signal_gear_m), 0, 0, "M挡"),
    GearL(12, k0.a(R.string.signal_gear_l), 0, 0, "L挡"),
    Invalid(-1, k0.a(R.string.signal_gear_invalid), 0, 0, "-");

    public static final Gear[] list = values();
    public final int gear;
    public final String gearName;
    public final int maxSpeed;
    public final int minSpeed;
    public final String zhName;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f5271a;

        static {
            int[] iArr = new int[Gear.values().length];
            f5271a = iArr;
            try {
                iArr[Gear.Gear1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5271a[Gear.Gear2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5271a[Gear.Gear3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5271a[Gear.Gear4.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5271a[Gear.Gear5.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f5271a[Gear.GearN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    static {
        for (Gear gear : values()) {
            list[gear.gear + 1] = gear;
        }
    }

    Gear(int i, String str, int i2, int i3, String str2) {
        this.gear = i;
        this.gearName = str;
        this.minSpeed = i2;
        this.maxSpeed = i3;
        this.zhName = str2;
    }

    public static Gear parse(int i) {
        int i2 = i + 1;
        if (i2 >= 0) {
            Gear[] gearArr = list;
            if (i2 < gearArr.length) {
                return gearArr[i2];
            }
        }
        return Invalid;
    }

    public boolean isBack() {
        return this == GearBack;
    }

    public boolean isFront() {
        return (this == GearBack || this == GearN || this == GearP || this == Invalid) ? false : true;
    }

    public boolean isManual() {
        int i = this.gear;
        return (i >= 1 && i <= 5) || i == GearBack.gear;
    }

    public boolean isValid() {
        return this != Invalid;
    }

    public String number() {
        switch (a.f5271a[ordinal()]) {
            case 1:
                return "一挡";
            case 2:
                return "二挡";
            case 3:
                return "三挡";
            case 4:
                return "四挡";
            case 5:
                return "五挡";
            case 6:
                return "空挡";
            default:
                return this.gearName;
        }
    }
}
