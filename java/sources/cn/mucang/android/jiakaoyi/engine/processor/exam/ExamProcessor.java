package cn.mucang.android.jiakaoyi.engine.processor.exam;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.param.ExamParam;
import cn.mucang.android.jiakaoyi.engine.config.route.RouteConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.signal.center.model.GearType;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class ExamProcessor implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f3104a;
    public final cn.mucang.android.jiakaoyi.engine.f.b b;
    private final cn.mucang.android.jiakaoyi.engine.f.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Handler f3105d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.c f3106e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final f f3107f;
    public long i;
    public float j;
    public final boolean k;
    private boolean l;
    private volatile State m;
    private cn.mucang.android.jiakaoyi.engine.i.a o;
    private cn.mucang.android.jiakaoyi.signal.c.e p;
    private int q;
    private boolean r;
    public final cn.mucang.android.jiakaoyi.engine.processor.exam.h.b s;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Map<Step, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> f3108g = new ConcurrentHashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Set<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> f3109h = new HashSet();
    public final cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.a n = new cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.a();
    private final List<g> t = new ArrayList();

    public enum State {
        Idle,
        Running,
        Stopping,
        Stopped
    }

    public ExamProcessor(d dVar, cn.mucang.android.jiakaoyi.engine.f.b bVar, cn.mucang.android.jiakaoyi.engine.f.a aVar, cn.mucang.android.jiakaoyi.engine.c cVar, boolean z, cn.mucang.android.jiakaoyi.engine.i.a aVar2) {
        this.f3104a = dVar;
        int i = dVar.p;
        this.b = new cn.mucang.android.jiakaoyi.engine.processor.exam.i.c(bVar, i);
        this.o = aVar2;
        this.c = new cn.mucang.android.jiakaoyi.engine.processor.exam.i.b(aVar, i);
        f fVar = new f(dVar.f3118a);
        this.f3107f = fVar;
        fVar.f3124a = dVar.c;
        this.f3106e = cVar;
        this.k = z;
        this.f3105d = new Handler(Looper.getMainLooper());
        dVar.f();
        ExamParam examParam = dVar.n;
        if (examParam != null) {
            this.l = examParam.canCheckGlobalEvent();
        } else {
            this.l = false;
        }
        this.m = State.Idle;
        this.q = 0;
        this.r = true;
        this.s = new cn.mucang.android.jiakaoyi.engine.processor.exam.h.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void B(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        this.c.onStep(bVar, cVar);
        if (this.f3104a.e()) {
            LiveBus.d(cn.mucang.android.jiakaoyi.engine.i.f.a.class).l(new cn.mucang.android.jiakaoyi.engine.i.f.a(bVar.j(), bVar.l(), bVar.f3142e.type));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void D(f fVar) {
        this.b.onResult(fVar);
    }

    private void E() {
        if (!this.f3107f.b && !this.k) {
            this.m = State.Stopped;
            F();
        } else if (w()) {
            F();
        }
    }

    private void F() {
        this.f3106e.n();
        G();
    }

    private void G() {
        final f fVarB = this.f3107f.b();
        this.f3105d.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.processor.exam.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f3111a.D(fVarB);
            }
        });
    }

    private void K() {
        f fVar = this.f3107f;
        fVar.f3124a = this.f3104a.c - fVar.c();
        f fVar2 = this.f3107f;
        fVar2.b = fVar2.f3124a >= this.f3104a.b;
    }

    private void k(List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> list) {
        if (this.f3104a.o || list.size() <= 0) {
            return;
        }
        Iterator<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> it = list.iterator();
        while (it.hasNext()) {
            l(it.next());
        }
        list.clear();
    }

    private void l(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (this.f3104a.o) {
            return;
        }
        Iterator<Map.Entry<Step, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b>> it = this.f3108g.entrySet().iterator();
        while (it.hasNext()) {
            cn.mucang.android.jiakaoyi.engine.processor.exam.step.b value = it.next().getValue();
            if (bVar != value && value.l() && !value.j()) {
                it.remove();
                value.o(false);
                i(value, value.d(this, this.p));
            }
        }
        List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> list = this.f3104a.f3119d;
        if (list.size() > 0) {
            for (cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar2 : list) {
                if (bVar != bVar2 && bVar2.l() && !bVar2.j()) {
                    bVar2.o(false);
                    i(bVar2, bVar2.d(this, this.p));
                }
            }
        }
    }

    private boolean m(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.signal.c.e eVar, boolean z, List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> list) {
        boolean zL = bVar.l();
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVarH = bVar.h(eVar, this, z);
        if (!zL && bVar.l()) {
            if (!this.f3104a.o && list != null) {
                list.add(bVar);
            }
            k(list);
            i(bVar, cVarH);
        }
        if (cVarH == null) {
            return false;
        }
        K();
        i(bVar, cVarH);
        return true;
    }

    private cn.mucang.android.jiakaoyi.engine.processor.exam.step.b u(Step step) {
        for (Map.Entry<Step, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> entry : this.f3108g.entrySet()) {
            if (entry.getKey().type == step.type) {
                return entry.getValue();
            }
        }
        return null;
    }

    public void H(String str, TtsGrade ttsGrade) {
        J(str, ttsGrade, null, 0, null);
    }

    public void I(String str, TtsGrade ttsGrade, int i, String str2) {
        J(str, ttsGrade, null, i, str2);
    }

    public void J(String str, TtsGrade ttsGrade, TtsListener ttsListener, int i, String str2) {
        if (this.f3104a.p == 1) {
            TtsManager.w(str, ttsGrade, ttsListener, i, str2);
        } else if (ttsListener != null) {
            ttsListener.onSpeakEnd();
        }
    }

    public void L(Step step, long j) {
        this.f3107f.e(step, j);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.e
    public void a(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        if (aVar != null && aVar.f3102a != null) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("deleteDeduct " + JSON.toJSONString(aVar.f3102a));
        }
        this.f3107f.d(aVar);
        K();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.e
    public void b(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        this.f3107f.a(aVar);
        K();
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:62:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:75:0x011d  */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.e
    public void c(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar;
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar2;
        Step step;
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVarU;
        Step step2;
        if (this.m == State.Stopped) {
            return;
        }
        if (this.f3104a.a()) {
            RouteConfig routeConfig = this.f3104a.m;
            w.Q(routeConfig.mapSiteId, routeConfig.mapMd5, eVar.d().L);
        }
        this.p = eVar;
        if (this.m == State.Idle) {
            this.j = eVar.d().C;
            long j = eVar.d().L;
            this.m = State.Running;
        }
        this.n.d();
        this.i = eVar.d().L;
        this.s.b(eVar, this);
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<Step, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b>> it = this.f3108g.entrySet().iterator();
        while (it.hasNext()) {
            cn.mucang.android.jiakaoyi.engine.processor.exam.step.b value = it.next().getValue();
            if (value.j() || m(value, eVar, true, arrayList)) {
                it.remove();
            }
            if (!this.l && value.l() && (step2 = value.f3142e) != Step.K3_ShangChe && step2 != Step.K3_LightSimulate) {
                this.l = true;
                if (MucangConfig.v()) {
                    u.h("开始执行全局事件");
                }
            }
        }
        d dVar = this.f3104a;
        List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> list = dVar.f3119d;
        if (dVar.j && list.size() > 0) {
            int i = 0;
            while (i < list.size()) {
                ExamParam examParam = this.f3104a.n;
                if (examParam == null || !examParam.needOrderExe() || this.r) {
                    bVar2 = list.get(i);
                    if (!bVar2.j()) {
                        bVarU = u(bVar2.f3142e);
                        if (bVarU == null) {
                            m(bVar2, eVar, false, arrayList);
                            if (bVar2.l()) {
                                this.q = i;
                            }
                        } else if (bVarU.l()) {
                            this.q = i;
                        }
                    }
                    if (!this.l && bVar2.l() && (step = bVar2.f3142e) != Step.K3_ShangChe && step != Step.K3_LightSimulate) {
                        this.l = true;
                        if (MucangConfig.v()) {
                            u.h("开始执行全局事件");
                        }
                    }
                    if (this.r && bVar2.l()) {
                        this.r = false;
                        this.q = i;
                    }
                    if (this.r && bVar2.j() && i == list.size() - 1) {
                        this.r = true;
                    }
                } else {
                    int i2 = this.q;
                    if (i == i2 || i == i2 + 1 || i == i2 + 2) {
                        bVar2 = list.get(i);
                        if (!bVar2.j()) {
                            bVarU = u(bVar2.f3142e);
                            if (bVarU == null) {
                                m(bVar2, eVar, false, arrayList);
                                if (bVar2.l()) {
                                    this.q = i;
                                }
                            } else if (bVarU.l()) {
                                this.q = i;
                            }
                        }
                        if (!this.l) {
                            this.l = true;
                            if (MucangConfig.v()) {
                                u.h("开始执行全局事件");
                            }
                        }
                        if (this.r) {
                            this.r = false;
                            this.q = i;
                        }
                        if (this.r) {
                        }
                    }
                }
                i++;
            }
            if (this.o != null) {
                ArrayList<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> arrayList2 = new ArrayList();
                for (cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar3 : list) {
                    if (bVar3.j() && bVar3.n() && !this.f3109h.contains(bVar3)) {
                        arrayList2.add(bVar3);
                    }
                }
                boolean z = false;
                for (cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar4 : arrayList2) {
                    if (this.m == State.Running) {
                        cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVarOnStepEnd = this.o.onStepEnd(bVar4);
                        if (bVarOnStepEnd != null) {
                            int iIndexOf = list.indexOf(bVar4);
                            if (iIndexOf >= 0) {
                                list.set(iIndexOf, bVarOnStepEnd);
                                z = true;
                            }
                        } else {
                            this.f3109h.add(bVar4);
                        }
                    }
                }
                if (z) {
                    Runtime.getRuntime().gc();
                }
            }
        }
        if (this.m == State.Stopping) {
            this.m = State.Stopped;
        }
        if (!this.t.isEmpty()) {
            Iterator<g> it2 = this.t.iterator();
            while (it2.hasNext()) {
                if (it2.next().a(eVar, this)) {
                    it2.remove();
                }
            }
        }
        if (this.l && (bVar = this.f3104a.f3121f) != null && bVar.h(eVar, this, false) != null) {
            K();
        }
        E();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.e
    public void d(Step step) {
        if (this.p != null) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("exeThisStep " + step + " ; currentSignal time " + this.p.d().L + " ; diffTime " + (SystemClock.elapsedRealtime() - this.p.d().L));
        }
        for (cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar : this.f3104a.f3119d) {
            if (bVar.f3142e == step && bVar.l() && !bVar.j()) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("exeThisStep step " + bVar.f3142e + " isStart " + bVar.l() + " ; isEnd " + bVar.j() + " ; state = " + this.m);
                return;
            }
        }
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar2 = this.f3108g.get(step);
        if (bVar2 != null) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("exeThisStep  syncExeList 已经有 step " + bVar2.f3142e + " ； stepHandler state " + bVar2.i + " ; state = " + this.m);
            return;
        }
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVarG = this.f3104a.g(step);
        if (bVarG != null) {
            this.f3108g.put(step, bVarG);
            cn.mucang.android.jiakaoyi.framework.log.f.o("exeThisStep  syncExeList steps " + JSON.toJSONString(this.f3108g.keySet()) + " ; state = " + this.m);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.e
    public void e(Step step) {
        List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> list = this.f3104a.f3119d;
        if (list.size() > 0) {
            Iterator<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> it = list.iterator();
            while (it.hasNext()) {
                cn.mucang.android.jiakaoyi.engine.processor.exam.step.b next = it.next();
                if (!next.l() && step.type == next.f3142e.type) {
                    it.remove();
                }
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.e
    public void f(Step step, int[] iArr) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("onManualIntervene step " + step + " ; codes " + iArr);
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVarG = this.f3104a.f3121f;
        if (bVarG == null || step != bVarG.f3142e) {
            bVarG = null;
        }
        if (bVarG == null && this.f3108g.size() > 0) {
            bVarG = this.f3108g.get(step);
        }
        List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> list = this.f3104a.f3119d;
        if (bVarG == null && list.size() > 0) {
            for (cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar : list) {
                if (bVar.f3142e == step) {
                    bVarG = bVar;
                    break;
                }
            }
        }
        if (bVarG == null) {
            bVarG = this.f3104a.g(step);
        }
        if (bVarG == null || bVarG.m(iArr, this) == null) {
            return;
        }
        K();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.e
    public void g(Step step) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("successThisStep step " + step);
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar = this.f3108g.get(step);
        if (bVar == null) {
            List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> list = this.f3104a.f3119d;
            if (list.size() > 0) {
                for (cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar2 : list) {
                    if (bVar2.f3142e == step) {
                        bVar = bVar2;
                        break;
                    }
                }
            }
        }
        if (bVar == null || !bVar.l()) {
            return;
        }
        i(bVar, bVar.d(this, this.p));
    }

    public void h(g gVar) {
        if (this.t.contains(gVar)) {
            return;
        }
        this.t.add(gVar);
    }

    public void i(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, final cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        if (this.c == null) {
            return;
        }
        final cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar2 = new cn.mucang.android.jiakaoyi.engine.processor.exam.step.b(bVar.f3142e, bVar.f3143f, bVar.f(), bVar.e(), null, new ArrayList(), new ArrayList());
        bVar2.o = bVar.o;
        bVar2.n = bVar.n;
        bVar2.i = bVar.i;
        this.f3105d.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.processor.exam.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f3110a.B(bVar2, cVar);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.e
    public boolean isStarted() {
        return this.m == State.Running;
    }

    public boolean j() {
        K();
        return this.f3107f.b;
    }

    public Deduct n(int i) {
        return this.f3104a.m.getDeduct(i);
    }

    public cn.mucang.android.jiakaoyi.engine.c o() {
        return this.f3106e;
    }

    public GearType p() {
        return this.f3104a.l;
    }

    public List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> q() {
        ArrayList arrayList = new ArrayList();
        if (this.f3108g.size() > 0) {
            Iterator<Map.Entry<Step, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b>> it = this.f3108g.entrySet().iterator();
            while (it.hasNext()) {
                cn.mucang.android.jiakaoyi.engine.processor.exam.step.b value = it.next().getValue();
                if (value.l() && !value.j()) {
                    arrayList.add(value);
                }
            }
        }
        List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> list = this.f3104a.f3119d;
        if (list.size() > 0) {
            for (cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar : list) {
                if (bVar.l() && !bVar.j()) {
                    arrayList.add(bVar);
                }
            }
        }
        return arrayList;
    }

    public <T extends BaseStepConfig> T r(Step step) {
        return (T) this.f3104a.m.getConfig(step);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.e
    public void reset() {
        this.m = State.Idle;
    }

    public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b s() {
        if (this.f3108g.size() > 0) {
            Iterator<Map.Entry<Step, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b>> it = this.f3108g.entrySet().iterator();
            while (it.hasNext()) {
                cn.mucang.android.jiakaoyi.engine.processor.exam.step.b value = it.next().getValue();
                if (value.l() && !value.j()) {
                    return value;
                }
            }
        }
        List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> list = this.f3104a.f3119d;
        if (list.size() <= 0) {
            return null;
        }
        for (cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar : list) {
            if (bVar.l() && !bVar.j()) {
                return bVar;
            }
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.e
    public void stop() {
        this.m = State.Stopping;
    }

    public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b t(Step step) {
        if (this.f3108g.size() > 0) {
            Iterator<Map.Entry<Step, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b>> it = this.f3108g.entrySet().iterator();
            while (it.hasNext()) {
                cn.mucang.android.jiakaoyi.engine.processor.exam.step.b value = it.next().getValue();
                if (step == value.f3142e && value.l() && !value.j()) {
                    return value;
                }
            }
        }
        List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> list = this.f3104a.f3119d;
        if (list.size() <= 0) {
            return null;
        }
        for (cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar : list) {
            if (step == bVar.f3142e && bVar.l() && !bVar.j()) {
                return bVar;
            }
        }
        return null;
    }

    public boolean v() {
        if (this.f3108g.size() > 0) {
            Iterator<Map.Entry<Step, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b>> it = this.f3108g.entrySet().iterator();
            while (it.hasNext()) {
                cn.mucang.android.jiakaoyi.engine.processor.exam.step.b value = it.next().getValue();
                if (value.l() && !value.j()) {
                    return true;
                }
            }
        }
        List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> list = this.f3104a.f3119d;
        if (list.size() <= 0) {
            return false;
        }
        for (cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar : list) {
            if (bVar.l() && !bVar.j()) {
                return true;
            }
        }
        return false;
    }

    public boolean w() {
        return this.m == State.Stopped;
    }

    public boolean x() {
        return this.f3104a.l.isManual();
    }

    public boolean y(Step step) {
        if (this.f3108g.size() > 0) {
            Iterator<Map.Entry<Step, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b>> it = this.f3108g.entrySet().iterator();
            while (it.hasNext()) {
                cn.mucang.android.jiakaoyi.engine.processor.exam.step.b value = it.next().getValue();
                if (value.l() && !value.j() && step == value.f3142e) {
                    return true;
                }
            }
        }
        List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> list = this.f3104a.f3119d;
        if (list.size() <= 0) {
            return false;
        }
        for (cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar : list) {
            if (bVar.l() && !bVar.j() && step == bVar.f3142e) {
                return true;
            }
        }
        return false;
    }

    public boolean z() {
        return this.m == State.Stopped || this.m == State.Stopping;
    }
}
