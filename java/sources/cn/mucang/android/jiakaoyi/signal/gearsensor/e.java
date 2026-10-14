package cn.mucang.android.jiakaoyi.signal.gearsensor;

import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float[] f5602a = new float[Gear.list.length];

    public static boolean a(Gear gear, int i) {
        return c(Gear.Invalid, gear, i);
    }

    private static boolean b(Gear gear, Gear gear2, float f2, int i) {
        if (gear2 == Gear.Gear1) {
            return d(gear, f2, i);
        }
        if (gear2 == Gear.Gear2) {
            return e(gear, f2, i);
        }
        if (gear2 == Gear.Gear3) {
            return f(gear, f2, i);
        }
        if (gear2 == Gear.Gear4) {
            return g(gear, f2, i);
        }
        if (gear2 == Gear.Gear5) {
            return h(gear, f2, i);
        }
        if (gear2 == Gear.GearBack) {
            return i(gear, f2, i);
        }
        return false;
    }

    public static boolean c(Gear gear, Gear gear2, int i) {
        return b(gear, gear2, 0.5f, i);
    }

    public static boolean d(Gear gear, float f2, int i) {
        if (h.F() && k(gear, Gear.Gear1, Gear.GearBack, f2, i)) {
            return true;
        }
        return k(gear, Gear.Gear1, Gear.Gear3, f2, i);
    }

    public static boolean e(Gear gear, float f2, int i) {
        return k(gear, Gear.Gear2, Gear.Gear4, f2, i);
    }

    public static boolean f(Gear gear, float f2, int i) {
        Gear gear2 = Gear.Gear3;
        if (k(gear, gear2, Gear.Gear5, f2, i)) {
            return true;
        }
        return k(gear, gear2, Gear.Gear1, f2, i);
    }

    public static boolean g(Gear gear, float f2, int i) {
        if (h.F() || !k(gear, Gear.Gear4, Gear.GearBack, f2, i)) {
            return k(gear, Gear.Gear4, Gear.Gear2, f2, i);
        }
        return true;
    }

    public static boolean h(Gear gear, float f2, int i) {
        return k(gear, Gear.Gear5, Gear.Gear3, f2, i);
    }

    public static boolean i(Gear gear, float f2, int i) {
        return h.F() ? k(gear, Gear.GearBack, Gear.Gear1, f2, i) : k(gear, Gear.GearBack, Gear.Gear4, f2, i);
    }

    private static boolean j(Gear gear, Gear gear2, int i) {
        if (gear == gear2) {
            return true;
        }
        if (i <= 0) {
            return false;
        }
        if (gear2 == Gear.Gear1 && i >= 90) {
            return true;
        }
        if (gear2 == Gear.Gear2 && i >= 50 && i <= 90) {
            return true;
        }
        if (gear2 == Gear.Gear3 && i <= 65 && i >= 33) {
            return true;
        }
        if (gear2 == Gear.Gear4 && i <= 50 && i >= 22) {
            return true;
        }
        if (gear2 != Gear.Gear5 || i > 40 || i <= 15) {
            return gear2 == Gear.GearBack && i >= 90;
        }
        return true;
    }

    private static boolean k(Gear gear, Gear gear2, Gear gear3, float f2, int i) {
        if (h.s()) {
            return j(gear, gear2, i);
        }
        return gear == gear2;
    }

    public static void l(Gear gear, float f2) {
        if (gear != Gear.Invalid) {
            f5602a[gear.gear] = (float) Math.sqrt(Math.abs(f2));
        }
    }

    public static int m(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        return (int) (eVar.d().f5265a / Math.max(Math.max(eVar.d().b, eVar.d().c), CarModel.Y));
    }
}
