package cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.SubStepEvent;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b<T extends cn.mucang.android.jiakaoyi.hpmap.a.a.b, C extends BaseStepConfig> implements cn.mucang.android.jiakaoyi.hpmap.a.a.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final List<T> f3692a;
    public boolean b;
    public boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final C f3693d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private e f3694e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3695f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List<BoundaryChecker<T>> f3696g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final c<T> f3697h;
    public boolean i;
    protected boolean j;
    protected Boolean k;
    public Line l;
    public Line m;
    public BoundaryChecker n;
    public T o;
    public cn.mucang.android.jiakaoyi.signal.utils.b p;
    public b<T, SimpleTeachingConfig> q;
    public SubStep r;

    public static class a {
    }

    public b(List<T> list, C c) {
        this(list, c, null);
    }

    private void F() {
        if (this.k.booleanValue()) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3691a.u();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void u() {
        w.l(this.o.s(), this.r.ordinal(), false);
    }

    public boolean A() {
        return true;
    }

    protected void B(String str, TtsGrade ttsGrade) {
        D(str, ttsGrade, null, 0, null);
    }

    protected void C(String str, TtsGrade ttsGrade, int i, String str2) {
        D(str, ttsGrade, null, i, str2);
    }

    protected void D(String str, TtsGrade ttsGrade, TtsListener ttsListener, int i, String str2) {
        if (this.q == null) {
            TtsManager.w(str, ttsGrade, ttsListener, i, str2);
        } else if (ttsListener != null) {
            ttsListener.onSpeakEnd();
        }
    }

    protected long E() {
        return 1000L;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.a.a.d
    public void a(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        if (this.k == null) {
            this.k = Boolean.valueOf(examProcessor.f3104a.p != 3);
        }
        CarPos carPosC = eVar.c();
        if (g.b(this.f3692a) || carPosC.bound == null || g.b(carPosC.carPoints)) {
            return;
        }
        this.f3695f = this.f3694e.a(eVar.d().F, eVar.d().L);
        Iterator<BoundaryChecker<T>> it = this.f3696g.iterator();
        while (it.hasNext()) {
            it.next().a(eVar, bVar, examProcessor);
        }
        b<T, SimpleTeachingConfig> bVar2 = this.q;
        if (bVar2 != null) {
            bVar2.k = this.k;
            bVar2.f3695f = this.f3695f;
        }
    }

    public boolean b(T t, CarPos carPos) {
        return false;
    }

    protected boolean c() {
        return true;
    }

    protected boolean d(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        b<T, SimpleTeachingConfig> bVar2;
        if ((!bVar.e(carPos) && !bVar.i(carPos)) || !eVar.d().F.isNotBack()) {
            b<T, SimpleTeachingConfig> bVar3 = this.q;
            return bVar3 != null && bVar3.d(eVar, carPos, bVar);
        }
        Line lineL = bVar.l();
        if (lineL != null && eVar.d().c()) {
            cn.mucang.android.jiakaoyi.signal.pos.c cVar = carPos.carRect;
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(cVar.f5820a, cVar.b, lineL.start, lineL.end)) {
                return true;
            }
            cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPos.carRect;
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(cVar2.c, cVar2.f5821d, lineL.start, lineL.end)) {
                return true;
            }
        }
        return cn.mucang.android.jiakaoyi.hpmap.a.a.c.b(carPos, bVar.f(), null, 20.0d, false) || ((bVar2 = this.q) != null && bVar2.d(eVar, carPos, bVar));
    }

    protected boolean e(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, T t) {
        return f(eVar, carPos, t);
    }

    protected boolean f(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, T t) {
        b<T, SimpleTeachingConfig> bVar;
        return cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(carPos, t.f()) || ((bVar = this.q) != null && bVar.f(eVar, carPos, t));
    }

    public boolean g(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, T t) {
        b<T, SimpleTeachingConfig> bVar = this.q;
        return bVar != null && bVar.f(eVar, carPos, t);
    }

    public DeductExtraData h(int i, cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        int i2;
        int i3;
        Line line = this.l;
        if (i < 0) {
            line = this.m;
        }
        if (this.p == null || eVar.c().center == null) {
            i2 = 0;
            i3 = 0;
        } else {
            Pos posA = this.p.a(eVar.c().center);
            int i4 = (int) posA.x;
            i3 = (int) posA.y;
            i2 = i4;
        }
        return new DeductExtraData(i, this.o.q(line), j(), i2, i3);
    }

    public DeductExtraData i() {
        return new DeductExtraData(0, 0, j(), 0, 0);
    }

    public int j() {
        b<T, SimpleTeachingConfig> bVar = this.q;
        return bVar != null ? bVar.r.ordinal() : this.r.ordinal();
    }

    public BoundaryChecker k() {
        for (BoundaryChecker<T> boundaryChecker : this.f3696g) {
            if (boundaryChecker.c() == BoundaryChecker.BoundaryState.Report) {
                return boundaryChecker;
            }
        }
        return null;
    }

    protected String[] l() {
        return null;
    }

    public e m() {
        return this.f3694e;
    }

    void n(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, T t, ExamProcessor examProcessor) {
        this.o = t;
        if (this.p == null) {
            this.p = t.g();
        }
        v(eVar, carPos, t, examProcessor);
        if (this.b && (t instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.e)) {
            LiveBus.d(cn.mucang.android.jiakaoyi.hpmap.a.a.e.class).l((cn.mucang.android.jiakaoyi.hpmap.a.a.e) t);
        }
        c<T> cVar = this.f3697h;
        if (cVar != null) {
            cVar.a(eVar, t, this);
        }
        b<T, SimpleTeachingConfig> bVar = this.q;
        if (bVar != null) {
            if (this.b) {
                bVar.b = true;
            }
            bVar.o = this.o;
            bVar.n(eVar, carPos, t, examProcessor);
        }
    }

    protected void o(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, T t, ExamProcessor examProcessor, BoundaryChecker.BoundaryState boundaryState) {
        this.o = t;
        if (this.p == null) {
            this.p = t.g();
        }
    }

    public boolean p() {
        return this.b;
    }

    public boolean q() {
        Iterator<BoundaryChecker<T>> it = this.f3696g.iterator();
        while (it.hasNext()) {
            if (it.next().f3686e) {
                return true;
            }
        }
        return false;
    }

    public boolean r() {
        Iterator<BoundaryChecker<T>> it = this.f3696g.iterator();
        while (it.hasNext()) {
            if (it.next().c() == BoundaryChecker.BoundaryState.Report) {
                return true;
            }
        }
        return false;
    }

    public boolean s() {
        Iterator<BoundaryChecker<T>> it = this.f3696g.iterator();
        while (it.hasNext()) {
            if (it.next().c() == BoundaryChecker.BoundaryState.Start) {
                return true;
            }
        }
        return false;
    }

    protected abstract void v(cn.mucang.android.jiakaoyi.signal.c.e eVar, CarPos carPos, T t, ExamProcessor examProcessor);

    protected abstract void w();

    public void x(boolean z) {
        this.b = z;
    }

    protected final void y(SubStep subStep) {
        this.r = subStep;
        if (subStep == SubStep.None || this.o == null) {
            return;
        }
        if (this.f3693d != null) {
            if (this.q == null) {
                F();
            }
        } else {
            String[] strArrL = l();
            if (strArrL != null && strArrL.length > subStep.ordinal()) {
                LiveBus.d(SubStepEvent.class).l(new SubStepEvent(subStep.ordinal(), this.o.s(), strArrL[subStep.ordinal()]));
            }
            F();
        }
    }

    public void z(b<T, SimpleTeachingConfig> bVar) {
        this.q = bVar;
        bVar.f3696g = this.f3696g;
    }

    public b(List<T> list, C c, c<T> cVar) {
        this(list, c, cVar, false);
    }

    public b(List<T> list, C c, c<T> cVar, boolean z) {
        this.i = true;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.p = null;
        this.r = SubStep.None;
        this.f3692a = list;
        this.f3693d = c;
        this.f3697h = cVar;
        this.f3694e = new e(E());
        this.j = z;
        this.f3696g = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            this.f3696g.add(new BoundaryChecker<>(it.next(), this, z));
        }
    }
}
