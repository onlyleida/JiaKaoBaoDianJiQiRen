package cn.mucang.android.jiakaoyi.teachingk2.traceerror;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.b;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<TraceItemModel> f5957a;
    private final List<Pos> b;
    private final List<Pos> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<Pos> f5958d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<Pos> f5959e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Pos f5960f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Pos f5961g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f5962h;
    private final double i;
    private boolean j;
    private int k;
    private int l;

    public g() {
        this(30.0d);
    }

    private void a(CarPos carPos) {
        this.b.add(carPos.carRect.f5820a);
        this.c.add(carPos.carRect.b);
        this.f5958d.add(carPos.carRect.c);
        this.f5959e.add(carPos.carRect.f5821d);
    }

    private TraceItemModel b(Pos pos, e eVar, b bVar) {
        int i;
        TraceItemModel traceItemModel = new TraceItemModel();
        traceItemModel.x = pos.x;
        traceItemModel.y = pos.y;
        traceItemModel.z = pos.z;
        CarModel carModelD = eVar.d();
        traceItemModel.gear = (byte) carModelD.m.gear;
        traceItemModel.heading = (short) (d.d((float) (eVar.c().degree - bVar.f5831f)) * 10.0f);
        traceItemModel.honk = carModelD.l ? (byte) 1 : (byte) 0;
        if (carModelD.j(Light.TurnLeftLight)) {
            i = 1;
        } else if (carModelD.j(Light.TurnRightLight)) {
            i = 2;
        } else {
            i = carModelD.j(Light.WarningLight) ? 3 : 0;
        }
        traceItemModel.light = (byte) i;
        traceItemModel.handbrake = (byte) (!carModelD.f5268f ? 1 : 0);
        traceItemModel.pointType = (byte) 0;
        traceItemModel.step = (short) 0;
        traceItemModel.wheel = (short) carModelD.r;
        traceItemModel.footBrake = carModelD.H;
        traceItemModel.cluth = carModelD.I;
        traceItemModel.speed = ((int) (Math.max(carModelD.b, carModelD.c) * 100.0f)) / 100.0f;
        return traceItemModel;
    }

    private Pos c(e eVar, Pos pos, b bVar) {
        Pos pos2 = new Pos(pos);
        pos2.z = ((double) (((int) (eVar.c().degree - bVar.f5831f)) * 10)) / 10.0d;
        return pos2;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:54:0x0153  */
    /* JADX WARN: Code duplicated, block: B:70:0x0198  */
    public static void d(List<Pos> list, List<Pos> list2, List<Pos> list3, double d2, boolean z) {
        double d3;
        double d4;
        Pos pos;
        List<Pos> list4;
        int i;
        List<Pos> list5 = list;
        List<Pos> list6 = list2;
        List<Pos> list7 = list3;
        double dCos = Math.cos(d2);
        double dSin = Math.sin(d2);
        Pos pos2 = list5.get(0);
        double d5 = -1.7976931348623157E308d;
        int i2 = 0;
        double d6 = Double.MAX_VALUE;
        while (i2 < list.size()) {
            double d7 = -dSin;
            int i3 = i2;
            list5.get(i2).rotate(pos2, dCos, d7);
            list6.get(i3).rotate(pos2, dCos, d7);
            if (list5.get(i3).x < d6) {
                d6 = list5.get(i3).x;
            }
            if (list5.get(i3).x > d5) {
                d5 = list5.get(i3).x;
            }
            if (list6.get(i3).x < d6) {
                d6 = list6.get(i3).x;
            }
            if (list6.get(i3).x > d5) {
                d5 = list6.get(i3).x;
            }
            i2 = i3 + 1;
        }
        double d8 = d6;
        while (d8 <= d5) {
            double d9 = z ? Double.MAX_VALUE : -1.7976931348623157E308d;
            int i4 = 0;
            boolean z2 = false;
            while (true) {
                if (i4 >= list.size() - 1) {
                    d3 = dCos;
                    d4 = dSin;
                    pos = pos2;
                    break;
                }
                Pos pos3 = list5.get(i4);
                int i5 = i4 + 1;
                Pos pos4 = list5.get(i5);
                d4 = dSin;
                double d10 = pos3.x;
                d3 = dCos;
                double d11 = pos4.x;
                if ((d10 - d8) * (d8 - d11) < 0.0d) {
                    i = i5;
                    pos = pos2;
                    if (z2) {
                        break;
                    }
                } else {
                    double d12 = pos4.y;
                    i = i5;
                    pos = pos2;
                    double d13 = pos3.y;
                    double d14 = (((d12 - d13) * (d8 - d10)) / (d11 - d10)) + d13;
                    if (z) {
                        if (d14 < d9) {
                            d9 = d14;
                            z2 = true;
                        }
                    } else if (d14 > d9) {
                        d9 = d14;
                        z2 = true;
                    }
                }
                pos2 = pos;
                i4 = i;
                dSin = d4;
                dCos = d3;
            }
            int i6 = 0;
            boolean z3 = false;
            while (i6 < list2.size() - 1) {
                Pos pos5 = list6.get(i6);
                int i7 = i6 + 1;
                Pos pos6 = list6.get(i7);
                double d15 = pos5.x;
                double d16 = pos6.x;
                if ((d15 - d8) * (d8 - d16) < 0.0d) {
                    if (z3) {
                        break;
                    }
                } else {
                    double d17 = pos6.y;
                    double d18 = pos5.y;
                    double d19 = (((d17 - d18) * (d8 - d15)) / (d16 - d15)) + d18;
                    if (z) {
                        if (d19 < d9) {
                            d9 = d19;
                            z3 = true;
                            z2 = true;
                        }
                    } else if (d19 > d9) {
                        d9 = d19;
                        z3 = true;
                        z2 = true;
                    }
                }
                i6 = i7;
            }
            int i8 = 0;
            boolean z4 = false;
            while (i8 < list2.size()) {
                Pos pos7 = list5.get(i8);
                Pos pos8 = list6.get(i8);
                double d20 = pos7.x;
                double d21 = pos8.x;
                if ((d20 - d8) * (d8 - d21) < 0.0d) {
                    if (z4) {
                        break;
                    }
                } else {
                    double d22 = pos8.y;
                    double d23 = pos7.y;
                    double d24 = (((d22 - d23) * (d8 - d20)) / (d21 - d20)) + d23;
                    if (z) {
                        if (d24 < d9) {
                            d9 = d24;
                            z4 = true;
                            z2 = true;
                        }
                    } else if (d24 > d9) {
                        d9 = d24;
                        z4 = true;
                        z2 = true;
                    }
                }
                i8++;
                list5 = list;
                list6 = list2;
            }
            if (z2) {
                list4 = list3;
                list4.add(new Pos(d8, d9));
            } else {
                list4 = list3;
            }
            d8 += 30.0d;
            list5 = list;
            pos2 = pos;
            list7 = list4;
            dSin = d4;
            dCos = d3;
            list6 = list2;
        }
        List<Pos> list8 = list7;
        double d25 = dCos;
        double d26 = dSin;
        Pos pos9 = pos2;
        for (int i9 = 0; i9 < list3.size(); i9++) {
            list8.get(i9).rotate(pos9, d25, d26);
        }
    }

    private List<Pos> h(List<Pos> list) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(list.get((size - 1) - i));
        }
        return arrayList;
    }

    public boolean e() {
        return this.j;
    }

    public List<Pos> f(b bVar) {
        List<Pos> listH = this.f5959e;
        List<Pos> listH2 = this.f5958d;
        if (this.k > this.l) {
            listH = h(listH);
            listH2 = h(this.f5958d);
        }
        List<Pos> list = listH;
        List<Pos> list2 = listH2;
        double dAngleTo = list.get(0).angleTo(list2.get(list2.size() - 1));
        ArrayList<Pos> arrayList = new ArrayList();
        d(list, list2, arrayList, dAngleTo, true);
        for (Pos pos : arrayList) {
            pos.setPos(bVar.a(pos));
        }
        return arrayList;
    }

    public Pos g(e eVar, b bVar) {
        Pos posMeanWith;
        if ((eVar.d().M != 3 && eVar.d().f5268f) || this.j || (posMeanWith = new Pos(eVar.c().wheelLeftBack).meanWith(eVar.c().wheelRightBack)) == null) {
            return null;
        }
        if (eVar.d().F == CarModel.Direction.Forward) {
            this.l++;
        } else if (eVar.d().F == CarModel.Direction.Back) {
            this.k++;
        }
        Pos posC = c(eVar, posMeanWith, bVar);
        if (this.b.size() == 0 || posC.distanceSquare(this.f5961g) > 900.0d) {
            a(eVar.c());
            this.f5961g.setPos(posC);
        }
        if (this.f5957a.size() > 0) {
            double dDistanceSquare = posC.distanceSquare(this.f5960f);
            double d2 = this.i;
            if (dDistanceSquare < d2 * d2 && (this.f5962h || eVar.d().f5268f)) {
                this.f5962h = !eVar.d().f5268f;
                return null;
            }
        }
        TraceItemModel traceItemModelB = b(posC, eVar, bVar);
        if (this.f5957a.size() > 0) {
            List<TraceItemModel> list = this.f5957a;
            if (traceItemModelB.distanceSquare(list.get(list.size() - 1)) < 225.0d) {
                List<TraceItemModel> list2 = this.f5957a;
                list2.remove(list2.size() - 1);
            }
        }
        this.f5957a.add(traceItemModelB);
        this.f5960f.setPos(posC);
        this.f5962h = !eVar.d().f5268f;
        return posC;
    }

    public List<Pos> i(b bVar) {
        List<Pos> listH = this.b;
        List<Pos> listH2 = this.c;
        if (this.k > this.l) {
            listH = h(listH);
            listH2 = h(this.c);
        }
        List<Pos> list = listH;
        List<Pos> list2 = listH2;
        double dAngleTo = list.get(0).angleTo(list2.get(list2.size() - 1));
        ArrayList<Pos> arrayList = new ArrayList();
        d(list, list2, arrayList, dAngleTo, false);
        for (Pos pos : arrayList) {
            pos.setPos(bVar.a(pos));
        }
        return arrayList;
    }

    public void j() {
        this.j = false;
        this.l = 0;
        this.k = 0;
        this.f5957a.clear();
        this.b.clear();
        this.c.clear();
        this.f5958d.clear();
        this.f5959e.clear();
    }

    public List<TraceItemModel> k(e eVar, b bVar) {
        this.j = true;
        Pos posMeanWith = new Pos(eVar.c().wheelLeftBack).meanWith(eVar.c().wheelRightBack);
        if (posMeanWith == null) {
            return null;
        }
        TraceItemModel traceItemModelB = b(c(eVar, posMeanWith, bVar), eVar, bVar);
        if (this.f5957a.size() > 0) {
            List<TraceItemModel> list = this.f5957a;
            if (traceItemModelB.distanceSquare(list.get(list.size() - 1)) < 225.0d) {
                List<TraceItemModel> list2 = this.f5957a;
                list2.remove(list2.size() - 1);
            }
        }
        this.f5957a.add(traceItemModelB);
        if (this.f5957a.size() >= 2) {
            return this.f5957a;
        }
        u.h("结束采集标准轨迹异常：数据为空");
        return null;
    }

    public g(double d2) {
        this.f5957a = new ArrayList();
        this.b = new ArrayList();
        this.c = new ArrayList();
        this.f5958d = new ArrayList();
        this.f5959e = new ArrayList();
        this.f5960f = new Pos();
        this.f5961g = new Pos();
        this.f5962h = false;
        this.k = 0;
        this.l = 0;
        this.i = d2;
        this.j = false;
    }
}
