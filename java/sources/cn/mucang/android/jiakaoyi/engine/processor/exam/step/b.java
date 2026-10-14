package cn.mucang.android.jiakaoyi.engine.processor.exam.step;

import android.util.Log;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f3140a;
    private final e b;
    private final List<e> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<e> f3141d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Step f3142e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final cn.mucang.android.jiakaoyi.engine.i.c.b f3143f;
    private long k;
    private final d l;
    public boolean n;
    public float o;
    public ExamProcessor p;
    public ExamStepStatus i = ExamStepStatus.None;
    private int j = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3144g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f3145h = false;
    private boolean m = true;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ExamProcessor f3146a;
        final /* synthetic */ cn.mucang.android.jiakaoyi.engine.model.a b;

        a(b bVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.model.a aVar) {
            this.f3146a = examProcessor;
            this.b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3146a.b.onOneError(this.b);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.engine.processor.exam.step.b$b, reason: collision with other inner class name */
    class RunnableC0103b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ExamProcessor f3147a;
        final /* synthetic */ cn.mucang.android.jiakaoyi.engine.model.a b;

        RunnableC0103b(b bVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.model.a aVar) {
            this.f3147a = examProcessor;
            this.b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3147a.b.onOneError(this.b);
        }
    }

    public b(Step step, cn.mucang.android.jiakaoyi.engine.i.c.b bVar, d dVar, e eVar, e eVar2, List<e> list, List<e> list2) {
        this.f3142e = step;
        this.f3143f = bVar;
        this.l = dVar;
        this.f3140a = eVar;
        this.b = eVar2;
        this.c = list;
        this.f3141d = list2;
    }

    private c b(f fVar, ExamProcessor examProcessor) {
        if (fVar != null && fVar.b.size() > 0) {
            for (cn.mucang.android.jiakaoyi.engine.model.a aVar : new ArrayList(fVar.b)) {
                if (aVar.f3102a.deductScore > 0) {
                    examProcessor.b(aVar);
                    u.c(new RunnableC0103b(this, examProcessor, aVar));
                }
            }
        }
        if (examProcessor.j() || examProcessor.k) {
            return null;
        }
        return g(examProcessor);
    }

    private c g(ExamProcessor examProcessor) {
        long j = examProcessor.i - this.k;
        examProcessor.L(this.f3142e, j);
        return new c(j, this.f3142e);
    }

    private f i(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.signal.c.e eVar2, boolean z) {
        try {
            if (eVar.isTrigger(eVar2, examProcessor, this, z)) {
                return eVar.handle(eVar2, examProcessor, this);
            }
            return null;
        } catch (Throwable th) {
            t.d("TAG", this.f3142e.zhStepName + "--步骤执行错误:" + th.toString());
            cn.mucang.android.jiakaoyi.framework.log.f.o("StepHandler : 步骤执行错误,Step:" + this.f3142e.zhStepName + ",事件:" + eVar.getClass().getSimpleName() + ", error = " + Log.getStackTraceString(th));
            return null;
        }
    }

    public boolean a() {
        e eVar = this.f3140a;
        if (eVar instanceof cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b) {
            return ((cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b) eVar).needToCheck();
        }
        return false;
    }

    public boolean c() {
        ExamProcessor examProcessor = this.p;
        return examProcessor != null && examProcessor.isStarted();
    }

    public c d(ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        this.f3145h = true;
        this.i = ExamStepStatus.End;
        if (eVar != null) {
            Iterator<e> it = this.f3141d.iterator();
            while (it.hasNext()) {
                b(i(it.next(), examProcessor, eVar, false), examProcessor);
            }
        }
        return g(examProcessor);
    }

    public e e() {
        return this.f3140a;
    }

    public <T extends d> T f() {
        T t = (T) this.l;
        if (t == null) {
            return null;
        }
        return t;
    }

    public c h(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, boolean z) {
        this.p = examProcessor;
        boolean z2 = false;
        if (this.f3144g) {
            d dVar = this.l;
            if (dVar != null) {
                dVar.onChange(eVar, this, examProcessor);
            }
            e eVar2 = this.b;
            f fVarI = eVar2 == null ? null : i(eVar2, examProcessor, eVar, z);
            if (fVarI != null && fVarI.c) {
                z2 = true;
            }
            this.f3145h = z2;
            if (z2) {
                this.i = ExamStepStatus.End;
                return g(examProcessor);
            }
            if (this.c.size() > 0) {
                if (this.j < this.c.size()) {
                    f fVarI2 = i(this.c.get(this.j), examProcessor, eVar, z);
                    if (fVarI2 != null) {
                        if (b(fVarI2, examProcessor) != null) {
                            this.f3145h = true;
                            this.i = ExamStepStatus.End;
                        }
                        if (fVarI2.c) {
                            this.j++;
                        }
                        if (this.j > this.c.size() - 1) {
                            this.f3145h = true;
                            this.i = ExamStepStatus.End;
                        }
                    }
                } else if (this.b == null) {
                    this.f3145h = true;
                    this.i = ExamStepStatus.End;
                }
            }
            Iterator<e> it = this.f3141d.iterator();
            while (it.hasNext()) {
                if (b(i(it.next(), examProcessor, eVar, z), examProcessor) != null) {
                    this.f3145h = true;
                    this.i = ExamStepStatus.End;
                }
            }
            if (this.f3145h) {
                return g(examProcessor);
            }
        } else {
            d dVar2 = this.l;
            if (dVar2 != null) {
                dVar2.beforeStart(eVar, this, examProcessor);
            }
            z2 = i(this.f3140a, examProcessor, eVar, z) != null;
            this.f3144g = z2;
            if (z2) {
                this.i = ExamStepStatus.Start;
                this.k = examProcessor.i;
                this.o = eVar.d().C;
            }
        }
        return null;
    }

    public boolean j() {
        return this.i == ExamStepStatus.End;
    }

    public boolean k() {
        return this.m;
    }

    public boolean l() {
        return this.i == ExamStepStatus.Start;
    }

    public c m(int[] iArr, ExamProcessor examProcessor) {
        for (int i : iArr) {
            Deduct deductN = examProcessor.n(i);
            if (deductN != null && deductN.deductScore > 0 && (deductN.judgeType.needManual() || deductN.judgeType.needAuto())) {
                if (examProcessor.f3104a.f3123h) {
                    if (examProcessor.f3104a.i) {
                        TtsManager.s(deductN.desc, TtsGrade.ExamDeduct, i);
                    } else {
                        TtsManager.s(deductN.name, TtsGrade.ExamDeduct, i);
                    }
                }
                cn.mucang.android.jiakaoyi.engine.model.a aVar = new cn.mucang.android.jiakaoyi.engine.model.a(deductN, System.currentTimeMillis(), examProcessor.f3104a.f3123h);
                examProcessor.b(aVar);
                u.c(new a(this, examProcessor, aVar));
            }
        }
        return null;
    }

    public boolean n() {
        e eVar = this.f3140a;
        if (eVar instanceof cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b) {
            return ((cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b) eVar).needRepeatHandle();
        }
        return true;
    }

    public void o(boolean z) {
        this.m = z;
    }

    public long p() {
        return this.k;
    }
}
