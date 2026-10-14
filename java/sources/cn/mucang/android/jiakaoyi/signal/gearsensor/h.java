package cn.mucang.android.jiakaoyi.signal.gearsensor;

import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f5624a;
    private static volatile float b;
    private static volatile float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile float f5625d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile boolean f5626e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile boolean f5627f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile boolean f5628g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile boolean f5629h;
    private static i i;
    private static volatile boolean j;
    private static final r0<Boolean> k;
    private static final r0<Boolean> l;
    private static final r0<Boolean> m;
    private static final r0<Boolean> n;
    private static final r0<Boolean> o;

    static {
        Boolean bool = Boolean.FALSE;
        k = r0.d("key_use_area_fun_gear", bool);
        l = r0.d("key_use_area_fun_gear_tu", bool);
        m = r0.d("key_use_area_cal_like", bool);
        n = r0.d("key_use_area_cal_once", Boolean.TRUE);
        o = r0.d("key_not_cal_when_no_clutch", bool);
    }

    public static boolean A() {
        i iVar = i;
        return iVar != null && iVar.m();
    }

    public static boolean B() {
        return f5624a;
    }

    public static List<GearPose> C() {
        i iVar = i;
        if (iVar != null) {
            return iVar.h();
        }
        return null;
    }

    public static boolean D() {
        return o.b().booleanValue();
    }

    public static void E(boolean z, boolean z2) {
        if (z()) {
            ((cn.mucang.android.jiakaoyi.signal.gearsensor.l.c) i).B(z, z2);
        } else if (v()) {
            ((cn.mucang.android.jiakaoyi.signal.gearsensor.l.a) i).C(z, z2);
        }
    }

    public static boolean F() {
        List<GearPose> listL = l(Gear.Gear1);
        List<GearPose> listL2 = l(Gear.GearBack);
        List<GearPose> listL3 = l(Gear.GearN);
        return (listL == null || listL2 == null || listL3 == null || listL.size() == 0 || listL2.size() == 0 || listL3.size() == 0 || (listL.get(0).roll - listL3.get(0).roll) * (listL2.get(0).roll - listL3.get(0).roll) <= BitmapDescriptorFactory.HUE_RED) ? false : true;
    }

    public static void G() {
        f();
    }

    public static void H(List<? extends GearPose> list) {
        i iVar = i;
        if (iVar != null) {
            iVar.e(list);
        }
    }

    public static void I(boolean z) {
        r0<Boolean> r0Var = k;
        boolean zBooleanValue = r0Var.b().booleanValue();
        r0Var.j(Boolean.valueOf(z));
        cn.mucang.android.jiakaoyi.framework.log.f.o("设置是否区域法判断档位:" + r0Var.b());
        if (!r0Var.b().booleanValue() || zBooleanValue) {
            return;
        }
        f();
    }

    public static void J(double d2, double d3, double d4, double d5, double d6, double d7) {
        t();
        i iVar = i;
        if (iVar != null) {
            iVar.o(d2, d3, d4, d5, d6, d7);
        }
    }

    public static void K(float f2) {
        b = f2;
        i0.j("key_gear_percent_width", f2);
        j = false;
    }

    public static void L(float f2) {
        f5625d = f2;
        i0.j("key_gear_percent_width_bottom", f2);
        j = false;
    }

    public static void M(boolean z) {
        f5624a = z;
        i0.i("key_judge_gear_when_clutch", z);
        cn.mucang.android.jiakaoyi.framework.log.f.o("设置踩离合时是否计算档位:" + f5624a);
    }

    public static void N(boolean z) {
        o.j(Boolean.valueOf(z));
    }

    public static void O(boolean z) {
        m.j(Boolean.valueOf(z));
    }

    public static void P(boolean z) {
        f5627f = z;
        i0.i("key_trust_ext_gear", f5627f);
        cn.mucang.android.jiakaoyi.framework.log.f.o("设置是否信任扩展档位:" + f5627f);
    }

    public static void Q(boolean z) {
        f5626e = z;
        i0.i("key_trust_obd_back_gear", f5626e);
        cn.mucang.android.jiakaoyi.framework.log.f.o("设置是否信任obd倒档:" + f5626e);
    }

    public static void R(float f2) {
        c = f2;
        i0.j("key_value_percent", f2);
        j = false;
    }

    public static boolean S(Gear gear) {
        i iVar = i;
        return iVar != null && iVar.k(gear);
    }

    public static void T() {
        i iVar = i;
        if (iVar != null) {
            iVar.stop();
        }
    }

    public static boolean U() {
        return f5627f;
    }

    public static Gear V(long j2, boolean z, Gear gear, int i2, int i3) {
        i iVar = i;
        return iVar != null ? iVar.l(j2, z, gear, i2, i3) : Gear.Invalid;
    }

    public static boolean W() {
        return l.b().booleanValue();
    }

    public static boolean X() {
        i iVar = i;
        return iVar != null && iVar.j();
    }

    public static void a(boolean z) {
        n.j(Boolean.valueOf(z));
    }

    public static String b() {
        i iVar = i;
        if (iVar != null) {
            return iVar.n();
        }
        return null;
    }

    public static boolean c() {
        i iVar = i;
        return iVar != null && iVar.d();
    }

    public static Pos d() {
        i iVar = i;
        if (iVar != null) {
            return iVar.g();
        }
        return null;
    }

    public static void e(GearPose gearPose) {
        i iVar = i;
        if (iVar != null) {
            iVar.i(gearPose);
        }
    }

    private static void f() {
        if (u()) {
            i = new cn.mucang.android.jiakaoyi.signal.gearsensor.l.a();
            cn.mucang.android.jiakaoyi.framework.log.f.o("bream算法");
            return;
        }
        cn.mucang.android.jiakaoyi.signal.gearsensor.l.c cVar = new cn.mucang.android.jiakaoyi.signal.gearsensor.l.c();
        if (cVar.v()) {
            i = cVar;
            cn.mucang.android.jiakaoyi.framework.log.f.o("sheep算法");
            return;
        }
        cn.mucang.android.jiakaoyi.signal.gearsensor.l.b bVar = new cn.mucang.android.jiakaoyi.signal.gearsensor.l.b();
        if (bVar.u()) {
            i = bVar;
            cn.mucang.android.jiakaoyi.framework.log.f.o("老算法");
        } else {
            i = cVar;
            cn.mucang.android.jiakaoyi.framework.log.f.o("sheep算法");
        }
    }

    public static void g() {
        cn.mucang.android.jiakaoyi.signal.gearsensor.l.c cVar = new cn.mucang.android.jiakaoyi.signal.gearsensor.l.c();
        cVar.v();
        i = cVar;
    }

    public static List<GearPose> h() {
        i iVar = i;
        if (iVar != null) {
            return iVar.b();
        }
        return null;
    }

    public static float i() {
        f5625d = i0.c("key_gear_percent_width_bottom", 0.5f);
        return f5625d;
    }

    public static float j() {
        return ((c * 6.0f) + 3.0f) * f5625d;
    }

    public static boolean k() {
        return f5629h;
    }

    public static List<GearPose> l(Gear gear) {
        i iVar = i;
        if (iVar != null) {
            return iVar.f(gear);
        }
        return null;
    }

    public static float m() {
        b = i0.c("key_gear_percent_width", 0.5f);
        return b;
    }

    public static float n() {
        return b;
    }

    public static float o() {
        return ((c * 6.0f) + 3.0f) * b;
    }

    public static boolean p() {
        return f5628g;
    }

    public static boolean q() {
        return f5626e;
    }

    public static float r() {
        c = i0.c("key_value_percent", 0.5f);
        return c;
    }

    public static boolean s() {
        i iVar = i;
        return iVar != null && iVar.a();
    }

    public static synchronized void t() {
        if (j) {
            return;
        }
        j = true;
        m();
        i();
        r();
        f5629h = i0.b("key_judge_with_line", true);
        f5629h = true;
        f5624a = i0.b("key_judge_gear_when_clutch", false);
        f5628g = i0.b("key_trim_with_rpm", false);
        f5626e = i0.b("key_trust_obd_back_gear", false);
        f5627f = i0.b("key_trust_ext_gear", false);
        cn.mucang.android.jiakaoyi.framework.log.f.o("是否用传动比来修正档位:" + f5628g);
        cn.mucang.android.jiakaoyi.framework.log.f.o("踩离合时是否计算档位:" + f5624a);
        cn.mucang.android.jiakaoyi.framework.log.f.o("设置是否用必经线来计算档位:" + f5629h);
        cn.mucang.android.jiakaoyi.framework.log.f.o("是否信任obd倒档:" + f5626e);
        cn.mucang.android.jiakaoyi.framework.log.f.o("是否信任扩展档位:" + f5627f);
        cn.mucang.android.jiakaoyi.framework.log.f.o("是否区域法判断档位:" + k.b());
        cn.mucang.android.jiakaoyi.framework.log.f.o("区域法是否只计算一次:" + n.b());
        cn.mucang.android.jiakaoyi.framework.log.f.o("区域法是否立刻计算档位:" + m.b());
        cn.mucang.android.jiakaoyi.framework.log.f.o("不踩离合时不计算档位:" + o.b());
        f();
    }

    public static boolean u() {
        return k.b().booleanValue();
    }

    public static boolean v() {
        return i instanceof cn.mucang.android.jiakaoyi.signal.gearsensor.l.a;
    }

    public static boolean w() {
        return n.b().booleanValue();
    }

    public static boolean x() {
        i iVar = i;
        return iVar != null && iVar.c();
    }

    public static boolean y() {
        return m.b().booleanValue();
    }

    public static boolean z() {
        return i instanceof cn.mucang.android.jiakaoyi.signal.gearsensor.l.c;
    }
}
