package cn.mucang.android.jiakaoyi.signal.center.model;

import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveSenorInfo;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes3.dex */
public class CarModel {
    public static final float Y;
    public float D;
    public float E;
    public ReceiveSenorInfo G;
    public int H;
    public int I;
    public boolean J;
    public float K;
    public long L;
    public byte M;
    public float N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public float S;
    public float T;
    public float U;
    public float V;
    public float W;
    public float X;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5265a;
    public float b;
    public float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5266d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5267e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5268f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f5269g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f5270h;
    public int i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean n;
    public boolean o;
    public float q;
    public int r;
    public Gear u;
    public Gear v;
    public float w;
    public Gear m = Gear.GearP;
    public KeyState p = KeyState.None;
    public boolean s = false;
    public Gear t = Gear.Invalid;
    public int x = 0;
    public int y = 0;
    public int z = 0;
    public long A = 0;
    public float B = BitmapDescriptorFactory.HUE_RED;
    public float C = BitmapDescriptorFactory.HUE_RED;
    public Direction F = Direction.None;

    public enum Direction {
        Forward(1, "前进"),
        Back(2, "后退"),
        Stop(0, "停止"),
        None(-1, "停止");

        public final int direction;
        public final String directionName;

        Direction(int i, String str) {
            this.direction = i;
            this.directionName = str;
        }

        public static Direction parse(int i) {
            Direction direction = Forward;
            if (i == direction.direction) {
                return direction;
            }
            Direction direction2 = Back;
            if (i == direction2.direction) {
                return direction2;
            }
            Direction direction3 = Stop;
            return i == direction3.direction ? direction3 : None;
        }

        public boolean isBack() {
            return this == Back;
        }

        public boolean isForward() {
            return this == Forward;
        }

        public boolean isNotBack() {
            return this == Forward || this == Stop;
        }

        public boolean isNotStop() {
            return this == Forward || this == Back;
        }

        public boolean isStop() {
            return this == Stop;
        }
    }

    static {
        if (AppUtils.l() || AppUtils.b()) {
            Y = 0.25f;
        } else {
            Y = 0.11f;
        }
    }

    public static void a(CarModel carModel, CarModel carModel2) {
        carModel.f5265a = carModel2.f5265a;
        carModel.b = carModel2.b;
        carModel.f5266d = carModel2.f5266d;
        carModel.f5267e = carModel2.f5267e;
        carModel.f5268f = carModel2.f5268f;
        carModel.s = carModel2.s;
        carModel.f5269g = carModel2.f5269g;
        carModel.i = carModel2.i;
        carModel.j = carModel2.j;
        carModel.l = carModel2.l;
        carModel.m = carModel2.m;
        carModel.t = carModel2.t;
        carModel.u = carModel2.u;
        carModel.p = carModel2.p;
        carModel.B = carModel2.B;
        carModel.C = carModel2.C;
        carModel.D = carModel2.D;
        carModel.E = carModel2.E;
        carModel.w = carModel2.w;
        carModel.x = carModel2.x;
        carModel.y = carModel2.y;
        carModel.z = carModel2.z;
        carModel.A = carModel2.A;
        carModel.q = carModel2.q;
        carModel.k = carModel2.k;
        carModel.F = carModel2.F;
        carModel.c = carModel2.c;
        carModel.H = carModel2.H;
        carModel.I = carModel2.I;
        carModel.r = carModel2.r;
        carModel.G = carModel2.G;
        carModel.L = carModel2.L;
        carModel.J = carModel2.J;
        carModel.M = carModel2.M;
        carModel.n = carModel2.n;
        carModel.o = carModel2.o;
        carModel.N = carModel2.N;
        carModel.K = carModel2.K;
        carModel.v = carModel2.v;
        carModel.O = carModel2.O;
        carModel.P = carModel2.P;
        carModel.Q = carModel2.Q;
        carModel.R = carModel2.R;
        carModel.S = carModel2.S;
        carModel.U = carModel2.U;
        carModel.T = carModel2.T;
        carModel.V = carModel2.V;
        carModel.X = carModel2.X;
        carModel.W = carModel2.W;
        carModel.f5270h = a.a().d(carModel);
    }

    public boolean b() {
        double d2 = this.b;
        float f2 = Y;
        return d2 >= ((double) f2) * 2.5d || ((double) this.c) >= ((double) f2) * 2.5d;
    }

