package cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Pos f3698a;
    private boolean b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CarModel.Direction f3699d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3700e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f3701f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3702g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Pos f3703h;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3704a;

        static {
            int[] iArr = new int[CarModel.Direction.values().length];
            f3704a = iArr;
            try {
                iArr[CarModel.Direction.Forward.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3704a[CarModel.Direction.Back.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3704a[CarModel.Direction.Stop.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3704a[CarModel.Direction.None.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public d() {
        this(true);
    }

    public double a(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (!eVar.d().h()) {
            return this.f3701f;
        }
        CarModel carModelD = eVar.d();
        CarPos carPosC = eVar.c();
        Pos pos = carPosC.center;
        if (pos == null) {
            return 0.0d;
        }
        double dModel = this.f3703h.model();
        if (dModel < 1.0E-5d) {
            this.f3703h.setPos(pos);
            return this.f3701f;
        }
        double dDistanceTo = this.f3703h.distanceTo(pos);
        if (dDistanceTo < 1.0E-6d) {
            return this.f3701f;
        }
        if (!((AppUtils.n() && eVar.getCurrentPosition().b()) || eVar.getCurrentPosition().c())) {
            b();
            return this.f3701f;
        }
        if (dDistanceTo > 100.0d) {
            b();
            this.f3703h.setPos(pos);
            return this.f3701f;
        }
        this.f3701f = 0.0d;
        this.f3702g = false;
        double dDot = carPosC.back.vectorTo(carPosC.front).dot(this.f3703h.vectorTo(pos));
        boolean z = dDistanceTo >= 2.0d && dModel > 0.0d && dDot < 0.0d;
        boolean z2 = dDistanceTo >= 2.0d && dModel > 0.0d && dDot > 0.0d;
        if (dDistanceTo < 2.0d) {
            this.f3699d = CarModel.Direction.Stop;
        } else if (z) {
            this.f3699d = CarModel.Direction.Back;
        } else if (!z2) {
            this.f3699d = CarModel.Direction.None;
        } else if (this.f3699d == CarModel.Direction.Back) {
            this.f3699d = CarModel.Direction.Stop;
        } else {
            this.f3699d = CarModel.Direction.Forward;
        }
        int i = a.f3704a[this.f3699d.ordinal()];
        if (i == 1) {
            int i2 = this.f3700e + 1;
            this.f3700e = i2;
            if (i2 >= 2) {
                this.b = false;
            }
            this.f3698a = null;
        } else if (i == 2) {
            if (carModelD.m != Gear.GearBack) {
                this.b = true;
                if (this.f3698a == null) {
                    this.f3698a = new Pos(pos);
                    f.o("后溜开始点：" + this.f3698a.toString());
                }
            } else {
                Pos pos2 = this.f3698a;
                if (pos2 != null) {
                    this.f3701f = Math.max(0.0d, pos.distanceTo(pos2));
                }
                this.b = false;
                this.f3698a = null;
            }
            if (this.b && !this.c) {
                this.f3701f = Math.max(0.0d, pos.distanceTo(this.f3698a));
            }
            this.f3700e = 0;
        } else if (i == 3) {
            if (this.b && this.c && this.f3698a != null) {
                double dDot2 = carPosC.back.vectorTo(carPosC.front).dot(this.f3698a.vectorTo(pos));
                double dMax = Math.max(0.0d, pos.distanceTo(this.f3698a));
                if (dDot2 < 0.0d) {
                    this.f3701f = dMax;
                    f.o("移动距离：" + dMax + ",结束点：" + pos.toString() + "; 判定为后溜");
                } else {
                    f.o("移动距离：" + dMax + ",结束点：" + pos.toString() + "; 判定为前进");
                }
            }
            if (this.c) {
                b();
                this.f3702g = true;
            }
        } else if (i == 4) {
            b();
        }
        this.f3703h.setPos(pos);
        double d2 = this.f3701f;
        if (this.f3702g) {
            this.f3701f = 0.0d;
        }
        return d2;
    }

    public void b() {
        this.b = false;
        this.f3698a = null;
        this.f3700e = 0;
    }

    public d(boolean z) {
        this.b = false;
        this.f3703h = new Pos();
        this.c = z;
        this.f3699d = CarModel.Direction.None;
        this.f3700e = 0;
        this.f3701f = 0.0d;
    }
}
