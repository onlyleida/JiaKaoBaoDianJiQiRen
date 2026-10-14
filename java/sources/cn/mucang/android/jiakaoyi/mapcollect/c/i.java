package cn.mucang.android.jiakaoyi.mapcollect.c;

import android.os.SystemClock;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.framework.utils.z;
import cn.mucang.android.jiakaoyi.hpmap.car.CarData;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class i {
    private static final float G;
    private static float H;
    private cn.mucang.android.jiakaoyi.signal.pos.c A;
    private Pos B;
    private Pos C;
    private Pos D;
    private Pos E;
    private Pos F;
    private final long n;
    public final CarData o;
    public final cn.mucang.android.jiakaoyi.signal.i.a p;
    private float r;
    private cn.mucang.android.jiakaoyi.mapcollect.c.l.a u;
    private Pos v;
    private Pos w;
    private Pos x;
    private Pos y;
    private Pos z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.center.model.d> f4716a = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.mapcollect.c.c
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            this.f4704a.e((cn.mucang.android.jiakaoyi.signal.center.model.d) obj);
        }
    };
    private final Gps b = new Gps();
    private final Pos c = new Pos();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Pos f4717d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f4718e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f4719f = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f4720g = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final LinkedList<CarModel.Direction> f4721h = new LinkedList<>();
    private final LinkedList<Pos> i = new LinkedList<>();
    private final Pos j = new Pos(0.0d, 0.0d);
    private float k = -1.0E7f;
    private float l = -1.0E7f;
    private float m = -1.0E7f;
    private int q = 0;
    private int s = 0;
    private final CarData.a t = new CarData.a();

    static {
        float f2 = CarModel.Y;
        G = (float) Math.cos(Math.toRadians(20.0d));
        H = 0.5f;
    }

    public i(CarData carData, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        this.o = carData;
        this.p = aVar;
        new cn.mucang.android.jiakaoyi.mapcollect.poshandle.pitch.e(4);
        new cn.mucang.android.jiakaoyi.mapcollect.poshandle.pitch.e(4);
        this.n = SystemClock.elapsedRealtime();
        this.r = BitmapDescriptorFactory.HUE_RED;
        if (AppUtils.g()) {
            H = 1.0f;
        }
    }

    private static double a(List<Pos> list) {
        if (list.size() < 4) {
            return 0.0d;
        }
        double dDistanceTo = 0.0d;
        int i = 0;
        while (i < list.size() - 1) {
            Pos pos = list.get(i);
            i++;
            dDistanceTo += pos.distanceTo(list.get(i));
        }
        if (dDistanceTo == 0.0d) {
            return 0.0d;
        }
        return 1.0d - (list.get(0).distanceTo(list.get(list.size() - 1)) / dDistanceTo);
    }

    public static float b(Pos pos, Pos pos2) {
        return (float) Math.toDegrees(Math.atan2(pos2.z - pos.z, pos.distanceTo(pos2)));
    }

    private static boolean d(List<Pos> list) {
        if (list.size() < 4) {
            return false;
        }
        Pos posVectorTo = list.get(list.size() - 3).vectorTo(list.get(list.size() - 2));
        Pos posVectorTo2 = list.get(list.size() - 2).vectorTo(list.get(list.size() - 1));
        double dModel = posVectorTo2.model();
        if (dModel < H) {
            return true;
        }
        double dModel2 = posVectorTo.model();
        return dModel2 <= 1.0E-4d || posVectorTo.dot(posVectorTo2) / (dModel2 * dModel) < ((double) G);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(cn.mucang.android.jiakaoyi.signal.center.model.d dVar) {
        cn.mucang.android.jiakaoyi.signal.center.model.b bVar;
        Pos pos;
        Pos pos2;
        CarPos carPos;
        this.s++;
        if (this.o == null || this.p == null || dVar.d().M != 3) {
            return;
        }
        cn.mucang.android.jiakaoyi.signal.center.model.b currentPosition = dVar.getCurrentPosition();
        if (currentPosition.f5278d <= 1.0E-4d) {
            if (this.s == 5) {
                u.h("主天线到从天线的距离有问题");
                cn.mucang.android.jiakaoyi.framework.log.f.i("主天线和从天线距离有问题:" + currentPosition.f5278d);
                cn.mucang.android.jiakaoyi.framework.log.f.o("主天线和从天线距离有问题:" + currentPosition.f5278d);
                return;
            }
            return;
        }
        long j = dVar.d().L;
        long j2 = this.f4718e;
        if (j2 == 0) {
            this.f4718e = j;
            float f2 = currentPosition.f5277a;
            this.k = f2;
            this.l = f2;
            return;
        }
        if (j2 == j) {
            return;
        }
        Gps gpsFrom = Gps.from(currentPosition.f5281g);
        if ((!currentPosition.c() && !n.a()) || (Math.abs(gpsFrom.latitude - this.b.latitude) < 1.0E-12d && Math.abs(gpsFrom.longitude - this.b.longitude) < 1.0E-12d)) {
            if (!n.a()) {
                dVar.d().D = this.m;
                CarModel carModelD = dVar.d();
                float f3 = this.m;
                carModelD.w = f3;
                currentPosition.f5277a = f3;
                currentPosition.f5279e = this.r;
                this.k = f3;
                this.l = f3;
            }
            this.q = dVar.getCurrentPosition().f5282h;
            return;
        }
        double d2 = currentPosition.f5279e;
        this.b.setGps(gpsFrom);
        if (this.l == -1.0E7f) {
            this.l = currentPosition.f5277a;
        }
        if (this.f4720g != BitmapDescriptorFactory.HUE_RED) {
            if (this.f4719f == BitmapDescriptorFactory.HUE_RED) {
                this.f4719f = (float) Math.toDegrees(Math.tan(Math.toRadians(33.0d) / (((double) this.f4720g) * 7.2d)) * 25.0d);
            }
            if (Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c(currentPosition.f5277a - this.l)) > (((double) (this.f4719f * dVar.d().b)) * 2.5d) + 10.0d) {
                this.l = currentPosition.f5277a;
                return;
            }
            this.l = currentPosition.f5277a;
        }
        Pos posA = this.p.a(Gps.from(currentPosition.f5281g));
        Pos pos3 = new Pos(posA);
        double dDistanceTo = posA.distanceTo(this.c) / Math.cos(Math.toRadians(this.r));
        if (dDistanceTo > 1000.0d && dVar.d().b < 20.0f) {
            this.c.setPos(posA);
            this.f4718e = j;
            this.q = dVar.getCurrentPosition().f5282h;
            return;
        }
        this.i.addLast(posA);
        if (this.i.size() > 4) {
            this.i.removeFirst();
        }
        boolean z = dDistanceTo < ((double) H) || a(this.i) > 0.10000000149011612d || d(this.i);
        if (z) {
            Pos pos4 = this.f4717d;
            if (pos4 != null) {
                pos3.setPos(pos4);
            } else {
                Pos pos5 = this.c;
                pos3.x = (pos5.x * 0.5d) + (pos3.x * 0.5d);
                pos3.y = (pos5.y * 0.5d) + (pos3.y * 0.5d);
            }
            currentPosition.f5279e = this.r;
        } else {
            this.t.a();
            double dB = this.r;
            if (Math.abs(this.j.x) + Math.abs(this.j.y) < 1.0E-10d) {
                this.j.setPos(posA);
            }
            CarPos carPosC = dVar.c();
            if (this.j.distanceTo(posA) >= 100.0d) {
                dB = b(this.j, posA);
                Pos pos6 = carPosC.wheelLeftBack;
                if (pos6 != null && pos6.vectorTo(carPosC.wheelLeftFront).dot(posA.vectorTo(this.j)) > 0.0d) {
                    dB *= -1.0d;
                }
                this.j.setPos(posA);
            }
            double dA = cn.mucang.android.jiakaoyi.mapcollect.poshandle.pitch.d.a(dB, carPosC);
            if (Math.abs(dA) >= 30.0d) {
                dA = 0.0d;
            }
            float f4 = (float) dA;
            currentPosition.f5279e = f4;
            this.r = f4;
        }
        CarPos carPosUpdate = this.o.update(pos3, currentPosition.f5277a, currentPosition.f5279e, d2, this.t, dVar.d().r);
        currentPosition.f5277a = (float) carPosUpdate.degree;
        if (this.f4720g == BitmapDescriptorFactory.HUE_RED) {
            this.f4720g = (float) carPosUpdate.wheelLeftBack.distanceTo(carPosUpdate.wheelLeftFront);
        }
        if (this.m == -1.0E7f) {
            dVar.d().D = currentPosition.f5277a;
        } else {
            double dC = cn.mucang.android.jiakaoyi.signal.utils.d.c(currentPosition.f5277a - this.k);
            CarModel carModelD2 = dVar.d();
            carModelD2.D = (float) (((double) carModelD2.D) + dC);
            dVar.d().D = cn.mucang.android.jiakaoyi.signal.utils.d.b(dVar.d().D, currentPosition.f5277a);
        }
        currentPosition.c = Float.valueOf(dVar.d().D);
        dVar.d().w = currentPosition.f5277a;
        if (cn.mucang.android.jiakaoyi.signal.handle.gps.f.a(this.q)) {
            carPosUpdate.wheelLeftBackLast = this.w;
            carPosUpdate.wheelLeftFrontLast = this.v;
            carPosUpdate.wheelRightBackLast = this.y;
            carPosUpdate.wheelRightFrontLast = this.x;
            carPosUpdate.lastCenter = this.z;
            carPosUpdate.lastCarRect = this.A;
            Pos pos7 = this.B;
            if (pos7 != null) {
                carPosUpdate.leftMirrorOutSideLast = pos7;
            }
            Pos pos8 = this.D;
            if (pos8 != null) {
                carPosUpdate.leftMirrorInSideLast = pos8;
            }
            Pos pos9 = this.C;
            if (pos9 != null) {
                carPosUpdate.rightMirrorOutSideLast = pos9;
            }
            Pos pos10 = this.E;
            if (pos10 != null) {
                carPosUpdate.rightMirrorInSideLast = pos10;
            }
            carPosUpdate.lastRearAxlePoint = this.F;
        } else {
            carPosUpdate.wheelLeftBackLast = carPosUpdate.wheelLeftBack;
            carPosUpdate.wheelLeftFrontLast = carPosUpdate.wheelLeftFront;
            carPosUpdate.wheelRightBackLast = carPosUpdate.wheelRightBack;
            carPosUpdate.wheelRightFrontLast = carPosUpdate.wheelRightFront;
            carPosUpdate.lastCenter = carPosUpdate.center;
            carPosUpdate.lastCarRect = carPosUpdate.carRect;
            if (cn.mucang.android.core.utils.g.d(carPosUpdate.leftMirrorPoints)) {
                carPosUpdate.leftMirrorInSideLast = carPosUpdate.leftMirrorInSide;
            }
            if (cn.mucang.android.core.utils.g.d(carPosUpdate.leftMirrorPoints)) {
                carPosUpdate.leftMirrorOutSideLast = carPosUpdate.leftMirrorOutSide;
            }
            if (cn.mucang.android.core.utils.g.d(carPosUpdate.rightMirrorPoints)) {
                carPosUpdate.rightMirrorInSideLast = carPosUpdate.rightMirrorInSide;
            }
            if (cn.mucang.android.core.utils.g.d(carPosUpdate.rightMirrorPoints)) {
                carPosUpdate.rightMirrorOutSideLast = carPosUpdate.rightMirrorOutSide;
            }
            carPosUpdate.lastRearAxlePoint = carPosUpdate.rearAxlePoint;
        }
        dVar.c().set(carPosUpdate);
        this.v = carPosUpdate.wheelLeftFront;
        this.w = carPosUpdate.wheelLeftBack;
        this.y = carPosUpdate.wheelRightBack;
        this.x = carPosUpdate.wheelRightFront;
        this.z = carPosUpdate.center;
        this.A = new cn.mucang.android.jiakaoyi.signal.pos.c(carPosUpdate.carRect);
        if (cn.mucang.android.core.utils.g.d(carPosUpdate.leftMirrorPoints)) {
            this.D = carPosUpdate.leftMirrorPoints.get(0);
        }
        if (cn.mucang.android.core.utils.g.d(carPosUpdate.leftMirrorPoints)) {
            this.B = carPosUpdate.leftMirrorOutSide;
        }
        if (cn.mucang.android.core.utils.g.d(carPosUpdate.rightMirrorPoints)) {
            this.E = carPosUpdate.rightMirrorPoints.get(0);
        }
        if (cn.mucang.android.core.utils.g.d(carPosUpdate.rightMirrorPoints)) {
            this.C = carPosUpdate.rightMirrorOutSide;
        }
        this.F = carPosUpdate.rearAxlePoint;
        if (z) {
            this.f4721h.add(CarModel.Direction.Stop);
            bVar = currentPosition;
            pos = posA;
            pos2 = pos3;
            carPos = carPosUpdate;
        } else {
            double d3 = pos3.x;
            Pos pos11 = this.c;
            double d4 = d3 - pos11.x;
            double d5 = pos3.y - pos11.y;
            cn.mucang.android.jiakaoyi.signal.pos.c cVar = carPosUpdate.carRect;
            Pos pos12 = cVar.b;
            double d6 = pos12.x;
            Pos pos13 = cVar.c;
            double d7 = (d6 + pos13.x) * 0.5d;
            Pos pos14 = cVar.f5820a;
            bVar = currentPosition;
            pos = posA;
            double d8 = pos14.x;
            Pos pos15 = cVar.f5821d;
            pos2 = pos3;
            carPos = carPosUpdate;
            if ((d4 * (d7 - ((d8 + pos15.x) * 0.5d))) + (d5 * (((pos12.y + pos13.y) * 0.5d) - ((pos14.y + pos15.y) * 0.5d))) >= 0.0d) {
                this.f4721h.add(CarModel.Direction.Forward);
            } else {
                this.f4721h.add(CarModel.Direction.Back);
            }
        }
        if (this.f4721h.size() > 3) {
            this.f4721h.removeFirst();
        }
        if (this.f4721h.size() >= 3) {
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            for (CarModel.Direction direction : this.f4721h) {
                if (direction == CarModel.Direction.Forward) {
                    i++;
                } else if (direction == CarModel.Direction.Back) {
                    i2++;
                } else if (direction == CarModel.Direction.Stop) {
                    i3++;
                }
            }
            if (i3 >= i && i3 >= i2) {
                dVar.d().F = CarModel.Direction.Stop;
                if (this.f4717d == null) {
                    this.f4717d = new Pos(pos2);
                }
            } else if (i >= i2) {
                dVar.d().F = CarModel.Direction.Forward;
                this.f4717d = null;
            } else {
                dVar.d().F = CarModel.Direction.Back;
                if (z.a()) {
                    dVar.d().m = Gear.GearBack;
                }
                this.f4717d = null;
            }
        }
        this.c.setPos(pos);
        this.q = dVar.getCurrentPosition().f5282h;
        LiveBus.d(CarPos.class).l(carPos);
        this.f4718e = j;
        float f5 = dVar.d().c;
        this.k = bVar.f5277a;
        this.m = dVar.d().D;
    }

    public void f() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.s(this.f4716a);
    }

    public void g() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.s(null);
        cn.mucang.android.jiakaoyi.mapcollect.c.l.a aVar = this.u;
        if (aVar == null) {
            return;
        }
        aVar.a();
        throw null;
    }
}
