package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent;

import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.ShangPoPracticeAssistChecker;
import cn.mucang.android.jiakaoyi.teachingk2.collect.TeachCollectHelper;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.grade.TeachConfig;
import cn.mucang.android.jiakaoyi.teachingk2.l0;
import cn.mucang.android.jiakaoyi.teachingk2.m0;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTip;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.HighErrorHandler;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.KeMuAreaSwitcher;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.StepSettingManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.UnityDrawSender;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.DrawObserveHelper;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.TeachPositionManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.OtherCarIntrudeMgr;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.d0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TrainConfigModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TrainTipItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TrainTipListModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.helper.d;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.trace.correct.SimpleCorrectCallback;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.z;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010#\u001a\u00020$H\u0016J\b\u0010%\u001a\u00020$H\u0016R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0016\u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u001f\u001a\u00020 ¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"¨\u0006&"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/handlers/UnityPageHandler$PageEvent;", "()V", "controller", "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/half/HalfAutoPilotController;", "getController", "()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/half/HalfAutoPilotController;", "correctCallback", "Lcn/mucang/android/jiakaoyi/teachingk2/trace/correct/SimpleCorrectCallback;", "gpsPageUtil", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/helper/GPSPageUtil;", "gradeChangeObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/teachingk2/GradeConfigChangeEvent;", "halfCallback", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/halfpilot/StopCarHalfPilotCallback;", "helper", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/DrawObserveHelper;", "itemModel", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipItemModel;", "listModel", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainTipListModel;", "teachCtrl", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/TeachEngineController;", "getTeachCtrl", "()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/TeachEngineController;", "teachTipObserver", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;", "teachTypeObserver", "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;", "trainModel", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;", "getTrainModel", "()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainConfigModel;", "onEnter", "", "onExit", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TrainPage implements a0.a {
    private d c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final DrawObserveHelper f8562g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final SimpleCorrectCallback f8563h;
    private final b<TeachTip> i;
    private final androidx.lifecycle.a0<m0> j;
    private final b<TeachTypeData> k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d0 f8558a = new d0(false);
    private final TrainConfigModel b = new TrainConfigModel();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TrainTipListModel f8559d = new TrainTipListModel();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TrainTipItemModel f8560e = new TrainTipItemModel();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.b1.b f8561f = new cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.b1.b();

    public TrainPage() {
        DrawObserveHelper drawObserveHelper = new DrawObserveHelper(new DrawObserveHelper.a(false, false, false, new Function0<Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.TrainPage$helper$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return Boolean.valueOf(LocalConfigManager.f(LocalConfig.ShowTrace));
            }
        }, new Function0<Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.TrainPage$helper$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return Boolean.valueOf(TeachConfig.a().getPositionGuide());
            }
        }, 7, null));
        this.f8562g = drawObserveHelper;
        this.f8563h = new SimpleCorrectCallback(drawObserveHelper);
        this.i = new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.t0
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                TrainPage.i(this.f8656a, (TeachTip) obj);
            }
        };
        this.j = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.s0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                TrainPage.d(this.f8654a, (m0) obj);
            }
        };
        this.k = new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.r0
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                TrainPage.j(this.f8652a, (TeachTypeData) obj);
            }
        };
    }

    private final cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d a() {
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d dVarA = cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.a();
        r.d(dVarA, "get()");
        return dVarA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(TrainPage this$0, m0 m0Var) {
        r.e(this$0, "this$0");
        StringBuilder sb = new StringBuilder();
        sb.append("教学等级发生改变：");
        sb.append(TeachConfig.d());
        sb.append((char) 65292);
        sb.append(l0.a() == 10);
        sb.append((char) 65292);
        sb.append(TeachConfig.a().getBrake());
        f.o(sb.toString());
        if (TeachConfig.d() && l0.a() == 10 && TeachConfig.a().getBrake()) {
            this$0.a().q();
            return;
        }
        this$0.a().n(null);
        this$0.a().r();
        if (BrakeGlobalMonitor.a().getReason() == BrakeReason.TeachBrake) {
            BrakeGlobalMonitor.a().setTeachBrake();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(TrainPage this$0, TeachTip teachTip) {
        r.e(this$0, "this$0");
        int i = teachTip.step;
        if (i == Step.K2_DaoCheRuKu.type || i == Step.K2_CeFangTingChe.type) {
            this$0.f8559d.title = TeachCollectHelper.g(i, teachTip.stepDirection, teachTip.subStep);
        } else {
            this$0.f8559d.title = Step.findWithType(i).stepName;
        }
        TrainTipListModel trainTipListModel = this$0.f8559d;
        List<TeachTypeData> listJ = teachTip.steps;
        if (listJ == null) {
            listJ = u.j();
        }
        trainTipListModel.itemList = listJ;
        cn.mucang.android.jiakaoyi.unity.c.d.e(this$0.f8559d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(TrainPage this$0, TeachTypeData teachTypeData) {
        r.e(this$0, "this$0");
        TrainTipItemModel trainTipItemModel = this$0.f8560e;
        trainTipItemModel.id = teachTypeData.id;
        trainTipItemModel.desc = teachTypeData.desc;
        trainTipItemModel.triggerState = teachTypeData.triggerState;
        cn.mucang.android.jiakaoyi.unity.c.d.e(trainTipItemModel);
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final d0 getF8558a() {
        return this.f8558a;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final TrainConfigModel getB() {
        return this.b;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void g() {
        StepSettingManager.f();
        a0.b = true;
        this.b.showHighErrorBtn = HighErrorHandler.d();
        this.b.showShareBtn = false;
        this.c = new d();
        this.f8558a.q();
        this.f8562g.n();
        d dVar = this.c;
        if (dVar != null) {
            dVar.e(null);
        }
        TeachPositionManager.f();
        UnityDrawSender.a();
        Tiger.j(this.i, TeachTip.class);
        Tiger.j(this.k, TeachTypeData.class);
        LiveBus.d(m0.class).i(this.j);
        KeMuAreaSwitcher.d(KeMu.K3);
        OtherCarIntrudeMgr.f8473a.m();
        HighErrorHandler.i();
        ShangPoPracticeAssistChecker.f6145e.k0();
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.d.g().p(this.f8563h);
        if (TeachConfig.d() && l0.a() == 10 && TeachConfig.a().getBrake()) {
            a().q();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public /* synthetic */ void n() {
        z.a(this);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void o() {
        a0.b = false;
        this.f8558a.s();
        this.f8562g.p();
        this.f8561f.c();
        cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.d();
        d dVar = this.c;
        if (dVar != null) {
            dVar.f();
        }
        this.c = null;
        Tiger.l(this.i, TeachTip.class);
        Tiger.l(this.k, TeachTypeData.class);
        LiveBus.d(m0.class).m(this.j);
        TtsManager.F();
        KeMuAreaSwitcher.e();
        HighErrorHandler.j();
        ShangPoPracticeAssistChecker.f6145e.l0("退出练习页面");
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.d.g().d();
        OtherCarIntrudeMgr.f8473a.c();
        a().n(null);
        a().r();
        if (BrakeGlobalMonitor.a().getReason() == BrakeReason.TeachBrake) {
            BrakeGlobalMonitor.a().setTeachBrake();
        }
    }
}
