package cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators;

import android.util.SparseArray;
import androidx.lifecycle.a0;
import cn.mucang.android.jiakaoyi.engine.f.b;
import cn.mucang.android.jiakaoyi.engine.i.f.a;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceStepStartEvent;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.c;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.BoundaryChecker;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.SubStepEvent;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.AppDataInLogin;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.dksingle.SingleType;
import cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker;
import cn.mucang.android.jiakaoyi.teachingk2.grade.TeachConfig;
import cn.mucang.android.jiakaoyi.teachingk2.highlight.HighlightVideoManager;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.analysis.AnalysisManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.HighErrorHandler;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.d0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.DaoKuSingleTrainModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.StepChangeModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.StepPositionModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TrainTipListModel;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.ErrorTipModel;
import cn.mucang.android.jiakaoyi.unity.c.d;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechUtility;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.g;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001c\u0010\u001b\u001a\u00020\u00122\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\b\u0010 \u001a\u00020\u0012H\u0007J\b\u0010!\u001a\u00020\u0012H\u0007R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;", "()V", "resultObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepStartEvent;", "reverse", "", "stepObserver", "Lcn/mucang/android/jiakaoyi/engine/processor/listen/StepInfoModel;", "subStepObserver", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;", "traceTipObserver", "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/ErrorTipModel;", "trainLevelJob", "Lkotlinx/coroutines/Job;", "checkTrainLevel", "", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "onOneError", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "onResult", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;", "onStep", "stepHandler", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;", "stepResult", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepResult;", TtmlNode.START, "stop", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TrainingStepHelper implements b, cn.mucang.android.jiakaoyi.engine.f.a {
    private static boolean b;
    private static t1 c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TrainingStepHelper f8415a = new TrainingStepHelper();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final a0<cn.mucang.android.jiakaoyi.engine.i.f.a> f8416d = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.l
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            TrainingStepHelper.h((a) obj);
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final a0<TraceStepStartEvent> f8417e = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.k
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            TrainingStepHelper.f((TraceStepStartEvent) obj);
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final a0<ErrorTipModel> f8418f = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.n
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            TrainingStepHelper.k((ErrorTipModel) obj);
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final a0<SubStepEvent> f8419g = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.m
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            TrainingStepHelper.j((SubStepEvent) obj);
        }
    };

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8420a;

        static {
            int[] iArr = new int[Step.values().length];
            iArr[Step.K2_DaoCheRuKu.ordinal()] = 1;
            f8420a = iArr;
        }
    }

    private TrainingStepHelper() {
    }

    private final void a(Step step) {
        if (!LocalConfigManager.f(LocalConfig.RecommendedGuide) || r.a(AppDataInLogin.f7224a.a(step.name()), Boolean.TRUE)) {
            return;
        }
        t1 t1Var = c;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        c = g.b(j0.b(), null, null, new TrainingStepHelper$checkTrainLevel$1(step, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(TraceStepStartEvent it) {
        if (it.getF3174a()) {
            AnalysisManager.l();
            HighErrorHandler.f(it.getB());
            HighlightVideoManager.w(it.getB());
        } else {
            HighErrorHandler.e();
            HighlightVideoManager.e(it.getC() && ((it.getB() == Step.K2_DaoCheRuKu.type || it.getB() == Step.K2_CeFangTingChe.type) ? it.getF3175d() : true));
            d0 d0VarC = s.b().c();
            if (d0VarC != null && d0VarC.e()) {
                return;
            } else {
                AnalysisManager.m();
            }
        }
        RobotTips robotTips = RobotTips.f7184a;
        r.d(it, "it");
        robotTips.y(it, AnalysisManager.f8374a.g().isEmpty());
    }

    public static final void g() {
        HighlightVideoManager.f7136a.m();
        LiveBus.d(cn.mucang.android.jiakaoyi.engine.i.f.a.class).i(f8416d);
        LiveBus.d(SubStepEvent.class).i(f8419g);
        LiveBus.d(TraceStepStartEvent.class).i(f8417e);
        LiveBus.d(ErrorTipModel.class).i(f8418f);
        d0 d0VarC = s.b().c();
        TrainingStepHelper trainingStepHelper = f8415a;
        d0VarC.o(trainingStepHelper);
        s.b().c().n(trainingStepHelper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(cn.mucang.android.jiakaoyi.engine.i.f.a aVar) {
        T t;
        SparseArray<Pos> sparseArrayJ;
        int size;
        if (aVar.f3095a) {
            GlobalChecker.h(false);
            DaoKuSingleTrainModel daoKuSingleTrainModel = new DaoKuSingleTrainModel();
            daoKuSingleTrainModel.list = new HashMap();
            d.e(daoKuSingleTrainModel);
            d.e(new StepPositionModel());
            s.b().c().c();
            TtsManager.f3517a.K();
            d.e(new StepChangeModel());
            d.e(new TrainTipListModel());
            return;
        }
        if (aVar.b) {
            Step step = Step.findWithType(aVar.c);
            TrainingStepHelper trainingStepHelper = f8415a;
            r.d(step, "step");
            trainingStepHelper.a(step);
            TtsManager.r(step.stepName, TtsGrade.GlobalTip);
            GlobalChecker.h(true);
            BoundaryChecker boundaryCheckerI = cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(2).i();
            b = boundaryCheckerI.f3684a.r();
            if (a.f8420a[step.ordinal()] == 1) {
                DaoKuSingleTrainModel daoKuSingleTrainModel2 = new DaoKuSingleTrainModel();
                daoKuSingleTrainModel2.type = String.valueOf(SingleType.All.type);
                daoKuSingleTrainModel2.list = SingleType.typeList();
                daoKuSingleTrainModel2.points = new ArrayList();
                if (boundaryCheckerI != null && (t = boundaryCheckerI.f3684a) != 0 && (sparseArrayJ = t.j()) != null && (size = sparseArrayJ.size()) > 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        int iKeyAt = sparseArrayJ.keyAt(i);
                        Pos posValueAt = sparseArrayJ.valueAt(i);
                        if (1 <= iKeyAt && iKeyAt <= 8) {
                            daoKuSingleTrainModel2.points.add(posValueAt);
                        }
                        if (i2 >= size) {
                            break;
                        } else {
                            i = i2;
                        }
                    }
                }
                d.e(daoKuSingleTrainModel2);
                T t2 = boundaryCheckerI.f3684a;
                if (t2 instanceof c) {
                    StepPositionModel stepPositionModel = new StepPositionModel();
                    c cVar = (c) t2;
                    stepPositionModel.position = cVar.k.middle();
                    Line line = cVar.o;
                    float fD = cn.mucang.android.jiakaoyi.signal.utils.d.d((float) Math.toDegrees(line.start.angleTo(line.end)));
                    stepPositionModel.angle = fD;
                    if (cVar.u) {
                        stepPositionModel.angle = fD + 180;
                    }
                    d.e(stepPositionModel);
                }
            }
        }
    }

    public static final void i() {
        HighlightVideoManager.f7136a.n();
        LiveBus.d(cn.mucang.android.jiakaoyi.engine.i.f.a.class).m(f8416d);
        LiveBus.d(SubStepEvent.class).m(f8419g);
        LiveBus.d(TraceStepStartEvent.class).m(f8417e);
        LiveBus.d(ErrorTipModel.class).m(f8418f);
        d0 d0VarC = s.b().c();
        TrainingStepHelper trainingStepHelper = f8415a;
        d0VarC.v(trainingStepHelper);
        s.b().c().u(trainingStepHelper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(SubStepEvent it) {
        r.d(it, "it");
        HighErrorHandler.c(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(ErrorTipModel errorTipModel) {
        if (TeachConfig.a().getError()) {
            RobotTips.Y(errorTipModel.getF5938a(), null, TtsGrade.TeachError, -1, null, 18, null);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.engine.f.b
    public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a deduct) {
        r.e(deduct, "deduct");
        RobotTips.f7184a.p(deduct);
        AnalysisManager.h(b, deduct);
        f.o("精彩时刻：触发错误中断录制");
        HighlightVideoManager.e(false);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.f.b
    public void onResult(cn.mucang.android.jiakaoyi.engine.processor.exam.f result) {
        r.e(result, "result");
    }

    @Override // cn.mucang.android.jiakaoyi.engine.f.a
    public void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
    }
}
