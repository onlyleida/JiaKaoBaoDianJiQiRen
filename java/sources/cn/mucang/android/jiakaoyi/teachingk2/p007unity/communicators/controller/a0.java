package cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller;

import android.app.Dialog;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.f;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.examk2.common.K2ExamLogic;
import cn.mucang.android.jiakaoyi.examk2.common.q;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhaiLuDiaoTouConfig;
import cn.mucang.android.jiakaoyi.examk2.event.ShangPoTimeDownEvent;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.dialogmgr.DialogMgr;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.countdown.c;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.n;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.CountDownModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.ExamStepListModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.StartTimeModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamDataModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamDeductModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamResultModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamScoreModel;
import cn.mucang.android.jiakaoyi.unity.c.d;
import cn.mucang.jiakaoyi.uilib.ui.dialog.m0;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.examk2.a.b f8452a;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.engine.processor.exam.step.b f8453d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Dialog f8454e;
    private boolean b = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.b> f8455f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final androidx.lifecycle.a0<cn.mucang.android.jiakaoyi.hpmap.a.a.countdown.c> f8456g = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.f
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            a0.o((c) obj);
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.lifecycle.a0<ShangPoTimeDownEvent> f8457h = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.c
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            a0.p((ShangPoTimeDownEvent) obj);
        }
    };
    private final cn.mucang.android.jiakaoyi.framework.h.b<EngineState> i = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.g
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            this.f8491a.r((EngineState) obj);
        }
    };
    private final q j = new a();

    class a implements q {

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.a0$a$a, reason: collision with other inner class name */
        class C0142a implements DialogMgr.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ m0 f8459a;
            final /* synthetic */ List b;
            final /* synthetic */ int c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ boolean f8460d;

            C0142a(m0 m0Var, List list, int i, boolean z) {
                this.f8459a = m0Var;
                this.b = list;
                this.c = i;
                this.f8460d = z;
            }

            private void a(cn.mucang.android.jiakaoyi.framework.h.b<DialogMgr.a> bVar) {
                if (bVar != null) {
                    bVar.callback(this);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public /* synthetic */ void e(cn.mucang.android.jiakaoyi.framework.h.b bVar, Boolean bool) {
                a(bVar);
            }

            @Override // cn.mucang.android.jiakaoyi.framework.dialogmgr.DialogMgr.a
            /* JADX INFO: renamed from: b */
            public int getF7255a() {
                return 2;
            }

            @Override // cn.mucang.android.jiakaoyi.framework.dialogmgr.DialogMgr.a
            public void c(final cn.mucang.android.jiakaoyi.framework.h.b<DialogMgr.a> bVar) {
                a0.this.f8454e = this.f8459a.h(MucangConfig.i(), this.b, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.b
                    @Override // cn.mucang.android.jiakaoyi.framework.h.b
                    public final void callback(Object obj) {
                        this.f8464a.e(bVar, (Boolean) obj);
                    }
                }, this.c, this.f8460d);
                if (a0.this.f8454e != null || bVar == null) {
                    return;
                }
                bVar.callback(this);
            }
        }

        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.examk2.common.q
        public void a(m0 m0Var, List<cn.mucang.android.jiakaoyi.engine.model.a> list, int i, boolean z) {
            DialogMgr.d(new C0142a(m0Var, list, i, z));
        }
    }

    class b implements cn.mucang.android.jiakaoyi.engine.f.b {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
            UnityExamDeductModel unityExamDeductModel = new UnityExamDeductModel();
            Deduct deduct = aVar.f3102a;
            unityExamDeductModel.desc = deduct.name;
            unityExamDeductModel.code = deduct.code;
            unityExamDeductModel.step = deduct.step.getStepName();
            unityExamDeductModel.score = aVar.f3102a.deductScore;
            d.e(unityExamDeductModel);
            UnityExamScoreModel unityExamScoreModel = new UnityExamScoreModel();
            unityExamScoreModel.score = a0.this.f8452a.d().t();
            d.e(unityExamScoreModel);
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onResult(f fVar) {
            if (a0.this.f8453d != null && a0.this.f8452a != null) {
                a0 a0Var = a0.this;
                a0Var.s(a0Var.f8452a.d().u(a0.this.f8453d), a0.this.f8453d.f3142e);
            }
            a0.this.f8453d = null;
            UnityExamResultModel unityExamResultModel = new UnityExamResultModel();
            unityExamResultModel.isSuccess = fVar.b;
            unityExamResultModel.score = fVar.f3124a;
            d.e(unityExamResultModel);
            RobotTips.f7184a.i0(fVar.b);
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f8463a;

        static {
            int[] iArr = new int[EngineState.values().length];
            f8463a = iArr;
            try {
                iArr[EngineState.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8463a[EngineState.Initialed.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8463a[EngineState.Start.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8463a[EngineState.InitError.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8463a[EngineState.Destroy.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void g() {
        cn.mucang.android.jiakaoyi.examk2.a.b bVar = this.f8452a;
        if (bVar == null || bVar.getEngine() == null) {
            return;
        }
        this.f8455f.clear();
        K2CeFangTingCheConfig k2CeFangTingCheConfig = (K2CeFangTingCheConfig) this.f8452a.getEngine().h().m.getConfig(Step.K2_CeFangTingChe);
        if (((Boolean) k2CeFangTingCheConfig.p406120.value).booleanValue()) {
            double dDoubleValue = ((Integer) k2CeFangTingCheConfig.p406121.value).doubleValue();
            for (cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar2 : this.f8452a.c().f4724e) {
                Line line = bVar2.m;
                Line lineP = cn.mucang.android.jiakaoyi.hpmap.d.a.p(line.start, line.end, dDoubleValue);
                if (!bVar2.x && !this.f8455f.contains(bVar2)) {
                    bVar2.x = true;
                    Line line2 = bVar2.m;
                    Pos pos = line2.start;
                    Pos pos2 = lineP.start;
                    pos.x = pos2.x;
                    pos.y = pos2.y;
                    Pos pos3 = line2.end;
                    Pos pos4 = lineP.end;
                    pos3.x = pos4.x;
                    pos3.y = pos4.y;
                    this.f8455f.add(bVar2);
                }
            }
        }
    }

    private void j(long j) {
        cn.mucang.android.jiakaoyi.examk2.a.b bVar = this.f8452a;
        if (bVar != null) {
            bVar.reset();
            return;
        }
        cn.mucang.android.jiakaoyi.examk2.a.b bVar2 = new cn.mucang.android.jiakaoyi.examk2.a.b(String.valueOf(j), this.i, false);
        this.f8452a = bVar2;
        bVar2.d().R(this.j);
        this.f8452a.d().n(new cn.mucang.android.jiakaoyi.engine.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.e
            @Override // cn.mucang.android.jiakaoyi.engine.f.a
            public final void onStep(b bVar3, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
                this.f8485a.l(bVar3, cVar);
            }
        });
        this.f8452a.d().S(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.d
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                this.f8476a.n((K2ExamLogic.c) obj);
            }
        });
        this.f8452a.d().o(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void l(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        UnityExamDataModel unityExamDataModel = new UnityExamDataModel();
        unityExamDataModel.startTime = this.c;
        if (bVar.j()) {
            unityExamDataModel.stepName = k0.a(R.string.teachbase_enter_project);
            unityExamDataModel.stepId = -1;
            if (w.r.getType() == 2) {
                v(false);
            }
            this.f8453d = null;
        } else if (bVar.l()) {
            this.f8453d = bVar;
            Step step = bVar.f3142e;
            unityExamDataModel.stepId = step.type;
            unityExamDataModel.stepName = step.getStepName();
            RobotTips.f7184a.q(bVar.f3142e.type);
        }
        d.e(unityExamDataModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n(K2ExamLogic.c cVar) {
        K2ExamLogic.PostFunction postFunction = cVar.b;
        if (postFunction == K2ExamLogic.PostFunction.StartCost) {
            t();
            return;
        }
        if (postFunction == K2ExamLogic.PostFunction.StopExam) {
            cn.mucang.android.jiakaoyi.examk2.a.b bVar = this.f8452a;
            if (bVar == null || !bVar.isStart()) {
                return;
            }
            v(false);
            return;
        }
        if (postFunction == K2ExamLogic.PostFunction.Other) {
            Step step = cVar.c.f3142e;
            if (!cVar.f3304a) {
                s(cVar.f3305d, step);
            }
            this.f8452a.d().q(cVar.c);
            return;
        }
        if (postFunction == K2ExamLogic.PostFunction.PauseExam) {
            UnityExamScoreModel unityExamScoreModel = new UnityExamScoreModel();
            unityExamScoreModel.score = this.f8452a.d().t();
            d.e(unityExamScoreModel);
        }
    }

    static /* synthetic */ void o(cn.mucang.android.jiakaoyi.hpmap.a.a.countdown.c cVar) {
        CountDownModel countDownModel = new CountDownModel();
        if (cVar.b) {
            countDownModel.text = "";
        } else {
            long j = cVar.f3667a;
            if (j >= 0) {
                countDownModel.text = String.format(k0.a(R.string.teachbase_proj_countdown), Long.valueOf(cVar.f3667a));
            } else if (j == Long.MIN_VALUE) {
                countDownModel.text = k0.a(R.string.teachbase_timer_not_started);
            } else {
                countDownModel.text = k0.a(R.string.teachbase_proj_timed_out);
            }
        }
        d.e(countDownModel);
    }

    static /* synthetic */ void p(ShangPoTimeDownEvent shangPoTimeDownEvent) {
        StartTimeModel startTimeModel = new StartTimeModel();
        long j = shangPoTimeDownEvent.f3348a;
        if (j > 0) {
            startTimeModel.text = shangPoTimeDownEvent.b;
            startTimeModel.time = (int) (j / 1000);
        } else {
            startTimeModel.text = "";
            startTimeModel.time = 0;
        }
        d.e(startTimeModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r(EngineState engineState) {
        if (c.f8463a[engineState.ordinal()] != 2) {
            return;
        }
        g();
        x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(boolean z, Step step) {
        ExamStepListModel.ExamStepItemModel examStepItemModel = new ExamStepListModel.ExamStepItemModel();
        examStepItemModel.stepName = step.getStepName();
        examStepItemModel.stepId = step.type;
        if (z) {
            examStepItemModel.state = 2;
        } else {
            examStepItemModel.state = 3;
        }
        d.c(60006, examStepItemModel);
    }

    private void u() {
        if (this.b && this.f8452a != null) {
            TtsManager.H();
            if (this.f8452a.canStart()) {
                this.f8452a.d().x();
                RobotTips.f7184a.d0();
                this.f8452a.start();
                UnityExamDataModel unityExamDataModel = new UnityExamDataModel();
                long jCurrentTimeMillis = System.currentTimeMillis();
                unityExamDataModel.startTime = jCurrentTimeMillis;
                this.c = jCurrentTimeMillis;
                unityExamDataModel.stepName = k0.a(R.string.teachbase_enter_project);
                unityExamDataModel.stepId = -1;
                d.e(unityExamDataModel);
            }
        }
    }

    private void w() {
        cn.mucang.android.jiakaoyi.examk2.a.b bVar = this.f8452a;
        if (bVar != null) {
            bVar.stop();
        }
        TtsManager.H();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void x() {
        cn.mucang.android.jiakaoyi.examk2.a.b bVar = this.f8452a;
        if (bVar == null || bVar.getEngine() == null) {
            return;
        }
        K2ZhaiLuDiaoTouConfig k2ZhaiLuDiaoTouConfig = (K2ZhaiLuDiaoTouConfig) this.f8452a.getEngine().h().m.getConfig(Step.K2_ZhaiLuDiaoTou);
        if (((Integer) k2ZhaiLuDiaoTouConfig.p409113.value).intValue() > 0) {
            double dDoubleValue = ((Integer) k2ZhaiLuDiaoTouConfig.p409113.value).doubleValue();
            for (n nVar : this.f8452a.c().l) {
                Line line = nVar.j;
                nVar.m = cn.mucang.android.jiakaoyi.hpmap.d.a.q(line.start, line.end, dDoubleValue);
                Line line2 = nVar.k;
                nVar.n = cn.mucang.android.jiakaoyi.hpmap.d.a.q(line2.start, line2.end, dDoubleValue);
                Line line3 = nVar.l;
                nVar.o = cn.mucang.android.jiakaoyi.hpmap.d.a.q(line3.start, line3.end, dDoubleValue);
            }
        }
    }

    public void h() {
        cn.mucang.android.jiakaoyi.examk2.a.b bVar = this.f8452a;
        if (bVar != null) {
            bVar.destroy();
            this.f8452a = null;
        }
        Dialog dialog = this.f8454e;
        if (dialog != null) {
            dialog.dismiss();
            this.f8454e = null;
        }
        this.f8455f.clear();
    }

    public void i() {
        long jE = ExamSiteUtil.e(0L);
        if (jE <= 0) {
            u.h("请选择考场");
        }
        j(jE);
    }

    public void t() {
        this.b = true;
        GlobalChecker.h(true);
        LiveBus.d(ShangPoTimeDownEvent.class).i(this.f8457h);
        LiveBus.d(cn.mucang.android.jiakaoyi.hpmap.a.a.countdown.c.class).i(this.f8456g);
        u();
    }

    public void v(boolean z) {
        this.b = false;
        GlobalChecker.h(false);
        LiveBus.d(ShangPoTimeDownEvent.class).m(this.f8457h);
        LiveBus.d(cn.mucang.android.jiakaoyi.hpmap.a.a.countdown.c.class).m(this.f8456g);
        w();
        if (z) {
            h();
        }
    }
}
