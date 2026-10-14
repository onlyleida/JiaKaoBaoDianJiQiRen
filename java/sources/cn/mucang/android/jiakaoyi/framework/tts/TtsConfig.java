package cn.mucang.android.jiakaoyi.framework.tts;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.SharedPreferences;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.jiakaoyi.framework.CrossModuleCaller;
import com.iflytek.cloud.SpeechConstant;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.tts.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\b\u0010\u0011\u001a\u00020\u0004H\u0007J\b\u0010\u0012\u001a\u00020\u0013H\u0007J\b\u0010\u0014\u001a\u00020\u0004H\u0007J\b\u0010\u0015\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0013H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/tts/TtsConfig;", "", "()V", "KEY_TTS_SPEED_GRADE", "", "KEY_TTS_VOICE_NAME", "KEY_TTS_VOICE_SPEED", "Offline", "Online", "SP_TTS_CONFIG_CACHE", "voiceName", "changePerson", "", "context", "Landroid/content/Context;", "speaker", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;", "getName", "getSpeed", "", "getType", "getVoiceGrade", "setVoiceGrade", "grade", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TtsConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TtsConfig f3516a = new TtsConfig();
    private static String b;

    private TtsConfig() {
    }

    public static final void a(Context context, TtsSpeaker speaker) {
        r.e(context, "context");
        r.e(speaker, "speaker");
        if (r.a(speaker.getVoiceName(), b)) {
            int iC = c();
            Integer numA = ArraysKt___ArraysKt.A(speaker.getSpeedArray(), e());
            if (iC == (numA == null ? 50 : numA.intValue())) {
                return;
            }
        }
        b = speaker.getVoiceName();
        SharedPreferences.Editor editorPutString = j0.b("tts_config_cache").edit().putString("key_tts_voice_name", b);
        Integer numA2 = ArraysKt___ArraysKt.A(speaker.getSpeedArray(), e());
        editorPutString.putInt("key_tts_voice_speed", numA2 != null ? numA2.intValue() : 50).apply();
        TtsManager.d(context);
    }

    public static final String b() {
        if (b == null) {
            b = j0.f("tts_config_cache", "key_tts_voice_name", TtsSpeaker.XiaoYan.getVoiceName());
        }
        String str = b;
        r.c(str);
        return str;
    }

    public static final int c() {
        return j0.d("tts_config_cache", "key_tts_voice_speed", 50);
    }

    public static final String d() {
        return SpeechConstant.TYPE_CLOUD;
    }

    public static final int e() {
        return j0.d("tts_config_cache", "key_tts_speed_grade", VoiceSpeed.Standard.getIndex());
    }

    public static final void f(int i) {
        j0.i("tts_config_cache", "key_tts_speed_grade", i);
        ComponentCallbacks2 context = MucangConfig.getContext();
        CrossModuleCaller crossModuleCaller = context instanceof CrossModuleCaller ? (CrossModuleCaller) context : null;
        if (crossModuleCaller == null) {
            return;
        }
        crossModuleCaller.l();
    }
}
