package cn.mucang.android.jiakaoyi.teachingk2.elements.handlers;

import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class u implements g0<TraceVariable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g0<TraceVariable> f7042a;
    private final g0<TraceVariable> b;
    private g0<TraceVariable> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f7043d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g0<TraceVariable> f7044e;

    public u() {
        new cn.mucang.android.jiakaoyi.teachingk2.traceerror.f();
        new cn.mucang.android.jiakaoyi.teachingk2.traceerror.d();
        cn.mucang.android.jiakaoyi.teachingk2.traceerror.e eVar = new cn.mucang.android.jiakaoyi.teachingk2.traceerror.e();
        this.f7042a = eVar;
        this.b = new cn.mucang.android.jiakaoyi.teachingk2.traceerror.c();
        this.c = eVar;
        this.f7043d = false;
        this.f7044e = new cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.b();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(TraceVariable traceVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        if (!eVar.d().h() || !eVar.getCurrentPosition().c()) {
            return false;
        }
        if (!this.f7043d) {
            this.f7043d = true;
            Iterator<TeachModel> it = f0Var.c.iterator();
            while (it.hasNext()) {
                if (it.next().getNormalVariable() != null) {
                    this.c = this.b;
                    break;
                }
            }
        }
        if (this.c == this.b) {
            this.f7044e.a(traceVariable, eVar, bVar, bVar2, teachModel, f0Var);
        }
        g0<TraceVariable> g0Var = this.c;
        return g0Var != null && g0Var.a(traceVariable, eVar, bVar, bVar2, teachModel, f0Var);
    }
}
