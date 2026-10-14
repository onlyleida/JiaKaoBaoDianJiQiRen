package cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach;

import androidx.lifecycle.s;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.BoundaryChecker;
import cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceFunction;
import cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceModule;
import cn.mucang.android.jiakaoyi.teachingk2.data.ErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.exe.k;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.TeachOutputHelper;
import com.iflytek.cloud.SpeechUtility;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0095\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\b\u0003*\u0001\u0010\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0002\u0010\bJ\u0018\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016Jq\u0010&\u001a\u00020!2.\u0010'\u001a*\u0012\u0004\u0012\u00020)\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0*0(j\u0014\u0012\u0004\u0012\u00020)\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0*`,2.\u0010-\u001a*\u0012\u0004\u0012\u00020)\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040.0(j\u0014\u0012\u0004\u0012\u00020)\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040.`,H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010/J\u0018\u00100\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0016\u001a\u0010\u0012\f\u0012\n \u0019*\u0004\u0018\u00010\u00180\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u001c\u001a\u0010\u0012\f\u0012\n \u0019*\u0004\u0018\u00010\u001d0\u001d0\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u00061"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceFunction;", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceModel;", "teachPlanId", "", "notPassSteps", "", "", "(Ljava/lang/String;Ljava/util/List;)V", "deductChecker", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/DeductChecker;", "errorCallback", "Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachErrorCallback;", "examEventCallback", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;", "examResultCallback", "cn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$examResultCallback$1;", "jLoadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "outputHelper", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TeachOutputHelper;", "stateCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;", "kotlin.jvm.PlatformType", "stepChecker", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/StepChecker;", "teachCallback", "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;", "teachChecker", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachChecker;", "clickSubmit", "", "activity", "Landroidx/appcompat/app/AppCompatActivity;", "workOrderId", "", "getTeachData", "teachData", "Ljava/util/HashMap;", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "Lkotlin/collections/HashMap;", "boundaryData", "", "(Ljava/util/HashMap;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "initAndStart", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachAcceptanceImpl extends AcceptanceFunction<TeachAcceptanceModel> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f6060e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<Integer> f6061f;
    private JLoadingDialog j;
    private TeachChecker k;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final TeachOutputHelper f6062g = new TeachOutputHelper(true, false, 2, null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final StepChecker f6063h = new StepChecker(false);
    private final DeductChecker i = new DeductChecker();
    private final a l = new a();
    private final cn.mucang.android.jiakaoyi.engine.f.a m = new cn.mucang.android.jiakaoyi.engine.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach.c
        @Override // cn.mucang.android.jiakaoyi.engine.f.a
        public final void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
            TeachAcceptanceImpl.G(this.f6067a, bVar, cVar);
        }
    };
    private final cn.mucang.android.jiakaoyi.framework.h.b<EngineState> n = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach.b
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            TeachAcceptanceImpl.M(this.f6066a, (EngineState) obj);
        }
    };
    private final cn.mucang.android.jiakaoyi.framework.h.b<FormModel> o = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach.a
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            TeachAcceptanceImpl.N(this.f6065a, (FormModel) obj);
        }
    };
    private final k p = new k() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach.d
        @Override // cn.mucang.android.jiakaoyi.teachingk2.exe.k
        public final void a(TeachModel teachModel, ErrorModel errorModel) {
            TeachAcceptanceImpl.F(teachModel, errorModel);
        }
    };

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;", "onOneError", "", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "onResult", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements cn.mucang.android.jiakaoyi.engine.f.b {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a deduct) {
            r.e(deduct, "deduct");
            if (deduct.f3102a.step == Step.K2_Global) {
                return;
            }
            TeachAcceptanceImpl.this.i.b(deduct);
            Deduct deduct2 = deduct.f3102a;
            TtsManager.A(deduct2.name, TtsGrade.TeachDeduct, deduct2.code);
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onResult(cn.mucang.android.jiakaoyi.engine.processor.exam.f fVar) {
        }
    }

    public TeachAcceptanceImpl(String str, List<Integer> list) {
        this.f6060e = str;
        this.f6061f = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(TeachModel teachModel, ErrorModel errorModel) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(TeachAcceptanceImpl this$0, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        r.e(this$0, "this$0");
        if (!bVar.l()) {
            if (bVar.j()) {
                this$0.i.c(null);
                return;
            }
            return;
        }
        BoundaryChecker boundaryCheckerI = cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(2).i();
        if (boundaryCheckerI.f3684a.s() == bVar.f3142e) {
            StepChecker stepChecker = this$0.f6063h;
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2 = boundaryCheckerI.f3684a;
            r.d(bVar2, "boundary.boundary");
            stepChecker.e(bVar2);
            this$0.i.c(boundaryCheckerI.f3684a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object H(HashMap<Step, List<TeachModel>> map, HashMap<Step, Set<String>> map2, Continuation<? super v> continuation) {
        Object objC = kotlinx.coroutines.f.c(w0.b(), new TeachAcceptanceImpl$getTeachData$2(this, map, map2, null), continuation);
        return objC == kotlin.coroutines.intrinsics.b.d() ? objC : v.f15822a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(TeachAcceptanceImpl this$0, EngineState state) {
        cn.mucang.android.jiakaoyi.engine.c engine;
        cn.mucang.android.jiakaoyi.engine.e eVarI;
        r.e(this$0, "this$0");
        r.e(state, "state");
        if (state == EngineState.Initialed) {
            if (cn.mucang.android.core.utils.g.d(this$0.f6061f)) {
                StepChecker stepChecker = this$0.f6063h;
                List<Integer> list = this$0.f6061f;
                r.c(list);
                for (Step step : stepChecker.a(list)) {
                    cn.mucang.android.jiakaoyi.teachingk2.t0.b f6073a = this$0.getF6073a();
                    if (f6073a != null && (engine = f6073a.getEngine()) != null && (eVarI = engine.i()) != null) {
                        eVarI.a(step);
                    }
                }
            }
            cn.mucang.android.jiakaoyi.teachingk2.t0.b f6073a2 = this$0.getF6073a();
            if (f6073a2 == null) {
                return;
            }
            f6073a2.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(TeachAcceptanceImpl this$0, FormModel model) {
        r.e(this$0, "this$0");
        r.e(model, "model");
        this$0.f6062g.callback(model);
        TeachChecker teachChecker = this$0.k;
        if (teachChecker == null) {
            return;
        }
        TeachModel teachModel = model.tm;
        r.d(teachModel, "model.tm");
        teachChecker.b(teachModel);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceFunction
    public void c(androidx.appcompat.app.d activity, long j) {
        r.e(activity, "activity");
        super.c(activity, j);
        TeachAcceptanceModel teachAcceptanceModel = new TeachAcceptanceModel();
        teachAcceptanceModel.setStepResult(this.f6063h.c());
        teachAcceptanceModel.setDeductResult(this.i.a());
        TeachChecker teachChecker = this.k;
        teachAcceptanceModel.setTeachResult(teachChecker == null ? null : teachChecker.a());
        e(activity, AcceptanceModule.K2Teach, this.f6060e, teachAcceptanceModel, j);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceFunction
    public void n(androidx.appcompat.app.d activity, long j) {
        r.e(activity, "activity");
        super.n(activity, j);
        JLoadingDialog jLoadingDialog = new JLoadingDialog(activity);
        this.j = jLoadingDialog;
        if (jLoadingDialog != null) {
            jLoadingDialog.b("正在加载数据");
        }
        kotlinx.coroutines.g.b(s.a(activity), null, null, new TeachAcceptanceImpl$initAndStart$1(this, activity, null), 3, null);
    }
}
