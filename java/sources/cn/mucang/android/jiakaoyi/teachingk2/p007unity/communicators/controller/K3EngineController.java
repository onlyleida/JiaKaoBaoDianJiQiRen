package cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.f;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.creator.ExamStepState;
import cn.mucang.android.jiakaoyi.exam.k3.creator.K3EngineManager;
import cn.mucang.android.jiakaoyi.exam.k3.creator.UpdateStepCallback;
import cn.mucang.android.jiakaoyi.exam.k3.teach.callback.TeachResultEventCallback;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.ActionResult;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.ActionState;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachResult;
import cn.mucang.android.jiakaoyi.framework.h.c;
import cn.mucang.android.jiakaoyi.k3setting.LocalRouteUtil;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.TrainDataModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.TrainItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.android.jiakaoyi.unity.c.d;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import com.iflytek.cloud.SpeechUtility;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.b0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000o\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0017\u0018\u00002\u00020\u0001:\u0001*B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&H\u0002J\u0006\u0010'\u001a\u00020(J\u0006\u0010)\u001a\u00020(R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u001c\u0010\u0019\u001a\u0010\u0012\f\u0012\n \u001c*\u0004\u0018\u00010\u001b0\u001b0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController;", "", "callback", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController$EngineCallback;", "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController$EngineCallback;)V", "getCallback", "()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController$EngineCallback;", "deductList", "", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "getDeductList", "()Ljava/util/List;", "engineCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;", "<set-?>", "Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;", "engineManager", "getEngineManager", "()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;", "examEventCallback", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;", "examResultCallback", "cn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController$examResultCallback$1;", "practiceGetter", "Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;", "", "kotlin.jvm.PlatformType", "routeGetter", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "teachEventCallback", "Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;", "updateStepCallback", "Lcn/mucang/android/jiakaoyi/exam/k3/creator/UpdateStepCallback;", "getState", "", "state", "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;", "init", "", "stop", "EngineCallback", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3EngineController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f8465a;
    private final List<cn.mucang.android.jiakaoyi.engine.model.a> b;
    private K3EngineManager c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f8466d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.f.a f8467e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TeachResultEventCallback f8468f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final UpdateStepCallback f8469g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<EngineState> f8470h;
    private final c<LocalRoute> i;
    private final c<Boolean> j;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.b0$a */
    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0016\u0010\u0004\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u0005H&J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u001a\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J \u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController$EngineCallback;", "", "getEngineType", "", "getStepGetter", "Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;", "", "Lcn/mucang/android/jiakaoyi/engine/processor/ExamEventCreator$StepInfo;", "isPractice", "", "onEngineInitialed", "", "onExamResult", "examResult", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;", "onOneError", "deductInfo", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "onStep", "stepHandler", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;", "stepResult", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepResult;", "onStepChanged", "routeId", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "stepStatus", "Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface a {

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.b0$a$a, reason: collision with other inner class name */
        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
        public static final class C0143a {
            public static boolean a(a aVar) {
                r.e(aVar, "this");
                return true;
            }

            public static void b(a aVar, f examResult) {
                r.e(aVar, "this");
                r.e(examResult, "examResult");
            }

            public static void c(a aVar, cn.mucang.android.jiakaoyi.engine.model.a deductInfo) {
                r.e(aVar, "this");
                r.e(deductInfo, "deductInfo");
            }

            public static void d(a aVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b stepHandler, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
                r.e(aVar, "this");
                r.e(stepHandler, "stepHandler");
            }

            public static void e(a aVar, int i, Step step, ExamStepState stepStatus) {
                r.e(aVar, "this");
                r.e(step, "step");
                r.e(stepStatus, "stepStatus");
            }
        }

        void b();

        c<List<cn.mucang.android.jiakaoyi.engine.i.c.b>> c();

        int getEngineType();

        boolean m();

        void onOneError(cn.mucang.android.jiakaoyi.engine.model.a aVar);

        void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar);

        void onStepChanged(int routeId, Step step, ExamStepState stepStatus);

        void p(f fVar);
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.b0$b */
    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;", "onOneError", "", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "onResult", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements cn.mucang.android.jiakaoyi.engine.f.b {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a deduct) {
            r.e(deduct, "deduct");
            K3EngineController.this.d().add(0, deduct);
            K3EngineController.this.getF8465a().onOneError(deduct);
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onResult(f result) {
            r.e(result, "result");
            K3EngineController.this.getF8465a().p(result);
        }
    }

    public K3EngineController(a callback) {
        r.e(callback, "callback");
        this.f8465a = callback;
        this.b = new ArrayList();
        this.f8466d = new b();
        this.f8467e = new cn.mucang.android.jiakaoyi.engine.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.n
            @Override // cn.mucang.android.jiakaoyi.engine.f.a
            public final void onStep(b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
                K3EngineController.b(this.f8498a, bVar, cVar);
            }
        };
        this.f8468f = new TeachResultEventCallback() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.m
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.callback.TeachResultEventCallback
            public final void handleResult(b bVar, List list) {
                K3EngineController.s(this.f8497a, bVar, list);
            }
        };
        this.f8469g = new UpdateStepCallback() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.k
            @Override // cn.mucang.android.jiakaoyi.exam.k3.creator.UpdateStepCallback
            public final void onStepChanged(int i, Step step, ExamStepState examStepState) {
                K3EngineController.t(this.f8495a, i, step, examStepState);
            }
        };
        this.f8470h = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.j
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                K3EngineController.a(this.f8494a, (EngineState) obj);
            }
        };
        this.i = new c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.h
            @Override // cn.mucang.android.jiakaoyi.framework.h.c
            public final Object get() {
                return K3EngineController.p();
            }
        };
        this.j = new c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.i
            @Override // cn.mucang.android.jiakaoyi.framework.h.c
            public final Object get() {
                return K3EngineController.o(this.f8493a);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(K3EngineController this$0, EngineState engineState) {
        r.e(this$0, "this$0");
        if (engineState == EngineState.Initialed) {
            if (this$0.getC() == null) {
                return;
            }
            this$0.getF8465a().b();
        } else if (engineState == EngineState.Start) {
            this$0.d().clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(K3EngineController this$0, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b stepHandler, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        r.e(this$0, "this$0");
        a f8465a = this$0.getF8465a();
        r.d(stepHandler, "stepHandler");
        f8465a.onStep(stepHandler, cVar);
    }

    private final int f(ActionState actionState) {
        if (actionState == ActionState.Error || actionState == ActionState.NoFinish || actionState == ActionState.Skip) {
            return 3;
        }
        if (actionState == null) {
            return 0;
        }
        return actionState.state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean o(K3EngineController this$0) {
        r.e(this$0, "this$0");
        return Boolean.valueOf(this$0.getF8465a().m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LocalRoute p() {
        return LocalRouteUtil.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(K3EngineManager k3EngineManager) {
        if (k3EngineManager == null) {
            return;
        }
        k3EngineManager.destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(K3EngineController this$0, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, List teachResults) {
        TeachData teachData;
        String str;
        r.e(this$0, "this$0");
        TrainDataModel trainDataModel = new TrainDataModel();
        trainDataModel.title = bVar.f3142e.stepName;
        trainDataModel.itemList = new ArrayList();
        r.d(teachResults, "teachResults");
        int i = -1;
        int i2 = 0;
        for (Object obj : teachResults) {
            int i3 = i2 + 1;
            ActionState actionState = null;
            if (i2 < 0) {
                s.t();
                throw null;
            }
            TeachResult teachResult = (TeachResult) obj;
            ActionResult actionResult = teachResult.result;
            if ((actionResult == null ? null : actionResult.state) != null) {
                if ((actionResult == null ? null : actionResult.state) == ActionState.Starting) {
                    i = i2;
                }
            }
            List<TrainItemModel> list = trainDataModel.itemList;
            TrainItemModel trainItemModel = new TrainItemModel();
            trainItemModel.title = teachResult.data.name;
            ActionResult actionResult2 = teachResult.result;
            if (actionResult2 != null) {
                actionState = actionResult2.state;
            }
            trainItemModel.state = this$0.f(actionState);
            v vVar = v.f15822a;
            list.add(trainItemModel);
            i2 = i3;
        }
        TeachResult teachResult2 = (TeachResult) s.f0(teachResults, i);
        String str2 = "";
        if (teachResult2 != null && (teachData = teachResult2.data) != null && (str = teachData.desc) != null) {
            str2 = str;
        }
        trainDataModel.desc = str2;
        d.e(trainDataModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(K3EngineController this$0, int i, Step step, ExamStepState stepStatus) {
        r.e(this$0, "this$0");
        a f8465a = this$0.getF8465a();
        r.d(step, "step");
        r.d(stepStatus, "stepStatus");
        f8465a.onStepChanged(i, step, stepStatus);
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final a getF8465a() {
        return this.f8465a;
    }

    public final List<cn.mucang.android.jiakaoyi.engine.model.a> d() {
        return this.b;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final K3EngineManager getC() {
        return this.c;
    }

    public final void g() {
        K3EngineManager k3EngineManager = this.c;
        if (k3EngineManager != null) {
            k3EngineManager.destroy();
        }
        this.c = new K3EngineManager(this.f8465a.getEngineType(), this.f8466d, this.f8467e, this.f8468f, this.f8469g, this.f8470h, this.i, this.j, this.f8465a.c());
        cn.mucang.android.jiakaoyi.exam.a.b.b(n.p.f7600d);
        K3EngineManager k3EngineManager2 = this.c;
        if (k3EngineManager2 == null) {
            return;
        }
        k3EngineManager2.initEngine();
    }

    public final void q() {
        K3EngineManager k3EngineManager = this.c;
        if (k3EngineManager != null) {
            k3EngineManager.stop();
        }
        final K3EngineManager k3EngineManager2 = this.c;
        this.c = null;
        u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.l
            @Override // java.lang.Runnable
            public final void run() {
                K3EngineController.r(k3EngineManager2);
            }
        }, 500L);
    }
}
