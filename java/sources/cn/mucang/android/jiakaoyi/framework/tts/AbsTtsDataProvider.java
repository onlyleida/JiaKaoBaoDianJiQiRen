package cn.mucang.android.jiakaoyi.framework.tts;

import android.os.Bundle;
import cn.mucang.android.jiakaoyi.framework.dataprovider.BaseDataProvider;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nJ\"\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ \u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ,\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH&J.\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH&¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/tts/AbsTtsDataProvider;", "Lcn/mucang/android/jiakaoyi/framework/dataprovider/BaseDataProvider;", "args", "Landroid/os/Bundle;", "(Landroid/os/Bundle;)V", "startSpeechLow", "", "text", "", "grade", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "code", "", "voiceUrl", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class AbsTtsDataProvider extends BaseDataProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbsTtsDataProvider(Bundle args) {
        super(args);
        r.e(args, "args");
    }

    public final void startSpeechLow(String text, TtsGrade grade) {
        r.e(grade, "grade");
        startSpeechLow(text, grade, (TtsListener) null);
    }

    public abstract void startSpeechLow(String str, TtsGrade ttsGrade, int i, TtsListener ttsListener);

    public abstract void startSpeechLow(String str, String str2, TtsGrade ttsGrade, TtsListener ttsListener);

    public final void startSpeechLow(String text, TtsGrade grade, int code) {
        r.e(grade, "grade");
        startSpeechLow(text, grade, code, (TtsListener) null);
    }

    public final void startSpeechLow(String str, TtsGrade grade, TtsListener ttsListener) {
        r.e(grade, "grade");
        startSpeechLow(str, grade, -1, ttsListener);
    }
}
