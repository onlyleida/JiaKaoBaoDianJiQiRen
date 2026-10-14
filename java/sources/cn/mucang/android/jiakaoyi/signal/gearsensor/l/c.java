package cn.mucang.android.jiakaoyi.signal.gearsensor.l;

import android.os.SystemClock;
import android.util.Log;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.p002e.g;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.signal.center.config.CarSignal;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.gearsensor.GearPose;
import cn.mucang.android.jiakaoyi.signal.gearsensor.h;
import cn.mucang.android.jiakaoyi.signal.gearsensor.i;
import cn.mucang.android.jiakaoyi.signal.handle.gear.LineAB;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import com.alibaba.fastjson.JSON;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.tencent.bugly.Bugly;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c implements i {
    private Gear A;
    private final List<GearPose> B;
    public final List<GearPose> C;
    private boolean D;
    private long E;
    private float F;
    private float G;
    private float H;
    private float I;
    private volatile boolean J;
    private volatile boolean K;
    private final Pos L;
    private final Pos M;
    private int N;
    private boolean O;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f5654h;
    private float j;
    private float k;
    private float l;
    private float m;
    private float n;
    private float o;
    private final int[] p;
    private final int[] q;
    private final int[] r;
    private final b[] s;
    private Gear t;
    public boolean u;
    private int v;
    private int w;
    private volatile GearPose x;
    private volatile boolean y;
    private final List<Pos> z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double f5649a = 0.0d;
    public double b = 0.0d;
    public double c = 0.0d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public double f5650d = 0.0d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public double f5651e = 0.0d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public double f5652f = 0.0d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Pos f5653g = new Pos();
    public Pos i = new Pos();

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        double f5655a;
        double b;
        double c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f5656d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        double f5657e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        float f5658f;

        private b() {
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0063  */
        void a(double d2, double d3, double d4, double d5) {
            float f2;
            float f3;
            double d6;
            double d7;
            double d8 = this.c;
            if ((d2 - d8) * (d8 - d4) > 0.0d) {
                double d9 = d2 - d4;
                if (this.f5657e * d9 < 0.0d) {
                    this.f5658f = 1.0f;
                    return;
                }
                double d10 = (((d3 - d5) * (d8 - d4)) / d9) + d5;
                int i = this.f5656d;
                float f4 = 2.0f;
                if (i == Gear.Gear5.gear) {
                    f2 = 10.0f;
                    f3 = 2.0f;
                } else {
                    f2 = 1.0f;
                    f3 = 1.0f;
                }
                if (i != Gear.Gear1.gear) {
                    f3 = i == Gear.Gear2.gear ? 5.0f : 3.0f;
                    d6 = this.b;
                    d7 = this.f5655a;
                    if (d6 - d7 < 3.0d || f2 != 1.0f) {
                        f4 = f3;
                    } else {
                        f2 = 2.0f;
                    }
                    if (d10 >= ((double) f4) + d6 && d10 > d7 - ((double) f2)) {
                        this.f5658f = 0.4f;
                        Log.e("Sheep", "经过必经线");
                        return;
                    } else if (d10 < d6 + 3.0d || d10 <= d7 - 3.0d) {
                        this.f5658f = 1.0f;
                    } else {
                        this.f5658f = 0.9f;
                        return;
                    }
                }
                f2 = 2.0f;
                d6 = this.b;
                d7 = this.f5655a;
                if (d6 - d7 < 3.0d) {
                    f4 = f3;
                } else {
                    f4 = f3;
                }
                if (d10 >= ((double) f4) + d6) {
                }
                if (d10 < d6 + 3.0d) {
                }
                this.f5658f = 1.0f;
            }
        }
    }

    public c() {
        Gear gear = Gear.Invalid;
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
        this.s = new b[gearArr.length];
        this.t = gear;
        this.u = false;
        this.v = 0;
        this.w = 0;
        this.x = null;
        this.y = false;
        this.z = new ArrayList();
        this.A = gear;
        this.B = new ArrayList();
        this.C = new ArrayList();
        this.D = false;
        this.F = BitmapDescriptorFactory.HUE_RED;
        this.G = 1.0f;
        this.H = BitmapDescriptorFactory.HUE_RED;
        this.I = 1.0f;
        this.J = false;
        this.K = false;
        this.L = new Pos(0.0d, 0.0d);
        this.M = new Pos();
        this.N = 0;
        this.O = true;
    }

    private void A() {
        this.x = null;
        this.w = 0;
        this.E = 0L;
    }

    private double E(double d2) {
        return ((double) ((int) (d2 * 100.0d))) / 100.0d;
    }

    private boolean F(Gear gear, GearPose gearPose, GearPose gearPose2) {
        return gear == Gear.GearN || gearPose2 != null;
    }

    /* JADX WARN: Code duplicated, block: B:156:0x0301  */
    /* JADX WARN: Code duplicated, block: B:160:0x030a  */
    /* JADX WARN: Code duplicated, block: B:163:0x0312 A[PHI: r1
      0x0312: PHI (r1v21 float) = (r1v25 float), (r1v26 float), (r1v26 float) binds: [B:162:0x0310, B:157:0x0305, B:158:0x0307] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:165:0x031c  */
    /* JADX WARN: Code duplicated, block: B:169:0x0326 A[PHI: r1
      0x0326: PHI (r1v24 float) = (r1v21 float), (r1v25 float) binds: [B:166:0x0320, B:162:0x0310] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:172:0x032f  */
    /* JADX WARN: Code duplicated, block: B:174:0x0337  */
    /* JADX WARN: Code duplicated, block: B:48:0x00be  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c8  */
    /* JADX WARN: Instruction removed from duplicated block: B:174:0x0337, please report this as an issue */
    private Gear p(long j, boolean z, Gear gear, float f2, float f3, float f4, float f5, int i, int i2) {
        boolean z2;
        boolean z3;
        boolean z4;
        Gear gear2;
        Gear gearT;
        float f6;
        float f7;
        int[] iArr;
        Gear gear3;
        Gear gear4;
        Gear gear5;
        f3 = f3;
        f4 = f4;
        float f8 = f2 - f4;
        float f9 = f3 - f5;
        Gear gear6 = Gear.GearN;
        GearPose gearPoseR = r(gear6);
        if (gearPoseR == null) {
            this.j = f2;
            this.k = f3;
            return Gear.Invalid;
        }
        float f10 = gearPoseR.roll;
        float f11 = this.o;
        float f12 = (f11 * 0.45f) + f10;
        float f13 = f10 - (f11 * 0.45f);
        Pos pos = this.i;
        float fDistance = gearPoseR.distance((float) pos.x, (float) pos.y);
        float f14 = gearPoseR.roll;
        float f15 = this.o;
        float f16 = (f15 * 0.3f) + f14;
        float f17 = f14 - (f15 * 0.3f);
        boolean zJ = cn.mucang.android.jiakaoyi.signal.center.config.a.h().j(j, CarSignal.Clutch, z);
        if (h.D() && !zJ && (gear5 = this.A) != Gear.Invalid && gear5 != gear6 && gear5 != Gear.GearP) {
            this.j = f2;
            this.k = f3;
            return gear5;
        }
        if (!zJ || ((f2 >= f12 || f2 <= f13) && ((f2 > f13 || f4 < f12) && (f2 < f12 || f4 > f13)))) {
            z2 = false;
        } else {
            this.t = Gear.Invalid;
            z2 = true;
        }
        float fO = h.o();
        float fJ = h.j();
        if ((f2 >= f16 || f2 <= f17) && ((f2 > f17 || f4 < f16) && (f2 < f16 || f4 > f17))) {
            float f18 = gearPoseR.roll;
            if (f2 >= f18 + fO || f2 <= f18 - fJ) {
                z3 = z2;
                z4 = zJ;
            } else {
                this.t = Gear.Invalid;
                if (zJ) {
                    z4 = zJ;
                    z3 = true;
                } else {
                    z3 = true;
                    z4 = true;
                }
            }
        } else {
            this.t = Gear.Invalid;
            if (zJ) {
                z3 = true;
                z4 = true;
            } else {
                z4 = zJ;
                z3 = true;
            }
        }
        if (!z4 && f8 > 1.0f && (gear4 = this.A) != gear6 && gear4 != Gear.Invalid && ((f2 - f16) * (f16 - f4) > BitmapDescriptorFactory.HUE_RED || (f2 - f17) * (f17 - f4) > BitmapDescriptorFactory.HUE_RED || (f2 - fO) * (fO - f4) > BitmapDescriptorFactory.HUE_RED || (f2 - fJ) * (fJ - f4) > BitmapDescriptorFactory.HUE_RED)) {
            this.f5654h = false;
        }
        double dSqrt = Math.sqrt((f8 * f8) + (f9 * f9));
        Gear gear7 = Gear.Invalid;
        boolean z5 = z3;
        double d2 = f2;
        boolean z6 = Math.abs(d2 - this.L.x) > ((double) this.o) * 0.6d;
        if (h.k()) {
            b[] bVarArr = this.s;
            int i3 = 0;
            for (int length = bVarArr.length; i3 < length; length = length) {
                b bVar = bVarArr[i3];
                if (bVar != null) {
                    bVar.a(d2, f3, f4, f5);
                }
                i3++;
                gear7 = gear7;
                z6 = z6;
                bVarArr = bVarArr;
            }
        }
        boolean z7 = z6;
        f5 = f5;
        c cVar = this;
        Iterator<GearPose> it = cVar.C.iterator();
        Gear gear8 = gear7;
        boolean z8 = z7;
        float f19 = Float.MAX_VALUE;
        while (it.hasNext()) {
            GearPose next = it.next();
            it = it;
            if (next.line != null) {
                gear3 = gear8;
                if (next.gear != Gear.GearN.gear) {
                    GearPose gearPose = gearPoseR;
                    float f20 = f19;
                    Pos pos2 = cVar.L;
                    next.area(d2, f3, f4, f5, pos2.y, pos2.x);
                    z8 = z8 || next.canCalculate;
                    if (h.k()) {
                        cVar = this;
                        b[] bVarArr2 = cVar.s;
                        int i4 = next.gear;
                        next.factor = bVarArr2[i4] == null ? 1.0f : bVarArr2[i4].f5658f;
                    } else {
                        cVar = this;
                        next.factor = 1.0f;
                    }
                    float fArea = next.area();
                    if (fArea >= f20 || fArea <= BitmapDescriptorFactory.HUE_RED) {
                        gear8 = gear3;
                        f19 = f20;
                    } else {
                        gear8 = Gear.parse(next.gear);
                        f19 = fArea;
                    }
                    if (fArea < 10000.0f && MucangConfig.v()) {
                        Log.e("Sheep", "" + next.gear + "," + fArea);
                    }
                    gearPoseR = gearPose;
                }
            } else {
                gear3 = gear8;
            }
            gear8 = gear3;
            gearPoseR = gearPoseR;
            f19 = f19;
        }
        GearPose gearPose2 = gearPoseR;
        Gear gear9 = !z8 ? Gear.Invalid : gear8;
        if (gear9 != Gear.Invalid) {
            if (MucangConfig.v()) {
                Log.e("Sheep", "********************" + gear9.gearName);
            }
            int i5 = 0;
            while (true) {
                iArr = cVar.q;
                if (i5 >= iArr.length) {
                    break;
                }
                if (i5 == gear9.gear) {
                    iArr[i5] = iArr[i5] + 15;
                    if (iArr[i5] > 60) {
                        iArr[i5] = 60;
                    }
                } else {
                    iArr[i5] = iArr[i5] - 15;
                    if (iArr[i5] < 0) {
                        iArr[i5] = 0;
                    }
                }
                i5++;
            }
            if (iArr[gear9.gear] <= 3) {
                gear2 = Gear.Invalid;
            }
            gearT = t(j, z, gear2, gear, i, i2, z5, z4);
            if (fDistance >= 7.0f) {
                f6 = f2;
                if (f6 > f17 || f2 >= f16) {
                    f7 = gearPose2.roll;
                    if (f6 < f7 + fO || f6 <= f7 - fJ) {
                        cVar.N = 0;
                    } else {
                        cVar.N++;
                    }
                }
                if (cVar.N > 1) {
                    gearT = Gear.GearN;
                    if (MucangConfig.v()) {
                        Log.e("Sheep", "找到空档了 : " + gearT.gearName);
                    }
                }
                cVar.j = f6;
                cVar.k = f3;
                return gearT;
            }
            f6 = f2;
            if (dSqrt > 2.5d) {
                f7 = gearPose2.roll;
                if (f6 < f7 + fO) {
                }
                cVar.N = 0;
            } else {
                cVar.N++;
            }
            if (cVar.N > 1) {
                gearT = Gear.GearN;
                if (MucangConfig.v()) {
                    Log.e("Sheep", "找到空档了 : " + gearT.gearName);
                }
            }
            cVar.j = f6;
            cVar.k = f3;
            return gearT;
        }
        int i6 = 0;
        while (true) {
            int[] iArr2 = cVar.q;
            if (i6 >= iArr2.length) {
                break;
            }
            iArr2[i6] = iArr2[i6] - 15;
            if (iArr2[i6] < 0) {
                iArr2[i6] = 0;
            }
            i6++;
        }
        gear2 = gear9;
        gearT = t(j, z, gear2, gear, i, i2, z5, z4);
        if (fDistance >= 7.0f) {
            f6 = f2;
            if (f6 > f17) {
            }
            f7 = gearPose2.roll;
            if (f6 < f7 + fO) {
            }
            cVar.N = 0;
            if (cVar.N > 1) {
                gearT = Gear.GearN;
                if (MucangConfig.v()) {
                    Log.e("Sheep", "找到空档了 : " + gearT.gearName);
                }
            }
            cVar.j = f6;
            cVar.k = f3;
            return gearT;
        }
        f6 = f2;
        if (dSqrt > 2.5d) {
            f7 = gearPose2.roll;
            if (f6 < f7 + fO) {
            }
            cVar.N = 0;
        } else {
            cVar.N++;
        }
        if (cVar.N > 1) {
            gearT = Gear.GearN;
            if (MucangConfig.v()) {
                Log.e("Sheep", "找到空档了 : " + gearT.gearName);
            }
        }
        cVar.j = f6;
        cVar.k = f3;
        return gearT;
    }

    private static float q(float f2, float f3, float f4, float f5) {
        float f6 = f2 - f4;
        float f7 = f3 - f5;
        return (float) Math.sqrt((f6 * f6) + (f7 * f7));
    }

    private GearPose r(Gear gear) {
        for (GearPose gearPose : this.C) {
            if (gearPose != null && gearPose.gear == gear.gear) {
                return gearPose;
            }
        }
        return null;
    }

    private GearPose s(Gear gear) {
        for (GearPose gearPose : this.B) {
            if (gearPose != null && gearPose.gear == gear.gear) {
                return gearPose;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:124:0x013e  */
    private Gear t(long j, boolean z, Gear gear, Gear gear2, int i, int i2, boolean z2, boolean z3) {
        Gear gear3;
        Gear gear4;
        Gear gear5;
        Gear gear6;
        Gear gear7;
        if (gear2 != Gear.GearBack || !h.q()) {
            if (!z3 && gear == (gear7 = Gear.Invalid) && gear2 != gear7 && gear2 != Gear.GearN) {
                gear = gear2;
            }
            if (i2 > 0 && !z3 && !z2) {
                Gear gear8 = this.t;
                Gear gear9 = Gear.Invalid;
                if (gear8 == gear9 && this.f5654h && h.p()) {
                    int i3 = i / i2;
                    int i4 = this.v;
                    int i5 = 4;
                    int i6 = 2;
                    if (i4 == 1 && ((gear == (gear6 = Gear.Gear1) || gear == Gear.Gear3) && (i3 > 100 || gear2 == gear6))) {
                        int[] iArr = this.p;
                        iArr[3] = 0;
                        iArr[1] = iArr[1] + 1;
                        if (gear == gear6 && (i3 > 100 || gear2 == gear6)) {
                            i5 = 2;
                        }
                        if (iArr[1] >= i5) {
                            this.t = gear6;
                            gear = gear6;
                        }
                    } else if (i4 == 1 && ((gear == (gear6 = Gear.Gear3) || gear == Gear.Gear1) && (i3 < 55 || gear2 == gear6))) {
                        int[] iArr2 = this.p;
                        iArr2[1] = 0;
                        iArr2[3] = iArr2[3] + 1;
                        if (gear == gear6 && (i3 < 55 || gear2 == gear6)) {
                            i5 = 2;
                        }
                        if (iArr2[3] >= i5) {
                            this.t = gear6;
                            gear = gear6;
                        }
                    } else if (i4 == 1 && ((gear == (gear5 = Gear.Gear5) || gear == Gear.Gear3) && (i3 < 25 || gear2 == gear5))) {
                        int[] iArr3 = this.p;
                        iArr3[3] = 0;
                        iArr3[5] = iArr3[5] + 1;
                        if (gear == gear5 && (i3 < 25 || gear2 == gear5)) {
                            i5 = 2;
                        }
                        if (iArr3[5] >= i5) {
                            this.t = gear5;
                            gear = gear5;
                        }
                    } else if (i4 == 2 && ((gear == (gear4 = Gear.Gear2) || gear == Gear.Gear4) && (i3 > 50 || gear2 == gear4))) {
                        int[] iArr4 = this.p;
                        iArr4[4] = 0;
                        iArr4[2] = iArr4[2] + 1;
                        if (gear == gear4 && (i3 > 50 || gear2 == gear4)) {
                            i5 = 2;
                        }
                        if (iArr4[2] >= i5) {
                            this.t = gear4;
                            gear = gear4;
                        }
                    } else if (i4 == 2 && ((gear == Gear.Gear2 || gear == Gear.Gear4) && (i3 < 40 || gear2 == Gear.Gear4))) {
                        int[] iArr5 = this.p;
                        iArr5[2] = 0;
                        iArr5[4] = iArr5[4] + 1;
                        Gear gear10 = Gear.Gear4;
                        if (gear != gear10 || (i3 >= 40 && gear2 != gear10)) {
                            i6 = 4;
                        }
                        if (iArr5[4] >= i6) {
                            this.t = gear10;
                            gear = gear10;
                        }
                    } else if (gear != gear9) {
                        Arrays.fill(this.p, 0);
                    } else if (i4 == 1) {
                        if (i3 > 90) {
                            int[] iArr6 = this.p;
                            iArr6[1] = iArr6[1] + 1;
                            iArr6[3] = 0;
                            iArr6[5] = 0;
                            if (iArr6[1] >= 4) {
                                gear = Gear.Gear1;
                                this.t = gear;
                            } else {
                                gear = gear9;
                            }
                        } else if (i3 > 35) {
                            int[] iArr7 = this.p;
                            iArr7[3] = iArr7[3] + 1;
                            iArr7[1] = 0;
                            iArr7[5] = 0;
                            if (iArr7[3] >= 4) {
                                gear = Gear.Gear3;
                                this.t = gear;
                            } else {
                                gear = gear9;
                            }
                        } else {
                            int[] iArr8 = this.p;
                            iArr8[5] = iArr8[5] + 1;
                            iArr8[1] = 0;
                            iArr8[3] = 0;
                            if (iArr8[5] >= 4) {
                                gear = Gear.Gear5;
                                this.t = gear;
                            } else {
                                gear = gear9;
                            }
                        }
                    } else if (i4 == 2) {
                        if (i3 > 50) {
                            int[] iArr9 = this.p;
                            iArr9[2] = iArr9[2] + 1;
                            iArr9[4] = 0;
                            if (iArr9[2] >= 4) {
                                gear = Gear.Gear2;
                                this.t = gear;
                            } else {
                                gear = gear9;
                            }
                        } else {
                            int[] iArr10 = this.p;
                            iArr10[4] = iArr10[4] + 1;
                            iArr10[2] = 0;
                            if (iArr10[4] >= 4) {
                                gear = Gear.Gear4;
                                this.t = gear;
                            } else {
                                gear = gear9;
                            }
                        }
                    }
                }
            }
            if (z3 && !h.B()) {
                gear = Gear.Invalid;
            }
            Gear gear11 = this.t;
            return (gear11 == null || !gear11.isValid() || (gear3 = this.t) == Gear.GearN) ? gear : gear3;
        }
        int i7 = 0;
        while (true) {
            int[] iArr11 = this.p;
            if (i7 >= iArr11.length) {
                this.t = gear;
                return Gear.GearBack;
            }
            if (i7 == Gear.GearBack.gear) {
                iArr11[i7] = iArr11[i7] + 1;
            } else {
                iArr11[i7] = 0;
            }
            i7++;
        }
    }

    public static boolean u() {
        return i0.c("sheep_gear_angle", 1000.0f) != 1000.0f;
    }

    private boolean w() {
        double dJ;
        c cVar;
        Iterator<GearPose> it;
        Iterator<GearPose> it2;
        List<Pos> list;
        int i;
        int i2;
        c cVar2 = this;
        cVar2.C.clear();
        float f2 = 360.0f;
        a aVar = null;
        GearPose gearPose = null;
        GearPose gearPose2 = null;
        GearPose gearPose3 = null;
        float f3 = 360.0f;
        float f4 = -360.0f;
        float f5 = -360.0f;
        for (GearPose gearPose4 : cVar2.B) {
            if (gearPose4 != null) {
                gearPose4.f5592a = 0.001f;
                int i3 = gearPose4.gear;
                if (i3 == Gear.GearN.gear) {
                    gearPose = gearPose4;
                } else if (i3 == Gear.Gear3.gear) {
                    gearPose2 = gearPose4;
                } else if (i3 == Gear.Gear4.gear) {
                    gearPose3 = gearPose4;
                }
                float f6 = gearPose4.maxRoll;
                if (f6 > f4) {
                    f4 = f6;
                }
                float f7 = gearPose4.minRoll;
                if (f7 < f2) {
                    f2 = f7;
                }
                float f8 = gearPose4.maxPitch;
                if (f8 > f5) {
                    f5 = f8;
                }
                float f9 = gearPose4.minPitch;
                if (f9 < f3) {
                    f3 = f9;
                }
            }
        }
        if (gearPose == null) {
            g.a("jkyHasGearSensor", Bugly.SDK_IS_DEV);
            return false;
        }
        cVar2.L.setPos(gearPose.roll, gearPose.pitch);
        g.a("jkyHasGearSensor", "true");
        Pos pos = new Pos();
        int i4 = 0;
        while (i4 < cVar2.B.size()) {
            GearPose gearPose5 = cVar2.B.get(i4);
            if (gearPose5 == null) {
                i2 = i4;
            } else {
                GearPose gearPoseCopyFrom = new GearPose().copyFrom(gearPose5);
                cVar2.C.add(gearPoseCopyFrom);
                pos.setPos(gearPose5.roll, gearPose5.pitch);
                pos.rotate(cVar2.L, cVar2.G, cVar2.F);
                gearPoseCopyFrom.roll = (float) pos.x;
                gearPoseCopyFrom.pitch = (float) pos.y;
                Pos pos2 = new Pos(gearPose5.maxRoll, gearPose5.maxPitch);
                i2 = i4;
                pos2.rotate(cVar2.L, cVar2.G, cVar2.F);
                Pos pos3 = new Pos(gearPose5.minRoll, gearPose5.minPitch);
                pos3.rotate(cVar2.L, cVar2.G, cVar2.F);
                gearPoseCopyFrom.maxRoll = (float) Math.max(pos2.x, pos3.x);
                gearPoseCopyFrom.minRoll = (float) Math.min(pos2.x, pos3.x);
                gearPoseCopyFrom.maxPitch = (float) Math.max(pos2.y, pos3.y);
                gearPoseCopyFrom.minPitch = (float) Math.min(pos2.y, pos3.y);
                gearPoseCopyFrom.width = gearPose5.width;
                gearPoseCopyFrom.height = gearPose5.height;
                gearPoseCopyFrom.offset = gearPose5.offset;
                gearPoseCopyFrom.src = gearPose5;
                if (cn.mucang.android.core.utils.g.d(gearPoseCopyFrom.points)) {
                    Iterator<Pos> it3 = gearPoseCopyFrom.points.iterator();
                    while (it3.hasNext()) {
                        it3.next().rotate(cVar2.L, cVar2.G, cVar2.F);
                    }
                }
            }
            i4 = i2 + 1;
        }
        if (gearPose2 != null && gearPose3 != null) {
            cVar2.o = (float) Math.min(Math.min(gearPose.distance(gearPose2), gearPose.distance(gearPose3)), ((double) gearPose2.distance(gearPose3)) * 0.5d);
        }
        float fMin = Math.min(20.0f, cVar2.o);
        cVar2.o = fMin;
        cVar2.o = Math.max(14.0f, fMin);
        Iterator<GearPose> it4 = cVar2.C.iterator();
        while (true) {
            int i5 = 1;
            if (!it4.hasNext()) {
                return true;
            }
            GearPose next = it4.next();
            List<Pos> list2 = next.points;
            if (list2 != null && list2.size() >= 2 && next.gear != Gear.GearN.gear) {
                List<Pos> listZ = z(next.points);
                ArrayList arrayList = new ArrayList();
                double d2 = cVar2.L.x;
                if (next.roll > d2) {
                    dJ = d2 + ((double) h.o());
                    for (Pos pos4 : listZ) {
                        if (pos4.x >= dJ) {
                            arrayList.add(pos4);
                        }
                    }
                } else {
                    dJ = d2 - ((double) h.j());
                    for (Pos pos5 : listZ) {
                        if (pos5.x <= dJ) {
                            arrayList.add(pos5);
                        }
                    }
                }
                if (arrayList.size() > 2) {
                    b[] bVarArr = cVar2.s;
                    int i6 = next.gear;
                    b bVar = bVarArr[i6];
                    if (bVar == null) {
                        bVar = new b();
                        bVar.f5656d = i6;
                        bVar.f5657e = ((double) next.roll) - cVar2.L.x;
                        bVar.f5655a = 1.0E7d;
                        bVar.b = -1.0E8d;
                        bVar.f5658f = 1.0f;
                        bVar.c = dJ;
                        bVarArr[i6] = bVar;
                    }
                    int i7 = 0;
                    while (i7 < next.points.size() - i5) {
                        Pos pos6 = next.points.get(i7);
                        int i8 = i7 + 1;
                        Pos pos7 = next.points.get(i8);
                        double d3 = pos6.x;
                        double d4 = pos7.x;
                        if ((d3 - dJ) * (dJ - d4) > 0.0d) {
                            list = listZ;
                            i = i8;
                            double d5 = pos7.y;
                            it2 = it4;
                            double d6 = pos6.y;
                            double d7 = (((d5 - d6) * (dJ - d3)) / (d4 - d3)) + d6;
                            if (bVar.b < d7) {
                                bVar.b = d7;
                            }
                            if (bVar.f5655a > d7) {
                                bVar.f5655a = d7;
                            }
                        } else {
                            it2 = it4;
                            list = listZ;
                            i = i8;
                        }
                        i5 = 1;
                        it4 = it2;
                        listZ = list;
                        i7 = i;
                    }
                    it = it4;
                    List<Pos> list3 = listZ;
                    next.line = LineAB.calculate(arrayList);
                    next.startRoll = (float) dJ;
                    cVar = this;
                    if (next.roll > cVar.L.x) {
                        next.endRoll = -1000.0f;
                    } else {
                        next.endRoll = 10000.0f;
                    }
                    for (Pos pos8 : list3) {
                        if (next.roll > cVar.L.x) {
                            double d8 = pos8.x;
                            if (d8 > next.endRoll) {
                                next.endRoll = (float) d8;
                            }
                        } else {
                            double d9 = pos8.x;
                            if (d9 < next.endRoll) {
                                next.endRoll = (float) d9;
                            }
                        }
                    }
                } else {
                    cVar = cVar2;
                    it = it4;
                }
                cVar2 = cVar;
                it4 = it;
                aVar = null;
            }
        }
    }

    private void x(float f2, float f3, float f4) {
        Gear gear = Gear.Invalid;
        float f5 = 10000.0f;
        for (int i = 0; i < this.B.size(); i++) {
            GearPose gearPose = this.B.get(i);
            if (gearPose != null) {
                float fDistance = gearPose.distance(f2, f3);
                if (fDistance < f5) {
                    gear = Gear.parse(gearPose.gear);
                    f5 = fDistance;
                }
            }
        }
        this.A = gear;
    }

    private boolean y() {
        this.B.clear();
        this.C.clear();
        try {
            String strG = i0.g("sheep_gear_data", "");
            if (n0.e(strG)) {
                return false;
            }
            List array = JSON.parseArray(strG, GearPose.class);
            if (cn.mucang.android.core.utils.g.b(array)) {
                f.o("sheep档位学习数据为空");
                return false;
            }
            f.o("档位数据:" + strG);
            double dC = (double) i0.c("sheep_gear_angle", 1000.0f);
            f.o("档位标定角度:" + Math.toDegrees(dC));
            if (Math.abs(dC - 1000.0d) < 0.001d) {
                f.o("sheep档位学习角度为空");
                return false;
            }
            double dC2 = i0.c("sheep_gear_angle_calibrate_1", 1000.0f);
            f.o("档位校准角度:" + Math.toDegrees(dC2));
            if (Math.abs(dC2 - 1000.0d) < 0.001d) {
                f.o("sheep档位校准角度为空，用标定的值");
                dC2 = dC;
            }
            String strG2 = i0.g("sheep_gear_offset", null);
            if (n0.g(strG2)) {
                this.f5653g.setPos((Pos) JSON.parseObject(strG2, Pos.class));
                f.o("档位偏移是:" + strG2);
            } else {
                f.o("没有设置档位偏移");
                this.f5653g.setPos(0.0d, 0.0d);
            }
            double d2 = -dC;
            this.G = (float) Math.cos(d2);
            this.F = (float) Math.sin(d2);
            double d3 = -dC2;
            this.I = (float) Math.cos(d3);
            this.H = (float) Math.sin(d3);
            this.B.addAll(array);
            w();
            return true;
        } catch (Throwable th) {
            f.o("Sheep初始化挡位失败:" + th.getLocalizedMessage());
            return false;
        }
    }

    private static List<Pos> z(List<Pos> list) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = 1;
            if (i >= list.size() - 1) {
                arrayList.add(list.get(list.size() - 1));
                return arrayList;
            }
            int i3 = i + 1;
            Pos pos = list.get(i3);
            Pos pos2 = list.get(i);
            double dDistanceTo = pos2.distanceTo(pos);
            arrayList.add(list.get(i));
            if (dDistanceTo > 1.0d) {
                int i4 = (int) (dDistanceTo / 0.45d);
                while (i2 < i4) {
                    double d2 = pos.x;
                    double d3 = pos2.x;
                    double d4 = pos.y;
                    int i5 = i4;
                    double d5 = pos2.y;
                    Pos pos3 = pos;
                    double d6 = ((double) i2) * 0.45d;
                    arrayList.add(new Pos((((d2 - d3) * d6) / dDistanceTo) + d3, ((d6 * (d4 - d5)) / dDistanceTo) + d5));
                    i2++;
                    i3 = i3;
                    i4 = i5;
                    pos = pos3;
                    pos2 = pos2;
                }
            }
            i = i3;
        }
    }

    public void B(boolean z, boolean z2) {
        this.J = z;
        this.K = z2;
        if (z2) {
            this.E = SystemClock.elapsedRealtime();
        }
    }

    public void C() {
        this.y = false;
        if (this.z.size() > 5) {
            double dAtan = Math.atan(LineAB.calculate(this.z).f5676a);
            float f2 = (float) dAtan;
            i0.j("sheep_gear_angle", f2);
            i0.j("sheep_gear_angle_calibrate_1", f2);
            y();
            f.o("档位标定完成:" + Math.toDegrees(dAtan));
            u.h("标定完成");
        } else if (AppUtils.l()) {
            f.o("校准失败，没有将档位从2档到3档来回拨动数次");
            u.h("校准失败，没有将档位从2档到3档来回拨动数次");
        } else {
            f.o("校准失败，没有将档位从3档到4档来回拨动数次");
            u.h("校准失败，没有将档位从3档到4档来回拨动数次");
        }
        this.z.clear();
    }

    public void D(GearPose gearPose) {
        if (gearPose == null) {
            A();
            return;
        }
        f.o("停止挡位学习:" + gearPose.gear);
        GearPose gearPoseS = s(Gear.GearN);
        Gear gear = Gear.parse(gearPose.gear);
        if (F(gear, gearPose, gearPoseS)) {
            A();
            if (!cn.mucang.android.core.utils.g.b(gearPose.points)) {
                this.B.add(gearPose);
                i0.m("sheep_gear_data", JSON.toJSONString(this.B));
                y();
                return;
            } else {
                f.o(gear.gearName + "学习时，没有轨迹数据");
                return;
            }
        }
        if (gearPoseS != null) {
            f.o(gear.gearName + "学习时，陀螺仪角度不对，data:" + gearPose.roll + "," + gearPose.pitch + ",空档data:" + gearPoseS.roll + "," + gearPoseS.pitch);
        }
        A();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean a() {
        return this.u;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public List<GearPose> b() {
        return this.C;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean c() {
        return this.y;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean d() {
        return ((double) (Math.abs(d.c((float) (this.f5652f - this.c))) + Math.abs(d.c((float) (this.f5651e - this.b))))) > 0.01d;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public void e(List<? extends GearPose> list) {
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public List<GearPose> f(Gear gear) {
        ArrayList arrayList = new ArrayList();
        for (GearPose gearPose : this.C) {
            if (gearPose.gear == gear.gear) {
                arrayList.add(gearPose);
            }
        }
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public Pos g() {
        return this.i;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public List<GearPose> h() {
        String strG = i0.g("sheep_gear_data", "");
        if (n0.e(strG)) {
            return null;
        }
        List<GearPose> array = JSON.parseArray(strG, GearPose.class);
        if (!cn.mucang.android.core.utils.g.b(array)) {
            return array;
        }
        f.o("本地sheep档位学习数据为空");
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public void i(GearPose gearPose) {
        this.B.remove(gearPose);
        for (GearPose gearPose2 : this.B) {
            if (gearPose2 == gearPose.src) {
                this.B.remove(gearPose2);
                break;
            }
        }
        i0.m("sheep_gear_data", JSON.toJSONString(this.B));
        y();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean j() {
        double dAbs = Math.abs(this.f5652f - this.c);
        double dAbs2 = Math.abs(this.f5651e - this.b);
        return dAbs < 45.0d && dAbs2 < 45.0d && dAbs + dAbs2 < 70.0d;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean k(Gear gear) {
        if (this.y) {
            u.h("当前还在校准，不能档位学习");
            return false;
        }
        if (Math.abs(this.f5652f) + Math.abs(this.f5651e) + Math.abs(this.f5650d) < 1.0E-6d) {
            u.h("没有姿态传感器，不能进行姿态挡位学习");
            f.o("没有姿态传感器，不能进行姿态挡位学习:" + gear.gearName);
            return false;
        }
        Iterator<GearPose> it = this.B.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().gear == gear.gear) {
                i++;
            }
        }
        Gear gear2 = Gear.GearN;
        if (gear == gear2 && i == 1) {
            u.h("空档只需要学习一次，如果要重新学习，请先删除空档");
            return false;
        }
        if (gear != gear2 && i == 3) {
            u.h("同一个档位的轨迹最多只能学习3条");
            return false;
        }
        f.o("开始挡位学习:" + gear.gearName);
        this.x = new GearPose();
        this.x.gear = gear.gear;
        this.E = SystemClock.elapsedRealtime();
        i0.m("sheep_gear_offset", null);
        f.o("开始学习档位，清空档位偏移参数");
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public Gear l(long j, boolean z, Gear gear, int i, int i2) {
        float f2;
        float f3;
        int[] iArr;
        float fC = d.c((float) (this.f5652f - this.c));
        float fC2 = d.c((float) (this.f5651e - this.b));
        float fC3 = d.c((float) (this.f5650d - this.f5649a));
        if (this.J) {
            this.J = false;
            GearPose gearPoseS = s(Gear.GearN);
            if (gearPoseS != null) {
                this.f5653g.setPos(gearPoseS.roll - fC, gearPoseS.pitch - fC2);
                i0.m("sheep_gear_offset", JSON.toJSONString(this.f5653g));
                f.o("设置偏移参数:" + i0.g("sheep_gear_offset", ""));
            }
            return this.A;
        }
        if (this.O) {
            x(fC, fC2, fC3);
            this.O = false;
            this.j = fC;
            this.k = fC2;
            this.l = fC3;
            this.i.setPos(fC, fC2, fC3);
            return this.A;
        }
        if (Math.abs(this.L.x) + Math.abs(this.L.y) > 0.0d) {
            this.M.setPos(fC, fC2, fC3);
            this.M.translate(this.f5653g);
            this.M.rotate(this.L, this.I, this.H);
            Pos pos = this.M;
            float f4 = (float) pos.x;
            f3 = (float) pos.y;
            f2 = f4;
        } else {
            f2 = fC;
            f3 = fC2;
        }
        GearPose gearPoseR = r(Gear.GearN);
        if (gearPoseR == null) {
            this.j = f2;
            this.k = f3;
            this.l = fC3;
            this.i.setPos(f2, f3, fC3);
            return this.A;
        }
        this.i.setPos(this.M);
        GearPose gearPoseR2 = r(Gear.Gear1);
        GearPose gearPoseR3 = r(Gear.Gear2);
        if (gearPoseR2 == null || gearPoseR3 == null) {
            this.v = 0;
        } else {
            float f5 = f2 - gearPoseR.roll;
            float fAbs = Math.abs(f5);
            float f6 = gearPoseR2.roll;
            float f7 = gearPoseR.roll;
            if ((f6 - f7) * f5 > BitmapDescriptorFactory.HUE_RED && fAbs > 5.0f) {
                this.v = 1;
            } else if (f5 * (gearPoseR3.roll - f7) <= BitmapDescriptorFactory.HUE_RED || fAbs <= 5.0f) {
                this.v = 0;
            } else {
                this.v = 2;
            }
        }
        Gear gearP = p(j, z, gear, f2, f3, this.j, this.k, i, i2);
        if (gearP != Gear.Invalid) {
            int i3 = 0;
            while (true) {
                iArr = this.r;
                if (i3 >= iArr.length) {
                    break;
                }
                if (gearP.gear == i3) {
                    iArr[i3] = iArr[i3] + 1;
                } else {
                    iArr[i3] = 0;
                }
                i3++;
            }
            if (iArr[gearP.gear] < 3) {
                gearP = Gear.Invalid;
            }
        }
        if (gearP != Gear.Invalid) {
            this.u = true;
        }
        if (!this.u) {
            return this.A;
        }
        this.A = gearP;
        return gearP;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public boolean m() {
        return this.x == null;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public String n() {
        if (this.x != null) {
            return "当前在档位学习，不能标定";
        }
        i0.m("sheep_gear_data", null);
        i0.m("sheep_gear_offset", null);
        i0.j("sheep_gear_angle", 1000.0f);
        i0.j("sheep_gear_angle_calibrate_1", 1000.0f);
        y();
        this.E = SystemClock.elapsedRealtime();
        this.z.clear();
        this.y = true;
        return AppUtils.l() ? "请在2档和3档之间来回挂档，完成标定" : "请在3档和4档之间来回挂档，完成标定";
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public void o(double d2, double d3, double d4, double d5, double d6, double d7) {
        v();
        this.c = d2;
        this.b = d3;
        this.f5649a = d4;
        this.f5652f = d5;
        this.f5651e = d6;
        this.f5650d = d7;
        if (this.y) {
            Pos pos = new Pos(E(d.c((float) (this.f5652f - this.c))), E(d.c((float) (this.f5651e - this.b))));
            if (this.z.size() == 0) {
                this.z.add(pos);
                f.o("校准时插入:" + pos.x + "," + pos.y);
            } else {
                List<Pos> list = this.z;
                if (pos.distanceTo(list.get(list.size() - 1)) > 5.0d) {
                    this.z.add(pos);
                    f.o("校准时插入:" + pos.x + "," + pos.y);
                }
            }
            Log.e("Cos", "size=" + this.z.size());
            if (SystemClock.elapsedRealtime() - this.E > SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US || this.z.size() > 40) {
                C();
                TtsManager.r("标定完成", TtsGrade.GlobalTip);
                return;
            }
            return;
        }
        if (this.K) {
            Pos pos2 = new Pos(E(d.c((float) (this.f5652f - this.c))), E(d.c((float) (this.f5651e - this.b))));
            if (this.z.size() == 0) {
                this.z.add(pos2);
                f.o("校准时插入:" + pos2.x + "," + pos2.y);
            } else {
                List<Pos> list2 = this.z;
                if (pos2.distanceTo(list2.get(list2.size() - 1)) > 5.0d) {
                    this.z.add(pos2);
                    f.o("校准时插入:" + pos2.x + "," + pos2.y);
                }
            }
            Log.e("Cos", "size=" + this.z.size());
            if (SystemClock.elapsedRealtime() - this.E > SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US || this.z.size() > 40) {
                this.K = false;
                if (this.z.size() > 5) {
                    double dAtan = Math.atan(LineAB.calculate(this.z).f5676a);
                    i0.j("sheep_gear_angle_calibrate_1", (float) dAtan);
                    double d8 = -dAtan;
                    this.I = (float) Math.cos(d8);
                    this.H = (float) Math.sin(d8);
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
                this.z.clear();
                return;
            }
            return;
        }
        GearPose gearPose = this.x;
        if (gearPose != null) {
            float fC = d.c((float) (this.f5652f - this.c));
            float fC2 = d.c((float) (this.f5651e - this.b));
            float fC3 = d.c((float) (this.f5650d - this.f5649a));
            if (gearPose.points == null) {
                gearPose.points = new ArrayList();
            }
            double d9 = fC;
            double d10 = fC2;
            gearPose.set((float) E(d9), (float) E(d10), (float) E(fC3));
            Pos pos3 = new Pos(E(d9), E(d10));
            if (gearPose.points.size() == 0) {
                gearPose.points.add(pos3);
                f.o(gearPose.gear + "档插入:" + pos3.x + "," + pos3.y);
            } else {
                List<Pos> list3 = gearPose.points;
                if (pos3.distanceTo(list3.get(list3.size() - 1)) > 1.0d) {
                    gearPose.points.add(pos3);
                    f.o(gearPose.gear + "档插入:" + pos3.x + "," + pos3.y);
                }
            }
            int i = gearPose.gear;
            Gear gear = Gear.GearN;
            if (i == gear.gear || SystemClock.elapsedRealtime() - this.E > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                GearPose gearPoseS = s(gear);
                if ((gearPose.gear == gear.gear || (gearPoseS != null && gearPoseS.distance(fC, fC2) > 10.0f)) && q(fC, fC2, this.m, this.n) < 0.3d) {
                    this.w++;
                } else {
                    this.w = 0;
                }
                if (this.w >= 20) {
                    D(gearPose);
                }
            }
            this.m = fC;
            this.n = fC2;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.gearsensor.i
    public void stop() {
        D(this.x);
    }

    public boolean v() {
        if (this.D) {
            return true;
        }
        this.f5654h = true;
        this.D = true;
        return y();
    }
}
