package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.f;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.SubStepEvent;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant;
import cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.AssistTeachManager;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.AssistTeachPreChecker;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.BaseTeachFunc;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.AutoTeachStatus;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.TeachSettingModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.ErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.exe.k;
import cn.mucang.android.jiakaoyi.teachingk2.grade.TeachConfig;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.n0;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTipType;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.DrawObserveHelper;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.TeachOutputHelper;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.teach.TeachStatusModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.helper.d;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.ErrorTipModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.UnityDrawLineHelper;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.z;
import cn.mucang.jiakaoyi.uilib.AutoTeachEvent;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import com.amap.api.fence.GeoFence;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechUtility;
import com.tencent.open.SocialConstants;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.g;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000º\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001NB\u0005¢\u0006\u0002\u0010\u0005J\b\u00103\u001a\u000204H\u0002J\u0010\u00105\u001a\u00020\u00132\u0006\u00106\u001a\u000207H\u0016J\u0018\u00108\u001a\u00020\u00132\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0016J\u001a\u0010=\u001a\u00020\u00132\b\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010;\u001a\u00020<H\u0016J\u0012\u0010>\u001a\u0002042\b\u00109\u001a\u0004\u0018\u00010:H\u0016J\b\u0010?\u001a\u000204H\u0016J\b\u0010@\u001a\u000204H\u0016J\u0010\u0010A\u001a\u0002042\u0006\u0010B\u001a\u00020<H\u0016J\u0012\u0010C\u001a\u0002042\b\u00109\u001a\u0004\u0018\u00010:H\u0016J\b\u0010D\u001a\u000204H\u0002J\u001a\u0010E\u001a\u0002042\b\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010;\u001a\u00020<H\u0016J\b\u0010F\u001a\u000204H\u0016J\b\u0010G\u001a\u000204H\u0002J\u001a\u0010H\u001a\u0002042\b\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010;\u001a\u00020<H\u0016J\u0010\u0010I\u001a\u0002042\u0006\u0010J\u001a\u00020\u0013H\u0002J\u001a\u0010K\u001a\u0002042\u0006\u0010L\u001a\u00020)2\b\u0010M\u001a\u0004\u0018\u00010 H\u0016R\u0012\u0010\u0006\u001a\u00060\u0007R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001f\u001a\n !*\u0004\u0018\u00010 0 X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020'X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010.0-X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010/\u001a\b\u0012\u0004\u0012\u0002000\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u00101\u001a\b\u0012\u0004\u0012\u0002020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006O"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/handlers/UnityPageHandler$PageEvent;", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/BaseTeachFunc;", "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/half/HalfAutoPilotCallback;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "assistant", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;", "checkedBoundary", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "controller", "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/half/HalfAutoPilotController;", "getController", "()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/half/HalfAutoPilotController;", "currentStep", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "drawHelper", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/DrawObserveHelper;", "enableShangPo", "", "engine", "Lcn/mucang/android/jiakaoyi/teachingk2/creator/K2TeachingEngineManager;", "errObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAssistErrorInfo;", "errorCallback", "Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachErrorCallback;", "examEventCallback", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;", "examResultCallback", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;", "gpsDesc", "", "kotlin.jvm.PlatformType", "gpsPageUtil", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/helper/GPSPageUtil;", "helper", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TeachOutputHelper;", "preChecker", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AssistTeachPreChecker;", "predictId", "", "shangPoStopPos", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "stateCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;", "subStepObserver", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;", "traceTipObserver", "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/ErrorTipModel;", "calculateStopPos", "", "handleEvent", GeoFence.BUNDLE_KEY_FENCESTATUS, "Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;", "isResume", "ttd", "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "isStop", "onDone", "onEnter", "onExit", "onSignalChanged", "signalGetter", "onWaitResume", "realStart", "resumeCar", "showLastTeach", "startEngine", "stopCar", "stopEngine", "needPause", "unitySetStatus", "state", "data", "HelpTeachAssistant", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HelpTeachPage implements a0.a, BaseTeachFunc, c, cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.hpmap.a.a.b f8554g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.teachingk2.t0.b f8555h;
    private d i;
    private Step j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f8550a = k0.a(R.string.teachbase_gps_signal_weak_stop_teach);
    private final boolean b = true;
    private final AssistTeachPreChecker c = new AssistTeachPreChecker(false, new Function1<cn.mucang.android.jiakaoyi.hpmap.a.a.b, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.HelpTeachPage$preChecker$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(b bVar) throws Exception {
            invoke2(bVar);
            return v.f15822a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(b bVar) throws Exception {
            this.this$0.f8554g = bVar;
            this.this$0.z();
            this.this$0.M();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HelpTeachAssistant f8551d = new HelpTeachAssistant(this);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final DrawObserveHelper f8552e = new DrawObserveHelper(new DrawObserveHelper.a(false, false, false, new Function0<Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.HelpTeachPage$drawHelper$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.TRUE;
        }
    }, new Function0<Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.HelpTeachPage$drawHelper$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.TRUE;
        }
    }));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Pos f8553f = new Pos(0.0d, 0.0d, 0.0d);
    private final cn.mucang.android.jiakaoyi.engine.f.b k = new b();
    private final cn.mucang.android.jiakaoyi.engine.f.a l = new cn.mucang.android.jiakaoyi.engine.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.f0
        @Override // cn.mucang.android.jiakaoyi.engine.f.a
        public final void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
            HelpTeachPage.C(this.f8602a, bVar, cVar);
        }
    };
    private final cn.mucang.android.jiakaoyi.framework.h.b<EngineState> m = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.d0
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            HelpTeachPage.O(this.f8590a, (EngineState) obj);
        }
    };
    private final androidx.lifecycle.a0<SubStepEvent> n = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.g0
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            HelpTeachPage.Q(this.f8604a, (SubStepEvent) obj);
        }
    };
    private final k o = new k() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.a0
        @Override // cn.mucang.android.jiakaoyi.teachingk2.exe.k
        public final void a(TeachModel teachModel, ErrorModel errorModel) {
            HelpTeachPage.B(teachModel, errorModel);
        }
    };
    private final androidx.lifecycle.a0<ErrorTipModel> p = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.i0
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            HelpTeachPage.R((ErrorTipModel) obj);
        }
    };
    private final TeachOutputHelper q = new TeachOutputHelper(true, false);
    private final androidx.lifecycle.a0<cn.mucang.android.jiakaoyi.signal.communicate.receive.b> r = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.h0
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            HelpTeachPage.A(this.f8606a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.b) obj);
        }
    };
    private int s = -1;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\u0006H\u0016J\u0006\u0010\t\u001a\u00020\u0004J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016J\u0016\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u0004H\u0016J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0006H\u0016J\u0006\u0010\u0015\u001a\u00020\u0004¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;", "Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;", "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V", "dismissDialog", "", "fromGps", "", "isAssisting", "isSupportAssist", "resumeCar", "sendOrder", "proj", "", SocialConstants.PARAM_ACT, "showPauseDialog", "reason", "", SocialConstants.PARAM_APP_DESC, "showStopDialog", TtmlNode.START, "stop", "stopCar", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class HelpTeachAssistant extends AbsAssistant {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ HelpTeachPage f8556e;

        /* JADX WARN: Illegal instructions before constructor call */
        public HelpTeachAssistant(HelpTeachPage this$0) {
            r.e(this$0, "this$0");
            this.f8556e = this$0;
            String strA = k0.a(R.string.teachbase_help_teach);
            r.d(strA, "getString(R.string.teachbase_help_teach)");
            super(strA);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void J(HelpTeachAssistant this$0, View view) {
            r.e(this$0, "this$0");
            String strA = k0.a(R.string.teachbase_user_stop);
            r.d(strA, "getString(R.string.teachbase_user_stop)");
            this$0.N(strA);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void K(HelpTeachAssistant this$0, DialogInterface dialogInterface) {
            r.e(this$0, "this$0");
            this$0.u(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void L(String str) {
            final HelpTeachPage helpTeachPage = this.f8556e;
            Function0<v> function0 = new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.HelpTeachPage$HelpTeachAssistant$showStopDialog$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    TeachStatusModel teachStatusModel = new TeachStatusModel();
                    teachStatusModel.state = AutoTeachStatus.TeachEnd.getType();
                    cn.mucang.android.jiakaoyi.unity.c.d.e(teachStatusModel);
                    helpTeachPage.P(true);
                    helpTeachPage.f8554g = null;
                }
            };
            final HelpTeachPage helpTeachPage2 = this.f8556e;
            v(str, function0, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.HelpTeachPage$HelpTeachAssistant$showStopDialog$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    this.this$0.u(null);
                    helpTeachPage2.P(false);
                    helpTeachPage2.c.d();
                }
            });
        }

        public final void E(boolean z) {
            if (!z) {
                Dialog b = getB();
                if (b == null) {
                    return;
                }
                DialogExtensionKt.b(b);
                return;
            }
            if (getB() instanceof JCommonDialog) {
                Dialog b2 = getB();
                boolean z2 = false;
                if (b2 != null && b2.isShowing()) {
                    z2 = true;
                }
                if (z2) {
                    Dialog b3 = getB();
                    Objects.requireNonNull(b3, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog");
                    JCommonDialog jCommonDialog = (JCommonDialog) b3;
                    if (r.a(jCommonDialog.getF3402a().getDesc(), this.f8556e.f8550a)) {
                        DialogExtensionKt.b(jCommonDialog);
                        H();
                        m("dismissDialog fromGps");
                    }
                }
            }
        }

        public final void H() {
            final HelpTeachPage helpTeachPage = this.f8556e;
            AbsAssistant.s(this, 5, 4, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.HelpTeachPage$HelpTeachAssistant$resumeCar$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    TeachStatusModel teachStatusModel = new TeachStatusModel();
                    teachStatusModel.state = AutoTeachStatus.TeachResume.getType();
                    cn.mucang.android.jiakaoyi.unity.c.d.e(teachStatusModel);
                    helpTeachPage.q.b();
                }
            }, null, 8, null);
        }

        public final void I(String reason, String desc) {
            r.e(reason, "reason");
            r.e(desc, "desc");
            m("showPauseDialog，" + reason + (char) 65292 + desc);
            if (f()) {
                Dialog b = getB();
                if (b != null) {
                    DialogExtensionKt.b(b);
                }
                StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                String strA = k0.a(R.string.teachbase_help_teach_already_stop);
                r.d(strA, "getString(R.string.teach…_help_teach_already_stop)");
                String str = String.format(strA, Arrays.copyOf(new Object[]{reason}, 1));
                r.d(str, "java.lang.String.format(format, *args)");
                String strA2 = k0.a(R.string.teachbase_teach_stop);
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.c0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        HelpTeachPage.HelpTeachAssistant.J(this.f8571a, view);
                    }
                };
                Activity activityI = MucangConfig.i();
                r.d(activityI, "getCurrentActivity()");
                u(new JCommonDialog(activityI, new JCommonDialog.DialogParams(str, desc, strA2, onClickListener, null, null, false)));
                Dialog b2 = getB();
                if (b2 != null) {
                    b2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.b0
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            HelpTeachPage.HelpTeachAssistant.K(this.f8567a, dialogInterface);
                        }
                    });
                }
                Dialog b3 = getB();
                if (b3 != null) {
                    b3.show();
                }
                TtsManager.z(desc, TtsGrade.AutoTeach);
            }
        }

        public void M() {
            final HelpTeachPage helpTeachPage = this.f8556e;
            Function0<v> function0 = new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.HelpTeachPage$HelpTeachAssistant$start$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    helpTeachPage.N();
                }
            };
            final HelpTeachPage helpTeachPage2 = this.f8556e;
            r(5, 1, function0, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.HelpTeachPage$HelpTeachAssistant$start$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    helpTeachPage2.c.d();
                }
            });
        }

        public void N(String reason) {
            r.e(reason, "reason");
            y(reason, true);
        }

        public final void O() {
            AbsAssistant.s(this, 5, 3, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.HelpTeachPage$HelpTeachAssistant$stopCar$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    TeachStatusModel teachStatusModel = new TeachStatusModel();
                    teachStatusModel.state = AutoTeachStatus.TeachPause.getType();
                    cn.mucang.android.jiakaoyi.unity.c.d.e(teachStatusModel);
                }
            }, null, 8, null);
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant
        public boolean k() {
            cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar = this.f8556e.f8555h;
            if (!(bVar != null && bVar.isStart())) {
                Dialog b = getB();
                if (!(b != null && b.isShowing())) {
                    return false;
                }
            }
            return true;
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant
        public void q(int i, int i2) {
            cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
            vVar.c((byte) i);
            vVar.c((byte) i2);
            vVar.c((byte) 2);
            vVar.c(AssistTeachManager.d(this.f8556e.f8554g));
            double d2 = 1000;
            vVar.g((long) (this.f8556e.f8553f.x * d2));
            vVar.g((long) (this.f8556e.f8553f.y * d2));
            vVar.g((long) (this.f8556e.f8553f.z * d2));
            vVar.h((short) cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.c());
            vVar.h((short) cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.b());
            m.h().Q(Cmd.AutoAssist, vVar.b());
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant
        public void y(final String reason, boolean z) {
            r.e(reason, "reason");
            if (f() || (getB() instanceof JCommonDialog)) {
                if (z) {
                    AbsAssistant.s(this, 5, 2, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.HelpTeachPage$HelpTeachAssistant$stop$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ v invoke() {
                            invoke2();
                            return v.f15822a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            this.this$0.L(reason);
                        }
                    }, null, 8, null);
                } else {
                    L(reason);
                }
            }
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8557a;

        static {
            int[] iArr = new int[AutoTeachStatus.values().length];
            iArr[AutoTeachStatus.TeachEnd.ordinal()] = 1;
            iArr[AutoTeachStatus.TeachPause.ordinal()] = 2;
            iArr[AutoTeachStatus.TeachResume.ordinal()] = 3;
            f8557a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;", "onOneError", "", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "onResult", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements cn.mucang.android.jiakaoyi.engine.f.b {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a deduct) {
            r.e(deduct, "deduct");
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onResult(f result) {
            r.e(result, "result");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(HelpTeachPage this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.b bVar) {
        r.e(this$0, "this$0");
        if (bVar.b != 0 || bVar.c != 0) {
            cn.mucang.android.jiakaoyi.framework.log.f.b("收到辅助驾驶F4消息:" + bVar.b + ',' + bVar.c);
        }
        int i = bVar.c;
        if (i == 1) {
            HelpTeachAssistant helpTeachAssistant = this$0.f8551d;
            String strA = k0.a(R.string.teachbase_barrier_stop);
            r.d(strA, "getString(R.string.teachbase_barrier_stop)");
            String strA2 = k0.a(R.string.teachbase_barrier_stop_desc);
            r.d(strA2, "getString(R.string.teachbase_barrier_stop_desc)");
            helpTeachAssistant.I(strA, strA2);
        } else if (i == 2) {
            this$0.f8551d.E(false);
        }
        int i2 = bVar.b;
        if (i2 == 0 || i2 == 5) {
            return;
        }
        g.b(j0.b(), null, null, new HelpTeachPage$errObserver$1$1(bVar, this$0, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(TeachModel teachModel, ErrorModel errorModel) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(HelpTeachPage this$0, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        r.e(this$0, "this$0");
        if (bVar.l()) {
            this$0.j = bVar.f3142e;
            return;
        }
        if (bVar.j()) {
            this$0.j = null;
            HelpTeachAssistant helpTeachAssistant = this$0.f8551d;
            String strA = k0.a(R.string.teachbase_out_proj);
            r.d(strA, "getString(R.string.teachbase_out_proj)");
            helpTeachAssistant.N(strA);
        }
    }

    private final cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d D() {
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d dVarA = cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.a();
        r.d(dVarA, "get()");
        return dVarA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar) {
        if (bVar == null) {
            return;
        }
        bVar.destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M() {
        cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar = this.f8555h;
        if (bVar == null) {
            this.f8555h = new cn.mucang.android.jiakaoyi.teachingk2.t0.b(String.valueOf(ExamSiteUtil.e(0L)), this.k, this.l, this.m, this.q, this.o, n.b().i, n.b().k, 5);
        } else {
            if (bVar == null) {
                return;
            }
            bVar.reset();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N() {
        cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar;
        cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar2 = this.f8555h;
        if ((bVar2 != null && bVar2.canStart()) && (bVar = this.f8555h) != null) {
            bVar.start();
        }
        D().q();
        TeachStatusModel teachStatusModel = new TeachStatusModel();
        teachStatusModel.state = AutoTeachStatus.TeachStart.getType();
        TeachSettingModel teachSettingModel = new TeachSettingModel();
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar3 = this.f8554g;
        teachSettingModel.setAllowPause((bVar3 == null ? null : bVar3.s()) != Step.K2_ShangPoQiBu);
        v vVar = v.f15822a;
        teachStatusModel.data = JSON.toJSONString(teachSettingModel);
        cn.mucang.android.jiakaoyi.unity.c.d.e(teachStatusModel);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(HelpTeachPage this$0, EngineState engineState) {
        r.e(this$0, "this$0");
        if (engineState == EngineState.Initialed) {
            this$0.f8551d.M();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P(boolean z) {
        cn.mucang.android.jiakaoyi.engine.c engine;
        this.q.b();
        this.f8552e.b();
        if (z) {
            cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar = this.f8555h;
            if (bVar != null && (engine = bVar.getEngine()) != null) {
                engine.l();
            }
        } else {
            cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar2 = this.f8555h;
            if (bVar2 != null) {
                bVar2.stop();
            }
        }
        D().r();
        UnityDrawLineHelper.f6360a.b(this.s);
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(HelpTeachPage this$0, SubStepEvent subStepEvent) {
        r.e(this$0, "this$0");
        if (subStepEvent.getStep() == this$0.j) {
            if (subStepEvent.getStep() == Step.K2_DaoCheRuKu) {
                if (subStepEvent.getSubStep() >= SubStep.Step5.ordinal()) {
                    w.O();
                }
            } else {
                if (subStepEvent.getStep() != Step.K2_CeFangTingChe || subStepEvent.getSubStep() < SubStep.Step3.ordinal()) {
                    return;
                }
                w.O();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(ErrorTipModel errorTipModel) {
        if (TeachConfig.a().getError()) {
            RobotTips.Y(errorTipModel.getF5938a(), null, TtsGrade.TeachError, -1, null, 18, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z() throws Exception {
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar = this.f8554g;
        if (bVar == null || !(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.k)) {
            this.f8553f.setPos(0.0d, 0.0d, 0.0d);
            return;
        }
        Objects.requireNonNull(bVar, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.hpmap.collision.k2.c2.C2ShangPoCollision");
        cn.mucang.android.jiakaoyi.hpmap.a.a.g.k kVar = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.k) bVar;
        CarPos carPosC = cn.mucang.android.jiakaoyi.signal.c.d.t().c();
        double dDistanceTo = carPosC.rearAxlePoint.distanceTo(carPosC.headerPoint) + ((double) 15);
        double dSin = kVar.n.end.z - (Math.sin(Math.toRadians(5.0d)) * dDistanceTo);
        Line line = kVar.s;
        Line lineP = cn.mucang.android.jiakaoyi.hpmap.d.a.p(line.start, line.end, ((double) 30) + (carPosC.wheelLeftBack.distanceTo(carPosC.wheelRightBack) / ((double) 2)));
        Line line2 = kVar.n;
        Pos posI = cn.mucang.android.jiakaoyi.hpmap.d.a.i(lineP, cn.mucang.android.jiakaoyi.hpmap.d.a.p(line2.start, line2.end, dDistanceTo));
        if (posI != null) {
            if (MucangConfig.v()) {
                double d2 = 10;
                this.s = UnityDrawLineHelper.a.e(UnityDrawLineHelper.f6360a, this.s, 0, 4, u.p(new Pos(posI.x - d2, posI.y - d2), new Pos(posI.x + d2, posI.y + d2)), "#FF0000", 1.0f, 15, 4, false, "法线", null, false, 3330, null);
            }
            Gps gpsB = n.b().f7599a.b(posI);
            r.d(gpsB, "converter.gaussToGps(pos)");
            double[] dArrI = cn.mucang.android.jiakaoyi.teachingk2.autopilot.utm.b.i(gpsB.longitude, gpsB.latitude);
            posI.x = dArrI[0];
            posI.y = dArrI[1];
            this.f8553f.setPos(posI);
            Pos pos = this.f8553f;
            pos.z = dSin;
            cn.mucang.android.jiakaoyi.framework.log.f.b(r.m("上坡停车点:", JSON.toJSONString(pos)));
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.BaseTeachFunc
    public boolean a(AutoTeachEvent event) {
        r.e(event, "event");
        if (!this.f8551d.k()) {
            return false;
        }
        if ((event != AutoTeachEvent.GpsError && event != AutoTeachEvent.NetError && event != AutoTeachEvent.ServerError) || (this.f8554g instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.k)) {
            return true;
        }
        HelpTeachAssistant helpTeachAssistant = this.f8551d;
        String strA = k0.a(R.string.teachbase_gps_weak);
        r.d(strA, "getString(R.string.teachbase_gps_weak)");
        String gpsDesc = this.f8550a;
        r.d(gpsDesc, "gpsDesc");
        helpTeachAssistant.I(strA, gpsDesc);
        this.f8551d.O();
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c
    public void b(TeachTypeData teachTypeData, e signal) {
        r.e(signal, "signal");
        cn.mucang.android.jiakaoyi.framework.log.f.b(r.m("请求刹车:", JSON.toJSONString(teachTypeData)));
        if ((teachTypeData == null ? null : teachTypeData.type) != TeachTipType.HandBrake) {
            this.f8551d.O();
            return;
        }
        TeachStatusModel teachStatusModel = new TeachStatusModel();
        teachStatusModel.state = AutoTeachStatus.TeachPause.getType();
        cn.mucang.android.jiakaoyi.unity.c.d.f(teachStatusModel, true);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.BaseTeachFunc
    public void c() {
        this.q.k();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c
    public boolean d(TeachTypeData teachTypeData, e signal) {
        r.e(signal, "signal");
        return signal.d().F == CarModel.Direction.Stop;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c
    public void e(TeachTypeData teachTypeData) {
        cn.mucang.android.jiakaoyi.framework.log.f.b(r.m("等待解刹:", JSON.toJSONString(teachTypeData)));
        RobotTips.Y(teachTypeData == null ? null : teachTypeData.desc, null, TtsGrade.AutoTeach, 0, null, 16, null);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c
    public void f(TeachTypeData teachTypeData) {
        cn.mucang.android.jiakaoyi.framework.log.f.b(r.m("教学点触发完成:", JSON.toJSONString(teachTypeData)));
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void g() {
        AssistTeachManager.f6339a.j(2);
        if (!this.b) {
            AssistTeachManager.g();
        }
        RobotTips.f7184a.g0();
        this.f8552e.n();
        w.r.setTraceType(26);
        D().n(this);
        this.c.d();
        d dVar = new d();
        this.i = dVar;
        if (dVar != null) {
            dVar.e(null);
        }
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.b.class).i(this.r);
        LiveBus.d(ErrorTipModel.class).i(this.p);
        LiveBus.d(SubStepEvent.class).i(this.n);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c
    public /* synthetic */ void h(TeachTypeData teachTypeData, e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.b.a(this, teachTypeData, eVar, bVar);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.BaseTeachFunc
    public void i(int i, String str) {
        int i2 = a.f8557a[AutoTeachStatus.INSTANCE.a(i).ordinal()];
        if (i2 == 1) {
            HelpTeachAssistant helpTeachAssistant = this.f8551d;
            String strA = k0.a(R.string.teachbase_user_stop);
            r.d(strA, "getString(R.string.teachbase_user_stop)");
            helpTeachAssistant.N(strA);
            return;
        }
        if (i2 == 2) {
            this.f8551d.O();
        } else {
            if (i2 != 3) {
                return;
            }
            if (D().h()) {
                TtsManager.z(k0.a(R.string.teachbase_state_disable_tip), TtsGrade.AutoTeach);
            } else {
                this.f8551d.H();
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c
    public boolean j(TeachTypeData ttd, e signal) {
        r.e(ttd, "ttd");
        r.e(signal, "signal");
        return signal.d().F != CarModel.Direction.Stop;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.c
    public void k(TeachTypeData teachTypeData, e signal) {
        r.e(signal, "signal");
        cn.mucang.android.jiakaoyi.framework.log.f.b(r.m("请求解除刹车:", JSON.toJSONString(teachTypeData)));
        n0.d();
        this.f8551d.H();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public /* synthetic */ void n() {
        z.a(this);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void o() {
        AssistTeachManager.f6339a.j(0);
        if (!this.b) {
            AssistTeachManager.h();
        }
        TtsManager.F();
        RobotTips.f7184a.Z();
        this.f8552e.p();
        D().n(null);
        this.c.e();
        this.f8551d.q(5, 2);
        P(false);
        final cn.mucang.android.jiakaoyi.teachingk2.t0.b bVar = this.f8555h;
        this.f8555h = null;
        cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.e0
            @Override // java.lang.Runnable
            public final void run() {
                HelpTeachPage.L(bVar);
            }
        }, 500L);
        d dVar = this.i;
        if (dVar != null) {
            dVar.f();
        }
        this.i = null;
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.b.class).m(this.r);
        LiveBus.d(ErrorTipModel.class).m(this.p);
        LiveBus.d(SubStepEvent.class).m(this.n);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(e signalGetter) {
        r.e(signalGetter, "signalGetter");
        if (signalGetter.d().k()) {
            if (signalGetter.getCurrentPosition().f5282h == 4) {
                this.f8551d.E(true);
            }
            if (signalGetter.d().m == Gear.GearN && D().i()) {
                HelpTeachAssistant helpTeachAssistant = this.f8551d;
                String strA = k0.a(R.string.teachbase_gear_n);
                r.d(strA, "getString(R.string.teachbase_gear_n)");
                helpTeachAssistant.N(strA);
            }
        }
    }
}
