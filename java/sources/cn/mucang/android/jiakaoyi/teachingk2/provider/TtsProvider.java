package cn.mucang.android.jiakaoyi.teachingk2.provider;

import android.os.Bundle;
import cn.mucang.android.jiakaoyi.framework.tts.AbsTtsDataProvider;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J,\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J.\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/provider/TtsProvider;", "Lcn/mucang/android/jiakaoyi/framework/tts/AbsTtsDataProvider;", "args", "Landroid/os/Bundle;", "(Landroid/os/Bundle;)V", "startSpeechLow", "", "text", "", "grade", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;", "code", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "voiceUrl", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TtsProvider extends AbsTtsDataProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TtsProvider(Bundle args) {
        super(args);
        r.e(args, "args");
    }

    @Override // cn.mucang.android.jiakaoyi.framework.tts.AbsTtsDataProvider
    public void startSpeechLow(String str, TtsGrade grade, int i, TtsListener ttsListener) {
        r.e(grade, "grade");
        RobotTips.X(str, null, grade, i, ttsListener);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.tts.AbsTtsDataProvider
    public void startSpeechLow(String str, String str2, TtsGrade grade, TtsListener ttsListener) {
        r.e(grade, "grade");
        RobotTips.X(str, str2, grade, -1, ttsListener);
    }
}
