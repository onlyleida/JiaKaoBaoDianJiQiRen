package cn.mucang.android.jiakaoyi.speech.callback;

import com.iflytek.cloud.SpeechConstant;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.d.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&J$\u0010\u0007\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u0003H&J\u0012\u0010\u000b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\f\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&J\b\u0010\r\u001a\u00020\u0003H&J\b\u0010\u000e\u001a\u00020\u0003H&J\u001a\u0010\u000f\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u0011H&J\u001a\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H&J$\u0010\u0016\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0017\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0018"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/callback/ISpeechViewCallback;", "Lcn/mucang/android/jiakaoyi/speech/callback/ISpeechStateChangeCallback;", "onAnswerText", "", "sessionId", "", "words", "onAsrResult", "isFinal", "", "onDismissHint", "onSessionEnd", "onShowHint", "onSpeakEnd", "onSpeakStart", "onTimeout", "type", "", "onVolumeChanged", SpeechConstant.VOLUME, "data", "", "onWakeup", "keyWord", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface ISpeechViewCallback extends ISpeechStateChangeCallback {
    void b();

    void c(String str, int i);

    void d(String str);

    void e(String str);

    void f(String str, String str2, boolean z);

    void g(String str, String str2);

    void h(String str, int i, String str2);

    void i();

    void onSpeakEnd();

    void onVolumeChanged(int volume, byte[] data);
}
