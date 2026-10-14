package cn.mucang.android.jiakaoyi.speech.callback;

import com.iflytek.cloud.SpeechConstant;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.d.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u001a\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\u0003H&J\b\u0010\f\u001a\u00020\u0003H&J\u001a\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H&¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/callback/IAsrCallback;", "", "onAsrError", "", "code", "", "onAsrResult", "words", "", "isFinal", "", "onSpeakEnd", "onSpeakStart", "onVolumeChanged", SpeechConstant.VOLUME, "data", "", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface IAsrCallback {
    void b();

    void c(String str, boolean z);

    void d(int i);

    void onSpeakEnd();

    void onVolumeChanged(int volume, byte[] data);
}
