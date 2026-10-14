package cn.mucang.android.jiakaoyi.teachingk2.humanize.tips;

import androidx.lifecycle.a0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceStepStartEvent;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceStepValidEvent;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.teachingk2.audio.AudioManager;
import cn.mucang.android.jiakaoyi.teachingk2.audio.AudioStatus;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.LoadingCloseModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.TimeTickSignal;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamDataModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamResultModel;
import cn.mucang.android.jiakaoyi.teachingk2.record.RecordEvent;
import cn.mucang.android.jiakaoyi.teachingk2.record.UserRecorder;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.w0.handle.ExamRule;
import cn.mucang.android.jiakaoyi.teachingk2.w0.handle.HomeStayRule;
import cn.mucang.android.jiakaoyi.teachingk2.w0.handle.TrainRule;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.iflytek.cloud.SpeechUtility;
import com.mobile.auth.gatewayauth.Constant;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import com.tencent.tauth.AuthActivity;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.jvm.functions.Function3;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Ý\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b*\u00014\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JU\u00109\u001a\u00020:2K\u0010;\u001aG\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(?\u0012\u0013\u0012\u001101¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(@\u0012\u0013\u0012\u001101¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(A\u0012\u0004\u0012\u00020:0<H\u0002J\b\u0010B\u001a\u00020:H\u0002J\u000e\u0010C\u001a\u00020:2\u0006\u0010D\u001a\u00020EJ\u000e\u0010F\u001a\u00020:2\u0006\u0010G\u001a\u00020!J\u000e\u0010H\u001a\u00020:2\u0006\u0010I\u001a\u00020!J\u0010\u0010J\u001a\u00020:2\u0006\u0010K\u001a\u00020LH\u0002J\u001a\u0010M\u001a\u00020:2\u0012\u0010N\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020!0OJ\u0010\u0010P\u001a\u00020:2\u0006\u0010K\u001a\u00020LH\u0002J\u0010\u0010Q\u001a\u00020:2\u0006\u0010R\u001a\u00020\u0004H\u0002J\u0006\u0010S\u001a\u00020:J\u0010\u0010T\u001a\u00020:2\u0006\u0010K\u001a\u00020LH\u0002J\u0016\u0010U\u001a\u00020:2\u0006\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020\u001cJ\u0016\u0010Y\u001a\u00020:2\u0006\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020\u001cJ\u0010\u0010Z\u001a\u00020:2\u0006\u0010[\u001a\u00020)H\u0002J\u000e\u0010\\\u001a\u00020:2\u0006\u0010]\u001a\u00020!J\u0006\u0010^\u001a\u00020:J\u000e\u0010_\u001a\u00020:2\u0006\u0010`\u001a\u00020\u0004J\u0018\u0010a\u001a\u00020:2\u0006\u0010`\u001a\u00020\u00042\u0006\u0010b\u001a\u00020\u001cH\u0002J\u000e\u0010c\u001a\u00020:2\u0006\u0010`\u001a\u00020\u0004J\b\u0010d\u001a\u00020:H\u0002J\u0018\u0010e\u001a\u00020:2\u0006\u0010f\u001a\u00020$2\u0006\u0010g\u001a\u00020\u000bH\u0002J8\u0010h\u001a\u00020:2\u0006\u0010i\u001a\u00020j2\b\b\u0002\u0010k\u001a\u00020\u001c2\b\b\u0002\u0010l\u001a\u00020\u001c2\b\b\u0002\u0010m\u001a\u00020\u001c2\b\b\u0002\u0010n\u001a\u00020oH\u0002J<\u0010p\u001a\u00020:2\b\u0010q\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010r\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010n\u001a\u00020o2\u0006\u0010s\u001a\u00020!2\n\b\u0002\u0010t\u001a\u0004\u0018\u00010uH\u0007J\u0006\u0010v\u001a\u00020:J\u0006\u0010w\u001a\u00020:J\u0006\u0010x\u001a\u00020:J\u0006\u0010y\u001a\u00020:J\u0006\u0010z\u001a\u00020:J\u0006\u0010{\u001a\u00020:J\u000e\u0010|\u001a\u00020:2\u0006\u0010X\u001a\u00020\u001cJ\u000e\u0010}\u001a\u00020:2\u0006\u0010X\u001a\u00020\u001cJ\u000e\u0010~\u001a\u00020:2\u0006\u0010\u007f\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010(\u001a\b\u0012\u0004\u0012\u00020)0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u000101X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u000101X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00103\u001a\u000204X\u0082\u0004¢\u0006\u0004\n\u0002\u00105R\u0010\u00106\u001a\u0004\u0018\u000107X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00108\u001a\u0004\u0018\u000107X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0080\u0001"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;", "", "()V", "PREF_NAME", "", "arguments", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;", "audioStatusObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioStatus;", "baseFellStartTime", "", "callback", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "currentPage", "debounceTime", "examDataObserver", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDataModel;", "examResultObserver", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamResultModel;", "examRule", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/handle/ExamRule;", "examRuleK3", "hasSpeedTime", "homeStayRule", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/handle/HomeStayRule;", "homeStayRuleK3", "isStop", "", "lastEngineState", "Ljava/lang/Boolean;", "lastRuleCode", "lastSpeed", "", "lastSpeedTime", "login20MinTask", "Ljava/lang/Runnable;", "login40MinTask", "login60MinTask", "startExamTip", "stepValidObserver", "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepValidEvent;", "timerJob", "Lkotlinx/coroutines/Job;", "tipSpeaker", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker;", "tipsScope", "Lkotlinx/coroutines/CoroutineScope;", "tipsValue", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;", "tipsValueK3", "tiredTipTask", "cn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips$tiredTipTask$1", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips$tiredTipTask$1;", "trainRule", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/handle/TrainRule;", "trainRuleK3", "exeOnStarted", "", AuthActivity.ACTION_KEY, "Lkotlin/Function3;", "Lkotlin/ParameterName;", Constant.PROTOCOL_WEBVIEW_NAME, "arg", "tips", "tipsK3", "guide100100", "handleDeduct", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "handleExamStep", "step", "handleExamType", "type", "handleFlameOn", "car", "Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;", "handleGlobal", SpeechUtility.TAG_RESOURCE_RESULT, "Lkotlin/Pair;", "handleHandBrake", "handleLoginValidTime", "min", "handleShowVoiceInteraction", "handleSpeed", "handleStepInfo", "stepHandler", "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepStartEvent;", "isPass", "handleStepInfoK3", "handleStepValid", "valid", "handleTrainLevel", DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL, "onLoadingClosed", "onPageEnter", "page", "onPageInUse", "inUse", "onPageOut", "onTimerPolling", "runTask", "task", "delay", "speak", "rule", "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;", "whenFinish", "closeAfterSpeak", "showPanel", "grade", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;", "speakExternal", "text", "voiceUrl", "code", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", TtmlNode.START, "startDrive", "startExam", "startExamK3", "stop", "stopDrive", "stopExam", "stopExamK3", "welcome", DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RobotTips {
    private static t1 F = null;
    private static i0 b = null;
    private static volatile TipsArguments c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static TipSpeaker f7185d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile t f7186e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile t f7187f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f7188g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f7189h = -1;
    private static long i = 0;
    private static long j = 0;
    private static TrainRule k = null;
    private static TrainRule l = null;
    private static ExamRule m = null;
    private static ExamRule n = null;
    private static long o = 0;
    private static String p = "";
    private static Boolean q = null;
    private static HomeStayRule r = null;
    private static HomeStayRule s = null;
    private static boolean t = false;
    private static long u = 0;
    private static String v = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RobotTips f7184a = new RobotTips();
    private static final cn.mucang.android.jiakaoyi.signal.c.f.a w = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.f
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            RobotTips.k(eVar);
        }
    };
    private static final a0<AudioStatus> x = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.g
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            RobotTips.j((AudioStatus) obj);
        }
    };
    private static final a0<TraceStepValidEvent> y = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.c
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            RobotTips.f0((TraceStepValidEvent) obj);
        }
    };
    private static final a0<UnityExamDataModel> z = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.a
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            RobotTips.l((UnityExamDataModel) obj);
        }
    };
    private static final a0<UnityExamResultModel> A = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.h
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            RobotTips.m((UnityExamResultModel) obj);
        }
    };
    private static final a B = new a();
    private static final Runnable C = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.b
        @Override // java.lang.Runnable
        public final void run() {
            RobotTips.M();
        }
    };
    private static final Runnable D = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.e
        @Override // java.lang.Runnable
        public final void run() {
            RobotTips.N();
        }
    };
    private static final Runnable E = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.d
        @Override // java.lang.Runnable
        public final void run() {
            RobotTips.O();
        }
    };

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips$tiredTipTask$1", "Ljava/lang/Runnable;", "run", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements Runnable {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            TipsArguments tipsArguments = RobotTips.c;
            if (tipsArguments == null) {
                return;
            }
            TipsRule tipsRule = cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0.f6363a == KeMu.K2 ? TipsRule.ATTEND_400104 : TipsRule.ATTEND_430104;
            TimeTickSignal timeTickSignal = (TimeTickSignal) LiveBus.d(TimeTickSignal.class).e();
            long j = timeTickSignal == null ? 0L : timeTickSignal.time;
            if (tipsArguments.triggerBefore(tipsRule.getRuleCode()) || j < tipsArguments.getParamTimeMs(tipsRule.getRuleCode(), 3600000L)) {
                RobotTips.f7184a.U(this, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
            } else {
                RobotTips.W(RobotTips.f7184a, tipsRule, false, false, false, null, 30, null);
                tipsArguments.updateBeforeTimes(tipsRule.getRuleCode());
            }
        }
    }

    private RobotTips() {
    }

    private final void A(TraceStepValidEvent traceStepValidEvent) {
        TrainRule trainRule = k;
        if (trainRule == null) {
            return;
        }
        trainRule.d(traceStepValidEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M() {
        f7184a.v("20");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N() {
        f7184a.v("40");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O() {
        f7184a.v("60");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R(String str, boolean z2) {
        t tVar = f7186e;
        if (tVar == null) {
            return;
        }
        Map<String, Boolean> map = tVar.p;
        kotlin.jvm.internal.r.d(map, "tipsValue.pageInUse");
        map.put(str, Boolean.valueOf(z2));
        Map<String, Long> map2 = tVar.o;
        kotlin.jvm.internal.r.d(map2, "tipsValue.pageActionTime");
        map2.put(str, Long.valueOf(System.currentTimeMillis()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void T() {
        TipsArguments tipsArguments;
        t tVar = f7186e;
        if (tVar == null || (tipsArguments = c) == null) {
            return;
        }
        if (kotlin.jvm.internal.r.a(p, "ExamPanel")) {
            TipsRule tipsRule = TipsRule.GUIDE_100108;
            long paramTimeMs = tipsArguments.getParamTimeMs(tipsRule.getRuleCode(), 30000L);
            Long l2 = tVar.o.get("ExamPanel");
            long jLongValue = l2 == null ? 0L : l2.longValue();
            if (jLongValue > 0 && System.currentTimeMillis() - jLongValue > paramTimeMs && !kotlin.jvm.internal.r.a(tVar.p.get("ExamPanel"), Boolean.TRUE) && AudioManager.s() == 0 && !t) {
                t = true;
                W(this, tipsRule, false, false, false, null, 26, null);
            }
        }
        Map<String, Long> map = tVar.o;
        TipsRule tipsRule2 = TipsRule.GUIDE_100109;
        Long l3 = map.get(tipsRule2.getRuleCode());
        long jLongValue2 = l3 == null ? 0L : l3.longValue();
        long paramTimeMs2 = tipsArguments.getParamTimeMs(tipsRule2.getRuleCode(), 1800000L);
        TimeTickSignal timeTickSignal = (TimeTickSignal) LiveBus.d(TimeTickSignal.class).e();
        int i2 = timeTickSignal == null ? 0 : timeTickSignal.time;
        if (cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0.f6363a == KeMu.K2 && jLongValue2 == 0 && i2 > paramTimeMs2) {
            w();
            W(this, tipsRule2, false, false, false, null, 26, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(Runnable runnable, long j2) {
        u.e(runnable);
        u.d(runnable, j2);
    }

    private final void V(TipsRule tipsRule, boolean z2, boolean z3, boolean z4, TtsGrade ttsGrade) {
        TipSpeaker tipSpeaker = f7185d;
        if (tipSpeaker == null) {
            return;
        }
        tipSpeaker.d(tipsRule, null, z2, z3, z4, ttsGrade);
    }

    static /* synthetic */ void W(RobotTips robotTips, TipsRule tipsRule, boolean z2, boolean z3, boolean z4, TtsGrade ttsGrade, int i2, Object obj) {
        boolean z5 = (i2 & 2) != 0 ? false : z2;
        boolean z6 = (i2 & 4) != 0 ? true : z3;
        boolean z7 = (i2 & 8) != 0 ? true : z4;
        if ((i2 & 16) != 0) {
            ttsGrade = TtsGrade.ActiveRemember;
        }
        robotTips.V(tipsRule, z5, z6, z7, ttsGrade);
    }

    public static final void X(String str, String str2, TtsGrade grade, int i2, TtsListener ttsListener) {
        kotlin.jvm.internal.r.e(grade, "grade");
        TipSpeaker tipSpeaker = f7185d;
        if (tipSpeaker == null) {
            return;
        }
        tipSpeaker.h(true, str, str2, true, grade, i2, ttsListener);
    }

    public static /* synthetic */ void Y(String str, String str2, TtsGrade ttsGrade, int i2, TtsListener ttsListener, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            str2 = null;
        }
        if ((i3 & 4) != 0) {
            ttsGrade = TtsGrade.ActiveRemember;
        }
        if ((i3 & 16) != 0) {
            ttsListener = null;
        }
        X(str, str2, ttsGrade, i2, ttsListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a0(final RobotTips this$0) {
        Object objM139constructorimpl;
        Object objM139constructorimpl2;
        Object objM139constructorimpl3;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        final TipsArguments tipsArguments = new TipsArguments();
        final t tVar = new t();
        final t tVar2 = new t();
        try {
            Result.Companion companion = Result.INSTANCE;
            TipsParser.f7214a.f(tipsArguments);
            objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            thM142exceptionOrNullimpl.printStackTrace();
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            TipsParser.f7214a.g(tVar, KeMu.K2);
            objM139constructorimpl2 = Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            objM139constructorimpl2 = Result.m139constructorimpl(kotlin.k.a(th2));
        }
        Throwable thM142exceptionOrNullimpl2 = Result.m142exceptionOrNullimpl(objM139constructorimpl2);
        if (thM142exceptionOrNullimpl2 != null) {
            thM142exceptionOrNullimpl2.printStackTrace();
        }
        try {
            Result.Companion companion5 = Result.INSTANCE;
            TipsParser.f7214a.g(tVar2, KeMu.K3);
            objM139constructorimpl3 = Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th3) {
            Result.Companion companion6 = Result.INSTANCE;
            objM139constructorimpl3 = Result.m139constructorimpl(kotlin.k.a(th3));
        }
        Throwable thM142exceptionOrNullimpl3 = Result.m142exceptionOrNullimpl(objM139constructorimpl3);
        if (thM142exceptionOrNullimpl3 != null) {
            thM142exceptionOrNullimpl3.printStackTrace();
        }
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.i
            @Override // java.lang.Runnable
            public final void run() {
                RobotTips.b0(this.f7198a, tipsArguments, tVar, tVar2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(RobotTips this$0, TipsArguments arguments, t tipsValue, t tipsValueK3) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(arguments, "$arguments");
        kotlin.jvm.internal.r.e(tipsValue, "$tipsValue");
        kotlin.jvm.internal.r.e(tipsValueK3, "$tipsValueK3");
        if (f7188g) {
            return;
        }
        c = arguments;
        f7186e = tipsValue;
        f7187f = tipsValueK3;
        RobotTips robotTips = f7184a;
        f7185d = new TipSpeaker(arguments);
        KeMu keMu = KeMu.K2;
        k = new TrainRule(keMu, f7185d, tipsValue, arguments);
        m = new ExamRule(keMu, f7185d, tipsValue, arguments);
        KeMu keMu2 = KeMu.K3;
        l = new TrainRule(keMu2, f7185d, tipsValueK3, arguments);
        n = new ExamRule(keMu2, f7185d, tipsValueK3, arguments);
        r = new HomeStayRule(true, f7185d, tipsValue, arguments);
        s = new HomeStayRule(false, f7185d, tipsValueK3, arguments);
        robotTips.U(C, 1200000L);
        robotTips.U(D, 2400000L);
        robotTips.U(E, 3600000L);
        robotTips.U(B, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(w);
        LiveBus.d(AudioStatus.class).i(x);
        LiveBus.d(TraceStepValidEvent.class).i(y);
        LiveBus.d(UnityExamDataModel.class).i(z);
        LiveBus.d(UnityExamResultModel.class).i(A);
        t1 t1Var = F;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        F = kotlinx.coroutines.g.b(j0.a(w0.c()), null, null, new RobotTips$start$1$7$1(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(TraceStepValidEvent it) {
        RobotTips robotTips = f7184a;
        kotlin.jvm.internal.r.d(it, "it");
        robotTips.A(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(AudioStatus audioStatus) {
        if (audioStatus.getF6175a() == 0) {
            f7184a.R("ExamPanel", false);
        } else {
            f7184a.R("ExamPanel", true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(cn.mucang.android.jiakaoyi.signal.c.e signal) {
        kotlin.jvm.internal.r.e(signal, "signal");
        if (c == null || f7186e == null) {
            return;
        }
        CarModel car = signal.d();
        RobotTips robotTips = f7184a;
        kotlin.jvm.internal.r.d(car, "car");
        robotTips.x(car);
        robotTips.s(car);
        robotTips.u(car);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(UnityExamDataModel unityExamDataModel) {
        ExamRule examRule = m;
        if (examRule == null) {
            return;
        }
        examRule.c(unityExamDataModel.stepId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(UnityExamResultModel unityExamResultModel) {
        ExamRule examRule = m;
        if (examRule == null) {
            return;
        }
        examRule.f(unityExamResultModel.isSuccess);
    }

    private final void n(Function3<? super TipsArguments, ? super t, ? super t, v> function3) {
        i0 i0Var = b;
        if (i0Var == null) {
            return;
        }
        kotlinx.coroutines.g.b(i0Var, null, null, new RobotTips$exeOnStarted$1(function3, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o() {
        TipsArguments tipsArguments;
        t tVar = f7186e;
        if (tVar == null || (tipsArguments = c) == null || cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0.f6363a != KeMu.K2) {
            return;
        }
        TipsRule tipsRule = TipsRule.GUIDE_100100;
        if (!tipsArguments.triggerBefore(tipsRule.getRuleCode()) && tVar.f7216d == 0 && LoadingCloseModel.isUnityLoaded) {
            W(this, tipsRule, false, false, false, null, 30, null);
            tipsArguments.updateBeforeTimes(tipsRule.getRuleCode());
        }
    }

    private final void s(CarModel carModel) {
        TipsArguments tipsArguments;
        t tVar = f7186e;
        if (tVar == null || (tipsArguments = c) == null) {
            return;
        }
        Gear gear = carModel.m;
        if (gear != Gear.GearP && gear != Gear.GearN && kotlin.jvm.internal.r.a(q, Boolean.FALSE) && carModel.f() && !kotlin.jvm.internal.r.a(p, "ExamPanel") && !kotlin.jvm.internal.r.a(p, "MapPanel") && !kotlin.jvm.internal.r.a(p, "K3ExamPanel")) {
            HashMap<Integer, Integer> map = tVar.n;
            TipsRule tipsRule = TipsRule.ATTEND_400107;
            Integer num = map.get(Integer.valueOf(Integer.parseInt(tipsRule.getRuleCode())));
            if (num == null) {
                num = 0;
            }
            int iIntValue = num.intValue();
            HashMap<Integer, Integer> map2 = tVar.n;
            kotlin.jvm.internal.r.d(map2, "tipsValue.globalCheck");
            int i2 = iIntValue + 1;
            map2.put(Integer.valueOf(Integer.parseInt(tipsRule.getRuleCode())), Integer.valueOf(i2));
            if (i2 % tipsArguments.getParamCount(tipsRule.getRuleCode(), 1) == 0) {
                W(this, tipsRule, false, false, false, null, 30, null);
            }
        }
        q = Boolean.valueOf(carModel.f());
    }

    private final void u(CarModel carModel) {
        TipsArguments tipsArguments;
        t tVar = f7186e;
        if (tVar == null || (tipsArguments = c) == null) {
            return;
        }
        Map<String, Long> map = tVar.o;
        TipsRule tipsRule = TipsRule.ATTEND_400108;
        Long l2 = map.get(tipsRule.getRuleCode());
        long jLongValue = l2 == null ? 0L : l2.longValue();
        if (!carModel.b() || carModel.f5268f || System.currentTimeMillis() - jLongValue <= tipsArguments.getParamTimeMs(tipsRule.getRuleCode(), 10000L)) {
            return;
        }
        Map<String, Long> map2 = tVar.o;
        kotlin.jvm.internal.r.d(map2, "tipsValue.pageActionTime");
        map2.put(tipsRule.getRuleCode(), Long.valueOf(System.currentTimeMillis()));
        W(this, tipsRule, false, false, false, null, 30, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void v(String str) {
        TipsRule tipsRule;
        t tVar;
        TipsArguments tipsArguments = c;
        if (tipsArguments == null) {
            return;
        }
        if (cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0.f6363a == KeMu.K2) {
            tipsRule = TipsRule.ATTEND_400106;
            tVar = f7186e;
        } else {
            tipsRule = TipsRule.ATTEND_430106;
            tVar = f7187f;
        }
        TipsRule tipsRule2 = tipsRule;
        if (tVar == null) {
            return;
        }
        long j2 = tVar.m + tVar.f7218f + tVar.j;
        TimeTickSignal timeTickSignal = (TimeTickSignal) LiveBus.d(TimeTickSignal.class).e();
        if (j2 / ((long) (timeTickSignal != null ? kotlin.ranges.f.b(timeTickSignal.time, 1) : 1)) < tipsArguments.getParamRate(tipsRule2.getRuleCode(), 0.6f)) {
            W(this, tipsRule2, false, false, false, null, 30, null);
        }
    }

    private final void x(CarModel carModel) {
        TipsArguments tipsArguments;
        t tVar = f7186e;
        if (tVar == null || (tipsArguments = c) == null) {
            return;
        }
        if (carModel.b()) {
            j = System.currentTimeMillis();
        } else if (kotlin.jvm.internal.r.a(p, "ExamPanel") || kotlin.jvm.internal.r.a(p, "TrainPanel")) {
            long j2 = j;
            Long l2 = tVar.o.get(p);
            j = kotlin.ranges.f.c(j2, l2 == null ? 0L : l2.longValue());
            TipsRule tipsRule = TipsRule.ATTEND_400105;
            if (System.currentTimeMillis() - j > tipsArguments.getParamTimeMs(tipsRule.getRuleCode(), 600000L)) {
                UserRecorder.g(RecordEvent.LongTimeNoAction.getCode());
                j = System.currentTimeMillis();
                W(this, tipsRule, false, false, false, null, 30, null);
            }
        } else if (kotlin.jvm.internal.r.a(p, "K3ExamPanel") || kotlin.jvm.internal.r.a(p, "K3TrainPanel")) {
            long j3 = j;
            Long l3 = tVar.o.get(p);
            j = kotlin.ranges.f.c(j3, l3 == null ? 0L : l3.longValue());
            TipsRule tipsRule2 = TipsRule.ATTEND_430105;
            if (System.currentTimeMillis() - j > tipsArguments.getParamTimeMs(tipsRule2.getRuleCode(), 600000L)) {
                W(this, tipsRule2, false, false, false, null, 30, null);
                j = System.currentTimeMillis();
            }
        }
        int i2 = (int) carModel.b;
        if (i == 0) {
            f7189h = i2;
            i = System.currentTimeMillis();
        }
        if (System.currentTimeMillis() - i > 1000) {
            if (Math.abs(i2 - f7189h) > 5) {
                if (BrakeGlobalMonitor.a().getReason() == BrakeReason.None) {
                    tVar.c++;
                }
                TipsRule tipsRule3 = TipsRule.ATTEND_400103;
                if (tipsArguments.containNoticeMessage(tipsRule3.getRuleCode(), TtsManager.f()) || tipsArguments.containNoticeMessage(tipsRule3.getRuleCode(), TtsManager.g(2))) {
                    return;
                }
                if (cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0.f6363a == KeMu.K2 && tVar.c % tipsArguments.getParamCount(tipsRule3.getRuleCode(), 1) == 0) {
                    W(this, tipsRule3, false, false, false, null, 30, null);
                }
            }
            f7189h = i2;
            i = System.currentTimeMillis();
        }
    }

    public final void B(int i2) {
        TipsRule tipsRule;
        if (cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0.f6363a != KeMu.K2) {
            return;
        }
        if (i2 == 10) {
            tipsRule = TipsRule.FEATURE_500100;
        } else if (i2 != 20) {
            tipsRule = i2 != 30 ? TipsRule.FEATURE_500100 : TipsRule.FEATURE_500102;
        } else {
            tipsRule = TipsRule.FEATURE_500101;
        }
        W(this, tipsRule, false, false, false, null, 30, null);
    }

    public final void P() {
        o();
    }

    public final void Q(final String page) {
        kotlin.jvm.internal.r.e(page, "page");
        p = page;
        n(new Function3<TipsArguments, t, t, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips$onPageEnter$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ v invoke(TipsArguments tipsArguments, t tVar, t tVar2) {
                invoke2(tipsArguments, tVar, tVar2);
                return v.f15822a;
            }

            /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(TipsArguments arguments, t tipsValue, t tipsValueK3) {
                kotlin.jvm.internal.r.e(arguments, "arguments");
                kotlin.jvm.internal.r.e(tipsValue, "tipsValue");
                kotlin.jvm.internal.r.e(tipsValueK3, "tipsValueK3");
                RobotTips robotTips = RobotTips.f7184a;
                robotTips.R(page, false);
                if (kotlin.jvm.internal.r.a(page, "MainPanel")) {
                    HomeStayRule homeStayRule = RobotTips.r;
                    if (homeStayRule != null) {
                        homeStayRule.c();
                    }
                } else {
                    HomeStayRule homeStayRule2 = RobotTips.r;
                    if (homeStayRule2 != null) {
                        homeStayRule2.d();
                    }
                }
                if (kotlin.jvm.internal.r.a(page, "K3MainPanel")) {
                    HomeStayRule homeStayRule3 = RobotTips.s;
                    if (homeStayRule3 != null) {
                        homeStayRule3.c();
                    }
                } else {
                    HomeStayRule homeStayRule4 = RobotTips.s;
                    if (homeStayRule4 != null) {
                        homeStayRule4.d();
                    }
                }
                String str = page;
                switch (str.hashCode()) {
                    case -2106476151:
                        if (str.equals("K3ReadyPanel")) {
                            TipsRule tipsRule = TipsRule.GUIDE_130101;
                            if (!arguments.triggerBefore(tipsRule.getRuleCode())) {
                                RobotTips.W(robotTips, tipsRule, false, false, false, null, 30, null);
                                arguments.updateBeforeTimes(tipsRule.getRuleCode());
                            }
                            break;
                        }
                        break;
                    case -1258794895:
                        if (str.equals("BaseOperatePanel")) {
                            robotTips.c0();
                            TipsRule tipsRule2 = TipsRule.GUIDE_100103;
                            if (!arguments.triggerBefore(tipsRule2.getRuleCode())) {
                                RobotTips.W(robotTips, tipsRule2, false, false, false, null, 30, null);
                                arguments.updateBeforeTimes(tipsRule2.getRuleCode());
                            }
                            break;
                        }
                        break;
                    case -1150114627:
                        if (str.equals("K3ExamPanel")) {
                            TipsRule tipsRule3 = TipsRule.GUIDE_130104;
                            if (!arguments.triggerBefore(tipsRule3.getRuleCode()) && tipsValueK3.j <= 0) {
                                RobotTips.W(robotTips, tipsRule3, false, false, false, null, 30, null);
                                arguments.updateBeforeTimes(tipsRule3.getRuleCode());
                                break;
                            }
                        }
                        break;
                    case -398976956:
                        if (str.equals("K3TrainPanel")) {
                            TipsRule tipsRule4 = TipsRule.GUIDE_130103;
                            if (!arguments.triggerBefore(tipsRule4.getRuleCode()) && tipsValueK3.f7218f <= 0) {
                                RobotTips.W(robotTips, tipsRule4, false, false, false, null, 30, null);
                                arguments.updateBeforeTimes(tipsRule4.getRuleCode());
                                break;
                            }
                        }
                        break;
                    case -40040196:
                        if (str.equals("TrainPanel")) {
                            TipsRule tipsRule5 = TipsRule.GUIDE_100101;
                            if (!arguments.triggerBefore(tipsRule5.getRuleCode()) && tipsValue.f7218f <= 0) {
                                RobotTips.W(robotTips, tipsRule5, false, false, false, null, 30, null);
                                arguments.updateBeforeTimes(tipsRule5.getRuleCode());
                                break;
                            }
                        }
                        break;
                    case 361199209:
                        if (str.equals("VideoPanel")) {
                            TipsRule tipsRule6 = TipsRule.GUIDE_100102;
                            if (!arguments.triggerBefore(tipsRule6.getRuleCode())) {
                                RobotTips.W(robotTips, tipsRule6, false, false, false, null, 30, null);
                                arguments.updateBeforeTimes(tipsRule6.getRuleCode());
                            }
                            break;
                        }
                        break;
                    case 1738530731:
                        if (str.equals("MainPanel")) {
                            robotTips.o();
                            break;
                        }
                        break;
                    case 1863274538:
                        if (str.equals("K3LightTrainPanel")) {
                            TipsRule tipsRule7 = TipsRule.GUIDE_130102;
                            if (!arguments.triggerBefore(tipsRule7.getRuleCode())) {
                                RobotTips.W(robotTips, tipsRule7, false, false, false, null, 30, null);
                                arguments.updateBeforeTimes(tipsRule7.getRuleCode());
                            }
                            break;
                        }
                        break;
                    case 1909505285:
                        if (str.equals("ExamPanel")) {
                            TipsRule tipsRule8 = TipsRule.GUIDE_100104;
                            if (!arguments.triggerBefore(tipsRule8.getRuleCode()) && tipsValue.j <= 0) {
                                RobotTips.W(robotTips, tipsRule8, false, false, false, null, 30, null);
                                arguments.updateBeforeTimes(tipsRule8.getRuleCode());
                                break;
                            }
                        }
                        break;
                }
            }
        });
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void S(String page) {
        HomeStayRule homeStayRule;
        t tVar;
        TipsArguments tipsArguments;
        t tVar2;
        TipsArguments tipsArguments2;
        HomeStayRule homeStayRule2;
        kotlin.jvm.internal.r.e(page, "page");
        R(page, false);
        switch (page.hashCode()) {
            case -1321089181:
                if (page.equals("K3MainPanel") && (homeStayRule = s) != null) {
                    homeStayRule.d();
                }
                break;
            case -1258794895:
                if (page.equals("BaseOperatePanel")) {
                    h0();
                    break;
                }
                break;
            case -398976956:
                if (page.equals("K3TrainPanel") && (tVar = f7187f) != null && (tipsArguments = c) != null) {
                    TipsRule tipsRule = TipsRule.ACHIEVE_230100;
                    if (!tipsArguments.triggerBefore(tipsRule.getRuleCode()) && tVar.f7218f > tipsArguments.getParamTimeMs(tipsRule.getRuleCode(), DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS)) {
                        W(this, tipsRule, false, false, false, null, 30, null);
                        tipsArguments.updateBeforeTimes(tipsRule.getRuleCode());
                        break;
                    }
                }
                break;
            case -40040196:
                if (page.equals("TrainPanel") && (tVar2 = f7186e) != null && (tipsArguments2 = c) != null) {
                    TipsRule tipsRule2 = TipsRule.ACHIEVE_200100;
                    if (!tipsArguments2.triggerBefore(tipsRule2.getRuleCode()) && tVar2.f7218f > tipsArguments2.getParamTimeMs(tipsRule2.getRuleCode(), DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS)) {
                        W(this, tipsRule2, false, false, false, null, 30, null);
                        tipsArguments2.updateBeforeTimes(tipsRule2.getRuleCode());
                        break;
                    }
                }
                break;
            case 1738530731:
                if (page.equals("MainPanel") && (homeStayRule2 = r) != null) {
                    homeStayRule2.d();
                }
                break;
        }
    }

    public final void Z() {
        f7188g = false;
        t = false;
        b = j0.b();
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.j
            @Override // java.lang.Runnable
            public final void run() {
                RobotTips.a0(this.f7200a);
            }
        });
    }

    public final void c0() {
        o = System.currentTimeMillis();
    }

    public final void d0() {
        R("ExamPanel", true);
        ExamRule examRule = m;
        if (examRule == null) {
            return;
        }
        examRule.e();
    }

    public final void e0() {
        R("K3ExamPanel", true);
        ExamRule examRule = n;
        if (examRule == null) {
            return;
        }
        examRule.e();
    }

    public final void g0() {
        f7188g = true;
        i0 i0Var = b;
        if (i0Var != null) {
            j0.d(i0Var, null, 1, null);
        }
        b = null;
        c = null;
        f7186e = null;
        HomeStayRule homeStayRule = r;
        if (homeStayRule != null) {
            homeStayRule.f();
        }
        HomeStayRule homeStayRule2 = s;
        if (homeStayRule2 != null) {
            homeStayRule2.f();
        }
        u.e(C);
        u.e(D);
        u.e(E);
        u.e(B);
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(w);
        LiveBus.d(AudioStatus.class).m(x);
        LiveBus.d(TraceStepValidEvent.class).m(y);
        LiveBus.d(UnityExamDataModel.class).m(z);
        LiveBus.d(UnityExamResultModel.class).m(A);
        t1 t1Var = F;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        p = "";
    }

    public final void h0() {
        t tVar = f7186e;
        if (tVar == null) {
            return;
        }
        tVar.m += System.currentTimeMillis() - o;
    }

    public final void i0(boolean z2) {
        R("ExamPanel", false);
        ExamRule examRule = m;
        if (examRule == null) {
            return;
        }
        examRule.f(z2);
    }

    public final void j0(boolean z2) {
        R("K3ExamPanel", false);
        ExamRule examRule = n;
        if (examRule == null) {
            return;
        }
        examRule.f(z2);
    }

    public final void p(cn.mucang.android.jiakaoyi.engine.model.a deduct) {
        kotlin.jvm.internal.r.e(deduct, "deduct");
        TrainRule trainRule = k;
        if (trainRule == null) {
            return;
        }
        trainRule.b(deduct);
    }

    public final void q(int i2) {
        ExamRule examRule = m;
        if (examRule == null) {
            return;
        }
        examRule.c(i2);
    }

    public final void r(int i2) {
        ExamRule examRule = m;
        if (examRule == null) {
            return;
        }
        examRule.d(i2);
    }

    public final void t(Pair<String, Integer> result) {
        TipsArguments tipsArguments;
        kotlin.jvm.internal.r.e(result, "result");
        t tVar = f7186e;
        if (tVar == null || (tipsArguments = c) == null) {
            return;
        }
        Integer num = tVar.n.get(result.getSecond());
        if (num == null) {
            num = 0;
        }
        int iIntValue = num.intValue() + 1;
        HashMap<Integer, Integer> map = tVar.n;
        kotlin.jvm.internal.r.d(map, "tipsValue.globalCheck");
        map.put(result.getSecond(), Integer.valueOf(iIntValue));
        TipsRule tipsRuleA = TipsRule.INSTANCE.a(result.getSecond().intValue());
        if (tipsRuleA == null || tipsArguments.containNoticeMessage(tipsRuleA.getRuleCode(), TtsManager.g(2))) {
            return;
        }
        if (!kotlin.jvm.internal.r.a(v, tipsRuleA.getRuleCode()) || u <= 0 || System.currentTimeMillis() - u >= 1000) {
            RobotTips robotTips = f7184a;
            u = System.currentTimeMillis();
            if (iIntValue <= 0 || iIntValue % tipsArguments.getParamCount(tipsRuleA.getRuleCode(), 3) != 0) {
                return;
            }
            W(robotTips, tipsRuleA, false, false, false, tipsRuleA.getGrade(), 6, null);
        }
    }

    public final void w() {
        t tVar = f7186e;
        if (tVar == null) {
            return;
        }
        Map<String, Long> map = tVar.o;
        kotlin.jvm.internal.r.d(map, "tipsValue.pageActionTime");
        map.put(TipsRule.GUIDE_100109.getRuleCode(), Long.valueOf(System.currentTimeMillis()));
    }

    public final void y(TraceStepStartEvent stepHandler, boolean z2) {
        kotlin.jvm.internal.r.e(stepHandler, "stepHandler");
        TrainRule trainRule = k;
        if (trainRule == null) {
            return;
        }
        trainRule.c(stepHandler, z2);
    }

    public final void z(TraceStepStartEvent stepHandler, boolean z2) {
        kotlin.jvm.internal.r.e(stepHandler, "stepHandler");
        TrainRule trainRule = l;
        if (trainRule != null) {
            trainRule.d(new TraceStepValidEvent(true, stepHandler.getB()));
        }
        TrainRule trainRule2 = l;
        if (trainRule2 == null) {
            return;
        }
        trainRule2.c(stepHandler, z2);
    }
}
