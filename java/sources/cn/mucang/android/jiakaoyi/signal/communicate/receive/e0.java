package cn.mucang.android.jiakaoyi.signal.communicate.receive;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeDesc;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeSource;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeState;
import cn.mucang.android.jiakaoyi.signal.center.model.CarClutchState;
import cn.mucang.android.jiakaoyi.signal.center.model.CarFlameoutSource;
import cn.mucang.android.jiakaoyi.signal.center.model.CarThrottleState;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes3.dex */
public class e0 extends l {
    public static int r0 = -999999999;
    private static Gear t0;
    private static Gear u0;
    private static boolean v0;
    private static float w0;
    public boolean A;
    public long B;
    public final int C;
    public int D;
    public final int E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public float J;
    public int K;
    public int L;
    public float[] M;
    public boolean[] N;
    public float[] O;
    public int[] P;
    public boolean[] Q;
    public CarBrakeState R;
    public CarClutchState S;
    public CarBrakeSource T;
    public CarFlameoutSource U;
    public CarThrottleState V;
    public int W;
    public int X;
    public int Y;
    public int Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f5416a;
    public int a0;
    public float b;
    public int b0;
    public float c;
    public int c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f5417d;
    public int d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f5418e;
    public boolean e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f5419f;
    public float f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f5420g;
    public boolean g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f5421h;
    public boolean[] h0;
    public final KeyState i;
    public boolean[] i0;
    public final Gear j;
    public CarBrakeDesc j0;
    public Gear k;
    public int k0;
    public Gear l;
    public int l0;
    public final boolean m;
    public int m0;
    public final boolean n;
    public int n0;
    public final boolean o;
    public int o0;
    public final boolean p;
    public boolean p0;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public final boolean u;
    public final boolean v;
    public final boolean w;
    public final boolean x;
    public final boolean y;
    public final boolean z;
    private static final cn.mucang.android.jiakaoyi.signal.communicate.utils.c q0 = new cn.mucang.android.jiakaoyi.signal.communicate.utils.c();
    private static final float s0 = (float) Math.toRadians(0.06103701889514923d);

    static {
        Gear gear = Gear.Invalid;
        t0 = gear;
        u0 = gear;
        v0 = false;
        w0 = BitmapDescriptorFactory.HUE_RED;
    }

