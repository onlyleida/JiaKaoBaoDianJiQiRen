package cn.mucang.android.jiakaoyi.teachingk2.safe.d0;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.i;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class h {
    public static final r0<Float> n = r0.e("__stop_car_point_f_speed", 1.5f);
    public static final r0<Float> o = r0.e("__stop_car_point_f_acc", 1.1f);
    public static final r0<Float> p = r0.e("__stop_car_point_kp", 4.1f);
    public static final r0<Float> q = r0.e("__stop_car_point_ki", 0.5f);
    public static final r0<Float> r = r0.e("__stop_car_point_kd", 2.0f);
    public static final d s = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pos f7646a;
    public final Pos b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f7647d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private i f7650g;
    private final Pos j;
    private final Pos k;
    public long l;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f7649f = 0.0d;
    private int m = -1;
    private volatile int c = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f7648e = 0.0d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f7651h = 0;
    private final LinkedList<Double> i = new LinkedList<>();

    public h(Pos pos, Pos pos2) {
        this.f7650g = null;
        this.f7646a = pos;
        this.b = pos2;
        this.j = new Pos(pos2).rotate(pos, 0.0d, 1.0d);
        this.k = new Pos(pos2).rotate(pos, 0.0d, -1.0d);
        this.f7650g = new i(500L);
    }

    private void b(final int i, byte b) {
        int i2 = this.m;
        if (i == i2) {
            return;
        }
        if (Math.abs(i2 - i) > b || i == 0 || i == 85) {
            this.m = i;
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.d0.c
                @Override // java.lang.Runnable
                public final void run() {
                    SafeCommandManager.d(BrakeModel.createBrakeModel(BrakeReason.TeachBrake, null, true), (byte) 1, (byte) i);
                }
            });
        }
    }

    private static double f(List<Double> list) {
        Iterator<Double> it = list.iterator();
        double dDoubleValue = 0.0d;
        while (it.hasNext()) {
            dDoubleValue += it.next().doubleValue();
        }
        return dDoubleValue;
    }

    private static String g(double d2) {
        return "" + (((double) ((int) (d2 * 100.0d))) / 100.0d);
    }

    public boolean a() {
        return this.c == 3;
    }

    public boolean c() {
        return this.c == 7;
    }

    public void e() {
        if (this.c == 3) {
            this.c = 6;
            cn.mucang.android.jiakaoyi.framework.log.f.o("停车点：Releasing");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:108:0x058d A[PHI: r3
      0x058d: PHI (r3v13 cn.mucang.android.jiakaoyi.signal.pos.Pos) = 
      (r3v14 cn.mucang.android.jiakaoyi.signal.pos.Pos)
      (r3v15 cn.mucang.android.jiakaoyi.signal.pos.Pos)
      (r3v15 cn.mucang.android.jiakaoyi.signal.pos.Pos)
     binds: [B:107:0x058b, B:102:0x0582, B:104:0x0586] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:53:0x023a  */
    /* JADX WARN: Code duplicated, block: B:87:0x0489  */
    /* JADX WARN: Code duplicated, block: B:90:0x04c4  */
    /* JADX WARN: Code duplicated, block: B:93:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:96:0x04f0  */
    public void h(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        double d2;
        Pos pos;
        double d3;
        double dSqrt;
        double d4;
        double d5;
        byte b;
        if (eVar.d().h()) {
            double dMax = ((double) Math.max(eVar.d().b, eVar.d().c)) / 3.6d;
            double d6 = this.f7649f;
            if (d6 == 0.0d) {
                this.f7648e = 0.0d;
            } else {
                this.f7648e = dMax - d6;
            }
            this.f7649f = dMax;
            double d7 = dMax * 100.0d;
            double d8 = 0.6d * d7;
            double d9 = (d7 * dMax) / 5.88d;
            double dMax2 = d8 + d9;
            double d10 = eVar.d().m.isBack() ? 10.0d : 12.0d;
            if (dMax > 0.05d) {
                dMax2 = Math.max(dMax2, d10);
            }
            Pos pos2 = eVar.c().rearAxlePoint;
            double dDistanceTo = pos2.distanceTo(this.f7646a);
            double dC = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (Math.toDegrees(pos2.angleTo(this.f7646a)) - eVar.c().degree));
            if (Math.abs(dC) >= 90.0d) {
                dC = 180.0d - Math.abs(dC);
            }
            double radians = Math.toRadians(dC);
            if (radians < 1.0E-10d) {
                radians = 1.0E-10d;
            }
            double dSin = radians * ((dDistanceTo * 0.5d) / Math.sin(radians)) * 2.0d;
            boolean zD = cn.mucang.android.jiakaoyi.hpmap.d.a.D(this.f7646a, this.b, pos2);
            r0<Float> r0Var = p;
            r0Var.b().floatValue();
            double dMax3 = Math.max(200.0d, dMax2 * 4.0d);
            switch (this.c) {
                case 0:
                    d2 = dMax2;
                    pos = pos2;
                    if (dSin <= dMax3) {
                        this.c = 4;
                        cn.mucang.android.jiakaoyi.framework.log.f.o("停车点：Distance3");
                        this.f7651h = 0L;
                    }
                    break;
                case 1:
                    if (dSin <= Math.min(dMax2, d10) || dSin < d9 + (d8 * 0.5d) || (zD && dDistanceTo < 100.0d)) {
                        d2 = dMax2;
                        d3 = 85.0d;
                        this.f7647d = 85.0d;
                    } else {
                        if (dMax < 0.08d) {
                            double d11 = this.f7647d;
                            if (d11 > 30.0d) {
                                double d12 = d11 - 3.0d;
                                this.f7647d = d12;
                                this.f7647d = Math.min(100.0d, d12);
                                d2 = dMax2;
                            } else {
                                dSqrt = Math.sqrt((dSin - 0.041666666666666664d) / ((dMax3 - 0.041666666666666664d) / 0.0771604938271605d));
                                double dFloatValue = n.b().floatValue();
                                double dFloatValue2 = o.b().floatValue();
                                double d13 = (dMax - dSqrt) * dFloatValue;
                                d4 = this.f7648e;
                                if (d4 <= 0.0d) {
                                    d4 = 0.0d;
                                }
                                d5 = d13 + (d4 * dFloatValue2);
                                if (dMax < dSqrt) {
                                    d5 *= 0.2d;
                                }
                                double d14 = this.f7647d + d5;
                                this.f7647d = d14;
                                d2 = dMax2;
                                this.f7647d = Math.max(30.0d, Math.min(65.0d, d14));
                                if (dSqrt >= dMax) {
                                    int i = ((2.0d * dMax) > dSqrt ? 1 : ((2.0d * dMax) == dSqrt ? 0 : -1));
                                }
                                cn.mucang.android.jiakaoyi.framework.log.f.o(g(dSin) + "," + g(dMax) + "," + g(dSqrt) + "," + g(dFloatValue) + "," + g(d5) + "," + g(dFloatValue2) + "," + g(this.f7648e) + "," + g(this.f7647d) + "," + g(d2));
                            }
                        } else {
                            dSqrt = Math.sqrt((dSin - 0.041666666666666664d) / ((dMax3 - 0.041666666666666664d) / 0.0771604938271605d));
                            double dFloatValue3 = n.b().floatValue();
                            double dFloatValue4 = o.b().floatValue();
                            double d15 = (dMax - dSqrt) * dFloatValue3;
                            d4 = this.f7648e;
                            if (d4 <= 0.0d) {
                                d4 = 0.0d;
                            }
                            d5 = d15 + (d4 * dFloatValue4);
                            if (dMax < dSqrt) {
                                d5 *= 0.2d;
                            }
                            double d16 = this.f7647d + d5;
                            this.f7647d = d16;
                            d2 = dMax2;
                            this.f7647d = Math.max(30.0d, Math.min(65.0d, d16));
                            if (dSqrt >= dMax) {
                                int i2 = ((2.0d * dMax) > dSqrt ? 1 : ((2.0d * dMax) == dSqrt ? 0 : -1));
                            }
                            cn.mucang.android.jiakaoyi.framework.log.f.o(g(dSin) + "," + g(dMax) + "," + g(dSqrt) + "," + g(dFloatValue3) + "," + g(d5) + "," + g(dFloatValue4) + "," + g(this.f7648e) + "," + g(this.f7647d) + "," + g(d2));
                        }
                        d3 = 85.0d;
                    }
                    b((byte) this.f7647d, (byte) 3);
                    if (this.f7647d >= d3) {
                        pos = pos2;
                        if (cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, this.j, this.k) < 10.0d || dDistanceTo < 10.0d) {
                            this.c = 2;
                            cn.mucang.android.jiakaoyi.framework.log.f.o("停车点：Braked");
                        }
                    } else {
                        pos = pos2;
                    }
                    if (zD) {
                        this.c = 2;
                        cn.mucang.android.jiakaoyi.framework.log.f.o("停车点：Braked");
                    }
                    break;
                case 2:
                    d2 = dMax2;
                    if (eVar.d().c >= 0.25d) {
                        this.f7650g.a();
                    } else if (this.f7650g.c(eVar.d().L)) {
                        this.c = 3;
                        cn.mucang.android.jiakaoyi.framework.log.f.o("停车点：Stopped");
                    }
                    pos = pos2;
                    break;
                case 3:
                    d2 = dMax2;
                    this.f7650g.a();
                    this.f7651h = 0L;
                    pos = pos2;
                    break;
                case 4:
                    double d17 = dMax - 0.2777777777777778d;
                    this.i.addFirst(Double.valueOf(d17));
                    if (this.i.size() > 4) {
                        this.i.removeLast();
                    }
                    double dFloatValue5 = r0Var.b().floatValue();
                    double dFloatValue6 = q.b().floatValue();
                    d2 = dMax2;
                    double dFloatValue7 = r.b().floatValue();
                    double dF = (d17 * dFloatValue5) + (f(this.i) * dFloatValue6) + ((this.i.size() > 1 ? this.i.getFirst().doubleValue() - this.i.get(1).doubleValue() : 0.0d) * dFloatValue7);
                    double d18 = this.f7647d + dF;
                    this.f7647d = d18;
                    double dMax4 = Math.max(5.0d, Math.min(65.0d, d18));
                    this.f7647d = dMax4;
                    b((int) dMax4, (byte) 3);
                    if (dSin < 0.5d * dMax3) {
                        this.i.clear();
                        this.c = 5;
                        cn.mucang.android.jiakaoyi.framework.log.f.o("停车点：Distance2");
                    }
                    cn.mucang.android.jiakaoyi.framework.log.f.o("3 : dis=" + g(dSin) + ",speed=" + g(dMax) + ",targetSpeed=" + g(0.2777777777777778d) + ",control=" + dF + ",kp=" + g(dFloatValue5) + ",ki=" + g(dFloatValue6) + ",kd=" + g(dFloatValue7) + ",acc=" + g(this.f7648e) + ",brake=" + g(this.f7647d) + ",brakeDis=" + g(d2));
                    pos = pos2;
                    break;
                case 5:
                    double d19 = dMax - 0.09722222222222221d;
                    this.i.addFirst(Double.valueOf(d19));
                    if (this.i.size() > 4) {
                        this.i.removeLast();
                    }
                    double dFloatValue8 = r0Var.b().floatValue();
                    double dFloatValue9 = q.b().floatValue();
                    double dFloatValue10 = r.b().floatValue();
                    double dF2 = (d19 * dFloatValue8) + (f(this.i) * dFloatValue9) + ((this.i.size() > 1 ? this.i.getFirst().doubleValue() - this.i.get(1).doubleValue() : 0.0d) * dFloatValue10);
                    double d20 = this.f7647d + dF2;
                    this.f7647d = d20;
                    this.f7647d = Math.max(5.0d, Math.min(65.0d, d20));
                    if (dSin <= Math.min(dMax2, d10)) {
                        this.f7647d = 85.0d;
                        b = 3;
                        this.c = 3;
                        cn.mucang.android.jiakaoyi.framework.log.f.o("停车点：Stopped");
                    } else if (dSin < d9 + ((eVar.d().F.isForward() ? 0.8d : 0.625d) * d8) || (zD && dDistanceTo < 100.0d)) {
                        this.f7647d = 85.0d;
                        b = 3;
                        this.c = 3;
                        cn.mucang.android.jiakaoyi.framework.log.f.o("停车点：Stopped");
                    } else {
                        b = 3;
                    }
                    b((int) this.f7647d, b);
                    cn.mucang.android.jiakaoyi.framework.log.f.o("2 : dis=" + g(dSin) + ",speed=" + g(dMax) + ",targetSpeed=" + g(0.09722222222222221d) + ",control=" + dF2 + ",kp=" + g(dFloatValue8) + ",ki=" + g(dFloatValue9) + ",kd=" + g(dFloatValue10) + ",acc=" + g(this.f7648e) + ",brake=" + g(this.f7647d) + ",brakeDis=" + g(dMax2));
                    d2 = dMax2;
                    pos = pos2;
                    break;
                case 6:
                    if (this.f7651h == 0) {
                        this.f7651h = eVar.d().L;
                    }
                    double dMin = Math.min(1.0d, ((eVar.d().L - this.f7651h) * 1.0d) / 3000.0d) - 1.0d;
                    double d21 = (byte) (dMin * dMin * 85.0d);
                    this.f7647d = d21;
                    double dMax5 = (byte) Math.max(0.0d, d21);
                    this.f7647d = dMax5;
                    double dMin2 = (byte) Math.min(85.0d, dMax5);
                    this.f7647d = dMin2;
                    b((int) dMin2, (byte) 8);
                    if (this.f7647d <= 0.0d) {
                        this.c = 7;
                        cn.mucang.android.jiakaoyi.framework.log.f.o("停车点：Finish");
                    }
                    d2 = dMax2;
                    pos = pos2;
                    break;
                case 7:
                    this.f7651h = 0L;
                    d2 = dMax2;
                    pos = pos2;
                    break;
                default:
                    d2 = dMax2;
                    pos = pos2;
                    break;
            }
            d dVar = s;
            dVar.f7635a = (int) dDistanceTo;
            dVar.b = (int) dSin;
            dVar.c = (byte) this.f7647d;
            dVar.f7636d = (int) d2;
            dVar.f7637e = (int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, this.j, this.k);
            dVar.f7638f = (int) d7;
            Tiger.h(dVar);
        }
    }

    public h(NormalVariable normalVariable) {
        this.f7650g = null;
        this.f7646a = normalVariable.posOnLine;
        this.b = normalVariable.forwardPoint;
        this.j = normalVariable.p1;
        this.k = normalVariable.p2;
        this.f7650g = new i(500L);
    }
}
