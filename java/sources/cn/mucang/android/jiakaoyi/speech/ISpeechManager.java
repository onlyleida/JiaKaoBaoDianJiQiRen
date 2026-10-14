package cn.mucang.android.jiakaoyi.speech;

import android.content.Context;
import cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\"\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\u0003H&J\b\u0010\t\u001a\u00020\nH&J&\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\n2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010H&J\u0012\u0010\u0011\u001a\u00020\u00032\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H&J\b\u0010\u0014\u001a\u00020\nH&J\u0012\u0010\u0015\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H&J\b\u0010\u0018\u001a\u00020\u0003H&J\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H&J\b\u0010\u001b\u001a\u00020\u0003H&J\b\u0010\u001c\u001a\u00020\u0003H&J\b\u0010\u000e\u001a\u00020\u0003H&J\u0012\u0010\u001d\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H&J\u0018\u0010\u001e\u001a\u00020\u00032\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010 H&¨\u0006!"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/ISpeechManager;", "", "disable", "", "dismissHint", "enable", "getMode", "", "getVrWelcomeWords", "hasSession", "", "init", "context", "Landroid/content/Context;", "switchWakeup", "speechViewCallback", "Lcn/mucang/android/jiakaoyi/speech/callback/ISpeechViewCallback;", "invokeSpeechRet", "mode", "Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;", Constant.API_PARAMS_KEY_ENABLE, "registerSpeechStateChangeCallback", "callback", "Lcn/mucang/android/jiakaoyi/speech/callback/ISpeechStateChangeCallback;", "release", "showHint", "", "startSpeech", "stopSpeech", "unregisterSpeechStateChangeCallback", "uploadHotWords", "words", "", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface ISpeechManager {

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.b$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        public static /* synthetic */ void a(ISpeechManager iSpeechManager, Context context, boolean z, ISpeechViewCallback iSpeechViewCallback, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: init");
            }
            if ((i & 2) != 0) {
                z = true;
            }
            if ((i & 4) != 0) {
                iSpeechViewCallback = null;
            }
            iSpeechManager.a(context, z, iSpeechViewCallback);
        }
    }

    void a(Context context, boolean z, ISpeechViewCallback iSpeechViewCallback);
}
