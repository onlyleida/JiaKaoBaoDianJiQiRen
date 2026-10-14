package cn.mucang.android.jiakaoyi.teachingk2.wheelr;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.c1.c;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.autocreate.WR;
import cn.mucang.android.jiakaoyi.teachingk2.autocreate.WheelAndRLearning;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RuntimeWheelAndR {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final r0<WheelAndR> f8768a = r0.h("runtime_front_wheel_r", null, WheelAndR.class);
    private static final r0<WheelAndR> b = r0.h("runtime_back_wheel_r", null, WheelAndR.class);
    private static final r0<WheelAndR> c = r0.h("rt_runtime_front_wheel_r", null, WheelAndR.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final r0<WheelAndR> f8769d = r0.h("rt_runtime_back_wheel_r", null, WheelAndR.class);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final LinkedList<Pos> f8770e = new LinkedList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f8771f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Gear f8772g;

    public static class WheelAndR implements Serializable {
        public double R;
        public int wheel;

        public static WheelAndR create(double d2, double d3) {
            WheelAndR wheelAndR = new WheelAndR();
            wheelAndR.R = d3;
            wheelAndR.wheel = (int) d2;
            return wheelAndR;
        }
    }

    public static WheelAndR a(double d2) {
        WheelAndR maxR;
        WheelAndR wheelAndRB = f8769d.b();
        if (wheelAndRB != null) {
            return wheelAndRB;
        }
        WR wrB = WheelAndRLearning.j.b();
        return (wrB == null || (maxR = wrB.getMaxR(false)) == null) ? f(b.b(), d2) : maxR;
    }

    public static WheelAndR b(double d2) {
        WheelAndR maxR;
        WheelAndR wheelAndRB = c.b();
        if (wheelAndRB != null) {
            return wheelAndRB;
        }
        WR wrB = WheelAndRLearning.j.b();
        return (wrB == null || (maxR = wrB.getMaxR(true)) == null) ? f(f8768a.b(), d2) : maxR;
    }

    private static double c(List<TraceItemModel> list) {
        double d2 = 0.0d;
        for (TraceItemModel traceItemModel : list) {
            if (Math.abs((int) traceItemModel.wheel) > Math.abs(d2)) {
                d2 = traceItemModel.wheel;
            }
        }
        return d2;
    }

    public static WheelAndR d(List<TraceItemModel> list, boolean z) {
        double d2;
        double d3;
        int i;
        int i2;
        boolean z2;
        int i3;
        if (g.b(list)) {
            return (z ? f8768a : b).b();
        }
        double dC = c(list);
        double d4 = Math.abs(dC) > 3000.0d ? 0.1d : 1.0d;
        double d5 = dC * d4;
        double d6 = 500.0d;
        if (Math.abs(d5) < 500.0d) {
            return (z ? f8768a : b).b();
        }
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (true) {
            if (i4 >= list.size() - 1) {
                d2 = d6;
                d3 = 0.0d;
                break;
            }
            double dAbs = ((double) Math.abs((int) list.get(i4).wheel)) * d4;
            if (Math.abs(dAbs - dC) > 20.0d) {
                i3 = i4;
            } else {
                int i5 = i4 + 1;
                while (true) {
                    if (i5 < list.size()) {
                        i = i4;
                        if (Math.abs((((double) Math.abs((int) list.get(i5).wheel)) * d4) - dAbs) > 6.0d) {
                            i2 = i5 - 1;
                            if (i2 - i > 5) {
                                z2 = true;
                                break;
                            }
                        } else {
                            i5++;
                            i4 = i;
                        }
                    } else {
                        i = i4;
                        i2 = 0;
                    }
                    z2 = false;
                    break;
                }
                if (z2) {
                    arrayList.addAll(list.subList(i, Math.min(list.size() - 1, i2)));
                    d3 = dAbs;
                    d2 = 500.0d;
                    break;
                }
                i3 = i;
            }
            i4 = i3 + 1;
            d6 = 500.0d;
        }
        if (d3 <= d2 || !g.d(arrayList) || arrayList.size() <= 5) {
            return (z ? f8768a : b).b();
        }
        WheelAndR wheelAndR = new WheelAndR();
        wheelAndR.R = c.b(arrayList, 0, arrayList.size() - 1, new Pos());
        wheelAndR.wheel = (int) d5;
        if (z) {
            r0<WheelAndR> r0Var = f8768a;
            WheelAndR wheelAndRB = r0Var.b();
            if (wheelAndRB == null || wheelAndRB.R > wheelAndR.R) {
                r0Var.j(wheelAndR);
            }
        } else {
            r0<WheelAndR> r0Var2 = b;
            WheelAndR wheelAndRB2 = r0Var2.b();
            if (wheelAndRB2 == null || wheelAndRB2.R > wheelAndR.R) {
                r0Var2.j(wheelAndR);
            }
        }
        return wheelAndR;
    }

    public static void e(e eVar) {
        if (!eVar.getCurrentPosition().b()) {
            f8771f = 0;
            f8770e.clear();
            return;
        }
        Gear gear = eVar.d().m;
        int iAbs = Math.abs(eVar.d().r);
        if (f8771f == 0 && iAbs > 50 && iAbs < 600 && (gear.isFront() || gear.isBack())) {
            f8771f = iAbs;
            f8772g = gear;
            f8770e.clear();
        }
        int i = f8771f;
        if (i > 50 && f8772g == gear && Math.abs(iAbs - i) <= 5) {
            if (eVar.d().h() && eVar.d().b()) {
                Pos pos = new Pos(eVar.c().rearAxlePoint);
                LinkedList<Pos> linkedList = f8770e;
                if (linkedList.isEmpty() || linkedList.getFirst().distanceSquare(pos) > 400.0d) {
                    linkedList.addFirst(pos);
                }
                if (linkedList.size() > 20) {
                    linkedList.removeLast();
                    return;
                }
                return;
            }
            return;
        }
        if (f8771f > 50) {
            LinkedList<Pos> linkedList2 = f8770e;
            if (linkedList2.size() >= 8) {
                double dB = c.b(linkedList2, 0, linkedList2.size() - 1, new Pos());
                if (dB > 0.0d) {
                    double degrees = Math.toDegrees(Math.atan(eVar.c().L / dB));
                    r0<WR> r0Var = WheelAndRLearning.j;
                    WR wrB = r0Var.b();
                    if (wrB == null) {
                        wrB = new WR();
                    }
                    WR wr = wrB;
                    if (wr.addWR(f8771f, dB, degrees, eVar.c().L, f8772g.isFront())) {
                        r0Var.j(wr);
                    }
                    r0<WheelAndR> r0Var2 = f8772g.isFront() ? c : f8769d;
                    WheelAndR wheelAndRB = r0Var2.b();
                    if (f8771f > (wheelAndRB == null ? 510.0d : wheelAndRB.wheel)) {
                        if (wheelAndRB == null) {
                            wheelAndRB = new WheelAndR();
                            wheelAndRB.R = 1000.0d;
                        }
                        if (dB < wheelAndRB.R) {
                            wheelAndRB.R = dB;
                            wheelAndRB.wheel = f8771f;
                            r0Var2.j(wheelAndRB);
                        }
                    }
                }
            }
        }
        f8771f = 0;
        f8770e.clear();
    }

    private static WheelAndR f(WheelAndR wheelAndR, double d2) {
        if (wheelAndR != null) {
            return wheelAndR;
        }
        WheelAndR wheelAndR2 = new WheelAndR();
        wheelAndR2.wheel = 540;
        wheelAndR2.R = d2 / Math.tan(Math.toRadians(34.5d));
        return wheelAndR2;
    }
}