    public e0(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar, cn.mucang.android.jiakaoyi.signal.d.h hVar) {
        Gear gear;
        int i2;
        super(i, rVar);
        this.B = 0L;
        this.M = new float[4];
        this.N = new boolean[4];
        this.O = new float[10];
        this.P = new int[4];
        this.Q = new boolean[12];
        this.R = CarBrakeState.STATE_NONE;
        this.S = CarClutchState.CLUTCH_NONE;
        this.T = CarBrakeSource.BRAKE_SOURCE_NONE;
        this.U = CarFlameoutSource.FLAMEOUT_SOURCE_NONE;
        this.V = CarThrottleState.STATE_NONE;
        this.g0 = true;
        this.h0 = new boolean[5];
        this.i0 = new boolean[4];
        this.j0 = CarBrakeDesc.DESC_NONE;
        rVar.j();
        float fI = rVar.i();
        this.f5416a = fI;
        rVar.l();
        rVar.l();
        rVar.l();
        rVar.l();
        rVar.l();
        rVar.l();
        rVar.l();
        rVar.l();
        rVar.l();
        int iL = rVar.l();
        if (iL == 65535) {
            this.f5421h = r0;
        } else {
            this.f5421h = iL;
        }
        this.b = (float) ((((double) (iL - 18000)) * 1.0d) / 100.0d);
        this.c = (float) ((((double) (rVar.l() - 18000)) * 1.0d) / 100.0d);
        this.f5417d = (float) ((((double) (rVar.l() - 18000)) * 1.0d) / 100.0d);
        byte bE = rVar.e();
        this.i = KeyState.parse(cn.mucang.android.jiakaoyi.signal.communicate.utils.a.d(bE, true));
        Gear gear2 = Gear.parse(cn.mucang.android.jiakaoyi.signal.communicate.utils.a.d(bE, false));
        this.j = gear2;
        byte bE2 = rVar.e();
        boolean zC = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE2, 0);
        this.m = zC;
        this.n = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE2, 1);
        this.o = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE2, 2);
        this.p = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE2, 3);
        this.q = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE2, 4);
        this.r = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE2, 5);
        this.s = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE2, 6);
        this.t = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE2, 7);
        byte bE3 = rVar.e();
        cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE3, 0);
        this.u = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE3, 1);
        this.v = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE3, 2);
        this.w = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE3, 3);
        this.x = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE3, 4);
        this.y = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE3, 5);
        this.z = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE3, 6);
        this.A = !cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE3, 7);
        byte bE4 = rVar.e();
        cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE4, 0);
        cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE4, 1);
        cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE4, 2);
        cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE4, 3);
        this.B = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.a(bE4, 4, 7, this.B, 1);
        this.B = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.a(rVar.e(), 0, 7, this.B, 5);
        int iO = rVar.o();
        if (iO == 255) {
            this.D = r0;
        } else {
            float f2 = hVar.f5556a;
            if (iO > 10) {
                this.D = (int) (iO * f2);
            } else {
                this.D = iO;
            }
        }
        this.D = (int) q0.a(this.D, fI);
        int iL2 = rVar.l();
        if (iL2 == 65535) {
            this.C = r0;
        } else {
            float f3 = hVar.b;
            if (iL2 > 10) {
                this.C = (int) (iL2 * f3);
            } else {
                this.C = iL2;
            }
        }
        int iO2 = rVar.o();
        if (iO2 == 255) {
            this.E = r0;
        } else {
            this.E = iO2;
        }
        int iO3 = rVar.o();
        if (iO3 == 255) {
            this.F = r0;
        } else {
            this.F = iO3;
        }
        Gear gear3 = Gear.parse(rVar.o());
        this.k = gear3;
        if (gear3.isValid()) {
            this.p0 = true;
        }
        this.B = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.a(rVar.e(), 0, 7, this.B, 13);
        this.B = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.a(rVar.e(), 0, 7, this.B, 21);
        this.B = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.a(rVar.e(), 0, 7, this.B, 29);
        this.G = rVar.o();
        rVar.o();
        this.H = rVar.o();
        if (hVar.c) {
            this.I = rVar.j() - 720;
        } else {
            short sM = rVar.m();
            rVar.l();
            if (hVar.f5561h) {
                this.I = sM - 720;
            } else {
                this.I = sM - 18000;
            }
        }
        if (hVar.f5557d && !hVar.f5560g) {
            int iL3 = rVar.l();
            if (iL3 == 65535) {
                this.J = r0;
            } else {
                this.J = iL3;
            }
            this.f5418e = (float) ((((double) (iL3 - 18000)) * 1.0d) / 100.0d);
            this.f5419f = (float) ((((double) (rVar.l() - 18000)) * 1.0d) / 100.0d);
            this.f5420g = (float) ((((double) (rVar.l() - 18000)) * 1.0d) / 100.0d);
            if (cn.mucang.android.jiakaoyi.signal.utils.f.c()) {
                this.p0 = true;
            }
            this.K = rVar.o();
            this.L = rVar.o();
            int i3 = 0;
            while (true) {
                float[] fArr = this.M;
                if (i3 >= fArr.length) {
                    break;
                }
                fArr[i3] = rVar.l() * 0.01f;
                i3++;
            }
            byte bE5 = rVar.e();
            int i4 = 0;
            while (true) {
                boolean[] zArr = this.N;
                if (i4 >= zArr.length) {
                    break;
                }
                zArr[i4] = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE5, i4);
                i4++;
            }
            int i5 = 0;
            while (true) {
                float[] fArr2 = this.O;
                if (i5 >= fArr2.length) {
                    break;
                }
                fArr2[i5] = rVar.l() * 0.01f;
                i5++;
            }
            int i6 = 0;
            while (true) {
                int[] iArr = this.P;
                if (i6 >= iArr.length) {
                    break;
                }
                iArr[i6] = rVar.l();
                i6++;
            }
            byte bE6 = rVar.e();
            int i7 = 0;
            while (true) {
                if (i7 >= 8) {
                    break;
                }
                this.Q[i7] = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE6, i7);
                i7++;
            }
            byte bE7 = rVar.e();
            for (i2 = 8; i2 < 12; i2++) {
                this.Q[i2] = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE7, i2 - 8);
            }
            this.R = CarBrakeState.parse(rVar.o());
            this.S = CarClutchState.parse(rVar.o());
            this.T = CarBrakeSource.parse(rVar.o());
            this.V = CarThrottleState.parse(rVar.o());
            this.W = rVar.j();
            this.X = rVar.j();
            this.Y = rVar.j();
            this.Z = rVar.j();
            this.a0 = rVar.j();
            this.b0 = rVar.j();
            this.c0 = rVar.j();
            this.d0 = rVar.j();
            if (hasByte(rVar)) {
                this.e0 = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(rVar.e(), 0);
            }
            if (hasByte(rVar)) {
                this.f0 = rVar.o() * 0.1f;
                return;
            }
            return;
        }
        rVar.o();
        this.p0 = hVar.f5559f && this.p0;
        Gear gear4 = this.k;
        if (rVar.c() - rVar.d() >= 24) {
            rVar.l();
            rVar.l();
            rVar.l();
            rVar.l();
            rVar.l();
            rVar.l();
            rVar.l();
            rVar.l();
            rVar.l();
            short sL = (short) rVar.l();
            short sL2 = (short) rVar.l();
            short sL3 = (short) rVar.l();
            float f4 = (float) ((((double) ((sL & 65535) - 18000)) * 1.0d) / 100.0d);
            this.f5418e = f4;
            this.f5419f = (float) ((((double) ((sL2 & 65535) - 18000)) * 1.0d) / 100.0d);
            this.f5420g = (float) ((((double) ((sL3 & 65535) - 18000)) * 1.0d) / 100.0d);
            if (Math.abs(f4) + Math.abs(this.f5419f) + Math.abs(this.f5420g) > 1.0E-6d) {
                float f5 = fI * (-0.004f);
                float f6 = fI * (-0.004f);
                float f7 = this.b;
                if (f7 > BitmapDescriptorFactory.HUE_RED) {
                    this.b = f7 + f6;
                } else {
                    this.b = f7 + f5;
                }
                float f8 = this.f5418e;
                if (f8 > BitmapDescriptorFactory.HUE_RED) {
                    this.f5418e = f8 + f6;
                } else {
                    this.f5418e = f8 + f5;
                }
                this.b = ((int) (this.b * 10.0f)) / 10.0f;
                this.f5418e = ((int) (this.f5418e * 10.0f)) / 10.0f;
                if (MucangConfig.v() && w0 == BitmapDescriptorFactory.HUE_RED) {
                    w0 = this.b;
                }
                if (cn.mucang.android.jiakaoyi.signal.utils.f.b()) {
                    cn.mucang.android.jiakaoyi.signal.gearsensor.d.f(this.f5417d, this.c, this.b, this.f5420g, this.f5419f, this.f5418e);
                    this.k = cn.mucang.android.jiakaoyi.signal.gearsensor.d.j(this.B, zC, gear2, this.C, this.D);
                    gear = gear2;
                } else {
                    gear = gear2;
                    cn.mucang.android.jiakaoyi.signal.gearsensor.h.J(this.f5417d, this.c, this.b, this.f5420g, this.f5419f, this.f5418e);
                    this.k = cn.mucang.android.jiakaoyi.signal.gearsensor.h.V(this.B, zC, gear, this.C, this.D);
                }
                this.p0 = true;
                if (!v0 && gear4.isValid()) {
                    v0 = true;
                }
                if (v0 && ((gear4 != t0 || u0 != this.k) && gear4 != this.k)) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("档位不一致:固件=" + gear4.gearName + ",app=" + this.k.gearName + ",obdGear=" + gear.gearName + ",信任固件:" + cn.mucang.android.jiakaoyi.signal.gearsensor.h.U() + ",speed=" + this.D + ",rpm=" + this.C);
                }
                t0 = gear4;
                u0 = this.k;
            }
        } else {
            this.f5418e = BitmapDescriptorFactory.HUE_RED;
            this.f5419f = BitmapDescriptorFactory.HUE_RED;
            this.f5420g = BitmapDescriptorFactory.HUE_RED;
        }
        if (cn.mucang.android.jiakaoyi.signal.gearsensor.h.U()) {
            this.p0 = true;
            this.k = gear4;
        }
        if (hasByte(rVar)) {
            this.e0 = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(rVar.e(), 0);
        }
        if (hasByte(rVar)) {
            this.f0 = rVar.o() * 0.1f;
        }
        if (hasByte(rVar)) {
            this.g0 = !cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(rVar.e(), 1);
        }
        if (rVar.b()) {
            byte bE8 = rVar.e();
            int i8 = 0;
            while (true) {
                boolean[] zArr2 = this.h0;
                if (i8 >= zArr2.length) {
                    break;
                }
                zArr2[i8] = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE8, i8);
                i8++;
            }
        }
        if (rVar.b()) {
            this.j0 = CarBrakeDesc.parse(rVar.o());
        }
        if (rVar.b()) {
            this.k0 = rVar.o();
        }
        if (rVar.b()) {
            this.R = CarBrakeState.parse(rVar.o());
        }
        if (rVar.b()) {
            this.T = CarBrakeSource.parse(rVar.o());
        }
    }

    public static ReceiveSenorInfo a(e0 e0Var) {
        ReceiveSenorInfo receiveSenorInfo = new ReceiveSenorInfo();
        receiveSenorInfo.collectBoardAd = e0Var.O;
        receiveSenorInfo.collectBoardOutState = e0Var.Q;
        receiveSenorInfo.collectBoardPwm = e0Var.P;
        receiveSenorInfo.collectBoardState = e0Var.X;
        receiveSenorInfo.diState = e0Var.N;
        receiveSenorInfo.gearBoardState = e0Var.d0;
        receiveSenorInfo.mainBoardAd = e0Var.M;
        receiveSenorInfo.mainBoardState = e0Var.W;
        receiveSenorInfo.microwaveState = e0Var.a0;
        receiveSenorInfo.originGyro2 = e0Var.J;
        float f2 = e0Var.f5419f;
        receiveSenorInfo.pitch2 = f2;
        receiveSenorInfo.rearMirrorAdjust = e0Var.K;
        receiveSenorInfo.rearMirrorAdjustDir = e0Var.L;
        receiveSenorInfo.roll2 = f2;
        receiveSenorInfo.safeBoardBrakeState = e0Var.R;
        receiveSenorInfo.safeBoardState = e0Var.b0;
        receiveSenorInfo.safeModuleBrakeReason = e0Var.T;
        receiveSenorInfo.safeModuleClutchState = e0Var.S;
        receiveSenorInfo.throttleBoardState = e0Var.c0;
        receiveSenorInfo.throttleState = e0Var.V;
        receiveSenorInfo.ultrasonic1State = e0Var.Y;
        receiveSenorInfo.ultrasonic2State = e0Var.Z;
        receiveSenorInfo.yaw2 = f2;
        receiveSenorInfo.brakeDesc = e0Var.j0;
        receiveSenorInfo.carFlameoutSource = e0Var.U;
        return receiveSenorInfo;
    }

    public e0(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar, boolean z, cn.mucang.android.jiakaoyi.signal.d.h hVar) {
        int i2;
        super(i, rVar);
        this.B = 0L;
        this.M = new float[4];
        this.N = new boolean[4];
        this.O = new float[10];
        this.P = new int[4];
        this.Q = new boolean[12];
        this.R = CarBrakeState.STATE_NONE;
        this.S = CarClutchState.CLUTCH_NONE;
        this.T = CarBrakeSource.BRAKE_SOURCE_NONE;
        this.U = CarFlameoutSource.FLAMEOUT_SOURCE_NONE;
        this.V = CarThrottleState.STATE_NONE;
        this.g0 = true;
        this.h0 = new boolean[5];
        this.i0 = new boolean[4];
        this.j0 = CarBrakeDesc.DESC_NONE;
        this.f5416a = BitmapDescriptorFactory.HUE_RED;
        rVar.l();
        rVar.l();
        rVar.l();
        rVar.l();
        rVar.l();
        rVar.l();
        rVar.l();
        rVar.l();
        rVar.l();
        int iN = rVar.n();
        if (iN == 65535) {
            this.f5421h = r0;
        } else {
            this.f5421h = iN;
        }
        this.b = (float) ((((double) iN) * 1.0d) / 100.0d);
        this.c = (float) ((((double) rVar.n()) * 1.0d) / 100.0d);
        this.f5417d = (float) ((((double) rVar.n()) * 1.0d) / 100.0d);
        byte bE = rVar.e();
        this.i = KeyState.parse(cn.mucang.android.jiakaoyi.signal.communicate.utils.a.d(bE, true));
        int i3 = 0;
        Gear gear = Gear.parse(cn.mucang.android.jiakaoyi.signal.communicate.utils.a.d(bE, false));
        this.j = gear;
        if (cn.mucang.android.jiakaoyi.signal.utils.f.c()) {
            this.p0 = true;
            this.k = gear;
        }
        byte bE2 = rVar.e();
        this.m = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE2, 0);
        this.n = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE2, 1);
        this.o = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE2, 2);
        this.p = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE2, 3);
        this.q = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE2, 4);
        this.r = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE2, 5);
        this.s = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE2, 6);
        this.t = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE2, 7);
        byte bE3 = rVar.e();
        cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE3, 0);
        this.u = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE3, 1);
        this.v = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE3, 2);
        this.w = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE3, 3);
        this.x = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE3, 4);
        this.y = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE3, 5);
        this.z = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE3, 6);
        this.A = !cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE3, 7);
        byte bE4 = rVar.e();
        cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE4, 0);
        cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE4, 1);
        cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE4, 2);
        cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE4, 3);
        this.B = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.a(bE4, 4, 7, this.B, 1);
        this.B = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.a(rVar.e(), 0, 7, this.B, 5);
        int iO = rVar.o();
        if (iO == 255) {
            this.D = r0;
        } else {
            float f2 = hVar.f5556a;
            if (iO > 10) {
                this.D = (int) (iO * f2);
            } else {
                this.D = iO;
            }
        }
        this.D = (int) q0.a(this.D, BitmapDescriptorFactory.HUE_RED);
        int iL = rVar.l();
        if (iL == 65535) {
            this.C = r0;
        } else {
            float f3 = hVar.b;
            if (iL > 10) {
                this.C = (int) (iL * f3);
            } else {
                this.C = iL;
            }
        }
        int iO2 = rVar.o();
        if (iO2 == 255) {
            this.E = r0;
        } else {
            this.E = iO2;
        }
        this.F = r0;
        this.B = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.a(rVar.e(), 0, 7, this.B, 13);
        this.B = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.a(rVar.e(), 0, 7, this.B, 21);
        this.B = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.a(rVar.e(), 0, 7, this.B, 29);
        this.G = rVar.o();
        this.H = rVar.o();
        if (hVar.f5558e && !hVar.c && hVar.f5557d) {
            short sM = rVar.m();
            rVar.l();
            this.I = sM - 720;
        } else {
            int iJ = rVar.j();
            if (hVar.c) {
                this.I = iJ - 720;
            } else {
                this.I = r0;
            }
        }
        int iN2 = rVar.n();
        if (iN2 == 65535) {
            this.J = r0;
        } else {
            this.J = iN2;
        }
        this.f5418e = (float) ((((double) iN2) * 1.0d) / 100.0d);
        this.f5419f = (float) ((((double) rVar.n()) * 1.0d) / 100.0d);
        this.f5420g = (float) ((((double) rVar.n()) * 1.0d) / 100.0d);
        this.K = rVar.o();
        this.L = rVar.o();
        int i4 = 0;
        while (true) {
            float[] fArr = this.M;
            if (i4 >= fArr.length) {
                break;
            }
            fArr[i4] = rVar.l() * 0.01f;
            i4++;
        }
        byte bE5 = rVar.e();
        int i5 = 0;
        while (true) {
            boolean[] zArr = this.N;
            if (i5 >= zArr.length) {
                break;
            }
            zArr[i5] = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE5, i5);
            i5++;
        }
        int i6 = 0;
        while (true) {
            float[] fArr2 = this.O;
            if (i6 >= fArr2.length) {
                break;
            }
            fArr2[i6] = rVar.l() * 0.01f;
            i6++;
        }
        int i7 = 0;
        while (true) {
            int[] iArr = this.P;
            if (i7 >= iArr.length) {
                break;
            }
            iArr[i7] = rVar.l();
            i7++;
        }
        byte bE6 = rVar.e();
        int i8 = 0;
        while (true) {
            if (i8 >= 8) {
                break;
            }
            this.Q[i8] = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE6, i8);
            i8++;
        }
        byte bE7 = rVar.e();
        for (i2 = 8; i2 < 12; i2++) {
            this.Q[i2] = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE7, i2 - 8);
        }
        this.R = CarBrakeState.parse(rVar.o());
        this.S = CarClutchState.parse(rVar.o());
        this.T = CarBrakeSource.parse(rVar.o());
        this.U = CarFlameoutSource.parse(rVar.o());
        this.V = CarThrottleState.parse(rVar.o());
        this.W = rVar.j();
        this.X = rVar.j();
        this.Y = rVar.j();
        this.Z = rVar.j();
        this.a0 = rVar.j();
        this.b0 = rVar.j();
        this.c0 = rVar.j();
        this.d0 = rVar.j();
        if (hasByte(rVar)) {
            this.e0 = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(rVar.e(), 0);
        }
        if (hasByte(rVar)) {
            byte bE8 = rVar.e();
            int i9 = 0;
            while (true) {
                boolean[] zArr2 = this.h0;
                if (i9 >= zArr2.length) {
                    break;
                }
                zArr2[i9] = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE8, i9);
                i9++;
            }
        }
        if (hasByte(rVar)) {
            byte bE9 = rVar.e();
            while (true) {
                boolean[] zArr3 = this.i0;
                if (i3 >= zArr3.length) {
                    break;
                }
                zArr3[i3] = cn.mucang.android.jiakaoyi.signal.communicate.utils.a.c(bE9, i3);
                i3++;
            }
        }
        if (hasByte(rVar)) {
            this.j0 = CarBrakeDesc.parse(rVar.o());
        }
        if (hasByte(rVar)) {
            this.l = Gear.parse(rVar.e());
        }
        if (hasByte(rVar)) {
            this.l0 = rVar.o();
        }
        if (hasByte(rVar)) {
            this.m0 = rVar.o() - 40;
        }
        if (hasShort(rVar)) {
            this.n0 = rVar.l();
        }
        if (hasInt(rVar)) {
            this.o0 = rVar.j();
        }
    }
}
