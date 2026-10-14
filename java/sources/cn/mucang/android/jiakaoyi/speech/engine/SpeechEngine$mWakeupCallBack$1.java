package cn.mucang.android.jiakaoyi.speech.engine;

import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback;
import cn.mucang.android.jiakaoyi.speech.callback.IWakeupCallback;
import cn.mucang.android.jiakaoyi.speech.utils.SpeechLogUtils;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.random.Random;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1", "Lcn/mucang/android/jiakaoyi/speech/callback/IWakeupCallback;", "onMainWakeup", "", "type", "", "wakeupWord", "", "needWelcome", "", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SpeechEngine$mWakeupCallBack$1 implements IWakeupCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ SpeechEngine f5866a;

    SpeechEngine$mWakeupCallBack$1(SpeechEngine speechEngine) {
        this.f5866a = speechEngine;
    }

    @Override // cn.mucang.android.jiakaoyi.speech.callback.IWakeupCallback
    public void a(int i, String wakeupWord, boolean z) {
        r.e(wakeupWord, "wakeupWord");
        TtsGrade ttsGradeE = TtsManager.f3517a.e(2);
        if (ttsGradeE != null) {
            int grade = ttsGradeE.getGrade();
            TtsGrade ttsGrade = TtsGrade.VoiceRobot;
            if (grade > ttsGrade.getGrade()) {
                SpeechLogUtils.c("SpeechEngine", "ignore wakeup!!, because lowVoicePlaying tts grade:" + ttsGradeE.getGrade() + " > 语音助手(" + ttsGrade.getGrade() + ')');
                this.f5866a.q0(0, true, false);
                return;
            }
        }
        SpeechEngine speechEngine = this.f5866a;
        speechEngine.U(speechEngine.n);
        ISpeechEngine.a.a(this.f5866a, -1, false, 2, null);
        this.f5866a.n = String.valueOf(System.currentTimeMillis());
        SpeechLogUtils.c("SpeechEngine", "onMainWakeup sessionId=" + ((Object) this.f5866a.n) + " , type=" + i + " , needWelcome=" + z);
        ISpeechViewCallback iSpeechViewCallback = this.f5866a.f5853g;
        if (iSpeechViewCallback != null) {
            iSpeechViewCallback.h(this.f5866a.n, i, wakeupWord);
        }
        if (!z) {
            SpeechEngine speechEngine2 = this.f5866a;
            speechEngine2.m0(speechEngine2.n);
            return;
        }
        SpeechEngine speechEngine3 = this.f5866a;
        String str = speechEngine3.n;
        String str2 = (String) s.z0(this.f5866a.f5849a, Random.INSTANCE);
        final SpeechEngine speechEngine4 = this.f5866a;
        SpeechEngine.i0(speechEngine3, str, str2, null, null, null, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.speech.engine.SpeechEngine$mWakeupCallBack$1$onMainWakeup$1
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
                SpeechEngine speechEngine5 = speechEngine4;
                speechEngine5.m0(speechEngine5.n);
            }
        }, 28, null);
    }
}
