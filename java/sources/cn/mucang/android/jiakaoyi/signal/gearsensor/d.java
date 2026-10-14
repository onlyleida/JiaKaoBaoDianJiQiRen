package cn.mucang.android.jiakaoyi.signal.gearsensor;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.alibaba.fastjson.JSON;

/* JADX INFO: loaded from: classes3.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static double f5596a;
    public static double b;
    public static double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static double f5597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static double f5598e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static double f5599f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile Gear f5600g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final GearPose[] f5601h;
    private static final int[] i;
    private static boolean j;
    private static Gear k;
    public static GearPose l;

    static {
        Gear[] gearArr = Gear.list;
        f5601h = new GearPose[gearArr.length];
        i = new int[gearArr.length];
        j = false;
        k = Gear.Invalid;
        l = new GearPose();
    }

    public static GearPose[] a() {
        return f5601h;
    }

    public static GearPose b(Gear gear) {
        return f5601h[gear.gear];
    }

    private static void c() {
        if (j) {
            return;
        }
        j = true;
        d();
    }

    private static void d() {
        Gear[] gearArr = {Gear.GearP, Gear.GearBack, Gear.GearN, Gear.GearD};
        for (int i2 = 0; i2 < 4; i2++) {
            Gear gear = gearArr[i2];
            String strG = i0.g(e(gear), null);
            cn.mucang.android.jiakaoyi.framework.log.f.o(gear.gearName + ":" + strG);
            if (n0.g(strG)) {
                try {
                    GearPose gearPose = (GearPose) JSON.parseObject(strG, GearPose.class);
                    if (gearPose != null) {
                        f5601h[gear.gear] = gearPose;
                    }
                } catch (Throwable th) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o(gear.gearName + ":初始化挡位失败:" + th.getLocalizedMessage());
                }
            }
        }
    }

    private static String e(Gear gear) {
        return "key_gear_value_" + gear.gear;
    }

    public static void f(double d2, double d3, double d4, double d5, double d6, double d7) {
        c();
        c = d2;
        b = d3;
        f5596a = d4;
        f5599f = d5;
        f5598e = d6;
        f5597d = d7;
        Gear gear = f5600g;
        if (gear != null) {
            float fC = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (f5599f - c));
            float fC2 = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (f5598e - b));
            float fC3 = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (f5597d - f5596a));
            GearPose[] gearPoseArr = f5601h;
            GearPose gearPose = gearPoseArr[gear.gear];
            if (gearPose == null) {
                gearPose = new GearPose();
                gearPoseArr[gear.gear] = gearPose;
            }
            gearPose.set((float) i(fC), (float) i(fC2), (float) i(fC3));
            h(gear);
        }
    }

    public static boolean g(Gear gear) {
        if (Math.abs(f5599f) + Math.abs(f5598e) + Math.abs(f5597d) < 1.0E-6d) {
            u.h("没有姿态传感器，不能进行姿态挡位学习");
            cn.mucang.android.jiakaoyi.framework.log.f.o("没有姿态传感器，不能进行姿态挡位学习:" + gear.gearName);
            return false;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("开始挡位学习:" + gear.gearName);
        f5601h[gear.gear] = null;
        f5600g = gear;
        return true;
    }

    private static void h(Gear gear) {
        Gear gear2 = f5600g;
        f5600g = null;
        if (gear2 == null) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("停止挡位学习:" + gear2.gearName);
        GearPose gearPose = f5601h[gear2.gear];
        if (gearPose == null) {
            return;
        }
        String jSONString = JSON.toJSONString(gearPose);
        i0.m(e(gear), jSONString);
        cn.mucang.android.jiakaoyi.framework.log.f.o(gear.gearName + "学习结果:" + jSONString);
    }

    private static double i(double d2) {
        return ((double) ((int) (d2 * 100.0d))) / 100.0d;
    }

    public static Gear j(long j2, boolean z, Gear gear, int i2, int i3) {
        int[] iArr;
        l.setValue(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (f5599f - c)), cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (f5598e - b)), cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (f5597d - f5596a)));
        Gear gear2 = Gear.Invalid;
        float f2 = Float.MAX_VALUE;
        int i4 = -1;
        int i5 = 0;
        while (true) {
            GearPose[] gearPoseArr = f5601h;
            if (i5 >= gearPoseArr.length) {
                break;
            }
            GearPose gearPose = gearPoseArr[i5];
            if (gearPose != null) {
                float fDistanceSqure = gearPose.distanceSqure(l);
                if (fDistanceSqure < f2) {
                    gear2 = Gear.parse(i5);
                    i4 = i5;
                    f2 = fDistanceSqure;
                }
            }
            i5++;
        }
        int i6 = 0;
        while (true) {
            iArr = i;
            if (i6 >= iArr.length) {
                break;
            }
            if (i6 == i4) {
                iArr[i6] = iArr[i6] + 1;
            } else {
                iArr[i6] = 0;
            }
            i6++;
        }
        if (i4 < 0 || iArr[i4] < 3) {
            return k == Gear.Invalid ? gear : k;
        }
        k = gear2;
        return gear2;
    }

    public static boolean k() {
        double dAbs = Math.abs(f5599f - c);
        double dAbs2 = Math.abs(f5598e - b);
        return dAbs < 45.0d && dAbs2 < 45.0d && dAbs + dAbs2 < 60.0d;
    }
}
