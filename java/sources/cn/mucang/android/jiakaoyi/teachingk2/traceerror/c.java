package cn.mucang.android.jiakaoyi.teachingk2.traceerror;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.exe.l;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class c implements g0<TraceVariable> {
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5940d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f5941e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private double f5942f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b f5943g = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<Pos> f5939a = new ArrayList();
    private final cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.a b = new cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.a();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f5944a;
        public final int b;
        public final List<Pos> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f5945d;

        public a(boolean z, int i, List<Pos> list, int i2) {
            this.f5944a = z;
            this.b = i;
            this.c = list;
            this.f5945d = i2;
        }
    }

    private TeachModel b(List<TeachModel> list, TeachModel teachModel, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, f0 f0Var) {
        int i;
        int i2;
        for (TeachModel teachModel2 : list) {
            if (teachModel2.subStep == teachModel.subStep && ((i = teachModel2.step) == (i2 = teachModel.step) || ((byte) i) == ((byte) i2))) {
                if (!g.b(teachModel2.variableList) && !l.a(teachModel2, bVar2, bVar, f0Var)) {
                    Iterator<Variable> it = teachModel2.variableList.iterator();
                    while (it.hasNext()) {
                        if (it.next() instanceof TraceVariable) {
                            return teachModel2;
                        }
                    }
                }
            }
        }
        return null;
    }

    private boolean c(double d2, double d3) {
        return (d2 == 0.0d && d3 != 0.0d) || (d2 != 0.0d && d3 == 0.0d) || d2 * d3 < 0.0d;
    }

    private String e(double d2) {
        if (Math.abs(d2) <= 45.0d) {
            return "回正车身";
        }
        return d2 > 0.0d ? k0.a(R.string.teachingk2_turn_steering_right) : k0.a(R.string.teachingk2_turn_steering_left);
    }

    private int f(double d2) {
        if (Math.abs(d2) < 45.0d) {
            return 0;
        }
        return d2 > 0.0d ? 2 : 1;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(TraceVariable traceVariable, e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        TraceVariable traceVariable2;
        String str = null;
        if (this.f5939a.isEmpty()) {
            Tiger.h(new a(false, 0, null, 30));
            TeachModel teachModelB = b(f0Var.c, teachModel, bVar, bVar2, f0Var);
            if (teachModelB == null || (traceVariable2 = teachModelB.getTraceVariable()) == null || g.b(traceVariable2.traces)) {
                return false;
            }
            int i = traceVariable2.range;
            this.c = i;
            this.b.f5963a = i;
            this.f5940d = Math.max(traceVariable2.time, 4000);
            cn.mucang.android.jiakaoyi.signal.utils.b bVarA = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(bVar);
            ArrayList arrayList = new ArrayList();
            Iterator<TraceItemModel> it = traceVariable2.traces.iterator();
            while (it.hasNext()) {
                arrayList.add(bVarA.c(it.next()));
            }
            this.f5939a.addAll(d.c(arrayList, 35.0d));
            LiveBus.d(cn.mucang.android.jiakaoyi.teachingk2.traceerror.a.class).l(new cn.mucang.android.jiakaoyi.teachingk2.traceerror.a(this.f5939a, false));
            int i2 = teachModel.step;
            if ((i2 == Step.K2_DaoCheRuKu.type && teachModel.subStep == 1) || ((i2 == Step.K2_CeFangTingChe.type && teachModel.subStep == 1) || (i2 == Step.K2_ShangPoQiBu.type && teachModel.subStep == 1))) {
                this.f5943g = new cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.c.b();
            } else {
                this.f5943g = new cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.c.a();
            }
        }
        if (!eVar.d().h() || this.f5939a.isEmpty() || !eVar.getCurrentPosition().b()) {
            return false;
        }
        cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.a aVar = this.b;
        if (aVar.f5964d) {
            return false;
        }
        this.f5943g.a(aVar, eVar.c(), eVar.d(), teachModel, bVar, this.f5939a);
        cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.a aVar2 = this.b;
        if (aVar2.f5964d) {
            Tiger.h(new a(false, 0, null, this.c));
        } else {
            if (Math.abs(aVar2.c - ((double) eVar.d().r)) < 60.0d) {
                cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.a aVar3 = this.b;
                if (aVar3.f5966f == 1 && aVar3.f5965e) {
                    aVar3.f5966f = 0;
                    this.f5942f = 0.0d;
                    Tiger.h(new a(false, 0, null, this.c));
                    return false;
                }
            }
            cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.a aVar4 = this.b;
            if (aVar4.f5966f != 0) {
                if ((this.f5941e > 0 && eVar.d().L - this.f5941e > this.f5940d) || c(this.f5942f, this.b.c)) {
                    String strE = e(this.b.c);
                    this.f5941e = eVar.d().L;
                    double d2 = this.b.c;
                    this.f5942f = d2;
                    Tiger.h(new a(true, f(d2), null, this.c));
                    str = strE;
                }
                if (str != null && eVar.d().c > 0.2d) {
                    LiveBus.c(new ErrorTipModel(str));
                }
            } else if (aVar4.b > this.c) {
                Tiger.h(new a(true, f(aVar4.c), this.f5939a, this.c));
                this.b.f5966f = 1;
                this.f5941e = eVar.d().L;
                String strE2 = e(this.b.c);
                this.f5942f = this.b.c;
                if (eVar.d().c > 0.2d) {
                    LiveBus.c(new ErrorTipModel(strE2));
                }
            }
        }
        return false;
    }
}