    public boolean c() {
        if (AppUtils.g()) {
            return this.b > Y;
        }
        float f2 = this.b;
        float f3 = Y;
        return f2 > f3 || this.c > f3;
    }

    public boolean d() {
        ReceiveSenorInfo receiveSenorInfo = this.G;
        return receiveSenorInfo != null && receiveSenorInfo.safeBoardBrakeState == CarBrakeState.STATE_BRAKE;
    }

    public boolean e() {
        ReceiveSenorInfo receiveSenorInfo = this.G;
        if (receiveSenorInfo == null) {
            return false;
        }
        return receiveSenorInfo.diState[0];
    }

    public boolean f() {
        return this.f5270h;
    }

    public boolean g() {
        boolean[] zArr;
        ReceiveSenorInfo receiveSenorInfo = this.G;
        if (receiveSenorInfo == null || (zArr = receiveSenorInfo.collectBoardOutState) == null || zArr.length <= 0) {
            return false;
        }
        return !zArr[0];
    }

    public boolean h() {
        return this.M == 3;
    }

    public boolean i() {
        return Math.abs(this.r) < 10;
    }

    public boolean j(Light light) {
        return cn.mucang.android.jiakaoyi.signal.d.j.a.d(this.x, light.lightId);
    }

    public boolean k() {
        return this.M == 1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("CarModel{rpm=");
        sb.append(this.f5265a);
        sb.append(", speed=");
        sb.append(this.b);
        sb.append(", gpsSpeed=");
        sb.append(this.c);
        sb.append(", isSeatBeltOn=");
        sb.append(this.f5266d);
        sb.append(", isClutchStepOn=");
        sb.append(this.f5267e);
        sb.append(", isHandbrakeOpen=");
        sb.append(this.f5268f);
        sb.append(", isFootBrakeOn=");
        sb.append(this.f5269g);
        sb.append(", isEngineStart=");
        sb.append(this.f5270h);
        sb.append(", throttleValue=");
        sb.append(this.i);
        sb.append(", isDoorClose=");
        sb.append(this.j);
        sb.append(", isKongDang=");
        sb.append(this.k);
        sb.append(", isHonk=");
        sb.append(this.l);
        sb.append(", gear=");
        sb.append(this.m);
        sb.append(", wiper=");
        sb.append(this.n);
        sb.append(", gyroscope=");
        sb.append(this.o);
        sb.append(", keyState=");
        sb.append(this.p);
        sb.append(", wheelAngel=");
        sb.append(this.q);
        sb.append(", wheelDegree=");
        sb.append(this.r);
        sb.append(", fingerPrint=");
        sb.append(this.s);
        sb.append(", originGear=");
        sb.append(this.t);
        sb.append(", externalGear=");
        sb.append(this.u);
        sb.append(", sourceExtGear=");
        sb.append(this.v);
        sb.append(", originGyro=");
        sb.append(this.w);
        sb.append(", lightState=");
        sb.append(this.x);
        sb.append(", aroundCarSensor=");
        sb.append(this.y);
        sb.append(", touchSensor=");
        sb.append(this.z);
        sb.append(", extensions=");
        sb.append(this.A);
        sb.append(", totalDistance=");
        sb.append(this.B);
        sb.append(", estimateTotalDistance=");
        sb.append(this.C);
        sb.append(", gyroAngel=");
        sb.append(this.D);
        sb.append(", gyroSensorAngel=");
        sb.append(this.E);
        sb.append(", direction=");
        sb.append(this.F);
        sb.append(", senorInfo=");
        ReceiveSenorInfo receiveSenorInfo = this.G;
        sb.append(receiveSenorInfo != null ? receiveSenorInfo.toString() : "");
        sb.append(", footBrakeTravel=");
        sb.append(this.H);
        sb.append(", clutchTravel=");
        sb.append(this.I);
        sb.append(", keyStarting=");
        sb.append(this.J);
        sb.append(", time=");
        sb.append(this.L);
        sb.append(", sourceFrom=");
        sb.append((int) this.M);
        sb.append(", voltage=");
        sb.append(this.N);
        sb.append(", pressure=");
        sb.append(this.K);
        sb.append(", oilAmount=");
        sb.append(this.P);
        sb.append(", remainDriveMileage=");
        sb.append(this.Q);
        sb.append(", totalDriveMileage=");
        sb.append(this.R);
        sb.append(", moduleStatus=");
        sb.append(this.O);
        sb.append('}');
        return sb.toString();
    }
}
