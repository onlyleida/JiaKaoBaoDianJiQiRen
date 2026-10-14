package cn.mucang.android.jiakaoyi.teachingk2.level;

import android.app.Activity;
import android.view.View;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.BoundaryChecker;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.SubStepEvent;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.level.model.ConfigLevelModel;
import cn.mucang.android.jiakaoyi.teachingk2.level.model.LoopStepModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.TrainStepModel;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003H\u0016J\b\u0010\u0019\u001a\u00020\u0017H\u0007J(\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00062\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00170\u001fH\u0007J\u0012\u0010 \u001a\u00020\u00102\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\u001a\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0012\u0010&\u001a\u00020\u00172\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007J\b\u0010'\u001a\u00020\u0017H\u0007J\b\u0010(\u001a\u00020\u0017H\u0007J \u0010)\u001a\u00020\u00172\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00170\u001fH\u0007R*\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@BX\u0087\u000e¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "()V", "<set-?>", "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;", "config", "getConfig$annotations", "getConfig", "()Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;", "currentStep", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "isStart", "stepSet", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "subStepObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;", "switchEnd", "callback", "", "data", "handleNextStep", "handleStepSwitch", "selectStep", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;", "selectConfig", "onSelect", "Lkotlin/Function0;", "nextTrainStep", "onStep", "stepHandler", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;", "stepResult", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepResult;", "setTrainConfig", TtmlNode.START, "stop", "switch", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LevelStepCalculator implements cn.mucang.android.jiakaoyi.engine.f.a, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> {
    private static ConfigLevelModel b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f7242d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Step f7243e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f7244f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LevelStepCalculator f7241a = new LevelStepCalculator();
    private static final HashSet<Integer> c = new HashSet<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final a0<SubStepEvent> f7245g = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.c
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            LevelStepCalculator.l((SubStepEvent) obj);
        }
    };

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.LevelStepCalculator$onStep$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.level.LevelStepCalculator$onStep$1", f = "LevelStepCalculator.kt", l = {181}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                this.label = 1;
                if (s0.a(200L, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            LevelStepCalculator.i(LevelStepCalculator.b());
            w.S(true);
            return v.f15822a;
        }
    }

    private LevelStepCalculator() {
    }

    public static final ConfigLevelModel b() {
        return b;
    }

    public static final void c() {
        String string;
        if (f7242d) {
            int iH = f7241a.h(b);
            if (iH == 0) {
                ConfigLevelModel configLevelModel = b;
                String str = "";
                if (configLevelModel != null && (string = Integer.valueOf(configLevelModel.getId()).toString()) != null) {
                    str = string;
                }
                w.N(str);
                w.S(true);
                c.clear();
                return;
            }
            if (iH > 0) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                String strA = k0.a(R.string.teachbase_please_start_train);
                kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_please_start_train)");
                String str2 = String.format(strA, Arrays.copyOf(new Object[]{Step.findWithType(iH).stepName}, 1));
                kotlin.jvm.internal.r.d(str2, "java.lang.String.format(format, *args)");
                RobotTips.Y(str2, null, TtsGrade.VoiceRobot, -1, null, 18, null);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0053  */
    /* JADX WARN: Code duplicated, block: B:8:0x0029  */
    public static final void d(TrainStepModel selectStep, final ConfigLevelModel configLevelModel, final Function0<v> onSelect) {
        boolean z;
        kotlin.jvm.internal.r.e(selectStep, "selectStep");
        kotlin.jvm.internal.r.e(onSelect, "onSelect");
        ConfigLevelModel configLevelModel2 = b;
        if (configLevelModel2 == null) {
            Step step = f7243e;
            if (step != null) {
                HashSet<Integer> hashSet = c;
                kotlin.jvm.internal.r.c(step);
                z = hashSet.contains(Integer.valueOf(step.type)) ? false : true;
            }
        } else {
            if (!(configLevelModel2 != null && configLevelModel2.getCode() == TutorialLevel.CircleTrain.getServerCode())) {
                ConfigLevelModel configLevelModel3 = b;
                if (configLevelModel3 != null && configLevelModel3.getCode() == TutorialLevel.ComplexTrain.getServerCode()) {
                    if (!(!c.isEmpty())) {
                    }
                }
            } else if (!(!c.isEmpty()) || f7243e != null) {
            }
        }
        if (!z) {
            m(configLevelModel, onSelect);
            return;
        }
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_quit_train_title);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_quit_train_title)");
        String str = String.format(strA, Arrays.copyOf(new Object[]{selectStep.getName()}, 1));
        kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
        String strA2 = k0.a(R.string.teachbase_quit_train_desc);
        kotlin.jvm.internal.r.d(strA2, "getString(R.string.teachbase_quit_train_desc)");
        String str2 = String.format(strA2, Arrays.copyOf(new Object[]{selectStep.getName()}, 1));
        kotlin.jvm.internal.r.d(str2, "java.lang.String.format(format, *args)");
        new JCommonDialog(activityI, new JCommonDialog.DialogParams(str, str2, k0.a(R.string.teachbase_stop_train), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LevelStepCalculator.e(configLevelModel, onSelect, view);
            }
        }, k0.a(R.string.teachbase_keep_practicing), (View.OnClickListener) null, false, 96, (kotlin.jvm.internal.o) null)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(ConfigLevelModel configLevelModel, Function0 onSelect, View view) {
        kotlin.jvm.internal.r.e(onSelect, "$onSelect");
        m(configLevelModel, onSelect);
    }

    private final int h(ConfigLevelModel configLevelModel) {
        List<LoopStepModel> loopStep = configLevelModel == null ? null : configLevelModel.getLoopStep();
        if (loopStep == null) {
            return -1;
        }
        for (LoopStepModel loopStepModel : loopStep) {
            if (!c.contains(Integer.valueOf(loopStepModel.getStep()))) {
                return loopStepModel.getStep();
            }
        }
        return 0;
    }

    public static final void i(ConfigLevelModel configLevelModel) {
        StringBuilder sb = new StringBuilder();
        sb.append("设置训练关卡:");
        sb.append(configLevelModel == null ? null : Integer.valueOf(configLevelModel.getCode()));
        sb.append(',');
        sb.append(configLevelModel == null ? null : Integer.valueOf(configLevelModel.getId()));
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
        c.clear();
        TutorialLevel tutorialLevel = TutorialLevel.CircleTrain;
        if (!(configLevelModel != null && tutorialLevel.getServerCode() == configLevelModel.getCode())) {
            if (!(configLevelModel != null && TutorialLevel.ComplexTrain.getServerCode() == configLevelModel.getCode())) {
                w.r.setTraceType(0);
                b = null;
                return;
            }
        }
        b = configLevelModel;
        w.r.setTraceType(tutorialLevel.getServerCode() == configLevelModel.getCode() ? 27 : 28);
        kotlinx.coroutines.g.b(j0.b(), null, null, new LevelStepCalculator$setTrainConfig$1(null), 3, null);
    }

    public static final void j() {
        LevelStepCalculator levelStepCalculator = f7241a;
        w.u = levelStepCalculator;
        f7242d = true;
        c.clear();
        LiveBus.d(SubStepEvent.class).i(f7245g);
        cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.s.b().c().n(levelStepCalculator);
    }

    public static final void k() {
        w.u = null;
        LevelStepCalculator levelStepCalculator = f7241a;
        f7242d = false;
        LiveBus.d(SubStepEvent.class).m(f7245g);
        cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.s.b().c().u(levelStepCalculator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(SubStepEvent subStepEvent) {
        if (subStepEvent.getStep() == f7243e) {
            if (subStepEvent.getStep() == Step.K2_DaoCheRuKu) {
                if (subStepEvent.getSubStep() >= SubStep.Step5.ordinal()) {
                    f7241a.a(true);
                }
            } else {
                if (subStepEvent.getStep() != Step.K2_CeFangTingChe || subStepEvent.getSubStep() < SubStep.Step3.ordinal()) {
                    return;
                }
                f7241a.a(true);
            }
        }
    }

    public static final void m(ConfigLevelModel configLevelModel, Function0<v> onSelect) {
        kotlin.jvm.internal.r.e(onSelect, "onSelect");
        if (f7243e != null) {
            BoundaryChecker boundaryCheckerI = cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(2).i();
            if (boundaryCheckerI != null) {
                boundaryCheckerI.b();
            }
            f7243e = null;
            f7244f = true;
            b = configLevelModel;
        } else {
            i(configLevelModel);
            w.S(true);
        }
        onSelect.invoke();
    }

    public void a(boolean z) {
        if (z) {
            HashSet<Integer> hashSet = c;
            Step step = f7243e;
            hashSet.add(Integer.valueOf(step == null ? -1 : step.type));
        }
    }

    @Override // cn.mucang.android.jiakaoyi.framework.h.b
    public /* bridge */ /* synthetic */ void callback(Boolean bool) {
        a(bool.booleanValue());
    }

    @Override // cn.mucang.android.jiakaoyi.engine.f.a
    public void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b stepHandler, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        kotlin.jvm.internal.r.e(stepHandler, "stepHandler");
        if (stepHandler.l()) {
            f7243e = stepHandler.f3142e;
            return;
        }
        if (stepHandler.j()) {
            f7243e = null;
            if (b == null) {
                c.clear();
            }
            if (!f7244f) {
                c();
            } else {
                f7244f = false;
                kotlinx.coroutines.g.b(j0.b(), null, null, new AnonymousClass1(null), 3, null);
            }
        }
    }
}
