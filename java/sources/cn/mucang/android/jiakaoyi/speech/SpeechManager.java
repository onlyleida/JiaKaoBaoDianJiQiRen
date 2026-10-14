package cn.mucang.android.jiakaoyi.speech;

import android.content.Context;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.speech.callback.ISpeechStateChangeCallback;
import cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback;
import cn.mucang.android.jiakaoyi.speech.engine.ISpeechEngine;
import cn.mucang.android.jiakaoyi.speech.engine.SpeechEngine;
import cn.mucang.android.jiakaoyi.speech.model.VoicePerformanceModel;
import cn.mucang.android.jiakaoyi.speech.semantic.SpeechMcProtocolHelper;
import cn.mucang.android.jiakaoyi.speech.ui.SpeechViewController;
import cn.mucang.android.jiakaoyi.speech.utils.ReportManager;
import cn.mucang.android.jiakaoyi.speech.utils.SpeechLogUtils;
import cn.mucang.android.jiakaoyi.speech.utils.SpeechSDKHelper;
import com.mobile.auth.gatewayauth.Constant;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\"\n\u0000*\u0001\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0012H\u0016J\b\u0010\u0014\u001a\u00020\u0012H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0016J\b\u0010\u0019\u001a\u00020\u0012H\u0016J\b\u0010\u001a\u001a\u00020\u0010H\u0016J\"\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00102\b\u0010\u001f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010 \u001a\u00020\u00122\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\b\u0010#\u001a\u00020\u0010H\u0016J\u0016\u0010$\u001a\u00020\u00122\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00120&H\u0002J\u0012\u0010'\u001a\u00020\u00122\b\u0010(\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010)\u001a\u00020\u0012H\u0016J\u0014\u0010*\u001a\u0004\u0018\u00010\u00042\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\b\u0010+\u001a\u00020\u0012H\u0016J\b\u0010,\u001a\u00020\u0012H\u0016J\b\u0010\u001e\u001a\u00020\u0012H\u0016J\u0012\u0010-\u001a\u00020\u00122\b\u0010(\u001a\u0004\u0018\u00010\fH\u0016J\u0018\u0010.\u001a\u00020\u00122\u000e\u0010/\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u000100H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/SpeechManager;", "Lcn/mucang/android/jiakaoyi/speech/ISpeechManager;", "()V", "TAG", "", "mSpeechCallbackWrap", "cn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1", "Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1;", "mSpeechEngine", "Lcn/mucang/android/jiakaoyi/speech/engine/ISpeechEngine;", "mSpeechStateCallbacks", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcn/mucang/android/jiakaoyi/speech/callback/ISpeechStateChangeCallback;", "mSpeechViewCallback", "Lcn/mucang/android/jiakaoyi/speech/callback/ISpeechViewCallback;", "checkEngineOK", "", "disable", "", "dismissHint", "enable", "getMode", "", "getSpeechState", "state", "getVrWelcomeWords", "hasSession", "init", "context", "Landroid/content/Context;", "switchWakeup", "speechViewCallback", "invokeSpeechRet", "mode", "Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;", Constant.API_PARAMS_KEY_ENABLE, "postMain", "method", "Lkotlin/Function0;", "registerSpeechStateChangeCallback", "callback", "release", "showHint", "startSpeech", "stopSpeech", "unregisterSpeechStateChangeCallback", "uploadHotWords", "words", "", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SpeechManager implements ISpeechManager {
    private static ISpeechEngine b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SpeechManager f5839a = new SpeechManager();
    private static ISpeechViewCallback c = new SpeechViewController();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final CopyOnWriteArrayList<ISpeechStateChangeCallback> f5840d = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final SpeechManager$mSpeechCallbackWrap$1 f5841e = new ISpeechViewCallback() { // from class: cn.mucang.android.jiakaoyi.speech.SpeechManager$mSpeechCallbackWrap$1
        @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechStateChangeCallback
        public void a(final int i) {
            SpeechManager.f5839a.n(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.speech.SpeechManager$mSpeechCallbackWrap$1$onStateChanged$1
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
                    ISpeechViewCallback iSpeechViewCallback = SpeechManager.c;
                    if (iSpeechViewCallback != null) {
                        iSpeechViewCallback.a(i);
                    }
                    Iterator it = SpeechManager.f5840d.iterator();
                    while (it.hasNext()) {
                        ((ISpeechStateChangeCallback) it.next()).a(i);
                    }
                }
            });
        }

        @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
        public void b() {
            SpeechManager.f5839a.n(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.speech.SpeechManager$mSpeechCallbackWrap$1$onSpeakStart$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ISpeechViewCallback iSpeechViewCallback = SpeechManager.c;
                    if (iSpeechViewCallback == null) {
                        return;
                    }
                    iSpeechViewCallback.b();
                }
            });
        }

        @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
        public void c(final String str, final int i) {
            if (str == null) {
                SpeechLogUtils.d("SpeechManager", "onTimeout : sessionId == null");
            } else {
                SpeechManager.f5839a.n(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.speech.SpeechManager$mSpeechCallbackWrap$1$onTimeout$1
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
                        ISpeechViewCallback iSpeechViewCallback = SpeechManager.c;
                        if (iSpeechViewCallback == null) {
                            return;
                        }
                        iSpeechViewCallback.c(str, i);
                    }
                });
            }
        }

        @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
        public void d(final String str) {
            SpeechManager.f5839a.n(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.speech.SpeechManager$mSpeechCallbackWrap$1$onShowHint$1
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
                    ISpeechViewCallback iSpeechViewCallback = SpeechManager.c;
                    if (iSpeechViewCallback == null) {
                        return;
                    }
                    iSpeechViewCallback.d(str);
                }
            });
        }

        @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
        public void e(final String str) {
            SpeechManager.f5839a.n(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.speech.SpeechManager$mSpeechCallbackWrap$1$onSessionEnd$1
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
                    ISpeechViewCallback iSpeechViewCallback = SpeechManager.c;
                    if (iSpeechViewCallback == null) {
                        return;
                    }
                    iSpeechViewCallback.e(str);
                }
            });
        }

        @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
        public void f(final String str, final String str2, final boolean z) {
            if (str == null) {
                SpeechLogUtils.d("SpeechManager", "onAsrResult : sessionId == null");
            } else {
                SpeechManager.f5839a.n(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.speech.SpeechManager$mSpeechCallbackWrap$1$onAsrResult$1
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
                        ISpeechViewCallback iSpeechViewCallback = SpeechManager.c;
                        if (iSpeechViewCallback == null) {
                            return;
                        }
                        iSpeechViewCallback.f(str, str2, z);
                    }
                });
            }
        }

        @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
        public void g(final String str, final String str2) {
            if (str == null) {
                SpeechLogUtils.d("SpeechManager", "onWakeup : sessionId == null");
            } else {
                SpeechManager.f5839a.n(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.speech.SpeechManager$mSpeechCallbackWrap$1$onAnswerText$1
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
                        ISpeechViewCallback iSpeechViewCallback = SpeechManager.c;
                        if (iSpeechViewCallback == null) {
                            return;
                        }
                        iSpeechViewCallback.g(str, str2);
                    }
                });
            }
        }

        @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
        public void h(final String str, final int i, final String str2) {
            if (str == null) {
                SpeechLogUtils.d("SpeechManager", "onWakeup : sessionId == null");
            } else {
                ReportManager.f5930a.i();
                SpeechManager.f5839a.n(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.speech.SpeechManager$mSpeechCallbackWrap$1$onWakeup$1
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
                        ISpeechViewCallback iSpeechViewCallback = SpeechManager.c;
                        if (iSpeechViewCallback == null) {
                            return;
                        }
                        iSpeechViewCallback.h(str, i, str2);
                    }
                });
            }
        }

        @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
        public void i() {
            SpeechManager.f5839a.n(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.speech.SpeechManager$mSpeechCallbackWrap$1$onDismissHint$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ISpeechViewCallback iSpeechViewCallback = SpeechManager.c;
                    if (iSpeechViewCallback == null) {
                        return;
                    }
                    iSpeechViewCallback.i();
                }
            });
        }

        @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
        public void onSpeakEnd() {
            SpeechManager.f5839a.n(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.speech.SpeechManager$mSpeechCallbackWrap$1$onSpeakEnd$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ISpeechViewCallback iSpeechViewCallback = SpeechManager.c;
                    if (iSpeechViewCallback == null) {
                        return;
                    }
                    iSpeechViewCallback.onSpeakEnd();
                }
            });
        }

        @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
        public void onVolumeChanged(final int volume, final byte[] data) {
            SpeechManager.f5839a.n(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.speech.SpeechManager$mSpeechCallbackWrap$1$onVolumeChanged$1
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
                    ISpeechViewCallback iSpeechViewCallback = SpeechManager.c;
                    if (iSpeechViewCallback == null) {
                        return;
                    }
                    iSpeechViewCallback.onVolumeChanged(volume, data);
                }
            });
        }
    };

    private SpeechManager() {
    }

    private final boolean e() {
        ISpeechEngine iSpeechEngine = b;
        if (iSpeechEngine != null) {
            r.c(iSpeechEngine);
            if (iSpeechEngine.getK()) {
                return true;
            }
        }
        SpeechLogUtils.b("SpeechManager", "must call init(context: Context, switchWakeup: Boolean, speechCallback: ISpeechCallback?)");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(final Function0<v> function0) {
        if (u.b()) {
            function0.invoke();
        } else {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.speech.a
                @Override // java.lang.Runnable
                public final void run() {
                    SpeechManager.o(function0);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(Function0 method) {
        r.e(method, "$method");
        method.invoke();
    }

    @Override // cn.mucang.android.jiakaoyi.speech.ISpeechManager
    public void a(Context context, boolean z, ISpeechViewCallback iSpeechViewCallback) {
        ISpeechEngine iSpeechEngine;
        r.e(context, "context");
        SpeechSDKHelper.f5931a.a(context);
        SpeechMcProtocolHelper.b();
        if (iSpeechViewCallback != null) {
            c = iSpeechViewCallback;
        }
        SpeechEngine speechEngine = new SpeechEngine();
        b = speechEngine;
        if (speechEngine != null) {
            speechEngine.h(context, f5841e);
        }
        if (z && e() && (iSpeechEngine = b) != null) {
            ISpeechEngine.a.a(iSpeechEngine, 0, false, 2, null);
        }
    }

    public void f() {
        ISpeechEngine iSpeechEngine;
        if (!e() || (iSpeechEngine = b) == null) {
            return;
        }
        iSpeechEngine.disable();
    }

    public void g() {
        ISpeechEngine iSpeechEngine;
        if (!e() || (iSpeechEngine = b) == null) {
            return;
        }
        iSpeechEngine.i();
    }

    public int h() {
        if (!e()) {
            return -1;
        }
        ISpeechEngine iSpeechEngine = b;
        Integer numValueOf = iSpeechEngine == null ? null : Integer.valueOf(iSpeechEngine.getC());
        r.c(numValueOf);
        return numValueOf.intValue();
    }

    public final String i(int i) {
        if (i == 0) {
            return "wakeup";
        }
        if (i == 9) {
            return "error";
        }
        if (i != 5) {
            return i != 6 ? String.valueOf(i) : "speaking";
        }
        return "asr";
    }

    public void j() {
        ISpeechEngine iSpeechEngine;
        if (!e() || (iSpeechEngine = b) == null) {
            return;
        }
        iSpeechEngine.d();
    }

    public void k(VoicePerformanceModel voicePerformanceModel) {
        ISpeechEngine iSpeechEngine;
        if (!e() || (iSpeechEngine = b) == null) {
            return;
        }
        iSpeechEngine.j(voicePerformanceModel);
    }

    public boolean l() {
        ISpeechEngine iSpeechEngine;
        return e() && (iSpeechEngine = b) != null && iSpeechEngine.getJ();
    }

    public void p(ISpeechStateChangeCallback iSpeechStateChangeCallback) {
        if (iSpeechStateChangeCallback != null) {
            CopyOnWriteArrayList<ISpeechStateChangeCallback> copyOnWriteArrayList = f5840d;
            if (copyOnWriteArrayList.contains(iSpeechStateChangeCallback)) {
                return;
            }
            copyOnWriteArrayList.add(iSpeechStateChangeCallback);
        }
    }

    public void q() {
        ISpeechEngine iSpeechEngine;
        if (!e() || (iSpeechEngine = b) == null) {
            return;
        }
        iSpeechEngine.release();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0037  */
    /* JADX WARN: Code duplicated, block: B:11:0x0039  */
    /* JADX WARN: Code duplicated, block: B:19:0x0059  */
    /* JADX WARN: Code duplicated, block: B:22:0x005e  */
    /* JADX WARN: Code duplicated, block: B:26:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x002d  */
    public String r(VoicePerformanceModel voicePerformanceModel) {
        int grade;
        int grade2;
        ISpeechEngine iSpeechEngine;
        if (voicePerformanceModel == null) {
            return null;
        }
        SpeechLogUtils.c("SpeechManager", r.m("showHint tts=", voicePerformanceModel.getPlayText()));
        TtsGrade ttsGradeE = TtsManager.f3517a.e(2);
        if (f5839a.e()) {
            ISpeechEngine iSpeechEngine2 = b;
            r.c(iSpeechEngine2);
            if (!iSpeechEngine2.c()) {
                grade = voicePerformanceModel.getGrade().getGrade();
                if (ttsGradeE == null) {
                    grade2 = 0;
                } else {
                    grade2 = ttsGradeE.getGrade();
                }
                if (grade >= grade2) {
                    iSpeechEngine = b;
                    if (iSpeechEngine == null) {
                        return null;
                    }
                    iSpeechEngine.e(voicePerformanceModel.getPlayText(), voicePerformanceModel.getVoiceUrl(), voicePerformanceModel.getGrade(), !voicePerformanceModel.getCloseAfterSpeak(), voicePerformanceModel.getListener());
                    return null;
                }
            }
        } else {
            grade = voicePerformanceModel.getGrade().getGrade();
            if (ttsGradeE == null) {
                grade2 = 0;
            } else {
                grade2 = ttsGradeE.getGrade();
            }
            if (grade >= grade2) {
                iSpeechEngine = b;
                if (iSpeechEngine == null) {
                    return null;
                }
                iSpeechEngine.e(voicePerformanceModel.getPlayText(), voicePerformanceModel.getVoiceUrl(), voicePerformanceModel.getGrade(), !voicePerformanceModel.getCloseAfterSpeak(), voicePerformanceModel.getListener());
                return null;
            }
        }
        TtsListener listener = voicePerformanceModel.getListener();
        if (listener != null) {
            listener.onIntercept();
        }
        SpeechLogUtils.c("SpeechManager", r.m("showHint onIntercept, tts=", voicePerformanceModel.getPlayText()));
        return "";
    }

    public void s() {
        if (e()) {
            ISpeechEngine iSpeechEngine = b;
            if ((iSpeechEngine == null || iSpeechEngine.getJ()) ? false : true) {
                SpeechLogUtils.b("SpeechManager", "startSpeech, 语音助手已被禁用");
                return;
            }
            ISpeechEngine iSpeechEngine2 = b;
            if (iSpeechEngine2 == null) {
                return;
            }
            iSpeechEngine2.b(7, false);
        }
    }

    public void t() {
        ISpeechEngine iSpeechEngine;
        if (!e() || (iSpeechEngine = b) == null) {
            return;
        }
        iSpeechEngine.f();
    }

    public void u() {
        if (e()) {
            ISpeechEngine iSpeechEngine = b;
            if (iSpeechEngine != null) {
                iSpeechEngine.f();
            }
            ISpeechEngine iSpeechEngine2 = b;
            if (iSpeechEngine2 == null) {
                return;
            }
            ISpeechEngine.a.a(iSpeechEngine2, 0, false, 2, null);
        }
    }
}
