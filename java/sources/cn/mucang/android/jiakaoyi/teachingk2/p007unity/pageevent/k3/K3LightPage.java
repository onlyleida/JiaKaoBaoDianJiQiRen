package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.k3;

import android.app.Activity;
import android.content.DialogInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.StepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.f;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DengGuangStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.creator.ExamStepState;
import cn.mucang.android.jiakaoyi.exam.k3.creator.K3EngineManager;
import cn.mucang.android.jiakaoyi.exam.k3.creator.StepInfoParseUtil;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightDataCreator;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExam;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.ActionState;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.framework.h.c;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.k3setting.exam.PreExamCheckPresenter;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.k3.K3DataManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.analysis.AnalysisModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.dialog.StepResultDialog;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.LightPlayModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.TrainDataModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.TrainItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.z;
import cn.mucang.android.jiakaoyi.unity.c.d;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.collections.t;
import kotlin.collections.v;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k3.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0087\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0019\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001f\u001a\u00020\u0015H\u0016J\u0018\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\t2\b\u0010\"\u001a\u0004\u0018\u00010\u001cH\u0002J\u0014\u0010#\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0$0\u0005H\u0016J\b\u0010&\u001a\u00020'H\u0016J\b\u0010(\u001a\u00020'H\u0016J\b\u0010)\u001a\u00020'H\u0016J\u000e\u0010*\u001a\u00020'2\u0006\u0010+\u001a\u00020,J\b\u0010-\u001a\u00020'H\u0002J\b\u0010.\u001a\u00020'H\u0002R\u001c\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\n\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3LightPage;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/handlers/UnityPageHandler$PageEvent;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController$EngineCallback;", "()V", "deductIsOver", "Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;", "", "kotlin.jvm.PlatformType", "deducts", "", "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;", "engineCtrl", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController;", "exeList", "Ljava/util/LinkedHashMap;", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;", "Lkotlin/collections/LinkedHashMap;", "inPage", "lightDeductConfig", "", "", "lightExam", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;", "lightExamCallback", "cn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3LightPage$lightExamCallback$1", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3LightPage$lightExamCallback$1;", "lightStepConfig", "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;", "unityData", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/TrainDataModel;", "getEngineType", "getLightExamCheckList", "Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;", "config", "getStepGetter", "", "Lcn/mucang/android/jiakaoyi/engine/processor/ExamEventCreator$StepInfo;", "onEngineInitialed", "", "onEnter", "onExit", "selectPlayMode", "mode", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightPlayModel;", "sendData", "startExam", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3LightPage implements a0.a, K3EngineController.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final K3EngineController f8630a = new K3EngineController(this);
    private final TrainDataModel b;
    private final List<Deduct> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LinkedHashMap<LightExamModel, ActionState> f8631d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private K3DengGuangStepConfig f8632e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<Integer, ? extends Deduct> f8633f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LightExam f8634g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f8635h;
    private final a i;
    private final c<Boolean> j;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k3.j$a */
    @Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u001a\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\u0003H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u000b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3LightPage$lightExamCallback$1", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;", "onClickClose", "", "onFailure", "model", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;", "onFinish", "onStart", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements LightExam.LightExamCallback {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(K3LightPage this$0, DialogInterface dialogInterface) {
            r.e(this$0, "this$0");
            this$0.w();
        }

        @Override // cn.mucang.android.jiakaoyi.exam.k3.light.LightExam.LightExamCallback
        public void onClickClose() {
        }

        @Override // cn.mucang.android.jiakaoyi.exam.k3.light.LightExam.LightExamCallback
        public void onFailure(LightExamModel model, Deduct deduct) {
            r.e(deduct, "deduct");
            K3LightPage.this.c.add(deduct);
            if (model == null || model.examProgramId <= 0) {
                return;
            }
            K3LightPage.this.f8631d.put(model, ActionState.Error);
            K3LightPage.this.v();
        }

        @Override // cn.mucang.android.jiakaoyi.exam.k3.light.LightExam.LightExamCallback
        public void onFinish() {
            if (K3LightPage.this.f8635h) {
                if (K3LightPage.this.c.isEmpty()) {
                    K3LightPage.this.w();
                    return;
                }
                Activity activityI = MucangConfig.i();
                r.d(activityI, "getCurrentActivity()");
                boolean z = false;
                List<Deduct> list = K3LightPage.this.c;
                ArrayList arrayList = new ArrayList(v.u(list, 10));
                for (Deduct deduct : list) {
                    AnalysisModel analysisModel = new AnalysisModel();
                    analysisModel.deductName = deduct.desc;
                    arrayList.add(analysisModel);
                }
                StepResultDialog stepResultDialog = new StepResultDialog(activityI, z, arrayList, null, 8, null);
                final K3LightPage k3LightPage = K3LightPage.this;
                stepResultDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k3.e
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        K3LightPage.a.b(k3LightPage, dialogInterface);
                    }
                });
                stepResultDialog.show();
            }
        }

        @Override // cn.mucang.android.jiakaoyi.exam.k3.light.LightExam.LightExamCallback
        public void onStart(LightExamModel model) {
            r.e(model, "model");
            K3LightPage.this.b.desc = model.standard;
            Set setKeySet = K3LightPage.this.f8631d.keySet();
            r.d(setKeySet, "exeList.keys");
            LightExamModel lightExamModel = (LightExamModel) s.p0(setKeySet);
            if (lightExamModel != null) {
                K3LightPage k3LightPage = K3LightPage.this;
                if (k3LightPage.f8631d.get(lightExamModel) == ActionState.Starting) {
                    k3LightPage.f8631d.put(lightExamModel, ActionState.Finish);
                }
            }
            K3LightPage.this.f8631d.put(model, ActionState.Starting);
            K3LightPage.this.v();
        }
    }

    public K3LightPage() {
        TrainDataModel trainDataModel = new TrainDataModel();
        trainDataModel.title = k0.a(R.string.teachbase_lighting_simulation);
        kotlin.v vVar = kotlin.v.f15822a;
        this.b = trainDataModel;
        this.c = new ArrayList();
        this.f8631d = new LinkedHashMap<>();
        this.i = new a();
        this.j = new c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k3.c
            @Override // cn.mucang.android.jiakaoyi.framework.h.c
            public final Object get() {
                return K3LightPage.j();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean j() {
        return Boolean.FALSE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final List<PreExamCheckPresenter.DialogState> k(K3DengGuangStepConfig k3DengGuangStepConfig) {
        ArrayList arrayList = new ArrayList();
        if (k3DengGuangStepConfig != null) {
            T t = k3DengGuangStepConfig.p202101.value;
            r.d(t, "config.p202101.value");
            if (((Boolean) t).booleanValue()) {
                T t2 = k3DengGuangStepConfig.p202139.value;
                r.d(t2, "it.p202139.value");
                if (((Boolean) t2).booleanValue()) {
                    arrayList.add(PreExamCheckPresenter.DialogState.CloseLight);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List l() {
        return t.d(StepInfoParseUtil.getEmptyStepInfo(Step.K3_LightSimulate));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(K3LightPage this$0, Boolean bool) {
        r.e(this$0, "this$0");
        if (r.a(bool, Boolean.TRUE)) {
            K3DataManager k3DataManager = K3DataManager.f7233a;
            this$0.f8634g = new LightExam(LightDataCreator.createLightData(k3DataManager.d(), k3DataManager.c(), this$0.f8632e), this$0.f8632e, this$0.i, this$0.f8633f, this$0.j, true);
            this$0.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<LightExamModel, ActionState> entry : this.f8631d.entrySet()) {
            LightExamModel key = entry.getKey();
            ActionState value = entry.getValue();
            TrainItemModel trainItemModel = new TrainItemModel();
            trainItemModel.title = key.desc;
            trainItemModel.state = value.state;
            kotlin.v vVar = kotlin.v.f15822a;
            arrayList.add(trainItemModel);
        }
        TrainDataModel trainDataModel = this.b;
        trainDataModel.itemList = arrayList;
        d.e(trainDataModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w() {
        this.f8631d.clear();
        this.c.clear();
        LightExam lightExam = this.f8634g;
        if (lightExam == null) {
            return;
        }
        lightExam.start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void b() {
        StringValue stringValue;
        K3EngineManager k3EngineManagerE = this.f8630a.getC();
        String strA = null;
        StepConfig stepConfig = k3EngineManagerE == null ? null : k3EngineManagerE.getStepConfig(Step.K3_LightSimulate);
        BaseStepConfig baseStepConfig = stepConfig == null ? null : stepConfig.stepConfig;
        K3DengGuangStepConfig k3DengGuangStepConfig = baseStepConfig instanceof K3DengGuangStepConfig ? (K3DengGuangStepConfig) baseStepConfig : null;
        this.f8632e = k3DengGuangStepConfig;
        this.f8633f = stepConfig == null ? null : stepConfig.deductConfig;
        List<PreExamCheckPresenter.DialogState> listK = k(k3DengGuangStepConfig);
        Activity activityI = MucangConfig.i();
        b bVar = new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k3.f
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                K3LightPage.t(this.f8626a, (Boolean) obj);
            }
        };
        K3DengGuangStepConfig k3DengGuangStepConfig2 = this.f8632e;
        if (k3DengGuangStepConfig2 != null && (stringValue = k3DengGuangStepConfig2.p202133) != null) {
            strA = (String) stringValue.value;
        }
        if (strA == null) {
            strA = k0.a(R.string.teachbase_please_start_engine);
        }
        new PreExamCheckPresenter(activityI, bVar, listK, strA);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public c<List<cn.mucang.android.jiakaoyi.engine.i.c.b>> c() {
        return new c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k3.d
            @Override // cn.mucang.android.jiakaoyi.framework.h.c
            public final Object get() {
                return K3LightPage.l();
            }
        };
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void g() {
        this.f8635h = true;
        TtsManager.H();
        this.f8630a.g();
        d.e(new TrainDataModel());
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public int getEngineType() {
        return 1;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public boolean m() {
        return K3EngineController.a.C0143a.a(this);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public /* synthetic */ void n() {
        z.a(this);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void o() {
        this.f8635h = false;
        TtsManager.H();
        this.f8630a.q();
        LightExam lightExam = this.f8634g;
        if (lightExam == null) {
            return;
        }
        lightExam.stop();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        K3EngineController.a.C0143a.c(this, aVar);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        K3EngineController.a.C0143a.d(this, bVar, cVar);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void onStepChanged(int i, Step step, ExamStepState examStepState) {
        K3EngineController.a.C0143a.e(this, i, step, examStepState);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void p(f fVar) {
        K3EngineController.a.C0143a.b(this, fVar);
    }

    public final void u(LightPlayModel mode) {
        r.e(mode, "mode");
        K3DengGuangStepConfig k3DengGuangStepConfig = this.f8632e;
        if (k3DengGuangStepConfig == null) {
            return;
        }
        r.c(k3DengGuangStepConfig);
        List<LightExamModel> listM = K3DataManager.m(mode, k3DengGuangStepConfig);
        if (listM == null) {
            return;
        }
        LightExam lightExam = this.f8634g;
        if (lightExam != null) {
            lightExam.stop();
        }
        this.f8634g = new LightExam(listM, this.f8632e, this.i, this.f8633f, this.j, true);
        w();
    }
}
