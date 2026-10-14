package cn.mucang.android.jiakaoyi.k3setting.exam;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.config.param.ExamParam;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.ExamStepStatus;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DengGuangStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuanDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TeShuQuYuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.creator.K3EngineManager;
import cn.mucang.android.jiakaoyi.exam.k3.helper.FootBrakeVoiceHelper;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExam;
import cn.mucang.android.jiakaoyi.exam.k3.param.K3ExamParam;
import cn.mucang.android.jiakaoyi.exam.k3.starter.K3_QiBu_Starter;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.k3setting.LocalRouteUtil;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsKt;
import org.slf4j.Marker;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.exam.e1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u0001PB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010.\u001a\u00020/H\u0002J\u0010\u00100\u001a\u00020/2\u0006\u00101\u001a\u000202H\u0002J\u0010\u00103\u001a\u00020/2\u0006\u00104\u001a\u00020\u0014H\u0002J\u000e\u00105\u001a\u00020/2\u0006\u00106\u001a\u00020+J\b\u00107\u001a\u00020/H\u0002J \u00108\u001a\u00020/2\u0006\u00109\u001a\u00020\u00142\u0006\u0010:\u001a\u00020\u00142\u0006\u0010;\u001a\u00020\u0014H\u0002J\u0010\u0010<\u001a\u00020/2\u0006\u0010=\u001a\u00020>H\u0016J\u0018\u0010?\u001a\u00020/2\u0006\u00101\u001a\u0002022\b\u0010@\u001a\u0004\u0018\u00010AJ\b\u0010B\u001a\u00020/H\u0002J\u0006\u0010C\u001a\u00020/J\u000e\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020FJ\u0006\u0010G\u001a\u00020/J\u0012\u0010H\u001a\u00020/2\b\u0010I\u001a\u0004\u0018\u00010\u0012H\u0002J\u0006\u0010J\u001a\u00020/J\u0006\u0010K\u001a\u00020/J\u0006\u0010L\u001a\u00020/J\u0006\u0010M\u001a\u00020/J\u0006\u0010N\u001a\u00020/J\u000e\u0010O\u001a\u00020/2\u0006\u00106\u001a\u00020+R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020!\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006Q"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/exam/K3ExamCommonLogic;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "k3EngineManager", "Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;", "callback", "Lcn/mucang/android/jiakaoyi/k3setting/exam/K3ExamCommonLogic$ExamLogicCallback;", "(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;Lcn/mucang/android/jiakaoyi/k3setting/exam/K3ExamCommonLogic$ExamLogicCallback;)V", "autoStartTingCheChecker", "Lcn/mucang/android/jiakaoyi/k3setting/exam/AutoStartTingCheChecker;", "getCallback", "()Lcn/mucang/android/jiakaoyi/k3setting/exam/K3ExamCommonLogic$ExamLogicCallback;", "examDistanceGetter", "Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;", "", "examiningDistance", "footBrakeVoiceHelper", "Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;", "globalConfig", "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;", "hasStopExamByRule", "", "huanDaoConfig", "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;", "huanDaoDialog", "Lcn/mucang/android/jiakaoyi/k3setting/exam/HuanDaoDialogFragment;", "isDeduct100219", "getK3EngineManager", "()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;", "lightAtShangCheStepIng", "lightConfig", "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;", "lightDeductConfig", "", "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;", "lightPreCheckPresenter", "Lcn/mucang/android/jiakaoyi/k3setting/exam/LightPreCheckPresenter;", "qiBuConfig", "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;", "shangCheConfig", "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;", "startDistance", "startStep", "Ljava/util/ArrayDeque;", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "teShuQuYuConfig", "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TeShuQuYuStepConfig;", "autoClose", "", "checkAutoEndByStepEvent", "stepHandler", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;", "checkFootBrake", "footBrakeOn", "chooseFinishThisStep", "step", "doLightSimulate", "getStartDeque", "firstLightSimulate", "haveLightSimulate", "hasShangChe", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "onStep", "stepResult", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepResult;", "orderStartStep", "pause", "playEndVoice", "examResult", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;", "playStartVoice", "realTimeCheckAutoEnd", "config", "resume", "resumeExam", "startLightSimulate", "startShangCheOrLightExam", "stop", "triggerThisStep", "ExamLogicCallback", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3ExamCommonLogic implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final K3EngineManager f4252a;
    private final a b;
    private final ArrayDeque<Step> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d1 f4253d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private K3GlobalStepConfig f4254e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private K3QiBuStepConfig f4255f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private K3HuanDaoStepConfig f4256g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private K3TeShuQuYuStepConfig f4257h;
    private K3DengGuangStepConfig i;
    private Map<Integer, Deduct> j;
    private AutoStartTingCheChecker k;
    private FootBrakeVoiceHelper l;
    private LightPreCheckPresenter m;
    private boolean n;
    private boolean o;
    private int p;
    private int q;
    private final cn.mucang.android.jiakaoyi.framework.h.c<Integer> r;
    private boolean s;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.exam.e1$a */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\bH&J\b\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\fH&J\b\u0010\r\u001a\u00020\u0003H&J\b\u0010\u000e\u001a\u00020\u0003H&¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/exam/K3ExamCommonLogic$ExamLogicCallback;", "", "afterStartVoicePlayed", "", "doLightExam", "getExamTime", "", "getLightExamCallback", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;", "getScore", "", "getStudentName", "", "resumeShangCheStep", "stopExamByRule", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface a {
        void d();

        LightExam.LightExamCallback e();

        long f();

        void h();

        void i();

        String j();

        int k();

        void l();
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.exam.e1$b */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4258a;

        static {
            int[] iArr = new int[Step.values().length];
            iArr[Step.K3_QiBu.ordinal()] = 1;
            iArr[Step.K3_LightSimulate.ordinal()] = 2;
            iArr[Step.K3_ShangChe.ordinal()] = 3;
            f4258a = iArr;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.exam.e1$c */
    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/exam/K3ExamCommonLogic$playStartVoice$1", "Lcn/mucang/android/jiakaoyi/framework/tts/SimpleTtsListener;", "onIntercept", "", "onSpeakEnd", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends SimpleTtsListener {
        c() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            super.onIntercept();
            K3ExamCommonLogic.this.getB().h();
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            super.onSpeakEnd();
            K3ExamCommonLogic.this.getB().h();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public K3ExamCommonLogic(K3EngineManager k3EngineManager, a callback) {
        cn.mucang.android.jiakaoyi.engine.processor.exam.d dVarH;
        OptionsValue optionsValue;
        Integer num;
        kotlin.jvm.internal.r.e(k3EngineManager, "k3EngineManager");
        kotlin.jvm.internal.r.e(callback, "callback");
        this.f4252a = k3EngineManager;
        this.b = callback;
        this.c = new ArrayDeque<>();
        cn.mucang.android.jiakaoyi.framework.h.c<Integer> cVar = new cn.mucang.android.jiakaoyi.framework.h.c() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.s
            @Override // cn.mucang.android.jiakaoyi.framework.h.c
            public final Object get() {
                return K3ExamCommonLogic.j(this.f4322a);
            }
        };
        this.r = cVar;
        this.f4254e = (K3GlobalStepConfig) k3EngineManager.getConfig(Step.K3_Global);
        this.f4255f = (K3QiBuStepConfig) k3EngineManager.getConfig(Step.K3_QiBu);
        this.f4256g = (K3HuanDaoStepConfig) k3EngineManager.getConfig(Step.K3_HuanDao);
        this.f4257h = (K3TeShuQuYuStepConfig) k3EngineManager.getConfig(Step.K3_TeShuQuYu);
        Step step = Step.K3_LightSimulate;
        this.i = (K3DengGuangStepConfig) k3EngineManager.getConfig(step);
        this.j = k3EngineManager.getStepConfig(step).deductConfig;
        K3TingCheStepConfig k3TingCheStepConfig = (K3TingCheStepConfig) k3EngineManager.getConfig(Step.K3_TingChe);
        if (k3TingCheStepConfig != null) {
            AutoStartTingCheChecker autoStartTingCheChecker = new AutoStartTingCheChecker(getF4252a(), k3TingCheStepConfig, cVar);
            this.k = autoStartTingCheChecker;
            if (autoStartTingCheChecker != null) {
                autoStartTingCheChecker.k();
            }
        }
        FootBrakeVoiceHelper.Companion companion = FootBrakeVoiceHelper.INSTANCE;
        K3GlobalStepConfig k3GlobalStepConfig = this.f4254e;
        int iIntValue = 0;
        if (k3GlobalStepConfig != null && (optionsValue = k3GlobalStepConfig.p200135) != null && (num = (Integer) optionsValue.value) != null) {
            iIntValue = num.intValue();
        }
        companion.setFootBrakeOnVoiceType(iIntValue);
        if (companion.isAllStep()) {
            this.l = new FootBrakeVoiceHelper();
        }
        cn.mucang.android.jiakaoyi.engine.c engine = k3EngineManager.getEngine();
        ExamParam examParam = (engine == null || (dVarH = engine.h()) == null) ? null : dVarH.n;
        K3ExamParam k3ExamParam = examParam instanceof K3ExamParam ? (K3ExamParam) examParam : null;
        if (k3ExamParam != null) {
            cn.mucang.android.jiakaoyi.signal.center.model.a.a().c(k3ExamParam.getMisFireRpm(), k3ExamParam.getMisFireTime() * 1000, -1);
            cn.mucang.android.jiakaoyi.signal.c.g.a.d().a(((Number) k3ExamParam.p200186.value).intValue() * 1000);
        }
        cn.mucang.android.jiakaoyi.exam.a.c cVarB = cn.mucang.android.jiakaoyi.exam.a.c.b();
        cn.mucang.android.jiakaoyi.engine.c engine2 = k3EngineManager.getEngine();
        cVarB.d(engine2 != null ? engine2.h() : null);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
    }

    private final void a() {
        if (this.s) {
            return;
        }
        this.s = true;
        cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.p
            @Override // java.lang.Runnable
            public final void run() {
                K3ExamCommonLogic.b(this.f4316a);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(K3ExamCommonLogic this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.getB().i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void c(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        OptionsValue optionsValue;
        Integer num;
        BooleanValue booleanValue;
        K3GlobalStepConfig k3GlobalStepConfig = this.f4254e;
        boolean zA = false;
        int iIntValue = (k3GlobalStepConfig == null || (optionsValue = k3GlobalStepConfig.p200171) == null || (num = (Integer) optionsValue.value) == null) ? 0 : num.intValue();
        if (iIntValue != 0) {
            if (iIntValue == 1 && bVar.i == ExamStepStatus.End && bVar.f3142e == Step.K3_TingChe) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("完成靠边停车为考试结束");
                a();
            }
        } else if (bVar.i == ExamStepStatus.End && this.f4252a.isFinishRouteAllSteps()) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("所有项目完成考试结束");
            a();
        }
        if (bVar.f3142e == Step.K3_TeShuQuYu) {
            K3TeShuQuYuStepConfig k3TeShuQuYuStepConfig = this.f4257h;
            if (k3TeShuQuYuStepConfig != null && (booleanValue = k3TeShuQuYuStepConfig.p227107) != null) {
                zA = kotlin.jvm.internal.r.a(booleanValue.value, Boolean.TRUE);
            }
            if (zA) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("经过K3_TeShuQuYu 考试结束");
                a();
            }
        }
    }

    private final void d(boolean z) {
        FootBrakeVoiceHelper footBrakeVoiceHelper = this.l;
        if (footBrakeVoiceHelper == null) {
            return;
        }
        footBrakeVoiceHelper.checkPlayVoice(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(DialogInterface dialogInterface, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(Step step, K3ExamCommonLogic this$0, DialogInterface dialogInterface, int i) {
        kotlin.jvm.internal.r.e(step, "$step");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_end_step_toast);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.k3setting_end_step_toast)");
        String str = String.format(strA, Arrays.copyOf(new Object[]{step.getStepName()}, 1));
        kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
        cn.mucang.android.core.utils.u.h(str);
        cn.mucang.android.jiakaoyi.engine.c engine = this$0.getF4252a().getEngine();
        if (engine == null) {
            return;
        }
        engine.u(step);
    }

    private final void h() {
        this.f4252a.pause();
        TtsManager.H();
        if (this.i == null || this.j == null) {
            return;
        }
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        K3DengGuangStepConfig k3DengGuangStepConfig = this.i;
        kotlin.jvm.internal.r.c(k3DengGuangStepConfig);
        Map<Integer, Deduct> map = this.j;
        kotlin.jvm.internal.r.c(map);
        this.m = new LightPreCheckPresenter(activityI, true, k3DengGuangStepConfig, map, this.b.e(), new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.q
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                K3ExamCommonLogic.i(this.f4318a, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(K3ExamCommonLogic this$0, Boolean bool) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (kotlin.jvm.internal.r.a(bool, Boolean.TRUE)) {
            this$0.getB().d();
        } else {
            this$0.x();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer j(K3ExamCommonLogic this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        return Integer.valueOf(this$0.q);
    }

    private final void m(boolean z, boolean z2, boolean z3) {
        this.c.clear();
        if (z) {
            if (z2) {
                this.c.add(Step.K3_LightSimulate);
            }
            if (z3) {
                this.c.add(Step.K3_ShangChe);
            }
        } else {
            if (z3) {
                this.c.add(Step.K3_ShangChe);
            }
            if (z2) {
                this.c.add(Step.K3_LightSimulate);
            }
        }
        this.c.add(Step.K3_QiBu);
    }

    private final void t() {
        if (this.c.isEmpty()) {
            this.f4252a.resume();
            return;
        }
        Step stepPop = this.c.pop();
        int i = stepPop == null ? -1 : b.f4258a[stepPop.ordinal()];
        if (i == 1) {
            this.f4252a.resume();
            K3_QiBu_Starter.start = cn.mucang.android.jiakaoyi.signal.c.d.t().d().b < 1.0f;
        } else if (i == 2) {
            h();
        } else if (i != 3) {
            this.f4252a.resume();
        } else {
            this.f4252a.resume();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void w(K3GlobalStepConfig k3GlobalStepConfig) {
        IntegerValue integerValue;
        Integer num;
        IntegerValue integerValue2;
        Integer num2;
        OptionsValue optionsValue;
        Integer num3;
        int iIntValue = 0;
        if (k3GlobalStepConfig != null && (optionsValue = k3GlobalStepConfig.p200171) != null && (num3 = (Integer) optionsValue.value) != null) {
            iIntValue = num3.intValue();
        }
        if (iIntValue == 3) {
            if (k3GlobalStepConfig != null) {
                int i = this.q;
                T t = k3GlobalStepConfig.p200175.value;
                kotlin.jvm.internal.r.d(t, "config.p200175.value");
                if (i > ((Number) t).intValue()) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("达到指定里程 " + this.q + " ; p200175 value " + k3GlobalStepConfig.p200175.value);
                    a();
                    return;
                }
                return;
            }
            return;
        }
        if (iIntValue != 4) {
            return;
        }
        int iIntValue2 = 90;
        if (this.b.k() < ((k3GlobalStepConfig == null || (integerValue = k3GlobalStepConfig.p200161) == null || (num = (Integer) integerValue.value) == null) ? 90 : num.intValue())) {
            StringBuilder sb = new StringBuilder();
            sb.append("成绩不合格 ");
            sb.append(this.b.k());
            sb.append(" ; p200175 value ");
            if (k3GlobalStepConfig != null && (integerValue2 = k3GlobalStepConfig.p200161) != null && (num2 = (Integer) integerValue2.value) != null) {
                iIntValue2 = num2.intValue();
            }
            sb.append(iIntValue2);
            cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
            a();
        }
    }

    public final void A() {
        this.s = false;
        this.o = false;
        this.n = false;
        this.p = 0;
        this.q = 0;
        AutoStartTingCheChecker autoStartTingCheChecker = this.k;
        if (autoStartTingCheChecker != null) {
            autoStartTingCheChecker.m();
        }
        LightPreCheckPresenter lightPreCheckPresenter = this.m;
        if (lightPreCheckPresenter != null) {
            lightPreCheckPresenter.n();
        }
        this.f4252a.stop();
        cn.mucang.android.jiakaoyi.signal.center.model.a.a().e();
        cn.mucang.android.jiakaoyi.signal.c.g.a.d().b();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    public final void e(final Step step) {
        kotlin.jvm.internal.r.e(step, "step");
        new AlertDialog.Builder(MucangConfig.i()).setMessage(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_end_step_msg)).setNegativeButton(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_btn_no_end), new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.o
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                K3ExamCommonLogic.f(dialogInterface, i);
            }
        }).setPositiveButton(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_btn_end), new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.r
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                K3ExamCommonLogic.g(step, this, dialogInterface, i);
            }
        }).create().show();
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final a getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public final K3EngineManager getF4252a() {
        return this.f4252a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        if (this.f4252a.isStart()) {
            if (this.p == 0) {
                this.p = (int) signalGetter.d().C;
            }
            this.q = (int) (signalGetter.d().C - this.p);
            d(signalGetter.d().f5269g);
            w(this.f4254e);
            if (this.n) {
                return;
            }
            long jF = getB().f();
            K3GlobalStepConfig k3GlobalStepConfig = this.f4254e;
            kotlin.jvm.internal.r.c(k3GlobalStepConfig);
            if (jF >= ((Number) k3GlobalStepConfig.p200239.value).intValue() * 1000) {
                this.n = true;
                getF4252a().engineOutDeduct(Step.K3_Global, 100219);
            }
        }
    }

    public final void s(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b stepHandler, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        BooleanValue booleanValue;
        BooleanValue booleanValue2;
        cn.mucang.android.jiakaoyi.engine.c engine;
        cn.mucang.android.jiakaoyi.engine.e eVarI;
        Boolean bool = Boolean.TRUE;
        kotlin.jvm.internal.r.e(stepHandler, "stepHandler");
        if (stepHandler.l()) {
            cn.mucang.android.jiakaoyi.engine.i.c.b bVar = stepHandler.f3143f;
            int i = bVar == null ? -1 : bVar.i;
            if (!stepHandler.n && i != -1 && !stepHandler.n() && (engine = this.f4252a.getEngine()) != null && (eVarI = engine.i()) != null) {
                eVarI.a(stepHandler.f3142e);
            }
            if (stepHandler.f3142e == Step.K3_HuanDao) {
                K3HuanDaoStepConfig k3HuanDaoStepConfig = this.f4256g;
                if ((k3HuanDaoStepConfig == null || (booleanValue2 = k3HuanDaoStepConfig.p224110) == null) ? false : kotlin.jvm.internal.r.a(booleanValue2.value, bool)) {
                    Activity activityI = MucangConfig.i();
                    Objects.requireNonNull(activityI, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
                    this.f4253d = d1.B(((androidx.appcompat.app.d) activityI).getSupportFragmentManager());
                }
            }
        } else if (stepHandler.j()) {
            Step step = stepHandler.f3142e;
            if (step == Step.K3_HuanDao) {
                d1 d1Var = this.f4253d;
                if (d1Var != null) {
                    d1Var.dismiss();
                }
            } else if (step == Step.K3_QiBu) {
                K3_QiBu_Starter.start = false;
                K3QiBuStepConfig k3QiBuStepConfig = this.f4255f;
                if ((k3QiBuStepConfig == null || (booleanValue = k3QiBuStepConfig.p203125) == null) ? false : kotlin.jvm.internal.r.a(booleanValue.value, bool)) {
                    this.f4252a.exeThisStep(Step.K3_TingChe);
                }
            }
        }
        if (stepHandler.f3142e == Step.K3_Global) {
            return;
        }
        c(stepHandler);
        if (cVar == null || !stepHandler.j()) {
            return;
        }
        Step step2 = stepHandler.f3142e;
        if (step2 == Step.K3_ShangChe) {
            this.o = false;
            t();
        } else if (step2 == Step.K3_QiBu) {
            this.c.clear();
        }
        AutoStartTingCheChecker autoStartTingCheChecker = this.k;
        if (autoStartTingCheChecker == null) {
            return;
        }
        autoStartTingCheChecker.n(stepHandler, cVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void u(cn.mucang.android.jiakaoyi.engine.processor.exam.f examResult) {
        kotlin.v vVar;
        kotlin.jvm.internal.r.e(examResult, "examResult");
        K3GlobalStepConfig k3GlobalStepConfig = this.f4254e;
        if (k3GlobalStepConfig == null) {
            vVar = null;
        } else {
            if (examResult.b) {
                StringValue stringValue = k3GlobalStepConfig.p200193;
                String str = (String) stringValue.value;
                TtsGrade ttsGrade = TtsGrade.ExamTip;
                int i = stringValue.ruleId;
                TtsManager.t(str, ttsGrade, i, cn.mucang.android.jiakaoyi.framework.tts.voice.l.d(i));
            } else {
                StringValue stringValue2 = k3GlobalStepConfig.p200194;
                String str2 = (String) stringValue2.value;
                TtsGrade ttsGrade2 = TtsGrade.ExamTip;
                int i2 = stringValue2.ruleId;
                TtsManager.t(str2, ttsGrade2, i2, cn.mucang.android.jiakaoyi.framework.tts.voice.l.d(i2));
            }
            vVar = kotlin.v.f15822a;
        }
        if (vVar == null) {
            if (examResult.b) {
                TtsManager.r(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_exam_success_voice), TtsGrade.ExamTip);
            } else {
                TtsManager.r(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_exam_fail_voice), TtsGrade.ExamTip);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void v() {
        BooleanValue booleanValue;
        StringValue stringValue;
        String str;
        String routeName;
        this.s = false;
        K3GlobalStepConfig k3GlobalStepConfig = this.f4254e;
        if (!((k3GlobalStepConfig == null || (booleanValue = k3GlobalStepConfig.p200237) == null) ? false : kotlin.jvm.internal.r.a(booleanValue.value, Boolean.TRUE))) {
            this.b.h();
            return;
        }
        K3GlobalStepConfig k3GlobalStepConfig2 = this.f4254e;
        String strX = (k3GlobalStepConfig2 == null || (stringValue = k3GlobalStepConfig2.p200238) == null || (str = (String) stringValue.value) == null) ? "" : str;
        if (StringsKt__StringsKt.G(strX, "@", false, 2, null)) {
            strX = kotlin.text.t.x(strX, "@", this.b.j(), false, 4, null);
        }
        String strX2 = strX;
        if (StringsKt__StringsKt.G(strX2, Marker.ANY_MARKER, false, 2, null)) {
            LocalRoute localRouteB = LocalRouteUtil.b();
            strX2 = kotlin.text.t.x(strX2, Marker.ANY_MARKER, (localRouteB == null || (routeName = localRouteB.getRouteName()) == null) ? "" : routeName, false, 4, null);
        }
        TtsManager.u(strX2, TtsGrade.ExamTip, new c());
    }

    public final void x() {
        if (this.f4252a.isStart()) {
            if (!this.o) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("灯光考试完成继续下一个项目");
                t();
            } else {
                cn.mucang.android.jiakaoyi.framework.log.f.o("灯光考试完成重新进行上车");
                this.f4252a.resume();
                this.b.l();
            }
        }
    }

    public final void y() {
        this.o = true;
        t();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void z() {
        BooleanValue booleanValue;
        Boolean bool;
        new b1(this.f4252a, this.f4254e).a();
        boolean zB = cn.mucang.android.jiakaoyi.framework.utils.i0.b("HaveShangCheStep", true);
        boolean zB2 = cn.mucang.android.jiakaoyi.framework.utils.i0.b("HaveLightSimulateStep", true);
        K3GlobalStepConfig k3GlobalStepConfig = this.f4254e;
        boolean zBooleanValue = false;
        if (k3GlobalStepConfig != null && (booleanValue = k3GlobalStepConfig.p200181) != null && (bool = (Boolean) booleanValue.value) != null) {
            zBooleanValue = bool.booleanValue();
        }
        m(zBooleanValue, zB2, zB);
        t();
    }
}
