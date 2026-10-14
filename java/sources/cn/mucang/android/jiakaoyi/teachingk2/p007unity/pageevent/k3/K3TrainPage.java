package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.k3;

import android.app.Activity;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.i.c;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.model.a;
import cn.mucang.android.jiakaoyi.engine.processor.exam.f;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceStepStartEvent;
import cn.mucang.android.jiakaoyi.exam.k3.creator.ExamStepState;
import cn.mucang.android.jiakaoyi.exam.k3.creator.K3EngineManager;
import cn.mucang.android.jiakaoyi.exam.k3.creator.StepInfoParseUtil;
import cn.mucang.android.jiakaoyi.exam.k3.starter.K3_QiBu_Starter;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.k3setting.LocalRouteUtil;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.k3.K3DataManager;
import cn.mucang.android.jiakaoyi.teachingk2.k3.K3TeachMode;
import cn.mucang.android.jiakaoyi.teachingk2.k3.TeachModeManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.analysis.AnalysisModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.KeMuAreaSwitcher;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.UnityDrawSender;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.dialog.StepResultDialog;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.RouteStepModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.TrainDataModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.w;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.z;
import cn.mucang.android.jiakaoyi.unity.c.d;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.v;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k3.l, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\rH\u0016J\u0014\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00100\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0013H\u0016J\b\u0010\u0015\u001a\u00020\u0013H\u0016J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0006H\u0016J\u001a\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u0013H\u0002R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3TrainPage;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/handlers/UnityPageHandler$PageEvent;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController$EngineCallback;", "()V", "deductList", "Ljava/util/HashSet;", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "Lkotlin/collections/HashSet;", "engineCtrl", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController;", "traffic", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/TrafficBrakeManager;", "getEngineType", "", "getStepGetter", "Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;", "", "Lcn/mucang/android/jiakaoyi/engine/processor/ExamEventCreator$StepInfo;", "onEngineInitialed", "", "onEnter", "onExit", "onOneError", "deductInfo", "onStep", "stepHandler", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;", "stepResult", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepResult;", "sendRouteData", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3TrainPage implements a0.a, K3EngineController.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final K3EngineController f8638a = new K3EngineController(this);
    private final HashSet<a> b = new HashSet<>();
    private final w c = new w();

    /* JADX INFO: Access modifiers changed from: private */
    public static final List a() {
        ArrayList arrayList = new ArrayList();
        if (LocalRouteUtil.b() != null) {
            ArrayList<c.b> startPos = StepInfoParseUtil.parseStartPos(LocalRouteUtil.b());
            r.d(startPos, "parseStartPos(LocalRouteUtil.getRoute())");
            arrayList.addAll(startPos);
        }
        c.b emptyStepInfo = StepInfoParseUtil.getEmptyStepInfo(Step.K3_Global);
        r.d(emptyStepInfo, "getEmptyStepInfo(Step.K3_Global)");
        arrayList.add(0, emptyStepInfo);
        c.b emptyStepInfo2 = StepInfoParseUtil.getEmptyStepInfo(Step.K3_QiBu);
        r.d(emptyStepInfo2, "getEmptyStepInfo(Step.K3_QiBu)");
        arrayList.add(0, emptyStepInfo2);
        return arrayList;
    }

    private final void e() {
        List<RouteNode> nodes;
        LocalRoute localRouteB = LocalRouteUtil.b();
        cn.mucang.android.jiakaoyi.signal.i.a aVar = n.b().f7599a;
        if (aVar != null) {
            if (n0.g(localRouteB == null ? null : localRouteB.getRouteId())) {
                if (!r.a("ThisIsCommonRouteId", localRouteB != null ? localRouteB.getRouteId() : null)) {
                    RouteStepModel routeStepModel = new RouteStepModel();
                    routeStepModel.itemList = new ArrayList();
                    if (localRouteB != null && (nodes = localRouteB.getNodes()) != null) {
                        for (RouteNode routeNode : nodes) {
                            RouteStepModel.RouteStepItemModel routeStepItemModel = new RouteStepModel.RouteStepItemModel();
                            routeStepItemModel.angle = routeNode.getBearing();
                            routeStepItemModel.point = aVar.a(new Gps(routeNode.getLat(), routeNode.getLon()));
                            routeStepItemModel.name = routeNode.getAlias();
                            routeStepModel.itemList.add(routeStepItemModel);
                        }
                    }
                    d.e(routeStepModel);
                    return;
                }
            }
        }
        RouteStepModel routeStepModel2 = new RouteStepModel();
        routeStepModel2.itemList = new ArrayList();
        d.e(routeStepModel2);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void b() {
        K3_QiBu_Starter.start = cn.mucang.android.jiakaoyi.signal.c.d.t().d().b < 1.0f;
        K3EngineManager k3EngineManagerE = this.f8638a.getC();
        if (k3EngineManagerE == null) {
            return;
        }
        k3EngineManagerE.start();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public cn.mucang.android.jiakaoyi.framework.h.c<List<c.b>> c() {
        return new cn.mucang.android.jiakaoyi.framework.h.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k3.i
            @Override // cn.mucang.android.jiakaoyi.framework.h.c
            public final Object get() {
                return K3TrainPage.a();
            }
        };
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void g() {
        a0.b = true;
        TtsManager.H();
        K3DataManager.b();
        cn.mucang.android.jiakaoyi.engine.trace.w.r.setTraceType(0);
        cn.mucang.android.jiakaoyi.engine.trace.w.r.posMapCode = ExamSiteUtil.i(ExamSiteUtil.e(0L), KeMu.K3);
        this.f8638a.g();
        d.e(new TrainDataModel());
        UnityDrawSender.a();
        e();
        KeMuAreaSwitcher.d(KeMu.K2);
        this.c.p();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public int getEngineType() {
        return r.a(TeachModeManager.a(), K3TeachMode.Teach.getMode()) ? 2 : 4;
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
        a0.b = false;
        this.c.q();
        TtsManager.H();
        K3_QiBu_Starter.start = false;
        this.f8638a.q();
        KeMuAreaSwitcher.e();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void onOneError(a deductInfo) {
        r.e(deductInfo, "deductInfo");
        K3EngineController.a.C0143a.c(this, deductInfo);
        this.b.add(deductInfo);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void onStep(b stepHandler, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        r.e(stepHandler, "stepHandler");
        if (stepHandler.j()) {
            d.e(new TrainDataModel());
        }
        if (stepHandler.l()) {
            this.b.clear();
            RobotTips.f7184a.z(new TraceStepStartEvent(true, stepHandler.f3142e.type), false);
            return;
        }
        if (stepHandler.j()) {
            if (!this.b.isEmpty()) {
                Activity activityI = MucangConfig.i();
                r.d(activityI, "getCurrentActivity()");
                boolean z = false;
                HashSet<a> hashSet = this.b;
                ArrayList arrayList = new ArrayList(v.u(hashSet, 10));
                for (a aVar : hashSet) {
                    AnalysisModel analysisModel = new AnalysisModel();
                    analysisModel.deductName = aVar.f3102a.desc;
                    arrayList.add(analysisModel);
                }
                new StepResultDialog(activityI, z, arrayList, null, 8, null).show();
            }
            RobotTips.f7184a.z(new TraceStepStartEvent(false, stepHandler.f3142e.type), this.b.isEmpty());
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
