package cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.processor.exam.f;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.c;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.data.ErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.StopPositionHandler;
import cn.mucang.android.jiakaoyi.teachingk2.exe.k;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.grade.GradeModel;
import cn.mucang.android.jiakaoyi.teachingk2.grade.TeachConfig;
import cn.mucang.android.jiakaoyi.teachingk2.highlight.HighlightVideoManager;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.level.LevelStepCalculator;
import cn.mucang.android.jiakaoyi.teachingk2.o0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.TeachOutputHelper;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.TrainingStepHelper;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.jiakaoyi.uilib.record.UploadRecordManager;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f8477a;
    private cn.mucang.android.jiakaoyi.teachingk2.t0.b b;
    private final List<cn.mucang.android.jiakaoyi.engine.f.b> c = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<cn.mucang.android.jiakaoyi.engine.f.a> f8478d = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.f.b f8479e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.f.a f8480f = new cn.mucang.android.jiakaoyi.engine.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.u
        @Override // cn.mucang.android.jiakaoyi.engine.f.a
        public final void onStep(b bVar, c cVar) {
            this.f8505a.g(bVar, cVar);
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final k f8481g = new k() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.q
        @Override // cn.mucang.android.jiakaoyi.teachingk2.exe.k
        public final void a(TeachModel teachModel, ErrorModel errorModel) {
            d0.h(teachModel, errorModel);
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<EngineState> f8482h = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.s
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            this.f8503a.j((EngineState) obj);
        }
    };
    private final TeachOutputHelper i = new TeachOutputHelper(false, true);

    class a implements cn.mucang.android.jiakaoyi.engine.f.b {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
            UploadRecordManager.a(aVar);
            Iterator it = d0.this.c.iterator();
            while (it.hasNext()) {
                ((cn.mucang.android.jiakaoyi.engine.f.b) it.next()).onOneError(aVar);
            }
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onResult(f fVar) {
            UploadRecordManager.f9474a.h(fVar);
            Iterator it = d0.this.c.iterator();
            while (it.hasNext()) {
                ((cn.mucang.android.jiakaoyi.engine.f.b) it.next()).onResult(fVar);
            }
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f8484a;

        static {
            int[] iArr = new int[EngineState.values().length];
            f8484a = iArr;
            try {
                iArr[EngineState.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8484a[EngineState.Initialed.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8484a[EngineState.Start.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8484a[EngineState.InitError.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8484a[EngineState.Destroy.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public d0(boolean z) {
        this.f8477a = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void l(long j) {
        cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar = this.b;
        if (bVar == null) {
            this.b = new cn.mucang.android.jiakaoyi.teachingk2.t0.b(String.valueOf(j), this.f8479e, this.f8480f, this.f8482h, this.i, this.f8481g, this.f8477a ? n.b().j : n.b().i, this.f8477a ? new HashMap<>() : n.b().k, 2);
        } else {
            bVar.reset();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void g(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, c cVar) {
        Iterator<cn.mucang.android.jiakaoyi.engine.f.a> it = this.f8478d.iterator();
        while (it.hasNext()) {
            it.next().onStep(bVar, cVar);
        }
    }

    static /* synthetic */ void h(TeachModel teachModel, ErrorModel errorModel) {
        String str = ((VoiceModel) errorModel.errorForm).voice;
        GradeModel gradeModelA = TeachConfig.a();
        if (gradeModelA.getError()) {
            RobotTips.X(str, o0.b(errorModel.getConditionId(), gradeModelA, true), TtsGrade.TeachError, -1, null);
        }
        w.f(str, teachModel.step);
        cn.mucang.android.jiakaoyi.framework.log.f.o("触发纠错：" + teachModel.teachModelId + "," + ((VoiceModel) errorModel.errorForm).voice);
        if (errorModel.stopArea != StopPositionHandler.StopArea.Good) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：触发纠错中断录制");
            HighlightVideoManager.e(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void j(EngineState engineState) {
        Deduct deduct;
        if (b.f8484a[engineState.ordinal()] != 2) {
            return;
        }
        cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar = this.b;
        if (bVar != null && bVar.getEngine() != null && (deduct = this.b.getEngine().h().m.getDeduct(300112)) != null && deduct.needAutoCheck()) {
            TtsManager.z(k0.a(R.string.teachbase_on_left_signal_before_starting), TtsGrade.GlobalRemind);
        }
        r();
    }

    static /* synthetic */ void m(cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar) {
        if (bVar != null) {
            bVar.destroy();
        }
    }

    private void r() {
        cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar = this.b;
        if (bVar == null || bVar.getEngine() == null) {
            return;
        }
        TtsManager.H();
        if (this.b.canStart()) {
            this.b.start();
        }
    }

    private void t() {
        cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar = this.b;
        if (bVar != null) {
            bVar.stop();
        }
        TtsManager.H();
    }

    public void b() {
        cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar = this.b;
        if (bVar != null) {
            bVar.b();
        }
    }

    public void c() {
        this.i.b();
    }

    public boolean e() {
        return this.i.e();
    }

    public void n(cn.mucang.android.jiakaoyi.engine.f.a aVar) {
        if (this.f8478d.contains(aVar)) {
            return;
        }
        this.f8478d.add(aVar);
    }

    public void o(cn.mucang.android.jiakaoyi.engine.f.b bVar) {
        if (this.c.contains(bVar)) {
            return;
        }
        this.c.add(bVar);
    }

    public void p() {
        this.i.k();
    }

    public void q() {
        LevelStepCalculator.j();
        final long jE = ExamSiteUtil.e(0L);
        if (jE <= 0) {
            u.h(k0.a(R.string.teachbase_please_sel_site));
        }
        w.r.posMapCode = ExamSiteUtil.i(jE, KeMu.K2);
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.t
            @Override // java.lang.Runnable
            public final void run() {
                this.f8504a.l(jE);
            }
        });
        if (this.f8477a) {
            return;
        }
        TrainingStepHelper.g();
    }

    public void s() {
        LevelStepCalculator.k();
        t();
        final cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar = this.b;
        this.b = null;
        u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.r
            @Override // java.lang.Runnable
            public final void run() {
                d0.m(bVar);
            }
        }, 500L);
        TrainingStepHelper.i();
        this.i.g();
    }

    public void u(cn.mucang.android.jiakaoyi.engine.f.a aVar) {
        this.f8478d.remove(aVar);
    }

    public void v(cn.mucang.android.jiakaoyi.engine.f.b bVar) {
        this.c.remove(bVar);
    }
}
