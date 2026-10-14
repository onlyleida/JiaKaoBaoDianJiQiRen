package cn.mucang.android.jiakaoyi.teachingk2.traceerror;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import cn.mucang.android.jiakaoyi.signal.utils.b;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.a;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class d implements g0<TraceVariable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f5946a;
    private long b = 0;
    private final Pos c = new Pos();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Pos f5947d = new Pos();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Pos f5948e = new Pos();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<Pos> f5949f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<Pos> f5950g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private c f5951h = new c(new Pos(), new Pos(), new Pos(), new Pos());

    /* JADX WARN: Code duplicated, block: B:62:0x01de  */
    /* JADX WARN: Code duplicated, block: B:64:0x01e2  */
    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(TraceVariable traceVariable, e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        boolean z;
        char c;
        if (!g.b(traceVariable.traces) && traceVariable.traces.size() >= 2 && !g.b(traceVariable.left) && !g.b(traceVariable.right)) {
            c cVar = eVar.c().carRect;
            if (this.f5950g.size() <= 0 || this.f5949f.size() <= 0) {
                if (this.f5946a == null) {
                    this.f5946a = a.a(bVar);
                }
                Iterator<Pos> it = traceVariable.left.iterator();
                while (it.hasNext()) {
                    Pos posC = this.f5946a.c(it.next());
                    posC.x = ((double) ((int) (posC.x * 10.0d))) / 10.0d;
                    posC.y = ((double) ((int) (posC.y * 10.0d))) / 10.0d;
                    this.f5949f.add(posC);
                }
                Iterator<Pos> it2 = traceVariable.right.iterator();
                while (it2.hasNext()) {
                    Pos posC2 = this.f5946a.c(it2.next());
                    posC2.x = ((double) ((int) (posC2.x * 10.0d))) / 10.0d;
                    posC2.y = ((double) ((int) (posC2.y * 10.0d))) / 10.0d;
                    this.f5950g.add(posC2);
                }
                List<Pos> listG = cn.mucang.android.jiakaoyi.hpmap.d.a.G(this.f5949f, Math.max(traceVariable.range, 15), true);
                this.f5949f.clear();
                this.f5949f.addAll(listG);
                List<Pos> listG2 = cn.mucang.android.jiakaoyi.hpmap.d.a.G(this.f5950g, Math.max(traceVariable.range, 15), false);
                this.f5950g.clear();
                this.f5950g.addAll(listG2);
            }
            if (this.f5950g.size() > 0 && this.f5949f.size() > 0) {
                if (this.f5946a == null) {
                    this.f5946a = a.a(bVar);
                }
                this.f5947d.setPos(this.f5946a.a(eVar.c().center));
                if (Math.abs(this.c.x) + Math.abs(this.c.y) < 1.0E-6d) {
                    this.c.setPos(this.f5947d);
                    return false;
                }
                if (this.f5947d.distanceTo(this.c) < 20.0d) {
                    return false;
                }
                if (Gear.GearBack != eVar.d().m) {
                    CarModel.Direction direction = eVar.d().F;
                    CarModel.Direction direction2 = CarModel.Direction.Back;
                }
                String strA = null;
                TraceItemModel traceItemModel = null;
                TraceItemModel traceItemModel2 = null;
                int i = 0;
                while (true) {
                    if (i >= traceVariable.traces.size() - 1) {
                        z = false;
                        break;
                    }
                    traceItemModel = traceVariable.traces.get(i);
                    i++;
                    traceItemModel2 = traceVariable.traces.get(i);
                    if (cn.mucang.android.jiakaoyi.hpmap.d.a.g(this.f5947d, traceItemModel, traceItemModel2, this.f5948e)) {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    this.c.setPos(this.f5947d);
                    return false;
                }
                double dC = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (Math.toDegrees(this.c.angleTo(this.f5947d)) - Math.toDegrees(traceItemModel.angleTo(traceItemModel2))));
                this.f5951h.c(this.f5946a.a(cVar.f5820a), this.f5946a.a(cVar.b), this.f5946a.a(cVar.c), this.f5946a.a(cVar.f5821d));
                boolean zG = cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(eVar.c(), this.f5949f);
                boolean zG2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.g(eVar.c(), this.f5950g);
                if (zG && zG2) {
                    if (dC > 0.0d) {
                        c = 1;
                    } else {
                        c = 2;
                    }
                } else if (zG) {
                    c = 2;
                } else if (zG2) {
                    c = 1;
                } else {
                    c = 0;
                }
                if (c == 2) {
                    strA = k0.a(R.string.teachingk2_close_left_trun_right);
                } else if (c == 1) {
                    strA = k0.a(R.string.teachingk2_close_right_trun_left);
                }
                if (strA != null) {
                    if (eVar.d().L - this.b < Math.max(traceVariable.time, 4000)) {
                        return false;
                    }
                    LiveBus.c(new ErrorTipModel(strA));
                    this.b = eVar.d().L;
                }
                this.c.setPos(this.f5947d);
            }
        }
        return false;
    }
}
