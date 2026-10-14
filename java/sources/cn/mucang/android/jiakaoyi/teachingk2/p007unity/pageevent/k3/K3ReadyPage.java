package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.k3;

import android.app.Activity;
import android.content.DialogInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.model.a;
import cn.mucang.android.jiakaoyi.engine.processor.exam.f;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.exam.k3.creator.ExamStepState;
import cn.mucang.android.jiakaoyi.exam.k3.creator.K3EngineManager;
import cn.mucang.android.jiakaoyi.exam.k3.creator.StepInfoParseUtil;
import cn.mucang.android.jiakaoyi.framework.h.c;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.analysis.AnalysisModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.dialog.StepResultDialog;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.TrainDataModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.z;
import cn.mucang.android.jiakaoyi.unity.c.d;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.collections.v;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k3.k, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016J\u0014\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010\u0011\u001a\u00020\u000fH\u0016J\u001a\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ReadyPage;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/handlers/UnityPageHandler$PageEvent;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController$EngineCallback;", "()V", "engineCtrl", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController;", "ready", "", "getEngineType", "", "getStepGetter", "Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;", "", "Lcn/mucang/android/jiakaoyi/engine/processor/ExamEventCreator$StepInfo;", "onEngineInitialed", "", "onEnter", "onExit", "onStep", "stepHandler", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;", "stepResult", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepResult;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3ReadyPage implements a0.a, K3EngineController.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final K3EngineController f8637a = new K3EngineController(this);
    private boolean b = true;

    /* JADX INFO: Access modifiers changed from: private */
    public static final List a() {
        return t.d(StepInfoParseUtil.getEmptyStepInfo(Step.K3_ShangChe));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(K3ReadyPage this$0, DialogInterface dialogInterface) {
        r.e(this$0, "this$0");
        K3EngineManager k3EngineManagerE = this$0.f8637a.getC();
        if (k3EngineManagerE == null) {
            return;
        }
        k3EngineManagerE.reset();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void b() {
        K3EngineManager k3EngineManagerE = this.f8637a.getC();
        if (k3EngineManagerE == null) {
            return;
        }
        k3EngineManagerE.start();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public c<List<cn.mucang.android.jiakaoyi.engine.i.c.b>> c() {
        return new c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k3.g
            @Override // cn.mucang.android.jiakaoyi.framework.h.c
            public final Object get() {
                return K3ReadyPage.a();
            }
        };
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void g() {
        TtsManager.H();
        w.r.setTraceType(0);
        w.r.posMapCode = ExamSiteUtil.i(ExamSiteUtil.e(0L), KeMu.K3);
        this.f8637a.g();
        d.e(new TrainDataModel());
        this.b = i0.b("HaveShangCheStep", true);
        i0.i("HaveShangCheStep", true);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public int getEngineType() {
        return 2;
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
        TtsManager.H();
        this.f8637a.q();
        i0.i("HaveShangCheStep", this.b);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void onOneError(a aVar) {
        K3EngineController.a.C0143a.c(this, aVar);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void onStep(b stepHandler, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        r.e(stepHandler, "stepHandler");
        if (stepHandler.f3142e == Step.K3_ShangChe && stepHandler.j()) {
            if (this.f8637a.d().isEmpty()) {
                K3EngineManager k3EngineManagerE = this.f8637a.getC();
                if (k3EngineManagerE == null) {
                    return;
                }
                k3EngineManagerE.reset();
                return;
            }
            Activity activityI = MucangConfig.i();
            r.d(activityI, "getCurrentActivity()");
            boolean z = false;
            List<a> listD = this.f8637a.d();
            ArrayList arrayList = new ArrayList(v.u(listD, 10));
            for (a aVar : listD) {
                AnalysisModel analysisModel = new AnalysisModel();
                analysisModel.deductName = aVar.f3102a.desc;
                arrayList.add(analysisModel);
            }
            StepResultDialog stepResultDialog = new StepResultDialog(activityI, z, arrayList, null, 8, null);
            stepResultDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k3.h
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    K3ReadyPage.f(this.f8628a, dialogInterface);
                }
            });
            stepResultDialog.show();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void onStepChanged(int i, Step step, ExamStepState examStepState) {
        K3EngineController.a.C0143a.e(this, i, step, examStepState);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void p(f fVar) {
        K3EngineController.a.C0143a.b(this, fVar);
    }
}
