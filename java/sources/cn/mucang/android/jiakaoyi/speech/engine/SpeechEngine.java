package cn.mucang.android.jiakaoyi.speech.engine;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.speech.R;
import cn.mucang.android.jiakaoyi.speech.audio.SpeechRecordThread;
import cn.mucang.android.jiakaoyi.speech.callback.IAsrCallback;
import cn.mucang.android.jiakaoyi.speech.callback.IRecordCallback;
import cn.mucang.android.jiakaoyi.speech.callback.ISemanticCallback;
import cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback;
import cn.mucang.android.jiakaoyi.speech.engine.asr.IAsrEngine;
import cn.mucang.android.jiakaoyi.speech.engine.asr.IflytekAsrEngine;
import cn.mucang.android.jiakaoyi.speech.engine.wakeup.IWakeupEngine;
import cn.mucang.android.jiakaoyi.speech.engine.wakeup.IflytekWakeupEngine;
import cn.mucang.android.jiakaoyi.speech.model.VoicePerformanceModel;
import cn.mucang.android.jiakaoyi.speech.semantic.SemanticApi;
import cn.mucang.android.jiakaoyi.speech.utils.SpeechLogUtils;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.iflytek.cloud.SpeechConstant;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.u;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.random.Random;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\"\n\u0002\b\u0003*\u0004\b\u0017\u001f)\u0018\u0000 j2\u00020\u0001:\u0002jkB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u00100\u001a\u00020\u00062\b\u00101\u001a\u0004\u0018\u00010\u000eH\u0002J\b\u00102\u001a\u000203H\u0002J\b\u00104\u001a\u000203H\u0002J\b\u00105\u001a\u000203H\u0016J\b\u00106\u001a\u000203H\u0016J\b\u00107\u001a\u000203H\u0016J\b\u00108\u001a\u00020\u0014H\u0016J\u0010\u00109\u001a\u00020\u000e2\u0006\u0010:\u001a\u00020\u0014H\u0002J\u0010\u0010;\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020\u0014H\u0002J\b\u0010=\u001a\u000203H\u0016J\b\u0010>\u001a\u000203H\u0002J\u0010\u0010?\u001a\u0002032\u0006\u0010@\u001a\u00020\u0014H\u0002J\u0012\u0010A\u001a\u0002032\b\u00101\u001a\u0004\u0018\u00010\u000eH\u0002J\b\u0010B\u001a\u00020\u0006H\u0016J\u001a\u0010C\u001a\u0002032\u0006\u0010D\u001a\u00020E2\b\u0010F\u001a\u0004\u0018\u00010%H\u0016J\u0012\u0010G\u001a\u0002032\b\u0010:\u001a\u0004\u0018\u00010HH\u0016J\b\u0010I\u001a\u00020\u0006H\u0016J\b\u0010J\u001a\u00020\u0006H\u0016J\u0010\u0010K\u001a\u0002032\u0006\u0010L\u001a\u00020\u000eH\u0002J\b\u0010M\u001a\u000203H\u0002J\"\u0010N\u001a\u0002032\u0006\u00101\u001a\u00020\u000e2\b\u0010O\u001a\u0004\u0018\u00010\u000e2\u0006\u0010P\u001a\u00020\u0006H\u0002Jd\u0010N\u001a\u0002032\b\u00101\u001a\u0004\u0018\u00010\u000e2\b\u0010L\u001a\u0004\u0018\u00010\u000e2\u0010\b\u0002\u0010Q\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010R2\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010R2\u0010\b\u0002\u0010T\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010R2\u0010\b\u0002\u0010U\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010RH\u0002J\b\u0010V\u001a\u000203H\u0016J6\u0010W\u001a\u0002032\b\u0010L\u001a\u0004\u0018\u00010\u000e2\b\u0010X\u001a\u0004\u0018\u00010\u000e2\u0006\u0010Y\u001a\u00020Z2\u0006\u0010[\u001a\u00020\u00062\b\u0010\\\u001a\u0004\u0018\u00010]H\u0016J\b\u0010^\u001a\u000203H\u0002J\u0018\u0010_\u001a\u0002032\u0006\u0010@\u001a\u00020\u00142\u0006\u0010`\u001a\u00020\u0006H\u0016J\u0012\u0010_\u001a\u0002032\b\u00101\u001a\u0004\u0018\u00010\u000eH\u0016J\b\u0010a\u001a\u000203H\u0016J\u0018\u0010b\u001a\u0002032\u0006\u0010:\u001a\u00020\u00142\u0006\u0010c\u001a\u00020\u0006H\u0016J \u0010d\u001a\u0002032\u0006\u0010:\u001a\u00020\u00142\u0006\u0010c\u001a\u00020\u00062\u0006\u0010e\u001a\u00020\u0006H\u0002J\u0012\u0010f\u001a\u0002032\b\b\u0002\u0010e\u001a\u00020\u0006H\u0002J\u0018\u0010g\u001a\u0002032\u000e\u0010h\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010iH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u0010\u0012\f\u0012\n \u000f*\u0004\u0018\u00010\u000e0\u000e0\rX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b \u0010!R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0004\n\u0002\u0010*R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e¢\u0006\u0002\n\u0000R.\u0010-\u001a\"\u0012\f\u0012\n \u000f*\u0004\u0018\u00010\u000e0\u000e0.j\u0010\u0012\f\u0012\n \u000f*\u0004\u0018\u00010\u000e0\u000e`/X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006l"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;", "Lcn/mucang/android/jiakaoyi/speech/engine/ISpeechEngine;", "()V", "energyComputer", "Lcn/mucang/android/jiakaoyi/speech/utils/VoiceEnergyComputer;", "isSpeechEnable", "", "mAsrCallBack", "cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mAsrCallBack$1", "Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mAsrCallBack$1;", "mAsrEngine", "Lcn/mucang/android/jiakaoyi/speech/engine/asr/IAsrEngine;", "mAsrTimeOutWords", "", "", "kotlin.jvm.PlatformType", "[Ljava/lang/String;", "mAudioThread", "Lcn/mucang/android/jiakaoyi/speech/audio/SpeechRecordThread;", "mEngineMode", "", "mInitOK", "mRecordCallBack", "cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mRecordCallBack$1", "Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mRecordCallBack$1;", "mSemanticApi", "Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticApi;", "mSessionId", "mSpeechEngineThread", "Landroid/os/HandlerThread;", "mSpeechHandler", "cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$1", "getMSpeechHandler", "()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$1;", "mSpeechHandler$delegate", "Lkotlin/Lazy;", "mSpeechViewCallback", "Lcn/mucang/android/jiakaoyi/speech/callback/ISpeechViewCallback;", "mTtsStopBySelf", "mWaitBizRet", "mWakeupCallBack", "cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1", "Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;", "mWakeupEngine", "Lcn/mucang/android/jiakaoyi/speech/engine/wakeup/IWakeupEngine;", "mWelcomeWords", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "checkSessionValid", "sessionId", "clearSession", "", "clearTimeoutChecker", "disable", "dismissHint", "enable", "getMode", "getModeName", "mode", "getMsgName", SocialConstants.PARAM_SEND_MSG, "getVrWelcomeWords", "getWelcomeWords", "handleAsrTimeout", "type", "handleSessionEnd", "hasSession", "init", "context", "Landroid/content/Context;", "speechCallback", "invokeSpeechRet", "Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;", Constant.API_PARAMS_KEY_ENABLE, "isInitOK", "notifySpeakingState", "ttsText", "notifySpeechStateChange", "playTtsWithSession", "answerText", "closeAfterTts", "onBegin", "Lkotlin/Function0;", "onIntercept", "onInterceptBySelf", "onEnd", "release", "showHint", "voiceUrl", "ttsGrade", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;", "asrAfterTts", "ttsListener", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "startAudioIfNeed", "startSpeech", "needWelcome", "stopSpeech", "switchMode", "force", "switchModeInner", "notifyState", "updateEngineState", "uploadHotWords", "words", "", "Companion", "EngineMode", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SpeechEngine implements ISpeechEngine {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private IWakeupEngine f5850d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private IAsrEngine f5851e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SpeechRecordThread f5852f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ISpeechViewCallback f5853g;
    private volatile boolean k;
    private volatile boolean l;
    private volatile boolean m;
    private volatile String n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<String> f5849a = u.f(k0.a(R.string.speech_key0), k0.a(R.string.speech_key1), k0.a(R.string.speech_key2), k0.a(R.string.speech_key3));
    private final String[] b = {k0.a(R.string.speech_key4), k0.a(R.string.speech_key5), k0.a(R.string.speech_key6)};
    private volatile int c = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.speech.utils.g f5854h = new cn.mucang.android.jiakaoyi.speech.utils.g();
    private final SemanticApi i = new SemanticApi();
    private volatile boolean j = true;
    private final HandlerThread o = new HandlerThread("speech_engine_thread");
    private final Lazy p = kotlin.i.b(new Function0<SpeechEngine$mSpeechHandler$2.a>() { // from class: cn.mucang.android.jiakaoyi.speech.engine.SpeechEngine$mSpeechHandler$2

        @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$1", "Landroid/os/Handler;", "handleMessage", "", SocialConstants.PARAM_SEND_MSG, "Landroid/os/Message;", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        public static final class a extends Handler {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ SpeechEngine f5865a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(SpeechEngine speechEngine, Looper looper) {
                super(looper);
                this.f5865a = speechEngine;
            }

            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                r.e(msg, "msg");
                SpeechLogUtils.c("SpeechEngine", r.m("handleMessage msg=", this.f5865a.Q(msg.what)));
                int i = msg.what;
                if (i == 3 || i == 4) {
                    this.f5865a.T(i);
                    return;
                }
                if (i == 5 && this.f5865a.m && this.f5865a.c()) {
                    this.f5865a.m = false;
                    SpeechEngine speechEngine = this.f5865a;
                    String str = speechEngine.n;
                    r.c(str);
                    speechEngine.h0(str, k0.a(R.string.speech_key7), true);
                }
            }
        }

        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final a invoke() {
            return new a(this.this$0, this.this$0.o.getLooper());
        }
    });
    private final SpeechEngine$mWakeupCallBack$1 q = new SpeechEngine$mWakeupCallBack$1(this);
    private final a r = new a();
    private final b s = new b();

    @Metadata(d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001a\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\u0003H\u0016J\b\u0010\f\u001a\u00020\u0003H\u0016J\u001a\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016¨\u0006\u0011"}, d2 = {"cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mAsrCallBack$1", "Lcn/mucang/android/jiakaoyi/speech/callback/IAsrCallback;", "onAsrError", "", "code", "", "onAsrResult", "words", "", "isFinal", "", "onSpeakEnd", "onSpeakStart", "onVolumeChanged", SpeechConstant.VOLUME, "data", "", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements IAsrCallback {

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.engine.SpeechEngine$a$a, reason: collision with other inner class name */
        @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mAsrCallBack$1$onAsrResult$1", "Lcn/mucang/android/jiakaoyi/speech/callback/ISemanticCallback;", "onAnswerText", "", "sessionId", "", "answerText", "closeAfterTts", "", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        public static final class C0127a implements ISemanticCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ SpeechEngine f5856a;

            C0127a(SpeechEngine speechEngine) {
                this.f5856a = speechEngine;
            }

            @Override // cn.mucang.android.jiakaoyi.speech.callback.ISemanticCallback
            public void a(String sessionId, String str, boolean z) {
                r.e(sessionId, "sessionId");
                SpeechLogUtils.c("SpeechEngine", r.m("onAnswerText sessionId=", sessionId));
                if (this.f5856a.J(sessionId)) {
                    this.f5856a.m = false;
                    if (!TextUtils.isEmpty(str)) {
                        this.f5856a.h0(sessionId, str, z);
                        return;
                    }
                    this.f5856a.m = true;
                    this.f5856a.O().sendEmptyMessageDelayed(5, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                    SpeechLogUtils.c("SpeechEngine", "waiting biz invoke result");
                }
            }
        }

        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.speech.callback.IAsrCallback
        public void b() {
            SpeechLogUtils.c("SpeechEngine", "onSpeakStart");
            SpeechEngine.this.O().removeMessages(3);
            ISpeechViewCallback iSpeechViewCallback = SpeechEngine.this.f5853g;
            if (iSpeechViewCallback == null) {
                return;
            }
            iSpeechViewCallback.b();
        }

        @Override // cn.mucang.android.jiakaoyi.speech.callback.IAsrCallback
        public void c(String str, boolean z) {
            SpeechEngine speechEngine = SpeechEngine.this;
            if (speechEngine.J(speechEngine.n)) {
                SpeechLogUtils.c("SpeechEngine", "onAsrResult : " + ((Object) str) + " , isFinal=" + z);
                ISpeechViewCallback iSpeechViewCallback = SpeechEngine.this.f5853g;
                if (iSpeechViewCallback != null) {
                    iSpeechViewCallback.f(SpeechEngine.this.n, str, z);
                }
                SpeechEngine.this.L();
                if (z) {
                    ISpeechEngine.a.a(SpeechEngine.this, 0, false, 2, null);
                    SpeechEngine.this.i.b(SpeechEngine.this.n, str, new C0127a(SpeechEngine.this));
                }
            }
        }

        @Override // cn.mucang.android.jiakaoyi.speech.callback.IAsrCallback
        public void d(int i) {
            SpeechLogUtils.d("SpeechEngine", r.m("onError : code=", Integer.valueOf(i)));
            SpeechEngine speechEngine = SpeechEngine.this;
            if (speechEngine.J(speechEngine.n)) {
                if (i == 10118) {
                    SpeechEngine.this.g(1, true);
                } else {
                    SpeechEngine.this.T(i);
                }
            }
        }

        @Override // cn.mucang.android.jiakaoyi.speech.callback.IAsrCallback
        public void onSpeakEnd() {
            SpeechLogUtils.c("SpeechEngine", "onSpeakEnd");
            ISpeechViewCallback iSpeechViewCallback = SpeechEngine.this.f5853g;
            if (iSpeechViewCallback == null) {
                return;
            }
            iSpeechViewCallback.onSpeakEnd();
        }

        @Override // cn.mucang.android.jiakaoyi.speech.callback.IAsrCallback
        public void onVolumeChanged(int volume, byte[] data) {
            ISpeechViewCallback iSpeechViewCallback = SpeechEngine.this.f5853g;
            if (iSpeechViewCallback != null) {
                iSpeechViewCallback.onVolumeChanged(volume, data);
            }
            if (data == null || !SpeechEngine.this.f5854h.b(data, data.length)) {
                return;
            }
            SpeechEngine.this.O().removeMessages(3);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mRecordCallBack$1", "Lcn/mucang/android/jiakaoyi/speech/callback/IRecordCallback;", "onAudioRecord", "", "data", "", "length", "", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements IRecordCallback {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.speech.callback.IRecordCallback
        public void a(byte[] data, int i) {
            r.e(data, "data");
            IWakeupEngine iWakeupEngine = SpeechEngine.this.f5850d;
            if (iWakeupEngine != null) {
                iWakeupEngine.e(data, i);
            }
            IAsrEngine iAsrEngine = SpeechEngine.this.f5851e;
            if (iAsrEngine == null) {
                return;
            }
            iAsrEngine.e(data, i);
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$playTtsWithSession$2", "Lcn/mucang/android/jiakaoyi/framework/tts/SimpleTtsListener;", "onIntercept", "", "onSpeakBegin", "onSpeakEnd", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends SimpleTtsListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f5858a;
        final /* synthetic */ Function0<v> b;
        final /* synthetic */ Function0<v> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ SpeechEngine f5859d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f5860e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Function0<v> f5861f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Function0<v> f5862g;

        c(String str, Function0<v> function0, Function0<v> function1, SpeechEngine speechEngine, String str2, Function0<v> function2, Function0<v> function3) {
            this.f5858a = str;
            this.b = function0;
            this.c = function1;
            this.f5859d = speechEngine;
            this.f5860e = str2;
            this.f5861f = function2;
            this.f5862g = function3;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            SpeechLogUtils.c("SpeechEngine", r.m("play tts onIntercept, text=", this.f5858a));
            Function0<v> function0 = this.c;
            if (function0 == null) {
                this.f5859d.U(this.f5860e);
            } else {
                function0.invoke();
            }
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakBegin() {
            SpeechLogUtils.c("SpeechEngine", r.m("play tts onStart, text=", this.f5858a));
            Function0<v> function0 = this.b;
            if (function0 == null) {
                return;
            }
            function0.invoke();
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            if (!this.f5859d.l) {
                SpeechLogUtils.c("SpeechEngine", r.m("play tts onCompleted , text=", this.f5858a));
                Function0<v> function0 = this.f5862g;
                if (function0 == null) {
                    return;
                }
                function0.invoke();
                return;
            }
            SpeechLogUtils.c("SpeechEngine", r.m("play tts onIntercept by self , text=", this.f5858a));
            Function0<v> function1 = this.f5861f;
            if (function1 != null) {
                function1.invoke();
            } else {
                this.f5859d.U(this.f5860e);
                this.f5859d.l = false;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$showHint$1$1", "Lcn/mucang/android/jiakaoyi/framework/tts/SimpleTtsListener;", "onIntercept", "", "onSpeakBegin", "onSpeakEnd", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d extends SimpleTtsListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f5863a;
        final /* synthetic */ SpeechEngine b;
        final /* synthetic */ TtsListener c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f5864d;

        d(String str, SpeechEngine speechEngine, TtsListener ttsListener, boolean z) {
            this.f5863a = str;
            this.b = speechEngine;
            this.c = ttsListener;
            this.f5864d = z;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            SpeechLogUtils.c("SpeechEngine", r.m("onIntercept ttsText=", this.f5863a));
            ISpeechViewCallback iSpeechViewCallback = this.b.f5853g;
            if (iSpeechViewCallback != null) {
                iSpeechViewCallback.i();
            }
            TtsListener ttsListener = this.c;
            if (ttsListener == null) {
                return;
            }
            ttsListener.onIntercept();
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakBegin() {
            SpeechLogUtils.c("SpeechEngine", r.m("onSpeakBegin ttsText=", this.f5863a));
            ISpeechViewCallback iSpeechViewCallback = this.b.f5853g;
            if (iSpeechViewCallback != null) {
                iSpeechViewCallback.d(this.f5863a);
            }
            this.b.e0(this.f5863a);
            TtsListener ttsListener = this.c;
            if (ttsListener == null) {
                return;
            }
            ttsListener.onSpeakBegin();
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            if (this.b.l) {
                SpeechLogUtils.c("SpeechEngine", r.m("play tts onIntercept by self , text=", this.f5863a));
            } else {
                SpeechLogUtils.c("SpeechEngine", r.m("play tts onCompleted , text=", this.f5863a));
            }
            if (this.f5864d && !this.b.l && this.b.j) {
                this.b.b(7, false);
            } else {
                ISpeechViewCallback iSpeechViewCallback = this.b.f5853g;
                if (iSpeechViewCallback != null) {
                    iSpeechViewCallback.i();
                }
                SpeechEngine.t0(this.b, false, 1, null);
            }
            TtsListener ttsListener = this.c;
            if (ttsListener == null) {
                return;
            }
            ttsListener.onSpeakEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized boolean J(String str) {
        try {
            if (str == null) {
                SpeechLogUtils.c("SpeechEngine", "checkSessionValid: false, sessionId is null");
                return false;
            }
            if (this.n == null) {
                SpeechLogUtils.c("SpeechEngine", "checkSessionValid: false, mSessionId is null");
                return false;
            }
            if (r.a(this.n, str)) {
                SpeechLogUtils.c("SpeechEngine", r.m("checkSessionValid: success, sessionId=", str));
                return true;
            }
            SpeechLogUtils.d("SpeechEngine", "checkSessionValid: false, sessionId:" + ((Object) str) + " != " + ((Object) this.n));
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    private final synchronized void K() {
        SpeechLogUtils.c("SpeechEngine", r.m("clearSession ", this.n));
        this.n = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L() {
        SpeechEngine$mSpeechHandler$2.a aVarO = O();
        aVarO.removeMessages(3);
        aVarO.removeMessages(4);
        aVarO.removeMessages(5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(SpeechEngine this$0) {
        r.e(this$0, "this$0");
        SpeechLogUtils.c("SpeechEngine", "disable, 禁用语音助手");
        if (this$0.j) {
            this$0.release();
            this$0.j = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(SpeechEngine this$0) {
        r.e(this$0, "this$0");
        SpeechLogUtils.c("SpeechEngine", "dismissHint");
        this$0.l = true;
        t0(this$0, false, 1, null);
        TtsManager.I(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SpeechEngine$mSpeechHandler$2.a O() {
        return (SpeechEngine$mSpeechHandler$2.a) this.p.getValue();
    }

    private final String P(int i) {
        if (i == -1) {
            return "IDLE";
        }
        if (i != 0) {
            return i != 1 ? Constant.VENDOR_UNKNOWN : "ASR";
        }
        return "WAKEUP";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String Q(int i) {
        if (i != 3) {
            return i != 4 ? String.valueOf(i) : "MSG_ASR_TIME_OUT";
        }
        return "MSG_SILENT_TIME_OUT";
    }

    private final void R() {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.speech.engine.b
            @Override // java.lang.Runnable
            public final void run() {
                SpeechEngine.S(this.f5868a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S(SpeechEngine this$0) {
        Object objM139constructorimpl;
        r.e(this$0, "this$0");
        try {
            Result.Companion companion = Result.INSTANCE;
            List<String> listC = new cn.mucang.android.jiakaoyi.speech.semantic.e().c();
            if (!(listC == null || listC.isEmpty())) {
                this$0.f5849a.clear();
                this$0.f5849a.addAll(listC);
            }
            objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            thM142exceptionOrNullimpl.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T(final int i) {
        String strA;
        ISpeechViewCallback iSpeechViewCallback;
        if (i != 3) {
            strA = i != 4 ? k0.a(R.string.speech_key9) : (String) kotlin.collections.k.S(this.b, Random.INSTANCE);
        } else {
            strA = k0.a(R.string.speech_key8);
        }
        String str = strA;
        ISpeechEngine.a.a(this, -1, false, 2, null);
        L();
        if (i != 3 && (iSpeechViewCallback = this.f5853g) != null) {
            iSpeechViewCallback.c(this.n, i);
        }
        i0(this, this.n, str, null, null, null, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.speech.engine.SpeechEngine$handleAsrTimeout$1
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
                if (i == 3) {
                    this.O().sendEmptyMessageDelayed(4, 12000L);
                    ISpeechEngine.a.a(this, 1, false, 2, null);
                } else {
                    SpeechEngine speechEngine = this;
                    speechEngine.U(speechEngine.n);
                }
            }
        }, 28, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(String str) {
        SpeechLogUtils.c("SpeechEngine", "handleSessionEnd");
        if (this.n == null || !r.a(this.n, str)) {
            return;
        }
        this.m = false;
        ISpeechViewCallback iSpeechViewCallback = this.f5853g;
        if (iSpeechViewCallback != null) {
            iSpeechViewCallback.e(str);
        }
        K();
        TtsManager.I(2);
        L();
        ISpeechEngine.a.a(this, 0, false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e0(String str) {
        if (this.i.d(str)) {
            ISpeechViewCallback iSpeechViewCallback = this.f5853g;
            if (iSpeechViewCallback == null) {
                return;
            }
            iSpeechViewCallback.a(6);
            return;
        }
        ISpeechViewCallback iSpeechViewCallback2 = this.f5853g;
        if (iSpeechViewCallback2 == null) {
            return;
        }
        iSpeechViewCallback2.a(9);
    }

    private final void f0() {
        ISpeechViewCallback iSpeechViewCallback;
        int i = this.c;
        if (i == -1 || i == 0) {
            ISpeechViewCallback iSpeechViewCallback2 = this.f5853g;
            if (iSpeechViewCallback2 == null) {
                return;
            }
            iSpeechViewCallback2.a(0);
            return;
        }
        if (i == 1 && (iSpeechViewCallback = this.f5853g) != null) {
            iSpeechViewCallback.a(5);
        }
    }

    private final void g0(String str, String str2, Function0<v> function0, Function0<v> function1, Function0<v> function2, Function0<v> function3) {
        SpeechLogUtils.c("SpeechEngine", "playTts sessionId=" + ((Object) str) + " ttsText=" + ((Object) str2));
        if (J(str)) {
            if (TextUtils.isEmpty(str2)) {
                if (function3 == null) {
                    return;
                }
                function3.invoke();
                return;
            }
            this.l = false;
            ISpeechViewCallback iSpeechViewCallback = this.f5853g;
            if (iSpeechViewCallback != null) {
                iSpeechViewCallback.g(str, str2);
            }
            r.c(str2);
            e0(str2);
            TtsManager.C(str2, TtsGrade.VoiceRobot, new c(str2, function0, function1, this, str, function2, function3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h0(final String str, String str2, final boolean z) {
        i0(this, str, str2, null, null, null, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.speech.engine.SpeechEngine$playTtsWithSession$1
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
                if (z) {
                    this.U(str);
                } else {
                    this.m0(str);
                }
            }
        }, 28, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void i0(SpeechEngine speechEngine, String str, String str2, Function0 function0, Function0 function1, Function0 function2, Function0 function3, int i, Object obj) {
        speechEngine.g0(str, str2, (i & 4) != 0 ? null : function0, (i & 8) != 0 ? null : function1, (i & 16) != 0 ? null : function2, (i & 32) != 0 ? null : function3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(SpeechEngine this$0) {
        r.e(this$0, "this$0");
        SpeechRecordThread speechRecordThread = this$0.f5852f;
        if (speechRecordThread != null) {
            r.c(speechRecordThread);
            if (speechRecordThread.getI()) {
                SpeechLogUtils.d("SpeechEngine", "release success");
                this$0.l = true;
                this$0.U(this$0.n);
                ISpeechEngine.a.a(this$0, -1, false, 2, null);
                SpeechRecordThread speechRecordThread2 = this$0.f5852f;
                if (speechRecordThread2 == null) {
                    return;
                }
                speechRecordThread2.d();
                return;
            }
        }
        SpeechLogUtils.d("SpeechEngine", "don't need release");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(String str, boolean z, SpeechEngine this$0, String str2, TtsGrade ttsGrade, TtsListener ttsListener) {
        r.e(this$0, "this$0");
        r.e(ttsGrade, "$ttsGrade");
        SpeechLogUtils.c("SpeechEngine", "showHint ttsText=" + ((Object) str) + ", asrAfterTts=" + z);
        ISpeechViewCallback iSpeechViewCallback = this$0.f5853g;
        if (iSpeechViewCallback != null) {
            iSpeechViewCallback.d(str);
        }
        this$0.l = false;
        r.c(str);
        this$0.e0(str);
        TtsManager.D(str, str2, ttsGrade, new d(str, this$0, ttsListener, z));
    }

    private final void l0() {
        if (this.f5852f == null) {
            this.f5852f = new SpeechRecordThread(this.s);
        }
        SpeechRecordThread speechRecordThread = this.f5852f;
        r.c(speechRecordThread);
        if (!speechRecordThread.getF5848h()) {
            SpeechRecordThread speechRecordThread2 = this.f5852f;
            r.c(speechRecordThread2);
            speechRecordThread2.start();
        }
        SpeechRecordThread speechRecordThread3 = this.f5852f;
        r.c(speechRecordThread3);
        if (speechRecordThread3.getI()) {
            return;
        }
        SpeechRecordThread speechRecordThread4 = this.f5852f;
        r.c(speechRecordThread4);
        speechRecordThread4.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n0(SpeechEngine this$0, int i) {
        r.e(this$0, "this$0");
        SpeechLogUtils.d("SpeechEngine", "startSpeech");
        this$0.U(this$0.n);
        this$0.q.a(i, "", false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o0(String str, SpeechEngine this$0) {
        r.e(this$0, "this$0");
        SpeechLogUtils.c("SpeechEngine", r.m("startSpeech sessionId=", str));
        if (this$0.J(str)) {
            this$0.L();
            this$0.O().sendEmptyMessageDelayed(3, 4000L);
            this$0.O().sendEmptyMessageDelayed(4, 12000L);
            ISpeechEngine.a.a(this$0, 1, false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(SpeechEngine this$0) {
        r.e(this$0, "this$0");
        SpeechLogUtils.d("SpeechEngine", "stopSpeech");
        if (this$0.J(this$0.n)) {
            this$0.l = true;
            this$0.U(this$0.n);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q0(final int i, final boolean z, final boolean z2) {
        O().post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.speech.engine.g
            @Override // java.lang.Runnable
            public final void run() {
                SpeechEngine.r0(this.f5873a, i, z, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(SpeechEngine this$0, int i, boolean z, boolean z2) {
        r.e(this$0, "this$0");
        SpeechLogUtils.c("SpeechEngine", r.m("switchMode -> ", this$0.P(i)));
        if (i == -1) {
            IWakeupEngine iWakeupEngine = this$0.f5850d;
            if (iWakeupEngine != null) {
                iWakeupEngine.b();
            }
            IAsrEngine iAsrEngine = this$0.f5851e;
            if (iAsrEngine != null) {
                iAsrEngine.cancel();
            }
            IAsrEngine iAsrEngine2 = this$0.f5851e;
            if (iAsrEngine2 != null) {
                iAsrEngine2.f();
            }
        } else if (i == 0) {
            this$0.l0();
            IWakeupEngine iWakeupEngine2 = this$0.f5850d;
            if (iWakeupEngine2 != null) {
                iWakeupEngine2.a(z);
            }
            IAsrEngine iAsrEngine3 = this$0.f5851e;
            if (iAsrEngine3 != null) {
                iAsrEngine3.cancel();
            }
            IAsrEngine iAsrEngine4 = this$0.f5851e;
            if (iAsrEngine4 != null) {
                iAsrEngine4.f();
            }
        } else if (i == 1) {
            this$0.l0();
            IWakeupEngine iWakeupEngine3 = this$0.f5850d;
            if (iWakeupEngine3 != null) {
                iWakeupEngine3.b();
            }
            IAsrEngine iAsrEngine5 = this$0.f5851e;
            if (iAsrEngine5 != null) {
                iAsrEngine5.d(z);
            }
        }
        this$0.s0(z2);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003d  */
    /* JADX WARN: Code duplicated, block: B:20:0x0049  */
    /* JADX WARN: Code duplicated, block: B:22:0x0054  */
    /* JADX WARN: Code duplicated, block: B:23:0x0057  */
    /* JADX WARN: Code duplicated, block: B:25:0x0062  */
    /* JADX WARN: Code duplicated, block: B:27:0x006d  */
    /* JADX WARN: Code duplicated, block: B:28:0x007b  */
    private final void s0(boolean z) {
        IWakeupEngine iWakeupEngine;
        IWakeupEngine iWakeupEngine2;
        IWakeupEngine iWakeupEngine3;
        IAsrEngine iAsrEngine;
        IAsrEngine iAsrEngine2;
        if (!this.k || (iWakeupEngine = this.f5850d) == null || this.f5851e == null) {
            this.c = -1;
        } else {
            r.c(iWakeupEngine);
            if (!iWakeupEngine.c()) {
                IAsrEngine iAsrEngine3 = this.f5851e;
                r.c(iAsrEngine3);
                if (!iAsrEngine3.c()) {
                    this.c = -1;
                }
            }
            IWakeupEngine iWakeupEngine4 = this.f5850d;
            r.c(iWakeupEngine4);
            if (iWakeupEngine4.c()) {
                IAsrEngine iAsrEngine4 = this.f5851e;
                r.c(iAsrEngine4);
                if (iAsrEngine4.c()) {
                    iWakeupEngine2 = this.f5850d;
                    r.c(iWakeupEngine2);
                    if (iWakeupEngine2.c()) {
                        iWakeupEngine3 = this.f5850d;
                        r.c(iWakeupEngine3);
                        if (iWakeupEngine3.c()) {
                            iAsrEngine = this.f5851e;
                            r.c(iAsrEngine);
                            if (iAsrEngine.c()) {
                                SpeechLogUtils.b("SpeechEngine", "wakeup and asr engine working together!!!");
                                U(this.n);
                                g(0, true);
                            }
                        }
                    } else {
                        iAsrEngine2 = this.f5851e;
                        r.c(iAsrEngine2);
                        if (iAsrEngine2.c()) {
                            this.c = 1;
                        } else {
                            iWakeupEngine3 = this.f5850d;
                            r.c(iWakeupEngine3);
                            if (iWakeupEngine3.c()) {
                                iAsrEngine = this.f5851e;
                                r.c(iAsrEngine);
                                if (iAsrEngine.c()) {
                                    SpeechLogUtils.b("SpeechEngine", "wakeup and asr engine working together!!!");
                                    U(this.n);
                                    g(0, true);
                                }
                            }
                        }
                    }
                } else {
                    this.c = 0;
                }
            } else {
                iWakeupEngine2 = this.f5850d;
                r.c(iWakeupEngine2);
                if (iWakeupEngine2.c()) {
                    iAsrEngine2 = this.f5851e;
                    r.c(iAsrEngine2);
                    if (iAsrEngine2.c()) {
                        this.c = 1;
                    } else {
                        iWakeupEngine3 = this.f5850d;
                        r.c(iWakeupEngine3);
                        if (iWakeupEngine3.c()) {
                            iAsrEngine = this.f5851e;
                            r.c(iAsrEngine);
                            if (iAsrEngine.c()) {
                                SpeechLogUtils.b("SpeechEngine", "wakeup and asr engine working together!!!");
                                U(this.n);
                                g(0, true);
                            }
                        }
                    }
                } else {
                    iWakeupEngine3 = this.f5850d;
                    r.c(iWakeupEngine3);
                    if (iWakeupEngine3.c()) {
                        iAsrEngine = this.f5851e;
                        r.c(iAsrEngine);
                        if (iAsrEngine.c()) {
                            SpeechLogUtils.b("SpeechEngine", "wakeup and asr engine working together!!!");
                            U(this.n);
                            g(0, true);
                        }
                    }
                }
            }
        }
        SpeechLogUtils.c("SpeechEngine", r.m("EngineMode=", P(this.c)));
        if (z) {
            f0();
        }
    }

    static /* synthetic */ void t0(SpeechEngine speechEngine, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        speechEngine.s0(z);
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.ISpeechEngine
    /* JADX INFO: renamed from: a, reason: from getter */
    public boolean getJ() {
        return this.j;
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.ISpeechEngine
    public void b(final int i, boolean z) {
        O().post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.speech.engine.e
            @Override // java.lang.Runnable
            public final void run() {
                SpeechEngine.n0(this.f5871a, i);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.ISpeechEngine
    public boolean c() {
        return J(this.n);
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.ISpeechEngine
    public void d() {
        R();
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.ISpeechEngine
    public void disable() {
        O().post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.speech.engine.c
            @Override // java.lang.Runnable
            public final void run() {
                SpeechEngine.M(this.f5869a);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.ISpeechEngine
    public void e(final String str, final String str2, final TtsGrade ttsGrade, final boolean z, final TtsListener ttsListener) {
        r.e(ttsGrade, "ttsGrade");
        if (n0.e(str)) {
            return;
        }
        O().post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.speech.engine.i
            @Override // java.lang.Runnable
            public final void run() {
                SpeechEngine.k0(str, z, this, str2, ttsGrade, ttsListener);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.ISpeechEngine
    public void f() {
        O().post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.speech.engine.a
            @Override // java.lang.Runnable
            public final void run() {
                SpeechEngine.p0(this.f5867a);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.ISpeechEngine
    public void g(int i, boolean z) {
        if (i != -1 && !this.j && !z) {
            SpeechLogUtils.c("SpeechEngine", "switchMode " + P(i) + " fail, 语音助手已被禁用");
            return;
        }
        if (i != this.c || z) {
            q0(i, z, true);
        } else {
            SpeechLogUtils.c("SpeechEngine", r.m("switchMode, mode already is ", P(i)));
            f0();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.ISpeechEngine
    public void h(Context context, ISpeechViewCallback iSpeechViewCallback) {
        r.e(context, "context");
        SpeechLogUtils.c("SpeechEngine", "init");
        this.f5853g = iSpeechViewCallback;
        IflytekWakeupEngine iflytekWakeupEngine = new IflytekWakeupEngine();
        this.f5850d = iflytekWakeupEngine;
        if (iflytekWakeupEngine != null) {
            iflytekWakeupEngine.g(context, this.q);
        }
        IflytekAsrEngine iflytekAsrEngine = new IflytekAsrEngine();
        this.f5851e = iflytekAsrEngine;
        if (iflytekAsrEngine != null) {
            iflytekAsrEngine.g(context, this.r);
        }
        this.o.start();
        this.k = true;
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.ISpeechEngine
    public void i() {
        O().post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.speech.engine.h
            @Override // java.lang.Runnable
            public final void run() {
                SpeechEngine.N(this.f5875a);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.ISpeechEngine
    public void j(VoicePerformanceModel voicePerformanceModel) {
        if (voicePerformanceModel == null) {
            return;
        }
        SpeechLogUtils.c("SpeechEngine", "invokeSpeechRet playText:" + ((Object) voicePerformanceModel.getPlayText()) + ", closeAfterSpeak:" + voicePerformanceModel.getCloseAfterSpeak() + " mWaitBizRet:" + this.m + ", sessionId:" + ((Object) this.n));
        if (this.m && c()) {
            this.m = false;
            O().removeMessages(5);
            String playText = voicePerformanceModel.getPlayText();
            if (playText == null) {
                playText = "";
            }
            if (TextUtils.isEmpty(playText)) {
                playText = this.i.a(this.n);
            }
            String str = this.n;
            r.c(str);
            h0(str, playText, voicePerformanceModel.getCloseAfterSpeak());
            this.i.f(this.n, playText);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.ISpeechEngine
    /* JADX INFO: renamed from: k, reason: from getter */
    public int getC() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.ISpeechEngine
    /* JADX INFO: renamed from: l, reason: from getter */
    public boolean getK() {
        return this.k;
    }

    public void m0(final String str) {
        O().post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.speech.engine.f
            @Override // java.lang.Runnable
            public final void run() {
                SpeechEngine.o0(str, this);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.ISpeechEngine
    public void release() {
        O().post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.speech.engine.d
            @Override // java.lang.Runnable
            public final void run() {
                SpeechEngine.j0(this.f5870a);
            }
        });
    }
}
