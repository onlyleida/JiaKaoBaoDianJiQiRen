package cn.mucang.android.jiakaoyi.signal.gearsensor.l;

import android.os.SystemClock;
import android.util.Log;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.signal.center.config.CarSignal;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.gearsensor.GearPose;
import cn.mucang.android.jiakaoyi.signal.gearsensor.e;
import cn.mucang.android.jiakaoyi.signal.gearsensor.f;
import cn.mucang.android.jiakaoyi.signal.gearsensor.g;
import cn.mucang.android.jiakaoyi.signal.gearsensor.h;
import cn.mucang.android.jiakaoyi.signal.gearsensor.i;
import cn.mucang.android.jiakaoyi.signal.gearsensor.j;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import com.alibaba.fastjson.JSON;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.tencent.bugly.Bugly;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class b implements i {
    public boolean A;
    private int B;
    private volatile Gear C;
    private volatile boolean D;
    private Gear E;
    private final GearPose[] F;
    public final GearPose[] G;
    private boolean H;
    private boolean I;
    private boolean J;
    private j K;
    private long L;
    private float M;
    private float N;
    private float O;
    private Pos P;
    private Pos Q;
    private boolean R;
    private int S;
    private boolean T;
    private Gear U;
    private int V;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double f5643a = 0.0d;
    public double b = 0.0d;
    public double c = 0.0d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public double f5644d = 0.0d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public double f5645e = 0.0d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public double f5646f = 0.0d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Pos f5647g = new Pos();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f5648h;
    private float i;
    private float j;
    private float k;
    private float l;
    private float m;
    private float n;
    private float o;
    private final int[] p;
    private final int[] q;
    private final int[] r;
    private Gear s;
    private boolean t;
    private final float[] u;
    private final List<g> v;
    private final List<f> w;
    public boolean x;
    private boolean y;
    private int z;

    public b() {
        Gear gear = Gear.Invalid;
        this.f5648h = BitmapDescriptorFactory.HUE_RED;
        this.i = BitmapDescriptorFactory.HUE_RED;
        this.j = BitmapDescriptorFactory.HUE_RED;
        this.k = BitmapDescriptorFactory.HUE_RED;
        this.l = BitmapDescriptorFactory.HUE_RED;
        this.m = BitmapDescriptorFactory.HUE_RED;
        this.n = BitmapDescriptorFactory.HUE_RED;
        this.o = 10000.0f;
        Gear[] gearArr = Gear.list;
        this.p = new int[gearArr.length];
        this.q = new int[gearArr.length];
        this.r = new int[gearArr.length];
        this.s = gear;
        this.u = new float[gearArr.length];
        this.v = new ArrayList();
        this.w = new ArrayList();
        this.x = false;
        this.y = false;
        this.z = 0;
        this.B = 0;
        this.C = null;
        this.D = true;
        this.E = gear;
        this.F = new GearPose[gearArr.length];
        this.G = new GearPose[gearArr.length];
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = null;
        this.M = 5.0f;
        this.N = BitmapDescriptorFactory.HUE_RED;
        this.O = 1.0f;
        this.P = new Pos(0.0d, 0.0d);
        this.Q = new Pos();
        this.R = false;
        this.S = 0;
        this.T = true;
        this.U = gear;
    }

    private void A(Gear gear) {
        Gear gear2 = this.C;
        if (gear2 == null) {
            z();
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("停止挡位学习:" + gear2.gearName);
        GearPose[] gearPoseArr = this.F;
        GearPose gearPose = gearPoseArr[gear2.gear];
        if (gearPose == null) {
            z();
            return;
        }
        GearPose gearPose2 = gearPoseArr[Gear.GearN.gear];
        if (C(gear, gearPose, gearPose2)) {
            z();
            this.G[gear2.gear] = new GearPose().copyFrom(gearPose);
            String jSONString = JSON.toJSONString(gearPose);
            i0.m(y(gear), jSONString);
            cn.mucang.android.jiakaoyi.framework.log.f.o(gear.gearName + "学习结果:" + jSONString);
            v();
            return;
        }
        if (gearPose2 != null) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(gear.gearName + "学习时，陀螺仪角度不对，data:" + gearPose.roll + "," + gearPose.pitch + ",空档data:" + gearPose2.roll + "," + gearPose2.pitch);
        }
        this.D = true;
        z();
        GearPose[] gearPoseArr2 = this.F;
        int i = gear.gear;
        gearPoseArr2[i] = null;
        this.G[i] = null;
    }

    private double B(double d2) {
        return ((double) ((int) (d2 * 100.0d))) / 100.0d;
    }

    private boolean C(Gear gear, GearPose gearPose, GearPose gearPose2) {
        if (gear == Gear.GearN) {
            return true;
        }
        if (gearPose2 == null) {
            return false;
        }
        double d2 = gearPose.roll - gearPose2.roll;
        double d3 = gearPose.pitch - gearPose2.pitch;
        if (gear == Gear.Gear1) {
            return d2 > 0.0d && d3 > -2.0d;
        }
        if (gear == Gear.Gear2) {
            return d2 < 0.0d && d3 > -2.0d;
        }
        if (gear == Gear.Gear3) {
            return d2 > 0.0d;
        }
        if (gear == Gear.Gear4) {
            return d2 < 0.0d;
        }
        if (gear == Gear.Gear5) {
            return d2 > 0.0d && d3 < 2.0d;
        }
        return true;
    }

    private float p(float f2, float f3, float f4, float f5, float f6, float f7, AtomicBoolean atomicBoolean) {
        float f8 = f4 - f2;
        float f9 = f2 - f3;
        boolean z = f8 * f9 > BitmapDescriptorFactory.HUE_RED;
        if (f8 * (f2 - f6) > BitmapDescriptorFactory.HUE_RED) {
            if (z) {
                f5 += ((f2 - f2) * (f7 - f5)) / (f6 - f2);
            } else {
                float f10 = f2 - f4;
                f7 = (((f7 - f5) * f10) / f10) + f5;
                f6 = f2;
                f2 = f4;
            }
        } else if (z && (f6 - f2) * f9 > BitmapDescriptorFactory.HUE_RED) {
            f2 = BitmapDescriptorFactory.HUE_RED;
            f6 = BitmapDescriptorFactory.HUE_RED;
        } else if ((f4 - f3) * (f3 - f6) > BitmapDescriptorFactory.HUE_RED) {
            atomicBoolean.set(true);
            f5 += ((f3 - f3) * (f7 - f5)) / (f6 - f3);
            f2 = f3;
        } else {
            f2 = f4;
        }
        return (f2 - f6) * (f5 + f7) * 0.5f;
    }

    /* JADX WARN: Code duplicated, block: B:112:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:116:0x01db  */
    /* JADX WARN: Code duplicated, block: B:119:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:120:0x01e9 A[PHI: r1
      0x01e9: PHI (r1v12 float) = (r1v15 float), (r1v16 float), (r1v16 float) binds: [B:118:0x01e1, B:113:0x01d6, B:114:0x01d8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:123:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:125:0x01f5  */
    /* JADX WARN: Instruction removed from duplicated block: B:125:0x01f5, please report this as an issue */
    private Gear q(long j, boolean z, Gear gear, float f2, float f3, float f4, float f5, int i, int i2) {
        boolean z2;
        boolean z3;
        boolean z4;
        Gear gear2;
        Gear gearT;
        float[] fArr;
        Gear gear3;
        float f6;
        int[] iArr;
        float f7 = f2;
        float f8 = f3;
        float f9 = f7 - f4;
        float f10 = f8 - f5;
        GearPose gearPose = this.G[Gear.GearN.gear];
        if (gearPose == null) {
            this.k = this.f5648h;
            this.l = this.i;
            this.f5648h = f7;
            this.i = f8;
            return Gear.Invalid;
        }
        int i3 = 0;
        while (true) {
            GearPose[] gearPoseArr = this.G;
            if (i3 >= gearPoseArr.length) {
                break;
            }
            GearPose gearPose2 = gearPoseArr[i3];
            if (gearPose2 != null) {
                this.u[i3] = s(f7, f8, gearPose2.roll, gearPose2.pitch);
            }
            i3++;
        }
        float f11 = gearPose.roll;
        float f12 = this.o;
        float f13 = (f12 * 0.45f) + f11;
        float f14 = f11 - (0.45f * f12);
        float f15 = (f12 * 0.3f) + f11;
        float f16 = f11 - (f12 * 0.3f);
        boolean zJ = cn.mucang.android.jiakaoyi.signal.center.config.a.h().j(j, CarSignal.Clutch, z);
        if (!zJ || ((f7 >= f13 || f7 <= f14) && ((f7 > f14 || f4 < f13) && (f7 < f13 || f4 > f14)))) {
            z2 = false;
        } else {
            this.s = Gear.Invalid;
            z2 = true;
        }
        if ((f7 >= f15 || f7 <= f16) && ((f7 > f16 || f4 < f15) && (f7 < f15 || f4 > f16))) {
            z3 = zJ;
            z4 = z2;
        } else {
            this.s = Gear.Invalid;
            if (zJ) {
                z3 = zJ;
                z4 = true;
            } else {
                z4 = true;
                z3 = true;
            }
        }
        if (!z3 && f9 > 1.0f && this.E != Gear.GearN && ((f7 - f15) * (f15 - f4) > BitmapDescriptorFactory.HUE_RED || (f7 - f16) * (f16 - f4) > BitmapDescriptorFactory.HUE_RED)) {
            this.t = false;
        }
        double dSqrt = Math.sqrt((f9 * f9) + (f10 * f10));
        Gear gear4 = Gear.Invalid;
        Gear gear5 = gear4;
        float f17 = BitmapDescriptorFactory.HUE_RED;
        boolean z5 = false;
        for (f fVar : this.w) {
            float f18 = f17;
            boolean z6 = z5;
            float fAbs = Math.abs(fVar.b(f7, f8, f4, f5, dSqrt));
            boolean z7 = fVar.f5604d;
            z5 = z7 ? true : z6;
            if (fAbs > f18) {
                gear5 = fVar.b;
                if (z7) {
                    gear4 = gear5;
                }
                f17 = fAbs;
            } else {
                f17 = f18;
            }
            e.l(fVar.b, fAbs);
            f7 = f2;
            f8 = f3;
        }
        boolean z8 = z5;
        if (gear4 != gear5) {
            gear4 = Gear.Invalid;
        }
        if (!z8) {
            gear4 = Gear.Invalid;
        }
        if (gear4 != Gear.Invalid) {
            int i4 = 0;
            while (true) {
                iArr = this.q;
                if (i4 >= iArr.length) {
                    break;
                }
                if (i4 == gear4.gear) {
                    iArr[i4] = iArr[i4] + 15;
                    if (iArr[i4] > 60) {
                        iArr[i4] = 60;
                    }
                } else {
                    iArr[i4] = iArr[i4] - 15;
                    if (iArr[i4] < 0) {
                        iArr[i4] = 0;
                    }
                }
                i4++;
            }
            int i5 = gear4.gear;
            if (iArr[i5] <= 3) {
                gear2 = Gear.Invalid;
            } else if (iArr[i5] >= 60) {
                Iterator<f> it = this.w.iterator();
                while (it.hasNext()) {
                    it.next().c(true);
                }
            }
            gearT = t(j, z, gear2, gear, i, i2, z4, z3);
            fArr = this.u;
            gear3 = Gear.GearN;
            if (fArr[gear3.gear] >= 4.0f) {
                f6 = f2;
                if (f6 > f16 || f7 >= f15) {
                    this.S = 0;
                }
                if (this.S > 1) {
                    if (MucangConfig.v()) {
                        Log.e("GearSensor", "找到空档了 : " + gear3.gearName);
                    }
                    gearT = gear3;
                }
                this.k = f4;
                this.l = f5;
                this.f5648h = f6;
                this.i = f3;
                return gearT;
            }
            f6 = f2;
            if (dSqrt <= 2.5d) {
                this.S++;
            } else {
                this.S = 0;
            }
            if (this.S > 1) {
                if (MucangConfig.v()) {
                    Log.e("GearSensor", "找到空档了 : " + gear3.gearName);
                }
                gearT = gear3;
            }
            this.k = f4;
            this.l = f5;
            this.f5648h = f6;
            this.i = f3;
            return gearT;
        }
        int i6 = 0;
        while (true) {
            int[] iArr2 = this.q;
            if (i6 >= iArr2.length) {
                break;
            }
            iArr2[i6] = iArr2[i6] - 15;
            if (iArr2[i6] < 0) {
                iArr2[i6] = 0;
            }
            i6++;
        }
        gear2 = gear4;
        gearT = t(j, z, gear2, gear, i, i2, z4, z3);
        fArr = this.u;
        gear3 = Gear.GearN;
        if (fArr[gear3.gear] >= 4.0f) {
            f6 = f2;
            if (f6 > f16) {
            }
            this.S = 0;
            if (this.S > 1) {
                if (MucangConfig.v()) {
                    Log.e("GearSensor", "找到空档了 : " + gear3.gearName);
                }
                gearT = gear3;
            }
            this.k = f4;
            this.l = f5;
            this.f5648h = f6;
            this.i = f3;
            return gearT;
        }
        f6 = f2;
        if (dSqrt <= 2.5d) {
            this.S++;
        } else {
            this.S = 0;
        }
        if (this.S > 1) {
            if (MucangConfig.v()) {
                Log.e("GearSensor", "找到空档了 : " + gear3.gearName);
            }
            gearT = gear3;
        }
        this.k = f4;
        this.l = f5;
        this.f5648h = f6;
        this.i = f3;
        return gearT;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x013a A[PHI: r1
      0x013a: PHI (r1v9 float) = (r1v12 float), (r1v13 float), (r1v13 float) binds: [B:56:0x0132, B:50:0x0125, B:52:0x0129] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:61:0x0140  */
    /* JADX WARN: Code duplicated, block: B:63:0x0146  */
    /* JADX WARN: Instruction removed from duplicated block: B:63:0x0146, please report this as an issue */
    private Gear r(long j, boolean z, Gear gear, float f2, float f3, float f4, float f5, int i, int i2) {
        boolean z2;
        float f6;
        float f7 = f2;
        float f8 = f3;
        float f9 = f7 - f4;
        float f10 = f8 - f5;
        GearPose gearPose = this.G[Gear.GearN.gear];
        if (gearPose == null) {
            this.k = this.f5648h;
            this.l = this.i;
            this.f5648h = f7;
            this.i = f8;
            return Gear.Invalid;
        }
        int i3 = 0;
        while (true) {
            GearPose[] gearPoseArr = this.G;
            if (i3 >= gearPoseArr.length) {
                break;
            }
            GearPose gearPose2 = gearPoseArr[i3];
            if (gearPose2 != null) {
                this.u[i3] = s(f7, f8, gearPose2.roll, gearPose2.pitch);
            }
            i3++;
        }
        float f11 = gearPose.roll;
        float f12 = this.o;
        float f13 = (f12 * 0.45f) + f11;
        float f14 = f11 - (0.45f * f12);
        float f15 = f11 + (f12 * 0.3f);
        float f16 = f11 - (f12 * 0.3f);
        if ((f7 > f13 || f7 < f14) && ((f7 > f14 || f4 < f13) && (f7 < f13 || f4 > f14))) {
            z2 = false;
        } else {
            this.s = Gear.Invalid;
            z2 = true;
        }
        double dSqrt = Math.sqrt((f9 * f9) + (f10 * f10));
        Gear gear2 = Gear.Invalid;
        float f17 = 1.0E16f;
        Iterator<g> it = this.v.iterator();
        boolean z3 = false;
        while (it.hasNext()) {
            g next = it.next();
            Iterator<g> it2 = it;
            boolean z4 = z3;
            next.b(f7, f8, f4, f5, dSqrt);
            z3 = next.f5613d ? true : z4;
            float fA = next.a();
            if (fA < f17) {
                gear2 = next.c;
                f17 = fA;
            }
            if (MucangConfig.v() && fA < 5000.0f) {
                Log.e("GearSensor", next.toString());
            }
            e.l(next.c, fA);
            f7 = f2;
            f8 = f3;
            it = it2;
        }
        if (!z3) {
            gear2 = Gear.Invalid;
        }
        Gear gearT = t(j, z, gear2, gear, i, i2, z2, cn.mucang.android.jiakaoyi.signal.center.config.a.h().j(j, CarSignal.Clutch, z));
        float[] fArr = this.u;
        Gear gear3 = Gear.GearN;
        if (fArr[gear3.gear] >= 5.0f) {
            f6 = f2;
            if (f6 <= f16 || f6 >= f15) {
                this.S = 0;
            }
            if (this.S > 1) {
                if (MucangConfig.v()) {
                    Log.e("GearSensor", "找到空档了 : " + gear3.gearName);
                }
                gearT = gear3;
            }
            this.k = f4;
            this.l = f5;
            this.f5648h = f6;
            this.i = f3;
            return gearT;
        }
        f6 = f2;
        if (dSqrt <= 2.5d) {
            this.S++;
        } else {
            this.S = 0;
        }
        if (this.S > 1) {
            if (MucangConfig.v()) {
                Log.e("GearSensor", "找到空档了 : " + gear3.gearName);
            }
            gearT = gear3;
        }
        this.k = f4;
        this.l = f5;
        this.f5648h = f6;
        this.i = f3;
        return gearT;
    }

    private float s(float f2, float f3, float f4, float f5) {
        float f6 = f2 - f4;
        float f7 = f3 - f5;
        return (float) Math.sqrt((f6 * f6) + (f7 * f7));
    }

    /* JADX WARN: Code duplicated, block: B:198:0x028d  */
    /* JADX WARN: Code duplicated, block: B:84:0x0100  */
    private Gear t(long j, boolean z, Gear gear, Gear gear2, int i, int i2, boolean z2, boolean z3) {
        Gear gear3;
        Gear gear4;
        Gear gear5;
        int i3;
        Gear gear6;
        Gear gear7;
        Gear gear8;
        Gear gear9 = gear;
        if (gear2 != Gear.GearBack) {
            if (!z3 && gear9 == (gear8 = Gear.Invalid) && gear2 != gear8 && gear2 != Gear.GearN) {
                gear9 = gear2;
            }
            if (i2 > 0 && !z3 && !z2) {
                Gear gear10 = this.s;
                Gear gear11 = Gear.Invalid;
                if (gear10 == gear11 && this.t) {
                    if (i2 > 5) {
                        i3 = i > 2000 ? 3 : 1;
                    } else {
                        i3 = 5;
                    }
                    int i4 = i / i2;
                    int i5 = this.z;
                    if (i5 == 1 && gear9 == (gear7 = Gear.Gear1) && i4 > 95) {
                        int[] iArr = this.p;
                        iArr[3] = 0;
                        iArr[1] = iArr[1] + 1;
                        if (iArr[1] >= 5) {
                            this.s = gear7;
                        }
                    } else if (i5 == 1 && gear9 == (gear7 = Gear.Gear3) && i4 > 35 && i < 80) {
                        int[] iArr2 = this.p;
                        iArr2[1] = 0;
                        iArr2[3] = iArr2[3] + 1;
                        if (iArr2[3] >= 5) {
                            this.s = gear7;
                        }
                    } else if (i5 == 1 && gear9 == (gear7 = Gear.Gear5) && i4 < 35) {
                        int[] iArr3 = this.p;
                        iArr3[3] = 0;
                        iArr3[5] = iArr3[5] + 1;
                        if (iArr3[5] >= 5) {
                            this.s = gear7;
                        }
                    } else {
                        if (i5 == 2 && gear9 == (gear6 = Gear.Gear2) && i4 > 50) {
                            int[] iArr4 = this.p;
                            iArr4[4] = 0;
                            iArr4[2] = iArr4[2] + 1;
                            if (iArr4[2] >= 5) {
                                this.s = gear6;
                            }
                        } else if (i5 == 2 && gear9 == (gear6 = Gear.Gear4) && i4 < 50) {
                            int[] iArr5 = this.p;
                            iArr5[2] = 0;
                            iArr5[4] = iArr5[4] + 1;
                            if (iArr5[4] >= 5) {
                                this.s = gear6;
                            }
                        } else if (i5 == 1 && gear9 == Gear.Gear3 && i4 > 95) {
                            int[] iArr6 = this.p;
                            iArr6[3] = 0;
                            iArr6[1] = iArr6[1] + 1;
                            if (iArr6[1] >= i3) {
                                gear9 = Gear.Gear1;
                                this.s = gear9;
                            } else {
                                gear9 = gear11;
                            }
                        } else if (i5 == 1 && gear9 == Gear.Gear3 && (i4 < 35 || (i2 > 50 && i < 1500))) {
                            int[] iArr7 = this.p;
                            iArr7[3] = 0;
                            iArr7[5] = iArr7[5] + 1;
                            if (iArr7[5] >= i3) {
                                gear9 = Gear.Gear5;
                                this.s = gear9;
                            } else {
                                gear9 = gear11;
                            }
                        } else if (i5 == 1 && gear9 == Gear.Gear1 && i4 <= 95) {
                            int[] iArr8 = this.p;
                            iArr8[1] = 0;
                            iArr8[3] = iArr8[3] + 1;
                            if (iArr8[3] >= i3) {
                                gear9 = Gear.Gear3;
                                this.s = gear9;
                            } else {
                                gear9 = gear11;
                            }
                        } else if (i5 == 1 && gear9 == Gear.Gear5 && i4 >= 35) {
                            int[] iArr9 = this.p;
                            iArr9[1] = 0;
                            iArr9[3] = iArr9[3] + 1;
                            if (iArr9[3] >= i3) {
                                gear9 = Gear.Gear3;
                                this.s = gear9;
                            } else {
                                gear9 = gear11;
                            }
                        } else if (i5 == 2 && gear9 == Gear.Gear4 && i4 > 50) {
                            int[] iArr10 = this.p;
                            iArr10[4] = 0;
                            iArr10[2] = iArr10[2] + 1;
                            if (iArr10[2] >= i3) {
                                gear9 = Gear.Gear2;
                                this.s = gear9;
                            } else {
                                gear9 = gear11;
                            }
                        } else if (i5 == 2 && gear9 == Gear.Gear2 && (i4 < 50 || (i2 > 35 && i < 1500))) {
                            int[] iArr11 = this.p;
                            iArr11[2] = 0;
                            iArr11[4] = iArr11[4] + 1;
                            if (iArr11[4] >= i3) {
                                gear9 = Gear.Gear4;
                                this.s = gear9;
                            } else {
                                gear9 = gear11;
                            }
                        } else if (gear9 != gear11) {
                            Arrays.fill(this.p, 0);
                        } else if (i5 == 1) {
                            if (i4 > 90) {
                                int[] iArr12 = this.p;
                                iArr12[1] = iArr12[1] + 1;
                                iArr12[3] = 0;
                                iArr12[5] = 0;
                                if (iArr12[1] >= 3) {
                                    gear9 = Gear.Gear1;
                                    this.s = gear9;
                                } else {
                                    gear9 = gear11;
                                }
                            } else if (i4 > 35) {
                                int[] iArr13 = this.p;
                                iArr13[3] = iArr13[3] + 1;
                                iArr13[1] = 0;
                                iArr13[5] = 0;
                                if (iArr13[3] >= 3) {
                                    gear9 = Gear.Gear3;
                                    this.s = gear9;
                                } else {
                                    gear9 = gear11;
                                }
                            } else {
                                int[] iArr14 = this.p;
                                iArr14[5] = iArr14[5] + 1;
                                iArr14[1] = 0;
                                iArr14[3] = 0;
                                if (iArr14[5] >= 3) {
                                    gear9 = Gear.Gear5;
                                    this.s = gear9;
                                } else {
                                    gear9 = gear11;
                                }
                            }
                        } else if (i5 == 2) {
                            if (i4 > 50) {
                                int[] iArr15 = this.p;
                                iArr15[2] = iArr15[2] + 1;
                                iArr15[4] = 0;
                                if (iArr15[2] >= 3) {
                                    gear9 = Gear.Gear2;
                                    this.s = gear9;
                                } else {
                                    gear9 = gear11;
                                }
                            } else {
                                int[] iArr16 = this.p;
                                iArr16[4] = iArr16[4] + 1;
                                iArr16[2] = 0;
                                if (iArr16[4] >= 3) {
                                    gear9 = Gear.Gear4;
                                    this.s = gear9;
                                } else {
                                    gear9 = gear11;
                                }
                            }
                        }
                        gear9 = gear6;
                    }
                    gear9 = gear7;
                }
            }
            if (!z3) {
                this.U = gear9;
                this.V = i2;
            }
            if (z3 && !z2 && i2 > 4) {
                Gear gear12 = this.s;
                Gear gear13 = Gear.Invalid;
                if (gear12 == gear13 && h.B() && (((gear4 = this.U) == (gear5 = Gear.Gear1) && this.V < 16) || ((gear4 == Gear.Gear2 && this.V < 26) || ((gear4 == Gear.Gear3 && this.V < 40) || ((gear4 == Gear.Gear4 && this.V < 55) || (gear4 == Gear.Gear5 && this.V < 120)))))) {
                    int i6 = i / i2;
                    int i7 = this.z;
                    if (i7 == 1 && gear9 == gear5 && i2 > 18 && i6 < 60) {
                        int[] iArr17 = this.p;
                        iArr17[1] = 0;
                        iArr17[3] = iArr17[3] + 1;
                        if (iArr17[3] >= 10) {
                            gear9 = Gear.Gear3;
                        } else {
                            gear9 = gear13;
                        }
                    } else if (i7 == 2 && gear9 == Gear.Gear2 && i2 >= 33 && i6 < 50) {
                        int[] iArr18 = this.p;
                        iArr18[2] = 0;
                        iArr18[4] = iArr18[4] + 1;
                        if (iArr18[4] >= 10) {
                            gear9 = Gear.Gear4;
                        } else {
                            gear9 = gear13;
                        }
                    } else if (i7 == 1 && gear9 == Gear.Gear3 && i2 > 45 && i6 < 40) {
                        int[] iArr19 = this.p;
                        iArr19[3] = 0;
                        iArr19[5] = iArr19[5] + 1;
                        if (iArr19[5] >= 10) {
                            gear9 = Gear.Gear5;
                        } else {
                            gear9 = gear13;
                        }
                    } else if (i7 == 2 && gear9 == Gear.Gear4 && i2 < 35 && i2 >= 10 && i6 > 50) {
                        int[] iArr20 = this.p;
                        iArr20[4] = 0;
                        iArr20[2] = iArr20[2] + 1;
                        if (iArr20[2] >= 10) {
                            gear9 = Gear.Gear2;
                        } else {
                            gear9 = gear13;
                        }
                    } else if (i7 == 1 && gear9 == Gear.Gear3 && i2 > 5 && i2 < 20 && i6 > 80) {
                        int[] iArr21 = this.p;
                        iArr21[3] = 0;
                        iArr21[1] = iArr21[1] + 1;
                        if (iArr21[1] >= 10) {
                            gear9 = gear5;
                        } else {
                            gear9 = gear13;
                        }
                    }
                }
            }
            if (z3 && !h.B()) {
                gear9 = Gear.Invalid;
            }
            Gear gear14 = this.s;
            return (gear14 == null || !gear14.isValid() || (gear3 = this.s) == Gear.GearN) ? gear9 : gear3;
        }
        int i8 = 0;
        while (true) {
            int[] iArr22 = this.p;
            if (i8 >= iArr22.length) {
                this.s = gear9;
                return Gear.GearBack;
            }
            if (i8 == Gear.GearBack.gear) {
                iArr22[i8] = iArr22[i8] + 1;
            } else {
                iArr22[i8] = 0;
            }
            i8++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:114:0x06cd  */
    private boolean v() {
        GearPose gearPose;
        double d2;
        double d3;
        double d4;
        double d5;
        int i;
        float f2;
        double d6;
        double d7;
        List<Pos> list;
        int i2;
        double d8;
        double d9;
        double d10;
        GearPose gearPose2;
        b bVar = this;
        bVar.v.clear();
        bVar.w.clear();
        float f3 = 360.0f;
        float f4 = 360.0f;
        float f5 = -360.0f;
        float f6 = -360.0f;
        for (GearPose gearPose3 : bVar.F) {
            if (gearPose3 != null) {
                float f7 = gearPose3.maxRoll;
                if (f7 > f5) {
                    f5 = f7;
                }
                float f8 = gearPose3.minRoll;
                if (f8 < f3) {
                    f3 = f8;
                }
                float f9 = gearPose3.maxPitch;
                if (f9 > f6) {
                    f6 = f9;
                }
                float f10 = gearPose3.minPitch;
                if (f10 < f4) {
                    f4 = f10;
                }
            }
        }
        GearPose[] gearPoseArr = bVar.F;
        Gear gear = Gear.GearN;
        int i3 = gear.gear;
        if (gearPoseArr[i3] == null) {
            cn.mucang.android.jiakaoyi.framework.p002e.g.a("jkyHasGearSensor", Bugly.SDK_IS_DEV);
            return false;
        }
        bVar.P.setPos(gearPoseArr[i3].roll, gearPoseArr[i3].pitch);
        GearPose[] gearPoseArr2 = bVar.F;
        GearPose gearPose4 = gearPoseArr2[gear.gear];
        GearPose gearPose5 = gearPoseArr2[Gear.Gear1.gear];
        GearPose gearPose6 = gearPoseArr2[Gear.Gear2.gear];
        GearPose gearPose7 = gearPoseArr2[Gear.Gear3.gear];
        GearPose gearPose8 = gearPoseArr2[Gear.Gear4.gear];
        GearPose gearPose9 = gearPoseArr2[Gear.GearBack.gear];
        if (gearPose5 == null || gearPose6 == null || gearPose7 == null || gearPose8 == null || gearPose9 == null) {
            cn.mucang.android.jiakaoyi.framework.p002e.g.a("jkyHasGearSensor", Bugly.SDK_IS_DEV);
            return false;
        }
        cn.mucang.android.jiakaoyi.framework.p002e.g.a("jkyHasGearSensor", "true");
        double dAngleTo = new Pos(gearPose8.roll, gearPose8.pitch).angleTo(new Pos(gearPose7.roll, gearPose7.pitch));
        double dAngleTo2 = new Pos(gearPose6.roll, gearPose6.pitch).angleTo(new Pos(gearPose5.roll, gearPose5.pitch));
        if (MucangConfig.v()) {
            Log.e("GearSensor_Init", "4-3 : " + Math.toDegrees(dAngleTo) + " , 2-1 : " + Math.toDegrees(dAngleTo2));
        }
        double d11 = -Math.atan2((Math.sin(dAngleTo) * 0.8d) + (Math.sin(dAngleTo2) * 0.2d), (Math.cos(dAngleTo) * 0.8d) + (Math.cos(dAngleTo2) * 0.2d));
        bVar.N = (float) Math.sin(d11);
        bVar.O = (float) Math.cos(d11);
        Pos pos = new Pos();
        double d12 = gearPose5.roll;
        double d13 = bVar.P.x;
        bVar.A = (d12 - d13) * (((double) gearPose9.roll) - d13) > 0.0d;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            GearPose[] gearPoseArr3 = bVar.F;
            if (i4 >= gearPoseArr3.length) {
                break;
            }
            GearPose gearPose10 = gearPoseArr3[i4];
            if (gearPose10 == null) {
                gearPose2 = gearPose4;
            } else {
                GearPose gearPoseCopyFrom = bVar.G[i4];
                if (gearPoseCopyFrom == null) {
                    gearPoseCopyFrom = new GearPose().copyFrom(gearPose10);
                    bVar.G[i4] = gearPoseCopyFrom;
                }
                pos.setPos(gearPose10.roll, gearPose10.pitch);
                gearPose2 = gearPose4;
                pos.rotate(bVar.P, bVar.O, bVar.N);
                gearPoseCopyFrom.roll = (float) pos.x;
                gearPoseCopyFrom.pitch = (float) pos.y;
                Pos pos2 = new Pos(gearPose10.maxRoll, gearPose10.maxPitch);
                pos2.rotate(bVar.P, bVar.O, bVar.N);
                Pos pos3 = new Pos(gearPose10.minRoll, gearPose10.minPitch);
                pos3.rotate(bVar.P, bVar.O, bVar.N);
                gearPoseCopyFrom.maxRoll = (float) Math.max(pos2.x, pos3.x);
                gearPoseCopyFrom.minRoll = (float) Math.min(pos2.x, pos3.x);
                gearPoseCopyFrom.maxPitch = (float) Math.max(pos2.y, pos3.y);
                gearPoseCopyFrom.minPitch = (float) Math.min(pos2.y, pos3.y);
                gearPoseCopyFrom.width = gearPose10.width;
                gearPoseCopyFrom.height = gearPose10.height;
                gearPoseCopyFrom.offset = gearPose10.offset;
                if (cn.mucang.android.core.utils.g.d(gearPoseCopyFrom.points)) {
                    Iterator<Pos> it = gearPoseCopyFrom.points.iterator();
                    while (it.hasNext()) {
                        it.next().rotate(bVar.P, bVar.O, bVar.N);
                    }
                    i5++;
                }
            }
            i4++;
            gearPose4 = gearPose2;
        }
        GearPose gearPose11 = gearPose4;
        bVar.R = i5 > 4;
        GearPose gearPose12 = gearPose11;
        float fMin = (float) Math.min(Math.min(gearPose12.distance(gearPose7), gearPose12.distance(gearPose8)), ((double) gearPose7.distance(gearPose8)) * 0.5d);
        bVar.o = fMin;
        float fMin2 = Math.min(18.0f, fMin);
        bVar.o = fMin2;
        bVar.o = Math.max(14.0f, fMin2);
        GearPose[] gearPoseArr4 = bVar.G;
        int i6 = Gear.Gear1.gear;
        float f11 = gearPoseArr4[i6].maxPitch;
        int i7 = Gear.Gear3.gear;
        double d14 = f11 - gearPoseArr4[i7].pitch;
        double d15 = gearPoseArr4[i7].pitch - gearPoseArr4[Gear.Gear5.gear].minPitch;
        float f12 = gearPoseArr4[Gear.Gear2.gear].maxPitch;
        int i8 = Gear.Gear4.gear;
        double d16 = f12 - gearPoseArr4[i8].pitch;
        float f13 = gearPoseArr4[i8].pitch;
        int i9 = Gear.GearBack.gear;
        double d17 = f13 - gearPoseArr4[i9].minPitch;
        double d18 = gearPoseArr4[i9].maxPitch - gearPoseArr4[i6].maxPitch;
        int i10 = 0;
        while (true) {
            GearPose[] gearPoseArr5 = bVar.G;
            if (i10 >= gearPoseArr5.length) {
                return true;
            }
            GearPose gearPose13 = gearPoseArr5[i10];
            if (gearPose13 == null) {
                i2 = i10;
                d10 = d18;
                d8 = d17;
                d9 = d16;
                gearPose = gearPose12;
                d5 = d14;
                d2 = d15;
            } else {
                float f14 = gearPose12.roll;
                gearPose = gearPose12;
                float f15 = f14 + (gearPose13.roll > f14 ? bVar.M : -bVar.M);
                Gear gear2 = Gear.Gear1;
                double d19 = d17;
                d2 = d15;
                if (i10 == gear2.gear) {
                    d7 = bVar.A ? (d18 + d14) * 0.5d * 0.5d : d14 * 0.5d;
                    d4 = d16;
                    d3 = d18;
                    bVar.v.add(new g(new Pos(f15, (((double) gearPose13.maxPitch) * 0.8d) + (((double) gearPose13.pitch) * 0.2d)), new Pos(gearPose13.roll, gearPose13.pitch + 1.0f), gear2, new Pos(gearPose13.roll, gearPose13.pitch), gearPose13));
                } else {
                    d3 = d18;
                    d4 = d16;
                    Gear gear3 = Gear.Gear2;
                    int i11 = gear3.gear;
                    if (i10 == i11) {
                        d7 = d4 * 0.5d;
                        this.v.add(new g(new Pos(f15, ((double) (gearPose13.pitch + gearPoseArr5[Gear.Gear4.gear].pitch)) * 0.5d), new Pos(gearPose13.roll, gearPose13.pitch - 1.0f), gear3, new Pos(gearPose13.roll, gearPose13.pitch), gearPose13));
                    } else {
                        Gear gear4 = Gear.Gear3;
                        if (i10 == gear4.gear) {
                            d7 = (d14 + d2) * 0.5d * 0.5d;
                            double d20 = f15;
                            d5 = d14;
                            this.v.add(new g(new Pos(d20, gearPose13.pitch + 1.0f), new Pos(gearPose13.roll, (((double) this.G[gear2.gear].pitch) * 0.4d) + (((double) gearPose13.pitch) * 0.6d)), gear4, new Pos(gearPose13.roll, gearPose13.pitch), gearPose13));
                            bVar = this;
                            bVar.v.add(new g(new Pos(d20, gearPose13.pitch - 1.0f), new Pos(gearPose13.roll, (((double) bVar.G[Gear.Gear5.gear].pitch) * 0.4d) + (((double) gearPose13.pitch) * 0.6d)), gear4, new Pos(gearPose13.roll, gearPose13.pitch), gearPose13));
                            i = i10;
                            f2 = f15;
                        } else {
                            bVar = this;
                            d5 = d14;
                            Gear gear5 = Gear.Gear4;
                            if (i10 == gear5.gear) {
                                d7 = bVar.A ? d4 * 0.5d : (d4 + d19) * 0.5d * 0.5d;
                                float f16 = gearPoseArr5[i11].pitch;
                                float f17 = gearPose13.pitch;
                                float f18 = f16 - f17;
                                double d21 = f15;
                                double d22 = f17;
                                i = i10;
                                f2 = f15;
                                bVar.v.add(new g(new Pos(d21, d22 + ((((double) f18) * 0.5d) / 3.0d)), new Pos(gearPose13.roll, gearPose13.pitch), gear5, new Pos(gearPose13.roll, gearPose13.pitch), gearPose13));
                                if (!bVar.A) {
                                    float f19 = bVar.G[Gear.GearBack.gear].pitch;
                                    float f20 = gearPose13.pitch;
                                    double d23 = f19 - f20;
                                    bVar.v.add(new g(new Pos(d21, ((double) f20) + ((d23 * 0.5d) / 3.0d)), new Pos(gearPose13.roll, ((double) gearPose13.pitch) + (d23 * 0.9d)), gear5, new Pos(gearPose13.roll, gearPose13.pitch), gearPose13));
                                }
                            } else {
                                i = i10;
                                f2 = f15;
                                Gear gear6 = Gear.Gear5;
                                if (i == gear6.gear) {
                                    d7 = d2 * 0.5d;
                                    bVar.v.add(new g(new Pos(f2, gearPose13.minPitch), new Pos(gearPose13.roll, gearPose13.minPitch + 1.0f), gear6, new Pos(gearPose13.roll, gearPose13.pitch), gearPose13));
                                } else {
                                    Gear gear7 = Gear.GearBack;
                                    if (i != gear7.gear) {
                                        d6 = 4.0d;
                                    } else if (bVar.A) {
                                        d7 = d3 * 0.5d;
                                        bVar.v.add(new g(new Pos(f2, gearPose13.maxPitch), new Pos(gearPose13.roll, gearPose13.pitch), gear7, new Pos(gearPose13.roll, gearPose13.pitch), gearPose13));
                                    } else {
                                        d7 = d19 * 0.5d;
                                        bVar.v.add(new g(new Pos(f2, gearPose13.minPitch), new Pos(gearPose13.roll, gearPose13.minPitch + 2.0f), gear7, new Pos(gearPose13.roll, gearPose13.pitch), gearPose13));
                                    }
                                }
                            }
                        }
                        d6 = d7;
                    }
                    cn.mucang.android.jiakaoyi.framework.log.f.o("gear=" + i + " , lineWidth=" + d6);
                    list = gearPose13.points;
                    if (list != null || list.size() <= 0 || i == 0) {
                        i2 = i;
                        d8 = d19;
                        d9 = d4;
                        d10 = d3;
                    } else {
                        bVar.w.add(new f(new Pos(f2, (((double) gearPose13.maxPitch) * 0.5d) + (((double) gearPose13.pitch) * 0.5d)), new Pos(gearPose13.roll, gearPose13.pitch), Gear.parse(i), new Pos(gearPose13.roll, gearPose13.pitch), gearPose13, Math.max(4.0d, Math.min(d6, (((double) h.m()) * 2.5d) + 5.0d))));
                        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                        float fP = BitmapDescriptorFactory.HUE_RED;
                        int i12 = 1;
                        while (true) {
                            if (i12 >= gearPose13.points.size()) {
                                i2 = i;
                                d8 = d19;
                                d9 = d4;
                                d10 = d3;
                                break;
                            }
                            Pos pos4 = gearPose13.points.get(i12 - 1);
                            Pos pos5 = gearPose13.points.get(i12);
                            d10 = d3;
                            i2 = i;
                            d8 = d19;
                            d9 = d4;
                            fP += p(f2, gearPose13.roll, (float) pos5.x, (float) pos5.y, (float) pos4.x, (float) pos4.y, atomicBoolean);
                            if (atomicBoolean.get()) {
                                break;
                            }
                            i12++;
                            i = i2;
                            d3 = d10;
                            d19 = d8;
                            d4 = d9;
                        }
                        gearPose13.f5592a = fP;
                        t.h("GearSensor", "挡位" + i2 + "的面积:" + fP);
                    }
                }
                bVar = this;
                i = i10;
                f2 = f15;
                d5 = d14;
                d6 = d7;
                cn.mucang.android.jiakaoyi.framework.log.f.o("gear=" + i + " , lineWidth=" + d6);
                list = gearPose13.points;
                if (list != null) {
                    i2 = i;
                    d8 = d19;
                    d9 = d4;
                    d10 = d3;
                } else {
                    i2 = i;
                    d8 = d19;
                    d9 = d4;
                    d10 = d3;
                }
            }
            i10 = i2 + 1;
            gearPose12 = gearPose;
            d18 = d10;
            d17 = d8;
            d16 = d9;
            d15 = d2;
            d14 = d5;
        }
    }

    private void w(float f2, float f3, float f4) {
        Gear gear = Gear.Invalid;
        float f5 = 10000.0f;
        int i = 0;
        while (true) {
            GearPose[] gearPoseArr = this.F;
            if (i >= gearPoseArr.length) {
                this.E = gear;
                return;
            }
            GearPose gearPose = gearPoseArr[i];
            if (gearPose != null) {
                float fDistance = gearPose.distance(f2, f3);
                if (fDistance < f5) {
                    gear = Gear.parse(i);
                    f5 = fDistance;
                }
            }
            i++;
        }
    }

    private boolean x() {
        Gear[] gearArr = {Gear.Gear1, Gear.Gear2, Gear.Gear3, Gear.Gear4, Gear.Gear5, Gear.GearN, Gear.GearBack};
        for (int i = 0; i < 7; i++) {
            Gear gear = gearArr[i];
            String strG = i0.g(y(gear), null);
            cn.mucang.android.jiakaoyi.framework.log.f.o(gear.gearName + ":" + strG);
            if (n0.g(strG)) {
                try {
                    GearPose gearPose = (GearPose) JSON.parseObject(strG, GearPose.class);
                    if (gearPose != null) {
                        int i2 = gear.gear;
                        gearPose.gear = i2;
                        this.F[i2] = gearPose;
                        this.G[i2] = new GearPose().copyFrom(gearPose);
                    } else {
                        continue;
                    }
                } catch (Throwable th) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o(gear.gearName + ":初始化挡位失败:" + th.getLocalizedMessage());
                    return false;
                }
            }
        }
        return v();
    }

    private String y(Gear gear) {
        return "key_gear_value_" + gear.gear;
    }

    private void z() {
        this.C = null;
        this.B = 0;
        this.L = 0L;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean a() {
        return this.x;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public List<GearPose> b() {
        return new ArrayList(Arrays.asList(this.F));
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean c() {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean d() {
        if (Math.abs(d.c((float) (this.f5646f - this.c))) + Math.abs(d.c((float) (this.f5645e - this.b))) > 0.01d) {
            GearPose[] gearPoseArr = this.F;
            if (gearPoseArr[Gear.GearN.gear] != null && gearPoseArr[Gear.Gear1.gear] != null && gearPoseArr[Gear.Gear2.gear] != null && gearPoseArr[Gear.Gear3.gear] != null && gearPoseArr[Gear.Gear4.gear] != null && gearPoseArr[Gear.Gear5.gear] != null && gearPoseArr[Gear.GearBack.gear] != null) {
                return true;
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public void e(List<? extends GearPose> list) {
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public List<GearPose> f(Gear gear) {
        GearPose gearPose = this.F[gear.gear];
        if (gearPose == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(gearPose);
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public Pos g() {
        return this.f5647g;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public List<GearPose> h() {
        return new ArrayList(Arrays.asList(this.F));
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public void i(GearPose gearPose) {
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean j() {
        double dAbs = Math.abs(this.f5646f - this.c);
        double dAbs2 = Math.abs(this.f5645e - this.b);
        return dAbs < 45.0d && dAbs2 < 45.0d && dAbs + dAbs2 < 60.0d;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean k(Gear gear) {
        if (Math.abs(this.f5646f) + Math.abs(this.f5645e) + Math.abs(this.f5644d) < 1.0E-6d) {
            u.h("没有姿态传感器，不能进行姿态挡位学习");
            cn.mucang.android.jiakaoyi.framework.log.f.o("没有姿态传感器，不能进行姿态挡位学习:" + gear.gearName);
            return false;
        }
        if (gear == Gear.GearN) {
            this.D = false;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("开始挡位学习:" + gear.gearName);
        GearPose[] gearPoseArr = this.F;
        int i = gear.gear;
        gearPoseArr[i] = null;
        this.G[i] = null;
        this.C = gear;
        this.L = SystemClock.elapsedRealtime();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0187  */
    /* JADX WARN: Code duplicated, block: B:41:0x018d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0191  */
    /* JADX WARN: Code duplicated, block: B:44:0x0199  */
    /* JADX WARN: Code duplicated, block: B:48:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:51:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:54:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:57:0x01be  */
    /* JADX WARN: Code duplicated, block: B:59:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:61:0x019f A[EDGE_INSN: B:61:0x019f->B:46:0x019f BREAK  A[LOOP:0: B:39:0x0188->B:45:0x019c], SYNTHETIC] */
    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public Gear l(long j, boolean z, Gear gear, int i, int i2) {
        int i3;
        float f2;
        float f3;
        Gear gear2;
        Gear gearQ;
        Gear gear3;
        Gear gear4;
        int i4;
        int[] iArr;
        float fC = d.c((float) (this.f5646f - this.c));
        float fC2 = d.c((float) (this.f5645e - this.b));
        float fC3 = d.c((float) (this.f5644d - this.f5643a));
        double d2 = fC;
        double d3 = fC2;
        double d4 = fC3;
        this.f5647g.setPos(d2, d3, d4);
        if (this.T) {
            w(fC, fC2, fC3);
            this.T = false;
            this.k = this.f5648h;
            this.l = this.i;
            this.f5648h = fC;
            this.i = fC2;
            this.j = fC3;
            return this.E;
        }
        if (Math.abs(this.P.x) + Math.abs(this.P.y) > 0.0d) {
            i3 = 0;
            this.Q.setPos(d2, d3, d4);
            this.Q.rotate(this.P, this.O, this.N);
            Pos pos = this.Q;
            float f4 = (float) pos.x;
            f3 = (float) pos.y;
            f2 = f4;
        } else {
            i3 = 0;
            f2 = fC;
            f3 = fC2;
        }
        GearPose[] gearPoseArr = this.G;
        GearPose gearPose = gearPoseArr[Gear.GearN.gear];
        if (gearPose == null) {
            this.k = this.f5648h;
            this.l = this.i;
            this.f5648h = f2;
            this.i = f3;
            this.j = fC3;
            return this.E;
        }
        GearPose gearPose2 = gearPoseArr[Gear.Gear1.gear];
        GearPose gearPose3 = gearPoseArr[Gear.Gear2.gear];
        if (gearPose2 == null || gearPose3 == null) {
            this.z = i3;
        } else {
            float f5 = f2 - gearPose.roll;
            float fAbs = Math.abs(f5);
            float f6 = gearPose2.roll;
            float f7 = gearPose.roll;
            if ((f6 - f7) * f5 > BitmapDescriptorFactory.HUE_RED && fAbs > 5.0f) {
                this.z = 1;
            } else if (f5 * (gearPose3.roll - f7) <= BitmapDescriptorFactory.HUE_RED || fAbs <= 5.0f) {
                this.z = i3;
            } else {
                this.z = 2;
            }
        }
        Gear gear5 = Gear.Invalid;
        float fS = s(f2, f3, this.f5648h, this.i);
        float fS2 = s(this.f5648h, this.i, this.k, this.l);
        boolean z2 = this.R;
        if (!z2) {
            if (z2) {
                float f8 = this.f5648h;
                float f9 = this.i;
                float f10 = fS * 0.5f;
                float f11 = ((f2 + f8) * 0.5f * 0.5f) + (((((f8 - this.k) * f10) / fS2) + f8) * 0.5f);
                float f12 = ((f3 + f9) * 0.5f * 0.5f) + ((((f10 * (f9 - this.l)) / fS2) + f9) * 0.5f);
                gear2 = gear5;
                q(j, z, gear, f11, f12, f8, f9, i, i2);
                gearQ = q(j, z, gear, f2, f3, f11, f12, i, i2);
            } else {
                float f13 = f3;
                gear3 = gear5;
                gearQ = r(j, z, gear, f2, f13, this.f5648h, this.i, i, i2);
            }
            if (gearQ != gear2) {
                i4 = 0;
                while (true) {
                    iArr = this.r;
                    if (i4 < iArr.length) {
                        break;
                    }
                    if (gearQ.gear == i4) {
                        iArr[i4] = iArr[i4] + 1;
                    } else {
                        iArr[i4] = 0;
                    }
                    i4++;
                }
                if (iArr[gearQ.gear] < 3) {
                    gearQ = Gear.Invalid;
                }
            }
            gear4 = Gear.Invalid;
            if (gearQ == gear4) {
                Math.abs(f2 - gearPose.roll);
            }
            MucangConfig.v();
            if (gearQ != gear4) {
                this.x = true;
            }
            if (!this.x) {
                return this.E;
            }
            this.E = gearQ;
            return gearQ;
        }
        float f14 = f3;
        gear3 = gear5;
        gearQ = q(j, z, gear, f2, f14, this.f5648h, this.i, i, i2);
        gear2 = gear3;
        if (gearQ != gear2) {
            i4 = 0;
            while (true) {
                iArr = this.r;
                if (i4 < iArr.length) {
                    break;
                    break;
                }
                if (gearQ.gear == i4) {
                    iArr[i4] = iArr[i4] + 1;
                } else {
                    iArr[i4] = 0;
                }
                i4++;
            }
            if (iArr[gearQ.gear] < 3) {
                gearQ = Gear.Invalid;
            }
        }
        gear4 = Gear.Invalid;
        if (gearQ == gear4) {
            Math.abs(f2 - gearPose.roll);
        }
        MucangConfig.v();
        if (gearQ != gear4) {
            this.x = true;
        }
        if (!this.x) {
            return this.E;
        }
        this.E = gearQ;
        return gearQ;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean m() {
        return this.D;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public String n() {
        GearPose[] gearPoseArr = this.F;
        Gear gear = Gear.GearN;
        if (gearPoseArr[gear.gear] == null || gearPoseArr[Gear.Gear1.gear] == null || gearPoseArr[Gear.Gear2.gear] == null || gearPoseArr[Gear.Gear3.gear] == null || gearPoseArr[Gear.Gear4.gear] == null || gearPoseArr[Gear.Gear5.gear] == null || gearPoseArr[Gear.GearBack.gear] == null) {
            return "请先进行挡位学习";
        }
        float fC = d.c((float) (this.f5646f - this.c));
        float fC2 = d.c((float) (this.f5645e - this.b));
        float fC3 = d.c((float) (this.f5644d - this.f5643a));
        GearPose gearPose = this.F[gear.gear];
        if (gearPose.distance(fC, fC2) > 15.0f) {
            return "角度偏差太大，请重新进行挡位学习";
        }
        double d2 = fC - gearPose.roll;
        double d3 = fC2 - gearPose.pitch;
        double d4 = fC3 - gearPose.yaw;
        int i = 0;
        while (true) {
            GearPose[] gearPoseArr2 = this.F;
            if (i >= gearPoseArr2.length) {
                v();
                return "校准成功";
            }
            GearPose gearPose2 = gearPoseArr2[i];
            if (gearPose2 != null) {
                gearPose2.roll = (float) (((double) gearPose2.roll) + d2);
                gearPose2.minRoll = (float) (((double) gearPose2.minRoll) + d2);
                gearPose2.maxRoll = (float) (((double) gearPose2.maxRoll) + d2);
                gearPose2.pitch = (float) (((double) gearPose2.pitch) + d3);
                gearPose2.minPitch = (float) (((double) gearPose2.minPitch) + d3);
                gearPose2.maxPitch = (float) (((double) gearPose2.maxPitch) + d3);
                gearPose2.yaw = (float) (((double) gearPose2.yaw) + d4);
                gearPose2.minYaw = (float) (((double) gearPose2.minYaw) + d4);
                gearPose2.maxYaw = (float) (((double) gearPose2.maxYaw) + d4);
                if (cn.mucang.android.core.utils.g.d(gearPose2.points)) {
                    Iterator<Pos> it = gearPose2.points.iterator();
                    while (it.hasNext()) {
                        it.next().translate(d2, d3);
                    }
                }
                i0.m(y(Gear.parse(i)), JSON.toJSONString(gearPose2));
            }
            i++;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public void o(double d2, double d3, double d4, double d5, double d6, double d7) {
        u();
        this.c = d2;
        this.b = d3;
        this.f5643a = d4;
        this.f5646f = d5;
        this.f5645e = d6;
        this.f5644d = d7;
        Gear gear = this.C;
        if (gear != null) {
            float fC = d.c((float) (this.f5646f - this.c));
            float fC2 = d.c((float) (this.f5645e - this.b));
            float fC3 = d.c((float) (this.f5644d - this.f5643a));
            GearPose gearPose = this.F[gear.gear];
            if (gearPose == null) {
                gearPose = new GearPose();
                this.F[gear.gear] = gearPose;
            }
            if (gearPose.points == null) {
                gearPose.points = new ArrayList();
            }
            double d8 = fC;
            double d9 = fC2;
            gearPose.set((float) B(d8), (float) B(d9), (float) B(fC3));
            Pos pos = new Pos(B(d8), B(d9));
            if (gearPose.points.size() == 0) {
                gearPose.points.add(pos);
                cn.mucang.android.jiakaoyi.framework.log.f.o(gear.gearName + "插入:" + pos.x + "," + pos.y);
            } else {
                List<Pos> list = gearPose.points;
                if (pos.distanceTo(list.get(list.size() - 1)) > 1.0d) {
                    if (gearPose.points.size() > 1) {
                        gearPose.points.add(pos);
                    } else {
                        gearPose.points.add(pos);
                    }
                    cn.mucang.android.jiakaoyi.framework.log.f.o(gear.gearName + "插入:" + pos.x + "," + pos.y);
                }
            }
            Gear gear2 = Gear.GearN;
            if (gear == gear2 || SystemClock.elapsedRealtime() - this.L > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                GearPose gearPose2 = this.F[gear2.gear];
                if ((gear == gear2 || (gearPose2 != null && gearPose2.distance(fC, fC2) > 10.0f)) && s(fC, fC2, this.m, this.n) < 0.3d) {
                    this.B++;
                } else {
                    this.B = 0;
                }
                if (this.B >= 20) {
                    A(gear);
                }
            }
            this.m = fC;
            this.n = fC2;
        }
        if (!this.I) {
            j jVar = this.K;
            if (jVar != null) {
                jVar.i();
            }
            this.K = null;
            return;
        }
        if (this.J) {
            return;
        }
        if (this.K == null) {
            j jVar2 = new j();
            this.K = jVar2;
            jVar2.h();
        }
        this.K.g(d2, d3, d4, d5, d6, d7);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public void stop() {
        A(this.C);
    }

    public boolean u() {
        if (this.H) {
            return this.y;
        }
        this.t = true;
        this.H = true;
        this.M = (h.m() * 2.0f) + 4.0f;
        boolean zX = x();
        this.y = zX;
        return zX;
    }
}
