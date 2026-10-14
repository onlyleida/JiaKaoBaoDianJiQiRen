package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent;

import android.app.Activity;
import android.content.DialogInterface;
import android.text.TextUtils;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.i.f.a;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.SubStepEvent;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.firstpractice.FirstPracticeStep;
import cn.mucang.android.jiakaoyi.teachingk2.fp.info.FpResult;
import cn.mucang.android.jiakaoyi.teachingk2.l0;
import cn.mucang.android.jiakaoyi.teachingk2.level.TutorialLevel;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelData;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.UnityDrawSender;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.DrawObserveHelper;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.d0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.FirstTrainCountModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.FirstTrainStepModel;
import cn.mucang.android.jiakaoyi.teachingk2.record.RecordEvent;
import cn.mucang.android.jiakaoyi.teachingk2.record.UserRecordApi;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.z;
import cn.mucang.android.jiakaoyi.teachingk2.v0.dialog.FpFailedDialog;
import cn.mucang.android.jiakaoyi.teachingk2.video.VideoGuideManager;
import cn.mucang.android.jiakaoyi.teachingk2.video.VideoPlayDialog;
import cn.mucang.android.jiakaoyi.unity.c.d;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u00010B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0003H\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0003H\u0002J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\nH\u0002J\b\u0010$\u001a\u00020\u001dH\u0016J\b\u0010%\u001a\u00020\u001dH\u0016J*\u0010&\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u00032\u0006\u0010'\u001a\u00020\f2\u0010\b\u0002\u0010(\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010)H\u0002J\u0010\u0010*\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0003H\u0002J\u0010\u0010+\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u0003H\u0002J\u0010\u0010,\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0003H\u0002J\u0010\u0010-\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020/H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00060\u0012R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/handlers/UnityPageHandler$PageEvent;", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;", "()V", "delay", "", "getDelay", "()J", "fpObserver", "Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;", "fpStart", "", "helper", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/DrawObserveHelper;", "inPage", "isFirst", "reportTask", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$ReportRunnable;", "stepObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/engine/processor/listen/StepInfoModel;", "subStepObserver", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;", "teachCtrl", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/TeachEngineController;", "videoDialog", "Lcn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayDialog;", "callback", "", "data", "getVideoUrl", "", "step", "handleFpResult", "it", "onEnter", "onExit", "playGuideVideo", "enableClose", "onDismiss", "Lkotlin/Function0;", "realStart", "sendStatus", "startPractice", "uploadToServer", "course", "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;", "ReportRunnable", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FirstPracticePage implements a0.a, cn.mucang.android.jiakaoyi.framework.h.b<FirstPracticeStep> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f8541a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f8542d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f8543e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private VideoPlayDialog f8544f;
    private final a j;
    private final d0 b = new d0(true);
    private final DrawObserveHelper c = new DrawObserveHelper(new DrawObserveHelper.a(false, false, false, new Function0<Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.FirstPracticePage$helper$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.TRUE;
        }
    }, new Function0<Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.FirstPracticePage$helper$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.TRUE;
        }
    }, 7, null));

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<FpResult> f8545g = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.z
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            FirstPracticePage.i(this.f8675a, (FpResult) obj);
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.lifecycle.a0<cn.mucang.android.jiakaoyi.engine.i.f.a> f8546h = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.v
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            FirstPracticePage.B(this.f8664a, (a) obj);
        }
    };
    private final androidx.lifecycle.a0<SubStepEvent> i = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.y
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            FirstPracticePage.C(this.f8673a, (SubStepEvent) obj);
        }
    };

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\t\u001a\u00020\nH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$ReportRunnable;", "Ljava/lang/Runnable;", "tip", "", "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;Ljava/lang/String;)V", "getTip", "()Ljava/lang/String;", "setTip", "(Ljava/lang/String;)V", "run", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f8547a;
        final /* synthetic */ FirstPracticePage b;

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.FirstPracticePage$a$a, reason: collision with other inner class name */
        @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$ReportRunnable$run$1", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "onIntercept", "", "onSpeakEnd", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        public static final class C0145a implements TtsListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ FirstPracticePage f8548a;
            final /* synthetic */ a b;

            C0145a(FirstPracticePage firstPracticePage, a aVar) {
                this.f8548a = firstPracticePage;
                this.b = aVar;
            }

            @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
            public void onIntercept() {
                if (this.f8548a.f8542d || !this.f8548a.f8543e) {
                    return;
                }
                VideoPlayDialog videoPlayDialog = this.f8548a.f8544f;
                boolean z = false;
                if (videoPlayDialog != null && videoPlayDialog.isShowing()) {
                    z = true;
                }
                if (z) {
                    return;
                }
                u.e(this.b);
                u.d(this.b, this.f8548a.j());
            }

            @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
            public void onSpeakBegin() {
                TtsListener.a.c(this);
            }

            @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
            public void onSpeakEnd() {
                if (this.f8548a.f8542d || !this.f8548a.f8543e) {
                    return;
                }
                VideoPlayDialog videoPlayDialog = this.f8548a.f8544f;
                boolean z = false;
                if (videoPlayDialog != null && videoPlayDialog.isShowing()) {
                    z = true;
                }
                if (z) {
                    return;
                }
                u.e(this.b);
                u.d(this.b, this.f8548a.j());
            }

            @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
            public void onSpeakPaused() {
                TtsListener.a.e(this);
            }

            @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
            public void onSpeakResumed() {
                TtsListener.a.g(this);
            }
        }

        public a(FirstPracticePage this$0, String tip) {
            r.e(this$0, "this$0");
            r.e(tip, "tip");
            this.b = this$0;
            this.f8547a = tip;
        }

        @Override // java.lang.Runnable
        public void run() {
            TtsManager.u(this.f8547a, TtsGrade.GlobalTip, new C0145a(this.b, this));
            cn.mucang.jiakaoyi.uilib.socket.u.w(RecordEvent.FpReport.getCode());
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8549a;

        static {
            int[] iArr = new int[FirstPracticeStep.values().length];
            iArr[FirstPracticeStep.DaoKu_Left.ordinal()] = 1;
            iArr[FirstPracticeStep.DaoKu_Right.ordinal()] = 2;
            iArr[FirstPracticeStep.DaoKu_Line.ordinal()] = 3;
            f8549a = iArr;
        }
    }

    public FirstPracticePage() {
        String strA = k0.a(R.string.teachbase_drive_car_daoku);
        r.d(strA, "getString(R.string.teachbase_drive_car_daoku)");
        this.j = new a(this, strA);
    }

    private final void A(final FirstPracticeStep firstPracticeStep) {
        if (cn.mucang.android.jiakaoyi.teachingk2.v0.e.a.b() || UserLevelManager.f7249a.m(TutorialLevel.FirstPractice.getServerCode(), firstPracticeStep.subCode, firstPracticeStep.desc).getNotTrained()) {
            u(firstPracticeStep, false, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.FirstPracticePage$startPractice$1
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
                    this.this$0.x(firstPracticeStep);
                }
            });
        } else {
            x(firstPracticeStep);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(FirstPracticePage this$0, cn.mucang.android.jiakaoyi.engine.i.f.a aVar) {
        r.e(this$0, "this$0");
        if (aVar.b) {
            cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().b();
        } else if (aVar.f3095a) {
            this$0.f8542d = false;
            u.e(this$0.j);
            u.d(this$0.j, this$0.j());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(FirstPracticePage this$0, SubStepEvent subStepEvent) {
        r.e(this$0, "this$0");
        if (subStepEvent.getStep() == Step.K2_DaoCheRuKu) {
            String strMatchSubStep = cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().f().matchSubStep(subStepEvent.getSubStep());
            if (n0.g(strMatchSubStep)) {
                FirstTrainStepModel firstTrainStepModel = new FirstTrainStepModel();
                firstTrainStepModel.stateName = strMatchSubStep;
                d.e(firstTrainStepModel);
                this$0.f8542d = true;
                u.e(this$0.j);
                cn.mucang.jiakaoyi.uilib.socket.u.w(RecordEvent.FpInBoundary.getCode());
            }
        }
    }

    private final void D(final UserLevelData userLevelData) {
        if (cn.mucang.android.jiakaoyi.teachingk2.v0.e.a.b()) {
            return;
        }
        final String jSONString = JSON.toJSONString(userLevelData);
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.u
            @Override // java.lang.Runnable
            public final void run() {
                FirstPracticePage.E(jSONString, userLevelData);
            }
        });
        cn.mucang.jiakaoyi.uilib.socket.u.x(RecordEvent.FpResult.getCode(), jSONString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(String str, UserLevelData course) {
        Object objM139constructorimpl;
        r.e(course, "$course");
        try {
            Result.Companion companion = Result.INSTANCE;
            f.o(r.m("首训上报数据:", str));
            objM139constructorimpl = Result.m139constructorimpl(Boolean.valueOf(new UserRecordApi().s(course)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            f.o(r.m("上传首训课程数据失败:", thM142exceptionOrNullimpl.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(FirstPracticePage this$0, FpResult it) {
        r.e(this$0, "this$0");
        r.d(it, "it");
        this$0.l(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long j() {
        if (!this.f8541a) {
            return SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US;
        }
        this.f8541a = false;
        return DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String k(FirstPracticeStep firstPracticeStep) {
        int i = b.f8549a[firstPracticeStep.ordinal()];
        if (i == 1) {
            return VideoGuideManager.f8723a.d(315);
        }
        if (i != 2) {
            return i != 3 ? "" : VideoGuideManager.f8723a.d(313);
        }
        return VideoGuideManager.f8723a.d(314);
    }

    private final void l(final FpResult fpResult) {
        FirstTrainCountModel firstTrainCountModel = new FirstTrainCountModel();
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_pass_num_unpass_num);
        r.d(strA, "getString(R.string.teachbase_pass_num_unpass_num)");
        String str = String.format(strA, Arrays.copyOf(new Object[]{Integer.valueOf(fpResult.totalRound - fpResult.errorRound), Integer.valueOf(fpResult.errorRound)}, 2));
        r.d(str, "java.lang.String.format(format, *args)");
        firstTrainCountModel.content = str;
        d.e(firstTrainCountModel);
        Activity activityI = MucangConfig.i();
        if (activityI == null || activityI.isFinishing() || activityI.isDestroyed() || !fpResult.isFinish()) {
            return;
        }
        UserLevelData course = fpResult.mapToServerData();
        f.o(r.m("首训完成一次考核:", JSON.toJSONString(fpResult)));
        this.b.s();
        this.f8542d = false;
        if (fpResult.isPass()) {
            r.d(course, "course");
            UserLevelManager.D(course);
        } else {
            String strA2 = k0.a(R.string.teachbase_train_fail_tips);
            r.d(strA2, "getString(R.string.teachbase_train_fail_tips)");
            FirstPracticeStep firstPracticeStep = fpResult.step;
            String str2 = String.format(strA2, Arrays.copyOf(new Object[]{firstPracticeStep.desc, Integer.valueOf(firstPracticeStep.totalCount), Integer.valueOf(fpResult.step.passCount)}, 3));
            r.d(str2, "java.lang.String.format(format, *args)");
            TtsManager.r(str2, TtsGrade.GlobalTip);
            String strCreateFailedDesc = fpResult.createFailedDesc();
            r.d(strCreateFailedDesc, "it.createFailedDesc()");
            new FpFailedDialog(activityI, strCreateFailedDesc, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.FirstPracticePage$handleFpResult$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    f.o("首训" + ((Object) fpResult.step.desc) + "考核失败，点击重新考核");
                    FirstPracticePage firstPracticePage = this;
                    FirstPracticeStep firstPracticeStep2 = fpResult.step;
                    r.d(firstPracticeStep2, "it.step");
                    firstPracticePage.x(firstPracticeStep2);
                    cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().b();
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }
            }, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.FirstPracticePage$handleFpResult$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    FirstPracticePage firstPracticePage = this.this$0;
                    FirstPracticeStep firstPracticeStep2 = fpResult.step;
                    r.d(firstPracticeStep2, "it.step");
                    if (!TextUtils.isEmpty(firstPracticePage.k(firstPracticeStep2))) {
                        FirstPracticePage firstPracticePage2 = this.this$0;
                        FirstPracticeStep firstPracticeStep3 = fpResult.step;
                        r.d(firstPracticeStep3, "it.step");
                        FirstPracticePage.v(firstPracticePage2, firstPracticeStep3, true, null, 4, null);
                        return;
                    }
                    StringCompanionObject stringCompanionObject2 = StringCompanionObject.f14671a;
                    String strA3 = k0.a(R.string.teachbase_no_guide_video);
                    r.d(strA3, "getString(R.string.teachbase_no_guide_video)");
                    String str3 = String.format(strA3, Arrays.copyOf(new Object[]{fpResult.step.desc}, 1));
                    r.d(str3, "java.lang.String.format(format, *args)");
                    u.h(str3);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }
            }).show();
        }
        r.d(course, "course");
        D(course);
    }

    private final void u(FirstPracticeStep firstPracticeStep, boolean z, final Function0<v> function0) {
        String strK = k(firstPracticeStep);
        if (TextUtils.isEmpty(strK)) {
            f.o(r.m(firstPracticeStep.desc, "没有配置指导视频"));
            if (function0 == null) {
                return;
            }
            function0.invoke();
            return;
        }
        Activity activityI = MucangConfig.i();
        String strA = k0.a(R.string.teachbase_close);
        boolean zB = cn.mucang.android.jiakaoyi.teachingk2.v0.e.a.b();
        r.d(activityI, "getCurrentActivity()");
        VideoPlayDialog videoPlayDialog = new VideoPlayDialog(activityI, firstPracticeStep.desc, null, strK, strA, z, !z, zB, 4, null);
        this.f8544f = videoPlayDialog;
        if (videoPlayDialog != null) {
            videoPlayDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.w
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    FirstPracticePage.w(function0, this, dialogInterface);
                }
            });
        }
        VideoPlayDialog videoPlayDialog2 = this.f8544f;
        if (videoPlayDialog2 != null) {
            videoPlayDialog2.show();
        }
        u.e(this.j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void v(FirstPracticePage firstPracticePage, FirstPracticeStep firstPracticeStep, boolean z, Function0 function0, int i, Object obj) {
        if ((i & 4) != 0) {
            function0 = null;
        }
        firstPracticePage.u(firstPracticeStep, z, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(Function0 function0, FirstPracticePage this$0, DialogInterface dialogInterface) {
        r.e(this$0, "this$0");
        if (function0 != null) {
            function0.invoke();
        }
        this$0.f8544f = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x(final FirstPracticeStep firstPracticeStep) {
        this.b.q();
        FirstTrainCountModel firstTrainCountModel = new FirstTrainCountModel();
        firstTrainCountModel.content = k0.a(R.string.teachbase_pass_num_zero);
        d.e(firstTrainCountModel);
        z(firstPracticeStep);
        u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.x
            @Override // java.lang.Runnable
            public final void run() {
                FirstPracticePage.y(firstPracticeStep);
            }
        }, 1000L);
        if (this.f8542d || !this.f8543e) {
            return;
        }
        u.e(this.j);
        u.d(this.j, j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(FirstPracticeStep data) {
        r.e(data, "$data");
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_practicing);
        r.d(strA, "getString(R.string.teachbase_practicing)");
        String str = String.format(strA, Arrays.copyOf(new Object[]{data.desc}, 1));
        r.d(str, "java.lang.String.format(format, *args)");
        TtsManager.r(str, TtsGrade.GlobalTip);
    }

    private final void z(FirstPracticeStep firstPracticeStep) {
        String strA;
        FirstTrainStepModel firstTrainStepModel = new FirstTrainStepModel();
        int i = b.f8549a[firstPracticeStep.ordinal()];
        if (i != 1) {
            strA = i != 2 ? k0.a(R.string.teachingk2_first_test_straight_out) : k0.a(R.string.teachingk2_first_test_right_out);
        } else {
            strA = k0.a(R.string.teachingk2_first_test_left_out);
        }
        firstTrainStepModel.stateName = strA;
        d.e(firstTrainStepModel);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void g() {
        this.f8541a = true;
        this.f8543e = true;
        cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().l(this);
        w.r.setTraceType(25);
        FirstPracticeStep firstPracticeStepF = cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().f();
        r.d(firstPracticeStepF, "get().step");
        A(firstPracticeStepF);
        this.c.n();
        UnityDrawSender.a();
        l0.d(10);
        Tiger.j(this.f8545g, FpResult.class);
        LiveBus.d(cn.mucang.android.jiakaoyi.engine.i.f.a.class).i(this.f8546h);
        LiveBus.d(SubStepEvent.class).i(this.i);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.h.b
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void callback(FirstPracticeStep data) {
        r.e(data, "data");
        A(data);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public /* synthetic */ void n() {
        z.a(this);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void o() {
        cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().l(null);
        cn.mucang.android.jiakaoyi.teachingk2.v0.e.a.a(false, 0);
        this.f8543e = false;
        this.b.s();
        this.c.p();
        cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.d();
        Tiger.l(this.f8545g, FpResult.class);
        LiveBus.d(cn.mucang.android.jiakaoyi.engine.i.f.a.class).m(this.f8546h);
        LiveBus.d(SubStepEvent.class).m(this.i);
        u.e(this.j);
        TtsManager.F();
    }
}
