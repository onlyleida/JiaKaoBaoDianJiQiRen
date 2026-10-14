package cn.mucang.android.jiakaoyi.signal.gearsensor.l;

import android.os.SystemClock;
import android.util.Log;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.signal.center.config.CarSignal;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.gearsensor.GearPose;
import cn.mucang.android.jiakaoyi.signal.gearsensor.h;
import cn.mucang.android.jiakaoyi.signal.gearsensor.i;
import cn.mucang.android.jiakaoyi.signal.gearsensor.k.d;
import cn.mucang.android.jiakaoyi.signal.gearsensor.k.e;
import cn.mucang.android.jiakaoyi.signal.handle.gear.LineAB;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.alibaba.fastjson.JSON;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.tencent.bugly.Bugly;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a implements i {
    private float A;
    private float B;
    private float C;
    private float D;
    private volatile boolean E;
    private volatile boolean F;
    private final Pos G;
    private final Pos H;
    private boolean I;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double f5637a = 0.0d;
    public double b = 0.0d;
    public double c = 0.0d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public double f5638d = 0.0d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public double f5639e = 0.0d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public double f5640f = 0.0d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Pos f5641g = new Pos();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Pos f5642h = new Pos();
    private float i;
    private float j;
    private float k;
    private float l;
    private float m;
    private final int[] n;
    private int o;
    public boolean p;
    private int q;
    private volatile GearPose r;
    private volatile boolean s;
    private final List<Pos> t;
    private final LinkedList<Float> u;
    private Gear v;
    private final List<GearPose> w;
    public final List<GearPose> x;
    private boolean y;
    private long z;

    public a() {
        Gear gear = Gear.Invalid;
        this.i = BitmapDescriptorFactory.HUE_RED;
        this.j = BitmapDescriptorFactory.HUE_RED;
        this.k = BitmapDescriptorFactory.HUE_RED;
        this.l = BitmapDescriptorFactory.HUE_RED;
        this.m = BitmapDescriptorFactory.HUE_RED;
        Gear[] gearArr = Gear.list;
        this.n = new int[gearArr.length];
        this.o = 0;
        int[] iArr = new int[gearArr.length];
        this.p = false;
        this.q = 0;
        this.r = null;
        this.s = false;
        this.t = new ArrayList();
        this.u = new LinkedList<>();
        this.v = gear;
        this.w = new ArrayList();
        this.x = new ArrayList();
        this.y = false;
        this.A = BitmapDescriptorFactory.HUE_RED;
        this.B = 1.0f;
        this.C = BitmapDescriptorFactory.HUE_RED;
        this.D = 1.0f;
        this.E = false;
        this.F = false;
        this.G = new Pos(0.0d, 0.0d);
        this.H = new Pos();
        this.I = true;
    }

    private static boolean A(float[] fArr, List<Pos> list) {
        int i;
        int i2;
        if (g.b(list)) {
            return false;
        }
        double d2 = fArr[0];
        double d3 = fArr[1];
        int size = list.size();
        int i3 = size - 1;
        int i4 = 0;
        boolean z = false;
        while (i4 < size) {
            Pos pos = list.get(i4);
            Pos pos2 = list.get(i3);
            double d4 = pos.y;
            boolean z2 = d4 > d3;
            double d5 = pos2.y;
            if (z2 != (d5 > d3)) {
                double d6 = pos2.x;
                i = size;
                i2 = i4;
                double d7 = pos.x;
                if (d2 < (((d6 - d7) * (d3 - d4)) / (d5 - d4)) + d7) {
                    z = !z;
                }
            } else {
                i = size;
                i2 = i4;
            }
            i4 = i2 + 1;
            size = i;
            i3 = i2;
        }
        return z;
    }

    private void B() {
        this.r = null;
        this.q = 0;
        this.z = 0L;
    }

    private double F(double d2) {
        return ((double) ((int) (d2 * 100.0d))) / 100.0d;
    }

    private Gear p(float f2, float f3, float f4, float f5) {
        float f6;
        int i;
        Gear gear;
        float f7 = f2 - f4;
        float f8 = f3 - f5;
        Gear gear2 = Gear.GearN;
        GearPose gearPoseR = r(gear2);
        if (gearPoseR == null) {
            this.i = f2;
            this.j = f3;
            return Gear.Invalid;
        }
        float fSqrt = (float) Math.sqrt((f7 * f7) + (f8 * f8));
        float f9 = 1.0f;
        float f10 = AppUtils.f() ? 1.0f : 0.5f;
        if (fSqrt < f10) {
            this.o++;
        } else if (fSqrt > 1.0f) {
            this.o = 0;
        }
        Gear gear3 = Gear.Invalid;
        if (fSqrt < f10) {
            f6 = 1.0f;
            i = 0;
        } else if (fSqrt <= 1.0f) {
            f6 = 1.0f;
            i = 1;
        } else {
            f6 = 1.0f / fSqrt;
            i = (int) (fSqrt / 1.0f);
        }
        if (i == 0) {
            for (GearPose gearPose : this.x) {
                List<Pos> list = gearPose.points;
                if (list != null && list.size() >= 4 && A(new float[]{f2, f3}, gearPose.points)) {
                    int[] iArr = this.n;
                    int i2 = gearPose.gear;
                    iArr[i2] = iArr[i2] + 1;
                    gearPose.f5592a = iArr[i2];
                    gear3 = Gear.parse(i2);
                    if (gear3 != Gear.GearN) {
                        break;
                    }
                    return gear3;
                }
            }
            int i3 = 0;
            while (true) {
                int[] iArr2 = this.n;
                if (i3 >= iArr2.length) {
                    break;
                }
                if (i3 != gear3.gear && gear3 != Gear.Invalid) {
                    iArr2[i3] = 0;
                }
                i3++;
            }
            Gear gear4 = this.v;
            if (gear4 == Gear.GearN || gear4 == Gear.Invalid || !h.w()) {
                return this.o > (AppUtils.f() ? 1 : 3) ? gear3 : this.v;
            }
            return this.v;
        }
        float f11 = gearPoseR.roll;
        if ((f2 - f11) * (f11 - this.i) >= BitmapDescriptorFactory.HUE_RED) {
            this.i = f2;
            this.j = f3;
            return gear2;
        }
        float[][] fArr = (float[][]) Array.newInstance((Class<?>) float.class, i, 2);
        int i4 = 0;
        while (i4 < i) {
            float f12 = i4 * f9;
            int i5 = i4;
            float[][] fArr2 = fArr;
            fArr2[i5] = t(f2, f3, f4, f5, f6, f12);
            i4 = i5 + 1;
            fArr = fArr2;
            f9 = 1.0f;
        }
        float[][] fArr3 = fArr;
        for (int length = fArr3.length - 1; length >= 0; length--) {
            List<Pos> list2 = gearPoseR.points;
            if (list2 != null && list2.size() >= 4) {
                float[] fArr4 = fArr3[length];
                if (!A(fArr4, gearPoseR.points)) {
                    this.n[0] = 0;
                    gearPoseR.f5592a = BitmapDescriptorFactory.HUE_RED;
                    Gear gear5 = this.v;
                    if (gear5 == Gear.GearN || gear5 == Gear.Invalid || !h.w()) {
                        for (GearPose gearPose2 : this.x) {
                            List<Pos> list3 = gearPose2.points;
                            if (list3 != null && list3.size() >= 4 && gearPose2.gear != Gear.GearN.gear && A(fArr4, gearPose2.points)) {
                                int[] iArr3 = this.n;
                                int i6 = gearPose2.gear;
                                iArr3[i6] = iArr3[i6] + 1;
                                gearPose2.f5592a = iArr3[i6];
                                if (h.y()) {
                                    gear = Gear.parse(gearPose2.gear);
                                } else {
                                    int i7 = gearPose2.gear;
                                    Gear gear6 = this.v;
                                    if (i7 == gear6.gear) {
                                        gear3 = gear6;
                                    }
                                }
                            }
                        }
                    } else {
                        gear = this.v;
                    }
                    gear3 = gear;
                    break;
                }
                int i8 = 1;
                while (true) {
                    int[] iArr4 = this.n;
                    if (i8 >= iArr4.length) {
                        break;
                    }
                    iArr4[i8] = 0;
                    i8++;
                }
                for (GearPose gearPose3 : this.x) {
                    List<Pos> list4 = gearPose3.points;
                    if (list4 != null && list4.size() >= 4 && gearPose3.gear != Gear.GearN.gear) {
                        gearPose3.f5592a = BitmapDescriptorFactory.HUE_RED;
                    }
                }
                int[] iArr5 = this.n;
                iArr5[0] = iArr5[0] + 1;
                gearPoseR.f5592a = iArr5[0];
                Gear gear7 = Gear.GearN;
                this.v = gear7;
                this.i = f2;
                this.j = f3;
                return gear7;
            }
        }
        this.i = f2;
        this.j = f3;
        return gear3;
    }

    private static float q(float f2, float f3, float f4, float f5) {
        float f6 = f2 - f4;
        float f7 = f3 - f5;
        return (float) Math.sqrt((f6 * f6) + (f7 * f7));
    }

    private GearPose r(Gear gear) {
        for (GearPose gearPose : this.x) {
            if (gearPose != null && gearPose.gear == gear.gear) {
                return gearPose;
            }
        }
        return null;
    }

    private List<Pos> s(List<Pos> list) {
        return h.W() ? e.a(list) : new d(list).e(10.0d);
    }

    private static float[] t(float f2, float f3, float f4, float f5, float f6, float f7) {
        return new float[]{((f4 - f2) * f7 * f6) + f2, (f7 * (f5 - f3) * f6) + f3};
    }

    private GearPose u(Gear gear) {
        for (GearPose gearPose : this.w) {
            if (gearPose != null && gearPose.gear == gear.gear) {
                return gearPose;
            }
        }
        return null;
    }

    public static boolean v() {
        return i0.c("bream_gear_angle", 1000.0f) != 1000.0f;
    }

    private boolean x() {
        this.x.clear();
        GearPose gearPose = null;
        for (GearPose gearPose2 : this.w) {
            if (gearPose2 != null) {
                gearPose2.f5592a = BitmapDescriptorFactory.HUE_RED;
                if (gearPose2.gear == Gear.GearN.gear) {
                    gearPose = gearPose2;
                }
            }
        }
        if (gearPose == null) {
            cn.mucang.android.jiakaoyi.framework.p002e.g.a("jkyHasGearSensor", Bugly.SDK_IS_DEV);
            return false;
        }
        this.G.setPos(gearPose.roll, gearPose.pitch);
        cn.mucang.android.jiakaoyi.framework.p002e.g.a("jkyHasGearSensor", "true");
        Pos pos = new Pos();
        for (int i = 0; i < this.w.size(); i++) {
            GearPose gearPose3 = this.w.get(i);
            if (gearPose3 != null) {
                GearPose gearPoseCopyFrom = new GearPose().copyFrom(gearPose3);
                this.x.add(gearPoseCopyFrom);
                pos.setPos(gearPose3.roll, gearPose3.pitch);
                pos.rotate(this.G, this.B, this.A);
                gearPoseCopyFrom.roll = (float) pos.x;
                gearPoseCopyFrom.pitch = (float) pos.y;
                Pos pos2 = new Pos(gearPose3.maxRoll, gearPose3.maxPitch);
                pos2.rotate(this.G, this.B, this.A);
                Pos pos3 = new Pos(gearPose3.minRoll, gearPose3.minPitch);
                pos3.rotate(this.G, this.B, this.A);
                gearPoseCopyFrom.maxRoll = (float) Math.max(pos2.x, pos3.x);
                gearPoseCopyFrom.minRoll = (float) Math.min(pos2.x, pos3.x);
                gearPoseCopyFrom.maxPitch = (float) Math.max(pos2.y, pos3.y);
                gearPoseCopyFrom.minPitch = (float) Math.min(pos2.y, pos3.y);
                gearPoseCopyFrom.width = gearPose3.width;
                gearPoseCopyFrom.height = gearPose3.height;
                gearPoseCopyFrom.offset = gearPose3.offset;
                gearPoseCopyFrom.src = gearPose3;
                if (g.d(gearPoseCopyFrom.points)) {
                    Iterator<Pos> it = gearPoseCopyFrom.points.iterator();
                    while (it.hasNext()) {
                        it.next().rotate(this.G, this.B, this.A);
                    }
                }
                f.o("初始化" + gearPose3.gear + "档");
            }
        }
        f.o("Bream初始化完成");
        return true;
    }

    private void y(float f2, float f3, float f4) {
        Gear gear = Gear.Invalid;
        float f5 = 10000.0f;
        for (int i = 0; i < this.w.size(); i++) {
            GearPose gearPose = this.w.get(i);
            if (gearPose != null) {
                float fDistance = gearPose.distance(f2, f3);
                if (fDistance < f5) {
                    gear = Gear.parse(gearPose.gear);
                    f5 = fDistance;
                }
            }
        }
        this.v = gear;
    }

    private boolean z() {
        this.w.clear();
        this.x.clear();
        try {
            String strG = i0.g("bream_gear_data", "");
            if (n0.e(strG)) {
                return false;
            }
            List array = JSON.parseArray(strG, GearPose.class);
            if (g.b(array)) {
                f.o("bream档位学习数据为空");
                return false;
            }
            f.o("档位数据:" + strG);
            double dC = (double) i0.c("bream_gear_angle", 1000.0f);
            f.o("档位标定角度:" + Math.toDegrees(dC));
            if (Math.abs(dC - 1000.0d) < 0.001d) {
                f.o("bream档位学习角度为空");
                return false;
            }
            double dC2 = i0.c("bream_gear_angle_calibrate_1", 1000.0f);
            f.o("档位校准角度:" + Math.toDegrees(dC2));
            if (Math.abs(dC2 - 1000.0d) < 0.001d) {
                f.o("bream档位校准角度为空，用标定的值");
                dC2 = dC;
            }
            String strG2 = i0.g("bream_gear_offset", null);
            if (n0.g(strG2)) {
                this.f5641g.setPos((Pos) JSON.parseObject(strG2, Pos.class));
                f.o("档位偏移是:" + strG2);
            } else {
                f.o("没有设置档位偏移");
                this.f5641g.setPos(0.0d, 0.0d);
            }
            double d2 = -dC;
            this.B = (float) Math.cos(d2);
            this.A = (float) Math.sin(d2);
            double d3 = -dC2;
            this.D = (float) Math.cos(d3);
            this.C = (float) Math.sin(d3);
            this.w.addAll(array);
            this.x.addAll(array);
            x();
            return true;
        } catch (Throwable th) {
            f.o("bream初始化挡位失败:" + th.getLocalizedMessage());
            return false;
        }
    }

    public void C(boolean z, boolean z2) {
        this.E = z;
        this.F = z2;
        if (z2) {
            this.z = SystemClock.elapsedRealtime();
        }
    }

    public void D() {
        this.s = false;
        if (this.t.size() > 5) {
            double dAtan = Math.atan(LineAB.calculate(this.t).f5676a);
            float f2 = (float) dAtan;
            i0.j("bream_gear_angle", f2);
            i0.j("bream_gear_angle_calibrate_1", f2);
            z();
            f.o("档位标定完成:" + Math.toDegrees(dAtan));
            u.h("标定完成");
        } else if (AppUtils.l()) {
            f.o("校准失败，没有将档位从2档到3档来回拨动数次");
            u.h("校准失败，没有将档位从2档到3档来回拨动数次");
        } else {
            f.o("校准失败，没有将档位从3档到4档来回拨动数次");
            u.h("校准失败，没有将档位从3档到4档来回拨动数次");
        }
        this.t.clear();
    }

    public void E(GearPose gearPose) {
        if (gearPose == null) {
            B();
            return;
        }
        f.o("停止挡位学习:" + gearPose.gear);
        Gear gear = Gear.parse(gearPose.gear);
        B();
        if (g.b(gearPose.points)) {
            f.o(gear.gearName + "学习时，没有轨迹数据");
            return;
        }
        List<Pos> listS = s(gearPose.points);
        gearPose.points = listS;
        if (listS != null) {
            this.w.add(gearPose);
            this.x.add(gearPose);
            i0.m("bream_gear_data", JSON.toJSONString(this.w));
            z();
            return;
        }
        f.o(gear.gearName + "学习时，求轨迹凸包多边形失败");
        u.h("档位学习失败");
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean a() {
        return this.p;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public List<GearPose> b() {
        return this.x;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean c() {
        return this.s;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean d() {
        return ((double) (Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f5640f - this.c))) + Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f5639e - this.b))))) > 0.01d;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public void e(List<? extends GearPose> list) {
        Pos pos = null;
        Pos pos2 = null;
        for (GearPose gearPose : list) {
            List<Pos> list2 = gearPose.points;
            if (list2 != null && list2.size() > 1) {
                int i = gearPose.gear;
                if (i == 3) {
                    pos = new Pos(gearPose.roll, gearPose.pitch);
                } else if (i == 4) {
                    pos2 = new Pos(gearPose.roll, gearPose.pitch);
                }
            }
        }
        if (pos == null || pos2 == null) {
            return;
        }
        i0.m("bream_gear_data", null);
        i0.m("bream_gear_offset", null);
        i0.j("bream_gear_angle", 1000.0f);
        i0.j("bream_gear_angle_calibrate_1", 1000.0f);
        float fAngleTo = (float) pos2.angleTo(pos);
        i0.j("bream_gear_angle", fAngleTo);
        i0.j("bream_gear_angle_calibrate_1", fAngleTo);
        this.w.clear();
        this.x.clear();
        this.w.addAll(list);
        this.x.addAll(list);
        i0.m("bream_gear_data", JSON.toJSONString(this.w));
        z();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public List<GearPose> f(Gear gear) {
        ArrayList arrayList = new ArrayList();
        for (GearPose gearPose : this.x) {
            if (gearPose.gear == gear.gear) {
                arrayList.add(gearPose);
            }
        }
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public Pos g() {
        return this.f5642h;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public List<GearPose> h() {
        String strG = i0.g("bream_gear_data", "");
        if (n0.e(strG)) {
            return null;
        }
        List<GearPose> array = JSON.parseArray(strG, GearPose.class);
        if (!g.b(array)) {
            return array;
        }
        f.o("本地bream档位学习数据为空");
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public void i(GearPose gearPose) {
        this.w.remove(gearPose);
        this.x.remove(gearPose);
        for (GearPose gearPose2 : this.w) {
            if (gearPose2 == gearPose.src) {
                this.w.remove(gearPose2);
                this.x.remove(gearPose2);
                break;
            }
        }
        i0.m("bream_gear_data", JSON.toJSONString(this.w));
        z();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean j() {
        double dAbs = Math.abs(this.f5640f - this.c);
        double dAbs2 = Math.abs(this.f5639e - this.b);
        return dAbs < 45.0d && dAbs2 < 45.0d && dAbs + dAbs2 < 70.0d;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean k(Gear gear) {
        if (this.s) {
            u.h("当前还在校准，不能档位学习");
            return false;
        }
        if (Math.abs(this.f5640f) + Math.abs(this.f5639e) + Math.abs(this.f5638d) < 1.0E-6d) {
            u.h("没有姿态传感器，不能进行姿态挡位学习");
            f.o("没有姿态传感器，不能进行姿态挡位学习:" + gear.gearName);
            return false;
        }
        Iterator<GearPose> it = this.w.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().gear == gear.gear) {
                i++;
            }
        }
        if (i > 1) {
            u.h("同一个档位只能学习一次，请先删除再开始学习");
            return false;
        }
        f.o("开始挡位学习:" + gear.gearName);
        this.r = new GearPose();
        this.r.gear = gear.gear;
        this.r.set((float) F((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f5640f - this.c))), (float) F((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f5639e - this.b))), (float) F((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f5638d - this.f5637a))));
        this.z = SystemClock.elapsedRealtime();
        i0.m("bream_gear_offset", null);
        f.o("开始学习档位，清空档位偏移参数");
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public Gear l(long j, boolean z, Gear gear, int i, int i2) {
        Gear gear2;
        float fC = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f5640f - this.c));
        float fC2 = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f5639e - this.b));
        float fC3 = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f5638d - this.f5637a));
        if (this.E) {
            this.E = false;
            GearPose gearPoseU = u(Gear.GearN);
            if (gearPoseU != null) {
                this.f5641g.setPos(gearPoseU.roll - fC, gearPoseU.pitch - fC2);
                i0.m("bream_gear_offset", JSON.toJSONString(this.f5641g));
                f.o("设置偏移参数:" + i0.g("bream_gear_offset", ""));
            }
            return this.v;
        }
        if (this.I) {
            y(fC, fC2, fC3);
            this.I = false;
            this.i = fC;
            this.j = fC2;
            this.k = fC3;
            this.f5642h.setPos(fC, fC2, fC3);
            return this.v;
        }
        if (Math.abs(this.G.x) + Math.abs(this.G.y) > 0.0d) {
            this.H.setPos(fC, fC2, fC3);
            this.H.translate(this.f5641g);
            this.H.rotate(this.G, this.D, this.C);
            Pos pos = this.H;
            float f2 = (float) pos.x;
            fC2 = (float) pos.y;
            fC = f2;
        }
        Gear gear3 = Gear.GearN;
        if (r(gear3) == null) {
            this.i = fC;
            this.j = fC2;
            this.k = fC3;
            this.f5642h.setPos(fC, fC2, fC3);
            return this.v;
        }
        this.f5642h.setPos(this.H);
        boolean zJ = cn.mucang.android.jiakaoyi.signal.center.config.a.h().j(j, CarSignal.Clutch, z);
        if (h.D() && !zJ && (gear2 = this.v) != Gear.Invalid && gear2 != gear3 && gear2 != Gear.GearP) {
            this.i = fC;
            this.j = fC2;
            this.k = fC3;
            return gear2;
        }
        Gear gearP = p(fC, fC2, this.i, this.j);
        Gear gear4 = Gear.GearBack;
        if (gear == gear4 && h.q()) {
            gearP = gear4;
        }
        if (!zJ || h.B()) {
            if (gearP != Gear.Invalid) {
                this.p = true;
            }
            if (!this.p) {
                return this.v;
            }
            this.v = gearP;
            return gearP;
        }
        this.i = fC;
        this.j = fC2;
        this.k = fC3;
        Gear gear5 = Gear.Invalid;
        this.v = gear5;
        return gearP == gear3 ? gearP : gear5;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean m() {
        return this.r == null;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public String n() {
        if (this.r != null) {
            return "当前在档位学习，不能标定";
        }
        i0.m("bream_gear_data", null);
        i0.m("bream_gear_offset", null);
        i0.j("bream_gear_angle", 1000.0f);
        i0.j("bream_gear_angle_calibrate_1", 1000.0f);
        z();
        this.z = SystemClock.elapsedRealtime();
        this.t.clear();
        this.s = true;
        return AppUtils.l() ? "请在2档和3档之间来回挂档，完成标定" : "请在3档和4档之间来回挂档，完成标定";
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public void o(double d2, double d3, double d4, double d5, double d6, double d7) {
        w();
        this.c = d2;
        this.b = d3;
        this.f5637a = d4;
        this.f5640f = d5;
        this.f5639e = d6;
        this.f5638d = d7;
        float fC = cn.mucang.android.jiakaoyi.signal.c.d.c();
        if (this.u.size() <= 1 || this.u.getFirst().floatValue() != fC) {
            this.u.addFirst(Float.valueOf(fC));
        }
        if (this.u.size() > 3) {
            this.u.removeLast();
        }
        if (this.s) {
            Pos pos = new Pos(F(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f5640f - this.c))), F(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f5639e - this.b))));
            if (this.t.size() == 0) {
                this.t.add(pos);
                f.o("校准时插入:" + pos.x + "," + pos.y);
            } else {
                List<Pos> list = this.t;
                if (pos.distanceTo(list.get(list.size() - 1)) > 5.0d) {
                    this.t.add(pos);
                    f.o("校准时插入:" + pos.x + "," + pos.y);
                }
            }
            Log.e("Cos", "size=" + this.t.size());
            if (SystemClock.elapsedRealtime() - this.z > SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US || this.t.size() > 40) {
                D();
                TtsManager.r("标定完成", TtsGrade.GlobalTip);
                return;
            }
            return;
        }
        if (!this.F) {
            GearPose gearPose = this.r;
            if (gearPose != null) {
                float fC2 = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f5640f - this.c));
                float fC3 = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f5639e - this.b));
                cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f5638d - this.f5637a));
                if (gearPose.points == null) {
                    gearPose.points = new ArrayList();
                }
                Pos pos2 = new Pos(F(fC2), F(fC3));
                if (gearPose.points.size() == 0) {
                    gearPose.points.add(pos2);
                    f.o(gearPose.gear + "档插入:" + pos2.x + "," + pos2.y);
                } else {
                    List<Pos> list2 = gearPose.points;
                    if (pos2.distanceTo(list2.get(list2.size() - 1)) > 1.0d) {
                        gearPose.points.add(pos2);
                        f.o(gearPose.gear + "档插入:" + pos2.x + "," + pos2.y);
                    }
                }
                if (gearPose.points.size() > 5 && SystemClock.elapsedRealtime() - this.z > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                    if (q(fC2, fC3, this.l, this.m) < 0.3d) {
                        this.q++;
                    } else {
                        this.q = 0;
                    }
                    if (this.q >= 20) {
                        E(gearPose);
                    }
                }
                this.l = fC2;
                this.m = fC3;
                return;
            }
            return;
        }
        Pos pos3 = new Pos(F(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f5640f - this.c))), F(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (this.f5639e - this.b))));
        if (this.t.size() == 0) {
            this.t.add(pos3);
            f.o("校准时插入:" + pos3.x + "," + pos3.y);
        } else {
            List<Pos> list3 = this.t;
            if (pos3.distanceTo(list3.get(list3.size() - 1)) > 5.0d) {
                this.t.add(pos3);
                f.o("校准时插入:" + pos3.x + "," + pos3.y);
            }
        }
        Log.e("Cos", "size=" + this.t.size());
        if (SystemClock.elapsedRealtime() - this.z > SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US || this.t.size() > 40) {
            this.F = false;
            if (this.t.size() > 5) {
                double dAtan = Math.atan(LineAB.calculate(this.t).f5676a);
                i0.j("bream_gear_angle_calibrate_1", (float) dAtan);
                double d8 = -dAtan;
                this.D = (float) Math.cos(d8);
                this.C = (float) Math.sin(d8);
                f.o("档位校准完成:" + Math.toDegrees(dAtan));
                u.h("校准完成");
                TtsManager.r("校准完成", TtsGrade.GlobalTip);
            } else if (AppUtils.l()) {
                f.o("校准失败，没有将档位从2档到3档来回拨动数次");
                u.h("校准失败，没有将档位从2档到3档来回拨动数次");
            } else {
                f.o("校准失败，没有将档位从3档到4档来回拨动数次");
                u.h("校准失败，没有将档位从3档到4档来回拨动数次");
            }
            this.t.clear();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public void stop() {
        E(this.r);
    }

    public boolean w() {
        if (this.y) {
            return true;
        }
        this.y = true;
        return z();
    }
}
