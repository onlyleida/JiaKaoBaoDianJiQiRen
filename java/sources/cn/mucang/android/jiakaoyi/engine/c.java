package cn.mucang.android.jiakaoyi.engine;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.config.route.RouteConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    private final cn.mucang.android.jiakaoyi.engine.i.d b;
    private final cn.mucang.android.jiakaoyi.engine.processor.exam.c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.f.b f3073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.f.a f3074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.i.a f3075f;
    private cn.mucang.android.jiakaoyi.engine.processor.exam.d i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.c.f.a f3072a = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.engine.a
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            this.f3070a.d(eVar);
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f3077h = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final e f3076g = new e();

    public c(cn.mucang.android.jiakaoyi.engine.processor.exam.c cVar, cn.mucang.android.jiakaoyi.engine.f.b bVar, cn.mucang.android.jiakaoyi.engine.f.a aVar, cn.mucang.android.jiakaoyi.engine.i.a aVar2) {
        this.c = cVar;
        this.f3073d = bVar;
        this.f3074e = aVar;
        this.i = cVar.a(null);
        this.f3075f = aVar2;
        this.b = new cn.mucang.android.jiakaoyi.engine.i.d(new ExamProcessor(this.i, bVar, aVar, this, cVar.f3114e, aVar2));
    }

    public synchronized void a(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        this.b.b(aVar);
    }

    public synchronized void b(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        this.b.e(aVar);
    }

    public void c() {
        this.f3076g.b();
        m();
        this.f3077h = true;
        this.b.f();
        Runtime.getRuntime().gc();
    }

    public synchronized void d(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        CarPos carPosC;
        this.b.c(eVar);
        w.X(eVar.d().L);
        if (this.f3077h && k() && w.p() && (carPosC = eVar.c()) != null && g.d(carPosC.carPoints)) {
            this.f3077h = false;
            w.b(carPosC);
        }
    }

    public void e(Step step) {
        this.b.h(step);
    }

    public void f(Step step, int i) {
        g(step, new int[]{i});
    }

    public void g(Step step, int[] iArr) {
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        this.b.k(step, iArr);
    }

    public cn.mucang.android.jiakaoyi.engine.processor.exam.d h() {
        return this.i;
    }

    public e i() {
        return this.f3076g;
    }

    public boolean j() {
        return this.b.i();
    }

    public boolean k() {
        return this.b.j();
    }

    public void l() {
        this.b.l();
    }

    public void m() {
        cn.mucang.android.jiakaoyi.signal.c.d dVar = cn.mucang.android.jiakaoyi.signal.c.d.m;
        dVar.n(this.f3072a);
        dVar.o();
    }

    public void n() {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f3071a.m();
            }
        });
    }

    public void o() {
        this.f3076g.b();
        this.b.m();
        cn.mucang.android.jiakaoyi.engine.processor.exam.d dVar = this.i;
        cn.mucang.android.jiakaoyi.engine.processor.exam.d dVarA = this.c.a(dVar != null ? dVar.m : null);
        this.i = dVarA;
        this.b.p(new ExamProcessor(dVarA, this.f3073d, this.f3074e, this, this.c.f3114e, this.f3075f));
        this.b.n();
    }

    public void p() {
        this.b.n();
    }

    public void q(boolean z) {
        this.c.f3113d = z;
        this.i.j = z;
    }

    public void r(boolean z) {
        this.c.c = z;
        this.i.f3123h = z;
    }

    public boolean s() {
        cn.mucang.android.jiakaoyi.signal.c.d dVar = cn.mucang.android.jiakaoyi.signal.c.d.m;
        dVar.b(this.f3072a);
        if (AppUtils.g()) {
            dVar.a();
        }
        boolean zQ = this.b.q();
        if (zQ && this.i.a()) {
            RouteConfig routeConfig = this.i.m;
            w.Q(routeConfig.mapSiteId, routeConfig.mapMd5, cn.mucang.android.jiakaoyi.signal.c.d.t().d().L);
        }
        return zQ;
    }

    public void t() {
        this.f3076g.b();
        m();
        this.b.r();
        this.f3077h = true;
    }

    public void u(Step step) {
        this.b.s(step);
    }
}
