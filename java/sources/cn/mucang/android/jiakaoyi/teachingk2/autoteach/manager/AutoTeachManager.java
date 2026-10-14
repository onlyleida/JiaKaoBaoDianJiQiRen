package cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.BoundaryChecker;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.autopilot.AutoPilotError;
import cn.mucang.android.jiakaoyi.signal.autopilot.AutoPilotMode;
import cn.mucang.android.jiakaoyi.signal.center.model.CheckModuleStatus;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.autopilot.AutoPilotState;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.TeachEndDialog;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.AutoTeachStatus;
import cn.mucang.android.jiakaoyi.teachingk2.data.ErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.TeachOutputHelper;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.teach.TeachStatusModel;
import cn.mucang.android.jiakaoyi.teachingk2.record.RecordEvent;
import cn.mucang.android.jiakaoyi.teachingk2.record.UserRecorder;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.ModuleStatusMonitor;
import cn.mucang.jiakaoyi.uilib.AutoTeachEvent;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.amap.api.fence.GeoFence;
import com.iflytek.cloud.SpeechUtility;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u0006\u0010$\u001a\u00020\u0006J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u0014H\u0002J\u000e\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*J\u0010\u0010+\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u001cH\u0002J\u0010\u0010,\u001a\u00020\u00062\u0006\u0010-\u001a\u00020.H\u0002J\u0006\u0010/\u001a\u00020\u0006J\u0010\u00100\u001a\u00020\u00062\b\u00101\u001a\u0004\u0018\u000102J\u0006\u00103\u001a\u00020\u0006J\b\u00104\u001a\u00020\u0006H\u0002J\u0006\u00105\u001a\u00020\u0006J\u000e\u00106\u001a\u00020\u00062\u0006\u00107\u001a\u000208R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010 0\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00069"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;", "", "routeManager", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/TeachRouteManager;", "onEnd", "Lkotlin/Function0;", "", "(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/TeachRouteManager;Lkotlin/jvm/functions/Function0;)V", "dialog", "Landroid/app/Dialog;", "getDialog", "()Landroid/app/Dialog;", "setDialog", "(Landroid/app/Dialog;)V", "engine", "Lcn/mucang/android/jiakaoyi/teachingk2/creator/K2TeachingEngineManager;", "errorCallback", "Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachErrorCallback;", "errorObserver", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAutoPilotState$AutoPilotResponseError;", "examEventCallback", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;", "examResultCallback", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;", "helper", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TeachOutputHelper;", "modelObserver", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAutoPilotState$AutoPilotResponseState;", "getOnEnd", "()Lkotlin/jvm/functions/Function0;", "stateCallback", "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;", "stepObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/engine/processor/listen/StepInfoModel;", "exit", "handleError", "it", "handleEvent", "", GeoFence.BUNDLE_KEY_FENCESTATUS, "Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;", "handleMode", "play", "voice", "", "realStart", "sendPath", "boundDetector", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "showLastTeach", "startEngine", "stop", "unitySetStatus", "state", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AutoTeachManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TeachRouteManager f6295a;
    private final Function0<kotlin.v> b;
    private cn.mucang.android.jiakaoyi.teachingk2.t0.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Dialog f6296d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.f.b f6297e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.f.a f6298f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<EngineState> f6299g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.teachingk2.exe.k f6300h;
    private final TeachOutputHelper i;
    private final androidx.lifecycle.a0<cn.mucang.android.jiakaoyi.engine.i.f.a> j;
    private final cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.e.c> k;
    private final cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.communicate.receive.e.b> l;

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6301a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[EngineState.values().length];
            iArr[EngineState.None.ordinal()] = 1;
            iArr[EngineState.Initialed.ordinal()] = 2;
            iArr[EngineState.Start.ordinal()] = 3;
            iArr[EngineState.InitError.ordinal()] = 4;
            iArr[EngineState.Destroy.ordinal()] = 5;
            f6301a = iArr;
            int[] iArr2 = new int[AutoPilotMode.values().length];
            iArr2[AutoPilotMode.Running.ordinal()] = 1;
            iArr2[AutoPilotMode.Manual.ordinal()] = 2;
            iArr2[AutoPilotMode.Waiting.ordinal()] = 3;
            b = iArr2;
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;", "onOneError", "", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "onResult", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements cn.mucang.android.jiakaoyi.engine.f.b {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a deduct) {
            kotlin.jvm.internal.r.e(deduct, "deduct");
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onResult(cn.mucang.android.jiakaoyi.engine.processor.exam.f result) {
            kotlin.jvm.internal.r.e(result, "result");
        }
    }

    public AutoTeachManager(TeachRouteManager routeManager, Function0<kotlin.v> onEnd) {
        kotlin.jvm.internal.r.e(routeManager, "routeManager");
        kotlin.jvm.internal.r.e(onEnd, "onEnd");
        this.f6295a = routeManager;
        this.b = onEnd;
        this.f6297e = new b();
        this.f6298f = new cn.mucang.android.jiakaoyi.engine.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.g
            @Override // cn.mucang.android.jiakaoyi.engine.f.a
            public final void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
                AutoTeachManager.d(bVar, cVar);
            }
        };
        this.f6299g = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.j
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AutoTeachManager.V(this.f6318a, (EngineState) obj);
            }
        };
        this.f6300h = new cn.mucang.android.jiakaoyi.teachingk2.exe.k() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.q
            @Override // cn.mucang.android.jiakaoyi.teachingk2.exe.k
            public final void a(TeachModel teachModel, ErrorModel errorModel) {
                AutoTeachManager.b(teachModel, errorModel);
            }
        };
        TeachOutputHelper teachOutputHelper = new TeachOutputHelper(true, false, 2, null);
        teachOutputHelper.h(new Function0<Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.AutoTeachManager$helper$1$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                BoundaryChecker boundaryCheckerI = cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(5).i();
                return Boolean.valueOf(!this.this$0.f6295a.a(boundaryCheckerI == null ? null : boundaryCheckerI.f3684a));
            }
        });
        kotlin.v vVar = kotlin.v.f15822a;
        this.i = teachOutputHelper;
        this.j = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.c
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AutoTeachManager.W(this.f6310a, (cn.mucang.android.jiakaoyi.engine.i.f.a) obj);
            }
        };
        this.k = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.i
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) throws Exception {
                AutoTeachManager.L(this.f6317a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.e.c) obj);
            }
        };
        this.l = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.o
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AutoTeachManager.c(this.f6324a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.e.b) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(AutoTeachManager this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.e.c it) throws Exception {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.n(it);
    }

    private final void M(String str) {
        RobotTips.Y(str, null, TtsGrade.AutoTeach, 0, null, 16, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(List list, final AutoTeachManager this$0, final cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, final JLoadingDialog dialog) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(dialog, "$dialog");
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.h(list, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.d
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AutoTeachManager.Q(this.f6311a, bVar, dialog, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(final AutoTeachManager this$0, final cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, final JLoadingDialog dialog, final Boolean bool) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(dialog, "$dialog");
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.k
            @Override // java.lang.Runnable
            public final void run() {
                AutoTeachManager.R(bool, this$0, bVar, dialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(Boolean bool, AutoTeachManager this$0, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, JLoadingDialog dialog) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(dialog, "$dialog");
        if (!bool.booleanValue()) {
            cn.mucang.android.core.utils.u.h(k0.a(R.string.teachbase_send_route_data_fail));
            this$0.X();
        } else if (bVar == null) {
            String strA = k0.a(R.string.teachbase_lead_to_step);
            kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_lead_to_step)");
            this$0.M(strA);
        }
        dialog.dismiss();
    }

    private final void U() {
        cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar;
        cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar2 = this.c;
        boolean z = false;
        if (bVar2 != null && bVar2.canStart()) {
            z = true;
        }
        if (!z || (bVar = this.c) == null) {
            return;
        }
        bVar.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(AutoTeachManager this$0, EngineState engineState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if ((engineState == null ? -1 : a.f6301a[engineState.ordinal()]) != 2) {
            return;
        }
        this$0.U();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(AutoTeachManager this$0, cn.mucang.android.jiakaoyi.engine.i.f.a aVar) {
        int iF;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Function0<Boolean> function0D = this$0.i.d();
        if (function0D != null && function0D.invoke().booleanValue()) {
            return;
        }
        if (aVar.b) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String strA = k0.a(R.string.teachbase_arrived_step_area);
            kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_arrived_step_area)");
            Object[] objArr = new Object[1];
            Step stepFindWithType = Step.findWithType(aVar.c);
            objArr[0] = stepFindWithType != null ? stepFindWithType.stepName : null;
            String str = String.format(strA, Arrays.copyOf(objArr, 1));
            kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
            this$0.M(str);
            return;
        }
        if (!aVar.f3095a || (iF = this$0.f6295a.f(aVar.c)) <= -1) {
            return;
        }
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.f14671a;
        String strA2 = k0.a(R.string.teachbase_finish_step_next_teach);
        kotlin.jvm.internal.r.d(strA2, "getString(R.string.teach…e_finish_step_next_teach)");
        Object[] objArr2 = new Object[2];
        Step stepFindWithType2 = Step.findWithType(aVar.c);
        objArr2[0] = stepFindWithType2 == null ? null : stepFindWithType2.stepName;
        Step stepFindWithType3 = Step.findWithType(iF);
        objArr2[1] = stepFindWithType3 != null ? stepFindWithType3.stepName : null;
        String str2 = String.format(strA2, Arrays.copyOf(objArr2, 2));
        kotlin.jvm.internal.r.d(str2, "java.lang.String.format(format, *args)");
        this$0.M(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(AutoTeachManager this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.f fVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (fVar.f5428a) {
            this$0.X();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a0(cn.mucang.android.jiakaoyi.signal.communicate.receive.d.f fVar) {
        if (fVar.f5428a) {
            TeachStatusModel teachStatusModel = new TeachStatusModel();
            teachStatusModel.state = AutoTeachStatus.TeachPause.getType();
            cn.mucang.android.jiakaoyi.unity.c.d.e(teachStatusModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(TeachModel teachModel, ErrorModel errorModel) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(cn.mucang.android.jiakaoyi.signal.communicate.receive.d.f fVar) {
        if (fVar.f5428a) {
            TeachStatusModel teachStatusModel = new TeachStatusModel();
            teachStatusModel.state = AutoTeachStatus.TeachResume.getType();
            cn.mucang.android.jiakaoyi.unity.c.d.e(teachStatusModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(AutoTeachManager this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.e.b it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.h(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar) {
        if (bVar == null) {
            return;
        }
        bVar.destroy();
    }

    private final void h(final cn.mucang.android.jiakaoyi.signal.communicate.receive.e.b bVar) {
        cn.mucang.android.jiakaoyi.framework.log.f.b("收到异常上报:" + ((Object) bVar.b.desc) + (char) 65292 + BrakeGlobalMonitor.a().getReason());
        cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.r
            @Override // java.lang.Runnable
            public final void run() {
                AutoTeachManager.i(bVar, this);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:44:0x0128  */
    /* JADX WARN: Code duplicated, block: B:46:0x012e  */
    /* JADX WARN: Code duplicated, block: B:54:0x0140  */
    /* JADX WARN: Code duplicated, block: B:57:0x0149  */
    /* JADX WARN: Code duplicated, block: B:58:0x0161  */
    /* JADX WARN: Code duplicated, block: B:63:0x018e  */
    /* JADX WARN: Code duplicated, block: B:66:0x0195  */
    /* JADX WARN: Code duplicated, block: B:68:0x019d  */
    /* JADX WARN: Code duplicated, block: B:69:0x019f  */
    /* JADX WARN: Code duplicated, block: B:72:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:75:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:81:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:85:0x0205  */
    /* JADX WARN: Code duplicated, block: B:96:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:? A[RETURN, SYNTHETIC] */
    public static final void i(cn.mucang.android.jiakaoyi.signal.communicate.receive.e.b it, final AutoTeachManager this$0) {
        String str;
        String str2;
        String str3;
        View.OnClickListener onClickListener;
        String strA;
        String strA2;
        View.OnClickListener onClickListener2;
        Dialog f6296d;
        AutoPilotError autoPilotError;
        String title;
        int code;
        Dialog teachEndDialog;
        ModuleStatusMonitor moduleStatusMonitor;
        CheckModuleStatus checkModuleStatusA;
        String title2;
        Dialog f6296d2;
        Dialog f6296d3;
        Dialog f6296d4;
        boolean z;
        kotlin.jvm.internal.r.e(it, "$it");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.framework.log.f.b("执行异常上报:" + ((Object) it.b.desc) + (char) 65292 + BrakeGlobalMonitor.a().getReason());
        AutoPilotError autoPilotError2 = it.b;
        if (autoPilotError2 == AutoPilotError.Normal) {
            Dialog f6296d5 = this$0.getF6296d();
            if (f6296d5 == null) {
                return;
            }
            DialogExtensionKt.b(f6296d5);
            return;
        }
        if (autoPilotError2 == AutoPilotError.DriveEnd && (!this$0.f6295a.e().isEmpty())) {
            return;
        }
        AutoPilotError autoPilotError3 = it.b;
        if (autoPilotError3 == AutoPilotError.GPSRecover || autoPilotError3 == AutoPilotError.RadarBrakeRecover) {
            Dialog f6296d6 = this$0.getF6296d();
            if (f6296d6 != null) {
                DialogExtensionKt.b(f6296d6);
            }
            TtsManager.r(it.b.desc, TtsGrade.SpecialVoice);
            return;
        }
        Activity activityI = MucangConfig.i();
        if (activityI == null || activityI.isFinishing() || activityI.isDestroyed()) {
            return;
        }
        AutoPilotError autoPilotError4 = it.b;
        String str4 = "";
        if (autoPilotError4 != AutoPilotError.RadarBrake) {
            if (autoPilotError4 == AutoPilotError.GPS) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                String strA3 = k0.a(R.string.teachbase_teach_pause_error);
                kotlin.jvm.internal.r.d(strA3, "getString(R.string.teachbase_teach_pause_error)");
                str4 = String.format(strA3, Arrays.copyOf(new Object[]{it.b.desc}, 1));
                kotlin.jvm.internal.r.d(str4, "java.lang.String.format(format, *args)");
                strA = k0.a(R.string.teachbase_gps_weak_pause_teach);
                kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_gps_weak_pause_teach)");
                strA2 = k0.a(R.string.teachbase_teach_stop);
                onClickListener2 = new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.m
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        AutoTeachManager.k(view);
                    }
                };
            } else {
                str = "";
                str2 = null;
                str3 = null;
                onClickListener = null;
            }
            if (this$0.getF6296d() != null) {
                f6296d4 = this$0.getF6296d();
                if (f6296d4 == null && !f6296d4.isShowing()) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    return;
                }
            }
            f6296d = this$0.getF6296d();
            if (f6296d != null) {
                DialogExtensionKt.b(f6296d);
            }
            if (n0.g(str2)) {
                TtsManager.z(str, TtsGrade.AutoTeach);
                teachEndDialog = new JCommonDialog(activityI, new JCommonDialog.DialogParams(str2, str, str3, onClickListener, null, null, false));
            } else {
                autoPilotError = it.b;
                title = autoPilotError.desc;
                if (autoPilotError == AutoPilotError.OtherBrake || BrakeGlobalMonitor.a().getReason() == BrakeReason.None) {
                    code = 0;
                } else {
                    title = BrakeGlobalMonitor.a().getReason().getTitle();
                    code = BrakeGlobalMonitor.a().getReason().getCode();
                }
                if (it.b == AutoPilotError.P0Error) {
                    moduleStatusMonitor = ModuleStatusMonitor.f7799a;
                    checkModuleStatusA = moduleStatusMonitor.a();
                    if (checkModuleStatusA == null) {
                        title2 = null;
                    } else {
                        title2 = checkModuleStatusA.getTitle();
                    }
                    if (n0.g(title2)) {
                        CheckModuleStatus checkModuleStatusA2 = moduleStatusMonitor.a();
                        title = checkModuleStatusA2 != null ? checkModuleStatusA2.getTitle() : null;
                    }
                }
                TtsManager.z(k0.a(R.string.teachbase_teach_stop_out), TtsGrade.AutoTeach);
                StringCompanionObject stringCompanionObject2 = StringCompanionObject.f14671a;
                String strA4 = k0.a(R.string.teachbase_auto_teach_end);
                kotlin.jvm.internal.r.d(strA4, "getString(R.string.teachbase_auto_teach_end)");
                String str5 = String.format(strA4, Arrays.copyOf(new Object[]{title}, 1));
                kotlin.jvm.internal.r.d(str5, "java.lang.String.format(format, *args)");
                String strA5 = k0.a(R.string.teachbase_auto_teach_end_tip);
                kotlin.jvm.internal.r.d(strA5, "getString(R.string.teachbase_auto_teach_end_tip)");
                teachEndDialog = new TeachEndDialog(activityI, str5, strA5, code);
            }
            this$0.S(teachEndDialog);
            f6296d2 = this$0.getF6296d();
            if (f6296d2 != null) {
                f6296d2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.p
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        AutoTeachManager.l(this.f6325a, dialogInterface);
                    }
                });
            }
            f6296d3 = this$0.getF6296d();
            if (f6296d3 == null) {
                return;
            }
            f6296d3.show();
        }
        if (BrakeGlobalMonitor.a().getReason() == BrakeReason.Radar && n0.g(BrakeGlobalMonitor.a().getExtraTitle())) {
            String extraTitle = BrakeGlobalMonitor.a().getExtraTitle();
            if (extraTitle != null) {
                str4 = extraTitle;
            }
        } else {
            StringCompanionObject stringCompanionObject3 = StringCompanionObject.f14671a;
            String strA6 = k0.a(R.string.teachbase_teach_pause_error);
            kotlin.jvm.internal.r.d(strA6, "getString(R.string.teachbase_teach_pause_error)");
            str4 = String.format(strA6, Arrays.copyOf(new Object[]{it.b.desc}, 1));
            kotlin.jvm.internal.r.d(str4, "java.lang.String.format(format, *args)");
        }
        strA = k0.a(R.string.teachbase_obstacle_brake_wait_continue_teach);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teach…rake_wait_continue_teach)");
        strA2 = k0.a(R.string.teachbase_teach_stop);
        onClickListener2 = new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoTeachManager.j(view);
            }
        };
        str = strA;
        str3 = strA2;
        onClickListener = onClickListener2;
        str2 = str4;
        if (this$0.getF6296d() != null) {
            f6296d4 = this$0.getF6296d();
            if (f6296d4 == null) {
                z = false;
            } else {
                z = true;
            }
            if (!z) {
                return;
            }
        }
        f6296d = this$0.getF6296d();
        if (f6296d != null) {
            DialogExtensionKt.b(f6296d);
        }
        if (n0.g(str2)) {
            TtsManager.z(str, TtsGrade.AutoTeach);
            teachEndDialog = new JCommonDialog(activityI, new JCommonDialog.DialogParams(str2, str, str3, onClickListener, null, null, false));
        } else {
            autoPilotError = it.b;
            title = autoPilotError.desc;
            if (autoPilotError == AutoPilotError.OtherBrake) {
                code = 0;
            } else {
                code = 0;
            }
            if (it.b == AutoPilotError.P0Error) {
                moduleStatusMonitor = ModuleStatusMonitor.f7799a;
                checkModuleStatusA = moduleStatusMonitor.a();
                if (checkModuleStatusA == null) {
                    title2 = null;
                } else {
                    title2 = checkModuleStatusA.getTitle();
                }
                if (n0.g(title2)) {
                    CheckModuleStatus checkModuleStatusA3 = moduleStatusMonitor.a();
                    title = checkModuleStatusA3 != null ? checkModuleStatusA3.getTitle() : null;
                }
            }
            TtsManager.z(k0.a(R.string.teachbase_teach_stop_out), TtsGrade.AutoTeach);
            StringCompanionObject stringCompanionObject4 = StringCompanionObject.f14671a;
            String strA7 = k0.a(R.string.teachbase_auto_teach_end);
            kotlin.jvm.internal.r.d(strA7, "getString(R.string.teachbase_auto_teach_end)");
            String str6 = String.format(strA7, Arrays.copyOf(new Object[]{title}, 1));
            kotlin.jvm.internal.r.d(str6, "java.lang.String.format(format, *args)");
            String strA8 = k0.a(R.string.teachbase_auto_teach_end_tip);
            kotlin.jvm.internal.r.d(strA8, "getString(R.string.teachbase_auto_teach_end_tip)");
            teachEndDialog = new TeachEndDialog(activityI, str6, strA8, code);
        }
        this$0.S(teachEndDialog);
        f6296d2 = this$0.getF6296d();
        if (f6296d2 != null) {
            f6296d2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.p
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    AutoTeachManager.l(this.f6325a, dialogInterface);
                }
            });
        }
        f6296d3 = this$0.getF6296d();
        if (f6296d3 == null) {
            return;
        }
        f6296d3.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(View view) {
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.j(AutoPilotState.Stop, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(View view) {
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.j(AutoPilotState.Stop, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(AutoTeachManager this$0, DialogInterface dialogInterface) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.S(null);
    }

    private final void n(cn.mucang.android.jiakaoyi.signal.communicate.receive.e.c cVar) throws Exception {
        cn.mucang.android.jiakaoyi.framework.log.f.b(kotlin.jvm.internal.r.m("收到状态上报:", cVar.b.desc));
        AutoPilotMode autoPilotMode = cVar.b;
        int i = autoPilotMode == null ? -1 : a.b[autoPilotMode.ordinal()];
        if (i == 1) {
            N();
            return;
        }
        if (i == 2) {
            X();
            return;
        }
        if (i != 3) {
            return;
        }
        final List<TraceItemModel> listE = this.f6295a.e();
        if (listE.isEmpty()) {
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.j(AutoPilotState.Stop, null);
            return;
        }
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        final JLoadingDialog jLoadingDialog = new JLoadingDialog(activityI);
        jLoadingDialog.b(k0.a(R.string.teachbase_sending_route_data));
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.f6211a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.a
            @Override // java.lang.Runnable
            public final void run() {
                AutoTeachManager.o(listE, this, jLoadingDialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(List list, final AutoTeachManager this$0, final JLoadingDialog dialog) {
        kotlin.jvm.internal.r.e(list, "$list");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(dialog, "$dialog");
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.h(list, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.t
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AutoTeachManager.p(this.f6329a, dialog, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(final AutoTeachManager this$0, final JLoadingDialog dialog, final Boolean bool) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(dialog, "$dialog");
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.b
            @Override // java.lang.Runnable
            public final void run() {
                AutoTeachManager.q(bool, this$0, dialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(Boolean result, AutoTeachManager this$0, JLoadingDialog dialog) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(dialog, "$dialog");
        kotlin.jvm.internal.r.d(result, "result");
        if (result.booleanValue()) {
            this$0.f6295a.t();
        } else {
            cn.mucang.android.core.utils.u.h(k0.a(R.string.teachbase_send_route_data_fail));
            this$0.X();
        }
        dialog.dismiss();
    }

    public final void N() {
        cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar = this.c;
        boolean z = false;
        if (bVar != null && bVar.isStart()) {
            z = true;
        }
        if (z) {
            TeachStatusModel teachStatusModel = new TeachStatusModel();
            teachStatusModel.state = AutoTeachStatus.TeachResume.getType();
            cn.mucang.android.jiakaoyi.unity.c.d.e(teachStatusModel);
            return;
        }
        cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar2 = this.c;
        if (bVar2 == null) {
            this.c = new cn.mucang.android.jiakaoyi.teachingk2.t0.b(String.valueOf(ExamSiteUtil.e(0L)), this.f6297e, this.f6298f, this.f6299g, this.i, this.f6300h, cn.mucang.android.jiakaoyi.teachingk2.res.n.b().i, cn.mucang.android.jiakaoyi.teachingk2.res.n.b().k, 5);
        } else if (bVar2 != null) {
            bVar2.reset();
        }
        TeachStatusModel teachStatusModel2 = new TeachStatusModel();
        teachStatusModel2.state = AutoTeachStatus.TeachStart.getType();
        cn.mucang.android.jiakaoyi.unity.c.d.e(teachStatusModel2);
        UserRecorder.g(RecordEvent.AutoTeachStart.getCode());
    }

    public final void O(final cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) throws Exception {
        final List<TraceItemModel> listE;
        if (bVar == null) {
            cn.mucang.android.jiakaoyi.framework.log.f.b("发送开始路线,导航路线生成的示教准备区");
            listE = this.f6295a.c();
        } else {
            List<TeachModel> list = cn.mucang.android.jiakaoyi.teachingk2.res.n.b().i.get(bVar.s());
            StringBuilder sb = new StringBuilder();
            sb.append("发送开始路线,项目的示教准备区:");
            sb.append(bVar.s());
            sb.append(",原始数据长度:");
            sb.append(list == null ? null : Integer.valueOf(list.size()));
            cn.mucang.android.jiakaoyi.framework.log.f.b(sb.toString());
            listE = cn.mucang.android.jiakaoyi.teachingk2.r0.b.e(cn.mucang.android.jiakaoyi.teachingk2.res.n.p.f7599a, bVar, list);
        }
        if (cn.mucang.android.core.utils.g.b(listE)) {
            cn.mucang.android.core.utils.u.h("路线数据为空");
            cn.mucang.android.jiakaoyi.framework.log.f.b("路线数据为空");
            X();
            return;
        }
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        final JLoadingDialog jLoadingDialog = new JLoadingDialog(activityI);
        jLoadingDialog.b(k0.a(R.string.teachbase_sending_route_data));
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.f6211a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.e
            @Override // java.lang.Runnable
            public final void run() {
                AutoTeachManager.P(listE, this, bVar, jLoadingDialog);
            }
        });
        Tiger.j(this.k, cn.mucang.android.jiakaoyi.signal.communicate.receive.e.c.class);
        Tiger.j(this.l, cn.mucang.android.jiakaoyi.signal.communicate.receive.e.b.class);
        LiveBus.d(cn.mucang.android.jiakaoyi.engine.i.f.a.class).i(this.j);
    }

    public final void S(Dialog dialog) {
        this.f6296d = dialog;
    }

    public final void T() {
        this.i.k();
    }

    public final void X() {
        TeachStatusModel teachStatusModel = new TeachStatusModel();
        teachStatusModel.state = AutoTeachStatus.TeachEnd.getType();
        cn.mucang.android.jiakaoyi.unity.c.d.e(teachStatusModel);
        this.b.invoke();
        this.f6295a.b();
        cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar = this.c;
        boolean z = false;
        if (bVar != null && bVar.isStart()) {
            z = true;
        }
        if (z) {
            cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar2 = this.c;
            if (bVar2 != null) {
                bVar2.stop();
            }
            UserRecorder.g(RecordEvent.AutoTeachEnd.getCode());
        }
    }

    public final void Y(int i) {
        cn.mucang.android.jiakaoyi.framework.log.f.b(kotlin.jvm.internal.r.m("unity 设置状态:", Integer.valueOf(i)));
        AutoTeachStatus autoTeachStatusA = AutoTeachStatus.INSTANCE.a(i);
        if (autoTeachStatusA == AutoTeachStatus.TeachEnd) {
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.j(AutoPilotState.Stop, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.f
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    AutoTeachManager.Z(this.f6314a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.d.f) obj);
                }
            });
            return;
        }
        if (autoTeachStatusA == AutoTeachStatus.TeachPause) {
            String strA = k0.a(R.string.teachbase_teach_pause);
            kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_teach_pause)");
            M(strA);
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.j(AutoPilotState.Pause, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.s
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    AutoTeachManager.a0((cn.mucang.android.jiakaoyi.signal.communicate.receive.d.f) obj);
                }
            });
            return;
        }
        if (autoTeachStatusA == AutoTeachStatus.TeachResume) {
            String strA2 = k0.a(R.string.teachbase_teach_resume);
            kotlin.jvm.internal.r.d(strA2, "getString(R.string.teachbase_teach_resume)");
            M(strA2);
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.j(AutoPilotState.Resume, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.l
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    AutoTeachManager.b0((cn.mucang.android.jiakaoyi.signal.communicate.receive.d.f) obj);
                }
            });
        }
    }

    public final void e() {
        Tiger.l(this.k, cn.mucang.android.jiakaoyi.signal.communicate.receive.e.c.class);
        Tiger.l(this.l, cn.mucang.android.jiakaoyi.signal.communicate.receive.e.b.class);
        LiveBus.d(cn.mucang.android.jiakaoyi.engine.i.f.a.class).m(this.j);
        cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar = this.c;
        boolean z = false;
        if (bVar != null && bVar.isStart()) {
            z = true;
        }
        if (z) {
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.j(AutoPilotState.Stop, null);
        }
        cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar2 = this.c;
        if (bVar2 != null) {
            bVar2.stop();
        }
        final cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar3 = this.c;
        this.c = null;
        cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.h
            @Override // java.lang.Runnable
            public final void run() {
                AutoTeachManager.f(bVar3);
            }
        }, 500L);
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final Dialog getF6296d() {
        return this.f6296d;
    }

    public final boolean m(AutoTeachEvent event) {
        kotlin.jvm.internal.r.e(event, "event");
        cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar = this.c;
        if (!(bVar != null && bVar.isStart())) {
            Dialog dialog = this.f6296d;
            if (!(dialog != null && dialog.isShowing())) {
                return false;
            }
        }
        return true;
    }
}
