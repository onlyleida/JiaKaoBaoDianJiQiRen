package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.k3;

import android.app.Activity;
import android.app.Dialog;
import androidx.appcompat.app.d;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.u;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.RouteConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.StepConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.f;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.ExamStepStatus;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DengGuangStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.creator.ExamDataCreator;
import cn.mucang.android.jiakaoyi.exam.k3.creator.ExamStepState;
import cn.mucang.android.jiakaoyi.exam.k3.creator.K3EngineManager;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.ShangCheStepData;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightDataCreator;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExam;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.exam.k3.starter.K3_QiBu_Starter;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.h.c;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.tts.voice.o;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.k3setting.LocalRouteUtil;
import cn.mucang.android.jiakaoyi.k3setting.exam.HpPreviewDialogFragment;
import cn.mucang.android.jiakaoyi.k3setting.exam.K3ExamCommonLogic;
import cn.mucang.android.jiakaoyi.k3setting.exam.K3ExamDialogLogic;
import cn.mucang.android.jiakaoyi.k3setting.exam.PreviewFragment;
import cn.mucang.android.jiakaoyi.k3setting.exam.g1;
import cn.mucang.android.jiakaoyi.k3setting.exam.h1;
import cn.mucang.android.jiakaoyi.k3setting.exam.i1;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.k3.K3DataManager;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.KeMuAreaSwitcher;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.PlayVoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.ExamStepListModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamDeductModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.ExamConfigModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.helper.K3ExamDataUpdater;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.w;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.z;
import cn.mucang.jiakaoyi.uilib.deduct.BaseDeductPresenter;
import cn.mucang.jiakaoyi.uilib.deduct.y;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import cn.mucang.jiakaoyi.uilib.ui.dialog.m0;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import cn.mucang.sundial.library.activity.InputIdCardActivity;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import io.agora.rtc.internal.RtcEngineEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000ù\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f*\u0001$\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005B\u0005¢\u0006\u0002\u0010\u0007J\b\u00102\u001a\u000203H\u0016J\u0010\u00104\u001a\u0002032\u0006\u00105\u001a\u000206H\u0002J\u0012\u00107\u001a\u0002032\b\u00108\u001a\u0004\u0018\u00010\u0006H\u0016J\u0006\u00109\u001a\u000203J\u000e\u0010:\u001a\u0002032\u0006\u0010;\u001a\u00020\fJ\u0010\u0010<\u001a\u0002032\u0006\u00105\u001a\u000206H\u0016J\b\u0010=\u001a\u000203H\u0016J\u000e\u0010>\u001a\b\u0012\u0004\u0012\u0002060?H\u0016J\b\u0010@\u001a\u00020 H\u0016J\b\u0010A\u001a\u00020BH\u0016J\b\u0010C\u001a\u00020DH\u0002J\b\u0010E\u001a\u00020FH\u0016J\b\u0010G\u001a\u00020 H\u0016J\u0010\u0010H\u001a\u00020 2\u0006\u0010I\u001a\u00020JH\u0002J\u0016\u0010K\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020L0?\u0018\u00010\u0012H\u0016J\b\u0010M\u001a\u00020NH\u0016J\u0006\u0010O\u001a\u000203J\b\u0010P\u001a\u00020\u0013H\u0016J\b\u0010Q\u001a\u000203H\u0016J\b\u0010R\u001a\u000203H\u0016J\u0010\u0010S\u001a\u0002032\u0006\u0010T\u001a\u00020UH\u0016J\b\u0010V\u001a\u000203H\u0016J\u0010\u0010W\u001a\u0002032\u0006\u00105\u001a\u000206H\u0016J\u001a\u0010X\u001a\u0002032\u0006\u0010Y\u001a\u00020Z2\b\u0010[\u001a\u0004\u0018\u00010\\H\u0016J \u0010]\u001a\u0002032\u0006\u0010^\u001a\u00020 2\u0006\u0010_\u001a\u00020`2\u0006\u0010a\u001a\u00020JH\u0016J\u0010\u0010b\u001a\u0002032\u0006\u0010T\u001a\u00020UH\u0002J\b\u0010c\u001a\u000203H\u0016J\b\u0010d\u001a\u000203H\u0002J\b\u0010e\u001a\u000203H\u0002J\u0006\u0010f\u001a\u000203J\u0006\u0010g\u001a\u000203J\u0006\u0010h\u001a\u000203J\b\u0010i\u001a\u000203H\u0016J\u000e\u0010j\u001a\u0002032\u0006\u0010k\u001a\u00020\u000eR\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0010\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00130\u00130\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u00020$X\u0082\u0004¢\u0006\u0004\n\u0002\u0010%R\u0010\u0010&\u001a\u0004\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010*\u001a\b\u0012\u0004\u0012\u00020!0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010-\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u000201X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006l"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/handlers/UnityPageHandler$PageEvent;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController$EngineCallback;", "Lcn/mucang/jiakaoyi/uilib/deduct/BaseDeductPresenter;", "Lcn/mucang/android/jiakaoyi/k3setting/exam/K3ExamCommonLogic$ExamLogicCallback;", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoiceTask;", "()V", "commonLogic", "Lcn/mucang/android/jiakaoyi/k3setting/exam/K3ExamCommonLogic;", "configStepList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;", "currentConfig", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamConfigModel;", "deduct", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;", "deductIsOver", "Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;", "", "kotlin.jvm.PlatformType", "dialog", "Landroid/app/Dialog;", "dialogLogic", "Lcn/mucang/android/jiakaoyi/k3setting/exam/K3ExamDialogLogic;", "engineCtrl", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController;", "globalConfig", "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;", "inPage", "lightDeductConfig", "", "", "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;", "lightError", "lightExamCallback", "cn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$lightExamCallback$1", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$lightExamCallback$1;", "lightExamPresenter", "Lcn/mucang/android/jiakaoyi/k3setting/exam/LightExamPresenter;", "lightStepConfig", "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;", "manualDeduct", "previewFragment", "Lcn/mucang/android/jiakaoyi/k3setting/exam/PreviewFragment;", "routeStepList", "traffic", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/TrafficBrakeManager;", "updater", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/helper/K3ExamDataUpdater;", "afterStartVoicePlayed", "", "callUnityDeduct", "deductInfo", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "callback", "data", "clickDetail", "clickStep", "model", InputIdCardActivity.DELETE, "doLightExam", "getData", "", "getEngineType", "getExamTime", "", "getFragmentManager", "Landroidx/fragment/app/FragmentManager;", "getLightExamCallback", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;", "getScore", "getState", "state", "Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;", "getStepGetter", "Lcn/mucang/android/jiakaoyi/engine/processor/ExamEventCreator$StepInfo;", "getStudentName", "", "hpPreview", "isPractice", "onEngineInitialed", "onEnter", "onExamResult", "examResult", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;", "onExit", "onOneError", "onStep", "stepHandler", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;", "stepResult", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepResult;", "onStepChanged", "routeId", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "stepStatus", "renderExamResult", "resumeShangCheStep", "sendConfigStepData", "sendRouteStepData", "showManualDeduct", TtmlNode.START, "stop", "stopExamByRule", "updateConfigData", "config", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3ExamPage implements a0.a, K3EngineController.a, BaseDeductPresenter, K3ExamCommonLogic.a, cn.mucang.android.jiakaoyi.framework.h.b<o> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private K3ExamDialogLogic f8616f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f8617g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private K3DengGuangStepConfig f8618h;
    private Map<Integer, Deduct> i;
    private boolean j;
    private Dialog k;
    private K3ExamCommonLogic l;
    private h1 m;
    private PreviewFragment p;
    private final ExamConfigModel q;
    private final b r;
    private final c<Boolean> s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final K3EngineController f8613a = new K3EngineController(this);
    private final UnityExamDeductModel b = new UnityExamDeductModel();
    private final List<ExamStepListModel.ExamStepItemModel> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<ExamStepListModel.ExamStepItemModel> f8614d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final K3ExamDataUpdater f8615e = new K3ExamDataUpdater(new Function0<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k3.K3ExamPage$updater$1
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final b invoke() {
            K3EngineManager c = this.this$0.f8613a.getC();
            if (c == null) {
                return null;
            }
            return c.runningStepHandler;
        }
    });
    private final w n = new w();
    private final cn.mucang.android.jiakaoyi.framework.h.b<Deduct> o = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k3.b
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            K3ExamPage.G(this.f8622a, (Deduct) obj);
        }
    };

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8619a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[Step.values().length];
            iArr[Step.K3_QiBu.ordinal()] = 1;
            iArr[Step.K3_LightSimulate.ordinal()] = 2;
            iArr[Step.K3_ShangChe.ordinal()] = 3;
            f8619a = iArr;
            int[] iArr2 = new int[ExamStepState.values().length];
            iArr2[ExamStepState.Start.ordinal()] = 1;
            iArr2[ExamStepState.End.ordinal()] = 2;
            iArr2[ExamStepState.Deduct.ordinal()] = 3;
            b = iArr2;
        }
    }

    @Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u001a\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\u0003H\u0016J\u0012\u0010\n\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\u000b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$lightExamCallback$1", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;", "onClickClose", "", "onFailure", "model", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;", "onFinish", "onStart", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements LightExam.LightExamCallback {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.exam.k3.light.LightExam.LightExamCallback
        public void onClickClose() {
        }

        @Override // cn.mucang.android.jiakaoyi.exam.k3.light.LightExam.LightExamCallback
        public void onFailure(LightExamModel model, Deduct deduct) {
            cn.mucang.android.jiakaoyi.engine.c engine;
            r.e(deduct, "deduct");
            if (deduct.code <= 0 || !deduct.needAutoCheck()) {
                return;
            }
            K3ExamPage.this.j = true;
            cn.mucang.android.jiakaoyi.engine.model.a aVar = new cn.mucang.android.jiakaoyi.engine.model.a(deduct, System.currentTimeMillis(), true, null, null);
            K3EngineManager k3EngineManagerE = K3ExamPage.this.f8613a.getC();
            if (k3EngineManagerE != null && (engine = k3EngineManagerE.getEngine()) != null) {
                engine.a(aVar);
            }
            K3ExamPage.this.f8615e.h(aVar.f3102a.deductScore);
            K3ExamPage.this.f8613a.d().add(0, aVar);
            cn.mucang.android.jiakaoyi.engine.trace.w.d(deduct);
            K3ExamPage.this.w(aVar);
        }

        @Override // cn.mucang.android.jiakaoyi.exam.k3.light.LightExam.LightExamCallback
        public void onFinish() {
            if (K3ExamPage.this.j) {
                K3ExamPage.this.onStepChanged(-1, Step.K3_LightSimulate, ExamStepState.Deduct);
            } else {
                K3ExamPage.this.onStepChanged(-1, Step.K3_LightSimulate, ExamStepState.End);
            }
            cn.mucang.android.jiakaoyi.engine.trace.w.U(Step.K3_LightSimulate);
            K3ExamCommonLogic k3ExamCommonLogic = K3ExamPage.this.l;
            if (k3ExamCommonLogic == null) {
                return;
            }
            k3ExamCommonLogic.x();
        }

        @Override // cn.mucang.android.jiakaoyi.exam.k3.light.LightExam.LightExamCallback
        public void onStart(LightExamModel model) {
            K3ExamPage.this.j = false;
            Step step = Step.K3_LightSimulate;
            cn.mucang.android.jiakaoyi.engine.trace.w.R(step, false);
            K3ExamPage.this.onStepChanged(-1, step, ExamStepState.Start);
            K3EngineManager k3EngineManagerE = K3ExamPage.this.f8613a.getC();
            if (k3EngineManagerE == null) {
                return;
            }
            k3EngineManagerE.pause();
        }
    }

    public K3ExamPage() {
        ExamConfigModel examConfigModel = new ExamConfigModel();
        examConfigModel.reportError = i0.b("RealTimeReportError", true);
        examConfigModel.autoPlay = i0.b("AutoStartNextStep", true);
        examConfigModel.ready = i0.b("HaveShangCheStep", true);
        examConfigModel.light = i0.b("HaveLightSimulateStep", true);
        v vVar = v.f15822a;
        this.q = examConfigModel;
        this.r = new b();
        this.s = new c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k3.a
            @Override // cn.mucang.android.jiakaoyi.framework.h.c
            public final Object get() {
                return K3ExamPage.A(this.f8621a);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean A(K3ExamPage this$0) {
        r.e(this$0, "this$0");
        return Boolean.valueOf(this$0.f8615e.a());
    }

    private final FragmentManager B() {
        Activity activityI = MucangConfig.i();
        Objects.requireNonNull(activityI, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        FragmentManager supportFragmentManager = ((d) activityI).getSupportFragmentManager();
        r.d(supportFragmentManager, "MucangConfig.getCurrentA…y).supportFragmentManager");
        return supportFragmentManager;
    }

    private final int C(ExamStepState examStepState) {
        int i = a.b[examStepState.ordinal()];
        if (i == 1) {
            return 1;
        }
        if (i != 2) {
            return i != 3 ? 0 : 3;
        }
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(K3ExamPage this$0, Deduct deduct) {
        cn.mucang.android.jiakaoyi.engine.c engine;
        r.e(this$0, "this$0");
        K3EngineManager k3EngineManagerE = this$0.f8613a.getC();
        if (k3EngineManagerE == null || (engine = k3EngineManagerE.getEngine()) == null) {
            return;
        }
        engine.f(deduct.step, deduct.code);
    }

    private final void H(f fVar) {
        this.f8615e.g();
        cn.mucang.android.jiakaoyi.unity.c.d.b(RtcEngineEvent.EvtType.EVT_USER_OFFLINE);
        K3_QiBu_Starter.start = false;
        K3EngineManager k3EngineManagerE = this.f8613a.getC();
        if (k3EngineManagerE != null) {
            k3EngineManagerE.reset();
        }
        if (this.f8617g) {
            K3ExamCommonLogic k3ExamCommonLogic = this.l;
            if (k3ExamCommonLogic != null) {
                k3ExamCommonLogic.u(fVar);
            }
            this.k = new m0().h(MucangConfig.i(), this.f8613a.d(), null, fVar.f3124a, fVar.b);
        }
    }

    private final void I() {
        this.f8614d.clear();
        List<Step> steps = ExamDataCreator.createSteps();
        r.d(steps, "steps");
        ArrayList<Step> arrayList = new ArrayList();
        for (Object obj : steps) {
            Step step = (Step) obj;
            if ((step == Step.K3_LightSimulate || step == Step.K3_Global) ? false : true) {
                arrayList.add(obj);
            }
        }
        List<ExamStepListModel.ExamStepItemModel> list = this.f8614d;
        for (Step step2 : arrayList) {
            ExamStepListModel.ExamStepItemModel examStepItemModel = new ExamStepListModel.ExamStepItemModel();
            examStepItemModel.stepId = step2.type;
            examStepItemModel.stepName = step2.stepName;
            examStepItemModel.state = ExamStepState.Wait.state;
            list.add(examStepItemModel);
        }
        ExamStepListModel examStepListModel = new ExamStepListModel();
        examStepListModel.itemList = this.f8614d;
        v vVar = v.f15822a;
        cn.mucang.android.jiakaoyi.unity.c.d.c(13003, examStepListModel);
    }

    private final void J() {
        List<RouteNode> nodes;
        this.c.clear();
        LocalRoute localRouteB = LocalRouteUtil.b();
        if (localRouteB != null && (nodes = localRouteB.getNodes()) != null) {
            for (RouteNode routeNode : nodes) {
                Step stepFindWithType = Step.findWithType(routeNode.getStepId());
                if (stepFindWithType != null) {
                    List<ExamStepListModel.ExamStepItemModel> list = this.c;
                    ExamStepListModel.ExamStepItemModel examStepItemModel = new ExamStepListModel.ExamStepItemModel();
                    examStepItemModel.stepId = stepFindWithType.type;
                    examStepItemModel.stepName = stepFindWithType.stepName;
                    examStepItemModel.state = ExamStepState.Wait.state;
                    examStepItemModel.id = routeNode.getId();
                    v vVar = v.f15822a;
                    list.add(examStepItemModel);
                }
            }
        }
        List<ExamStepListModel.ExamStepItemModel> list2 = this.c;
        ExamStepListModel.ExamStepItemModel examStepItemModel2 = new ExamStepListModel.ExamStepItemModel();
        Step step = Step.K3_QiBu;
        examStepItemModel2.stepId = step.type;
        examStepItemModel2.stepName = step.stepName;
        ExamStepState examStepState = ExamStepState.Wait;
        examStepItemModel2.state = examStepState.state;
        examStepItemModel2.id = -2;
        v vVar2 = v.f15822a;
        list2.add(0, examStepItemModel2);
        if (this.q.light) {
            List<ExamStepListModel.ExamStepItemModel> list3 = this.c;
            ExamStepListModel.ExamStepItemModel examStepItemModel3 = new ExamStepListModel.ExamStepItemModel();
            Step step2 = Step.K3_LightSimulate;
            examStepItemModel3.stepId = step2.type;
            examStepItemModel3.stepName = step2.stepName;
            examStepItemModel3.state = examStepState.state;
            examStepItemModel3.id = -3;
            list3.add(0, examStepItemModel3);
        }
        if (this.q.ready) {
            List<ExamStepListModel.ExamStepItemModel> list4 = this.c;
            ExamStepListModel.ExamStepItemModel examStepItemModel4 = new ExamStepListModel.ExamStepItemModel();
            Step step3 = Step.K3_ShangChe;
            examStepItemModel4.stepId = step3.type;
            examStepItemModel4.stepName = step3.stepName;
            examStepItemModel4.state = examStepState.state;
            examStepItemModel4.id = -4;
            list4.add(0, examStepItemModel4);
        }
        ExamStepListModel examStepListModel = new ExamStepListModel();
        examStepListModel.itemList = this.c;
        cn.mucang.android.jiakaoyi.unity.c.d.e(examStepListModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        UnityExamDeductModel unityExamDeductModel = this.b;
        Deduct deduct = aVar.f3102a;
        unityExamDeductModel.desc = deduct.name;
        unityExamDeductModel.code = deduct.code;
        unityExamDeductModel.step = deduct.step.getStepName();
        UnityExamDeductModel unityExamDeductModel2 = this.b;
        unityExamDeductModel2.score = aVar.f3102a.deductScore;
        unityExamDeductModel2.time = aVar.b;
        cn.mucang.android.jiakaoyi.unity.c.d.e(unityExamDeductModel2);
    }

    public final void D() {
        if (this.f8613a.getC() == null || n.b().f7600d == null || !n.b().f7600d.hasData) {
            return;
        }
        PreviewFragment previewFragment = this.p;
        if (previewFragment != null) {
            r.c(previewFragment);
            if (previewFragment.isVisible()) {
                u uVarM = B().m();
                PreviewFragment previewFragment2 = this.p;
                r.c(previewFragment2);
                uVarM.p(previewFragment2);
                uVarM.j();
            }
        }
        HpPreviewDialogFragment.a aVar = HpPreviewDialogFragment.l;
        FragmentManager fragmentManagerB = B();
        LocalRoute localRouteB = LocalRouteUtil.b();
        if (localRouteB == null) {
            localRouteB = LocalRoute.createCommonRoute("ThisIsCommonRouteId");
        }
        r.d(localRouteB, "LocalRouteUtil.getRoute(…Consts.CommonExamRouteId)");
        aVar.a(fragmentManagerB, localRouteB, n.b().f7600d);
    }

    public final void K() {
        cn.mucang.android.jiakaoyi.engine.c engine;
        cn.mucang.android.jiakaoyi.engine.processor.exam.d dVarH;
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar;
        FragmentManager fragmentManagerB = B();
        K3EngineManager k3EngineManagerE = this.f8613a.getC();
        Step step = null;
        RouteConfig routeConfig = (k3EngineManagerE == null || (engine = k3EngineManagerE.getEngine()) == null || (dVarH = engine.h()) == null) ? null : dVarH.m;
        K3EngineManager k3EngineManagerE2 = this.f8613a.getC();
        if (k3EngineManagerE2 != null && (bVar = k3EngineManagerE2.runningStepHandler) != null) {
            step = bVar.f3142e;
        }
        i1.F(fragmentManagerB, routeConfig, step, this.o);
    }

    public final void L() {
        K3ExamCommonLogic k3ExamCommonLogic = this.l;
        if (k3ExamCommonLogic == null) {
            return;
        }
        k3ExamCommonLogic.v();
    }

    public final void M() {
        K3ExamCommonLogic k3ExamCommonLogic = this.l;
        if (k3ExamCommonLogic != null) {
            k3ExamCommonLogic.A();
        }
        h1 h1Var = this.m;
        if (h1Var == null) {
            return;
        }
        h1Var.c();
    }

    public final void N(ExamConfigModel config) {
        cn.mucang.android.jiakaoyi.engine.c engine;
        cn.mucang.android.jiakaoyi.engine.c engine2;
        r.e(config, "config");
        ExamConfigModel examConfigModel = this.q;
        boolean z = examConfigModel.reportError;
        boolean z2 = config.reportError;
        if (z != z2) {
            examConfigModel.reportError = z2;
            i0.i("RealTimeReportError", config.reportError);
            K3EngineManager k3EngineManagerE = this.f8613a.getC();
            if (k3EngineManagerE != null && (engine2 = k3EngineManagerE.getEngine()) != null) {
                engine2.r(config.reportError);
            }
            if (config.reportError) {
                TtsManager.H();
            }
        }
        ExamConfigModel examConfigModel2 = this.q;
        boolean z3 = examConfigModel2.autoPlay;
        boolean z4 = config.autoPlay;
        if (z3 != z4) {
            examConfigModel2.autoPlay = z4;
            i0.i("AutoStartNextStep", config.autoPlay);
            K3EngineManager k3EngineManagerE2 = this.f8613a.getC();
            if (k3EngineManagerE2 != null && (engine = k3EngineManagerE2.getEngine()) != null) {
                engine.q(config.autoPlay);
            }
        }
        ExamConfigModel examConfigModel3 = this.q;
        boolean z5 = examConfigModel3.ready;
        boolean z6 = config.ready;
        if (z5 != z6) {
            examConfigModel3.ready = z6;
            i0.i("HaveShangCheStep", config.ready);
            J();
        }
        ExamConfigModel examConfigModel4 = this.q;
        boolean z7 = examConfigModel4.light;
        boolean z8 = config.light;
        if (z7 != z8) {
            examConfigModel4.light = z8;
            i0.i("HaveLightSimulateStep", config.light);
            J();
        }
    }

    @Override // cn.mucang.jiakaoyi.uilib.deduct.BaseDeductPresenter
    public void a(cn.mucang.android.jiakaoyi.engine.model.a deductInfo) {
        r.e(deductInfo, "deductInfo");
        this.f8613a.d().remove(deductInfo);
        UnityExamDeductModel unityExamDeductModel = new UnityExamDeductModel();
        Deduct deduct = deductInfo.f3102a;
        unityExamDeductModel.desc = deduct.name;
        unityExamDeductModel.code = deduct.code;
        unityExamDeductModel.step = deduct.step.getStepName();
        unityExamDeductModel.score = deductInfo.f3102a.deductScore;
        unityExamDeductModel.time = deductInfo.b;
        cn.mucang.android.jiakaoyi.unity.c.d.c(13005, unityExamDeductModel);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void b() {
        K3EngineManager k3EngineManagerE = this.f8613a.getC();
        if (k3EngineManagerE != null) {
        }
        K3EngineManager k3EngineManagerE2 = this.f8613a.getC();
        StepConfig stepConfig = k3EngineManagerE2 == null ? null : k3EngineManagerE2.getStepConfig(Step.K3_LightSimulate);
        BaseStepConfig baseStepConfig = stepConfig == null ? null : stepConfig.stepConfig;
        this.f8618h = baseStepConfig instanceof K3DengGuangStepConfig ? (K3DengGuangStepConfig) baseStepConfig : null;
        this.i = stepConfig != null ? stepConfig.deductConfig : null;
        K3EngineManager k3EngineManagerE3 = this.f8613a.getC();
        r.c(k3EngineManagerE3);
        this.l = new K3ExamCommonLogic(k3EngineManagerE3, this);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public c<List<cn.mucang.android.jiakaoyi.engine.i.c.b>> c() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.exam.K3ExamCommonLogic.a
    public void d() {
        BooleanValue booleanValue;
        K3DataManager k3DataManager = K3DataManager.f7233a;
        List<LightExamModel> listCreateLightData = LightDataCreator.createLightData(g.d(k3DataManager.d()) ? k3DataManager.d() : LightDataCreator.allTopics, k3DataManager.c(), this.f8618h);
        K3DengGuangStepConfig k3DengGuangStepConfig = this.f8618h;
        boolean zA = false;
        if (k3DengGuangStepConfig != null && (booleanValue = k3DengGuangStepConfig.p202137) != null) {
            zA = r.a(booleanValue.value, Boolean.TRUE);
        }
        if (!zA) {
            g1.E(B(), listCreateLightData, this.f8618h, this.i, this.r, this.s, false);
            return;
        }
        Activity activityI = MucangConfig.i();
        Objects.requireNonNull(activityI, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        h1 h1Var = new h1((d) activityI, listCreateLightData, this.f8618h, this.i, this.r, this.s, false);
        this.m = h1Var;
        if (h1Var == null) {
            return;
        }
        h1Var.b();
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.exam.K3ExamCommonLogic.a
    public LightExam.LightExamCallback e() {
        return this.r;
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.exam.K3ExamCommonLogic.a
    public long f() {
        return this.f8615e.getF8584d().timeNum;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void g() {
        String routeName;
        TtsManager.H();
        this.f8617g = true;
        cn.mucang.android.jiakaoyi.engine.trace.w.r.setTraceType(1);
        cn.mucang.android.jiakaoyi.engine.trace.w.r.posMapCode = ExamSiteUtil.i(ExamSiteUtil.e(0L), KeMu.K3);
        Activity activityI = MucangConfig.i();
        Objects.requireNonNull(activityI, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        this.f8616f = new K3ExamDialogLogic((d) activityI, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k3.K3ExamPage$onEnter$1
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
                K3ExamCommonLogic k3ExamCommonLogic = this.this$0.l;
                if (k3ExamCommonLogic == null) {
                    return;
                }
                k3ExamCommonLogic.y();
            }
        }, new Function1<ShangCheStepData.EventType, Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k3.K3ExamPage$onEnter$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(ShangCheStepData.EventType it) {
                r.e(it, "it");
                K3EngineManager c = this.this$0.f8613a.getC();
                return Boolean.valueOf(c == null ? false : c.isStart());
            }
        });
        this.f8613a.g();
        J();
        I();
        ExamConfigModel examConfigModel = this.q;
        LocalRoute localRouteB = LocalRouteUtil.b();
        String str = "";
        if (localRouteB != null && (routeName = localRouteB.getRouteName()) != null) {
            str = routeName;
        }
        examConfigModel.curRoute = str;
        cn.mucang.android.jiakaoyi.unity.c.d.e(this.q);
        K3ExamDialogLogic k3ExamDialogLogic = this.f8616f;
        if (k3ExamDialogLogic != null) {
            LiveBus.d(ShangCheStepData.class).i(k3ExamDialogLogic.k());
            LiveBus.d(ChaoCheStateData.class).i(k3ExamDialogLogic.j());
        }
        TtsManager.f3517a.c(this);
        KeMuAreaSwitcher.d(KeMu.K2);
        this.n.p();
    }

    @Override // cn.mucang.jiakaoyi.uilib.deduct.BaseDeductPresenter
    public List<cn.mucang.android.jiakaoyi.engine.model.a> getData() {
        return this.f8613a.d();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public int getEngineType() {
        return 1;
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.exam.K3ExamCommonLogic.a
    public void h() {
        K3EngineManager k3EngineManagerE = this.f8613a.getC();
        boolean z = false;
        if (k3EngineManagerE != null && k3EngineManagerE.canStart()) {
            z = true;
        }
        if (z) {
            RobotTips.f7184a.e0();
            K3EngineManager k3EngineManagerE2 = this.f8613a.getC();
            if (k3EngineManagerE2 != null) {
                k3EngineManagerE2.start();
            }
            this.f8615e.f();
            K3ExamCommonLogic k3ExamCommonLogic = this.l;
            if (k3ExamCommonLogic == null) {
                return;
            }
            k3ExamCommonLogic.z();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.exam.K3ExamCommonLogic.a
    public void i() {
        M();
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.exam.K3ExamCommonLogic.a
    public String j() {
        String name;
        XyUserModel xyUserModelE = RobotAccount.i().e();
        return (xyUserModelE == null || (name = xyUserModelE.getName()) == null) ? "" : name;
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.exam.K3ExamCommonLogic.a
    public int k() {
        return this.f8615e.getF8584d().scoreNum;
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.exam.K3ExamCommonLogic.a
    public void l() {
        K3ExamDialogLogic k3ExamDialogLogic = this.f8616f;
        if (k3ExamDialogLogic == null) {
            return;
        }
        k3ExamDialogLogic.x();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public boolean m() {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public /* synthetic */ void n() {
        z.a(this);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void o() {
        TtsManager.H();
        Dialog dialog = this.k;
        if (dialog != null) {
            DialogExtensionKt.b(dialog);
        }
        this.f8617g = false;
        this.f8613a.q();
        PreviewFragment previewFragment = this.p;
        if (previewFragment != null) {
            u uVarM = B().m();
            uVarM.p(previewFragment);
            uVarM.j();
        }
        K3ExamDialogLogic k3ExamDialogLogic = this.f8616f;
        if (k3ExamDialogLogic != null) {
            LiveBus.d(ShangCheStepData.class).m(k3ExamDialogLogic.k());
            LiveBus.d(ChaoCheStateData.class).m(k3ExamDialogLogic.j());
            k3ExamDialogLogic.e();
        }
        TtsManager.f3517a.p(this);
        KeMuAreaSwitcher.e();
        this.n.q();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a deductInfo) {
        r.e(deductInfo, "deductInfo");
        this.f8615e.h(deductInfo.f3102a.deductScore);
        w(deductInfo);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b stepHandler, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        r.e(stepHandler, "stepHandler");
        K3ExamDataUpdater k3ExamDataUpdater = this.f8615e;
        ExamStepStatus examStepStatus = stepHandler.i;
        r.d(examStepStatus, "stepHandler.status");
        k3ExamDataUpdater.e(stepHandler, examStepStatus);
        K3ExamDialogLogic k3ExamDialogLogic = this.f8616f;
        if (k3ExamDialogLogic != null) {
            k3ExamDialogLogic.w(stepHandler);
        }
        K3ExamCommonLogic k3ExamCommonLogic = this.l;
        if (k3ExamCommonLogic == null) {
            return;
        }
        k3ExamCommonLogic.s(stepHandler, cVar);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void onStepChanged(int routeId, Step step, ExamStepState stepStatus) {
        r.e(step, "step");
        r.e(stepStatus, "stepStatus");
        ExamStepListModel.ExamStepItemModel examStepItemModel = new ExamStepListModel.ExamStepItemModel();
        int i = a.f8619a[step.ordinal()];
        if (i == 1) {
            routeId = -2;
        } else if (i == 2) {
            routeId = -3;
        } else if (i == 3) {
            routeId = -4;
        }
        examStepItemModel.id = routeId;
        examStepItemModel.stepId = step.type;
        examStepItemModel.stepName = step.stepName;
        examStepItemModel.state = C(stepStatus);
        Iterator<ExamStepListModel.ExamStepItemModel> it = this.c.iterator();
        while (it.hasNext()) {
            if (it.next().id == examStepItemModel.id) {
                cn.mucang.android.jiakaoyi.unity.c.d.c(60006, examStepItemModel);
                break;
            }
        }
        Iterator<ExamStepListModel.ExamStepItemModel> it2 = this.f8614d.iterator();
        while (it2.hasNext()) {
            if (it2.next().stepId == examStepItemModel.stepId) {
                cn.mucang.android.jiakaoyi.unity.c.d.c(13004, examStepItemModel);
                return;
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.K3EngineController.a
    public void p(f examResult) {
        r.e(examResult, "examResult");
        H(examResult);
        RobotTips.f7184a.j0(examResult.b);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.h.b
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void callback(o oVar) {
        if (n0.g(oVar == null ? null : oVar.c)) {
            if ((oVar != null ? oVar.f3583f : null) == TtsGrade.ExamTip) {
                PlayVoiceModel playVoiceModel = new PlayVoiceModel();
                playVoiceModel.voice = oVar.c;
                cn.mucang.android.jiakaoyi.unity.c.d.e(playVoiceModel);
            }
        }
    }

    public final void y() {
        y.x(this, B());
    }

    public final void z(ExamStepListModel.ExamStepItemModel model) {
        r.e(model, "model");
        K3EngineManager k3EngineManagerE = this.f8613a.getC();
        boolean z = false;
        if (k3EngineManagerE != null && k3EngineManagerE.isStart()) {
            z = true;
        }
        if (!z) {
            cn.mucang.android.core.utils.u.h(k0.a(R.string.teachbase_please_start_test));
            return;
        }
        Step step = Step.findWithType(model.stepId);
        if (model.state != 1) {
            K3EngineManager k3EngineManagerE2 = this.f8613a.getC();
            if (k3EngineManagerE2 == null) {
                return;
            }
            k3EngineManagerE2.exeThisStep(step);
            return;
        }
        K3ExamCommonLogic k3ExamCommonLogic = this.l;
        if (k3ExamCommonLogic == null) {
            return;
        }
        r.d(step, "step");
        k3ExamCommonLogic.e(step);
    }
}
