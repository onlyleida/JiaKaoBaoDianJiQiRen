package cn.mucang.android.jiakaoyi.teachingk2.safe.manager;

import androidx.lifecycle.a0;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import cn.mucang.jiakaoyi.uilib.socket.model.OtherCarPosListSocketModel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public class w {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f7775d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.c.f.a f7776e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a0<OtherCarPosListSocketModel> f7777f = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.o
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            this.f7752a.i((OtherCarPosListSocketModel) obj);
        }
    };
    private final AtomicInteger b = new AtomicInteger(3);
    private final Object c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, OtherCarPosListSocketModel.CarPosModel> f7774a = new HashMap();

    class a implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void b(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            w.this.h(eVar.c(), eVar.d());
        }

        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(final cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            w.this.f7775d = eVar.d().L;
            if (eVar.d().h()) {
                if (w.this.b.get() == 3) {
                    w.this.f();
                    return;
                }
                BrakeModel brakeModelA = BrakeGlobalMonitor.a();
                if (eVar.d().d() && brakeModelA.getReason().isByApp()) {
                    return;
                }
                double dMax = Math.max(eVar.d().b, eVar.d().c);
                if (w.this.b.get() == 1) {
                    if (brakeModelA.getReason() == BrakeReason.None) {
                        w.this.b.set(2);
                        cn.mucang.android.jiakaoyi.framework.log.f.o("拥堵刹车:已经解刹，开始检测");
                        return;
                    }
                    return;
                }
                if (!eVar.getCurrentPosition().c() || dMax < 0.2d) {
                    return;
                }
                n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f7751a.b(eVar);
                    }
                });
            }
        }
    }

    private static cn.mucang.android.jiakaoyi.signal.pos.c e(Pos pos, double d2, double d3, double d4, double d5, int i, double d6, double d7, double d8, List<Pos> list) {
        Math.abs(d5);
        double d9 = (cn.mucang.android.jiakaoyi.framework.utils.o.b * d5) / cn.mucang.android.jiakaoyi.framework.utils.o.f3632a;
        if (Math.abs(d9) < 1.0E-5d) {
            d9 = ((double) (d9 >= 0.0d ? 1 : -1)) * 1.0E-5d;
        }
        double dAbs = Math.abs(d4 / Math.tan(Math.toRadians(d9)));
        int i2 = d9 > 0.0d ? 1 : -1;
        double radians = Math.toRadians(d6 + ((double) (i2 * 90)));
        double radians2 = Math.toRadians(d6 + 180.0d);
        double dSin = Math.sin(radians2);
        double dCos = Math.cos(radians2);
        Pos posTranslate = new Pos(pos).translate(d8 * dCos, d8 * dSin);
        Pos pos2 = new Pos(posTranslate.x + (Math.cos(radians) * dAbs), posTranslate.y + (Math.sin(radians) * dAbs));
        double d10 = ((((double) i2) * d7) * ((double) (i == Gear.GearBack.gear ? -1 : 1))) / dAbs;
        double dSin2 = Math.sin(d10);
        double dCos2 = Math.cos(d10);
        double radians3 = Math.toRadians(d6);
        double dCos3 = Math.cos(radians3);
        double dSin3 = Math.sin(radians3);
        double d11 = d2 * 0.5d;
        Pos posTranslate2 = new Pos(pos).translate(dCos * d11, d11 * dSin);
        Pos posTranslate3 = new Pos(pos).translate(dCos3 * d11, d11 * dSin3);
        double d12 = d3 * 0.5d;
        Line lineQ = cn.mucang.android.jiakaoyi.hpmap.d.a.q(posTranslate2, posTranslate3, d12);
        Line lineP = cn.mucang.android.jiakaoyi.hpmap.d.a.p(posTranslate2, posTranslate3, d12);
        lineQ.start.rotate(pos2, dCos2, dSin2);
        lineQ.end.rotate(pos2, dCos2, dSin2);
        lineP.start.rotate(pos2, dCos2, dSin2);
        lineP.end.rotate(pos2, dCos2, dSin2);
        if (list != null && d7 > 200.0d) {
            int i3 = (int) (d7 / 100.0d);
            double d13 = d10 / ((double) i3);
            for (int i4 = 1; i4 < i3; i4++) {
                double d14 = ((double) i4) * d13;
                list.add(new Pos(pos).rotate(pos2, Math.cos(d14), Math.sin(d14)));
            }
        }
        return new cn.mucang.android.jiakaoyi.signal.pos.c(lineQ.start, lineQ.end, lineP.end, lineP.start);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        synchronized (this.c) {
            this.f7774a.clear();
        }
    }

    private static boolean g(List<Pos> list, cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        if (list == null) {
            return false;
        }
        Iterator<Pos> it = list.iterator();
        while (it.hasNext()) {
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, it.next())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(CarPos carPos, CarModel carModel) {
        ArrayList<OtherCarPosListSocketModel.CarPosModel> arrayList;
        double dN;
        cn.mucang.android.jiakaoyi.signal.pos.c cVarE;
        if (this.f7774a.isEmpty() || !j() || this.b.get() == 1) {
            return;
        }
        r();
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = carPos.carRect;
        double dDistanceTo = cVar.f5820a.distanceTo(cVar.b);
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPos.carRect;
        double dDistanceTo2 = cVar2.f5820a.distanceTo(cVar2.f5821d);
        double d2 = carPos.L;
        Pos pos = carPos.rearAxlePoint;
        cn.mucang.android.jiakaoyi.signal.pos.c cVar3 = carPos.carRect;
        double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, cVar3.f5820a, cVar3.f5821d);
        double dN2 = n(Math.max(carModel.b, carModel.c), 300.0d);
        ArrayList arrayList2 = new ArrayList();
        double d3 = dN2;
        cn.mucang.android.jiakaoyi.signal.pos.c cVarE2 = e(carPos.center, dDistanceTo, dDistanceTo2, d2, carModel.r, carModel.m.gear, carPos.degree, dN2, dK, arrayList2);
        if (cVarE2 == null) {
            return;
        }
        synchronized (this.c) {
            arrayList = new ArrayList(this.f7774a.values());
        }
        for (OtherCarPosListSocketModel.CarPosModel carPosModel : arrayList) {
            double d4 = ((double) carPosModel.f9678a) * 0.01d;
            if (Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (d4 - carPos.degree))) <= 150.0d) {
                Pos pos2 = new Pos(carPosModel.x, carPosModel.y);
                if (pos2.distanceSquare(carPos.center) <= 9000000.0d && (cVarE = e(pos2, dDistanceTo, dDistanceTo2, d2, carPosModel.w, carPosModel.gear, d4, (dN = n(carPosModel.speed, 0.0d)), dK, null)) != null) {
                    if (j() && (cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(cVarE2, cVarE) || g(arrayList2, cVarE))) {
                        SafeCommandAdapter.b(BrakeModel.createBrakeModel(BrakeReason.Traffic, null, true), (byte) 1);
                        this.b.set(1);
                        cn.mucang.android.jiakaoyi.framework.log.f.d("拥堵刹车：我当前位置:" + o(carPos.carRect.f5820a) + "|" + o(carPos.carRect.b) + "|" + o(carPos.carRect.c) + "|" + o(carPos.carRect.f5821d));
                        cn.mucang.android.jiakaoyi.framework.log.f.d("拥堵刹车：我未来位置:" + o(cVarE2.f5820a) + "|" + o(cVarE2.b) + "|" + o(cVarE2.c) + "|" + o(cVarE2.f5821d));
                        cn.mucang.android.jiakaoyi.framework.log.f.d("拥堵刹车：它未来位置:" + o(cVarE.f5820a) + "|" + o(cVarE.b) + "|" + o(cVarE.c) + "|" + o(cVarE.f5821d));
                        cn.mucang.android.jiakaoyi.framework.log.f.o("拥堵刹车:设置刹车状态");
                        cn.mucang.android.jiakaoyi.framework.log.f.d("拥堵刹车:刹车，和车辆距离过近，距离:" + ((int) cVarE2.f5825h.distanceTo(cVarE.f5825h)) + "厘米,前方车辆信息:" + carPosModel.toString() + ",我的预测距离:" + d3 + ",前方车辆预测距离:" + dN + ",我的方向盘角度:" + carModel.r + ",我的速度:" + Math.max(carModel.b, carModel.c));
                        return;
                    }
                    d3 = d3;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(final OtherCarPosListSocketModel otherCarPosListSocketModel) {
        if (j()) {
            n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.p
                @Override // java.lang.Runnable
                public final void run() {
                    this.f7753a.m(otherCarPosListSocketModel);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void m(OtherCarPosListSocketModel otherCarPosListSocketModel) {
        if (otherCarPosListSocketModel == null || !cn.mucang.android.core.utils.g.d(otherCarPosListSocketModel.itemList)) {
            return;
        }
        synchronized (this.c) {
            for (OtherCarPosListSocketModel.CarPosModel carPosModel : otherCarPosListSocketModel.itemList) {
                OtherCarPosListSocketModel.CarPosModel carPosModel2 = this.f7774a.get(carPosModel.n);
                if (carPosModel.f9679g == 4) {
                    carPosModel.time = this.f7775d;
                    this.f7774a.put(carPosModel.n, carPosModel);
                } else if (carPosModel2 != null && ((carPosModel.speed == 0 && carPosModel2.speed == 0) || carPosModel2.distanceSquare(carPosModel) < 10000.0d)) {
                    carPosModel2.time = this.f7775d;
                }
            }
        }
    }

    private double n(double d2, double d3) {
        double d4 = d2 / 3.6d;
        return Math.max(((d4 * d4) * 100.0d) / 5.88d, (d4 * 100.0d * 1.5d) + d3);
    }

    private static String o(Pos pos) {
        return ((int) pos.x) + "," + ((int) pos.y);
    }

    private void r() {
        synchronized (this.c) {
            Iterator<Map.Entry<String, OtherCarPosListSocketModel.CarPosModel>> it = this.f7774a.entrySet().iterator();
            while (it.hasNext()) {
                if (this.f7775d - it.next().getValue().time > 1000) {
                    it.remove();
                }
            }
        }
    }

    public boolean j() {
        return this.b.get() != 3;
    }

    public void p() {
        this.b.set(2);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.f7776e);
        LiveBus.d(OtherCarPosListSocketModel.class).i(this.f7777f);
        cn.mucang.android.jiakaoyi.framework.log.f.o("拥堵刹车:开始");
    }

    public void q() {
        this.b.set(3);
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.f7776e);
        LiveBus.d(OtherCarPosListSocketModel.class).m(this.f7777f);
        f();
        cn.mucang.android.jiakaoyi.framework.log.f.o("拥堵刹车:结束");
    }
}
