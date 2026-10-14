package cn.mucang.android.jiakaoyi.framework.tts;

import android.content.Context;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.R;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.iflytek.cloud.InitListener;
import com.iflytek.cloud.Setting;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechSynthesizer;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.cloud.SynthesizerListener;
import com.iflytek.cloud.util.ResourceUtil;
import com.iflytek.speech.VoiceWakeuperAidl;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.tts.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\u0010\u001a\u00020\bJ\u000e\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0004J\u0016\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\bJ\u001e\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/tts/Synthesizer;", "", "()V", "TAG", "", "speechSynthesizer", "Lcom/iflytek/cloud/SpeechSynthesizer;", "changeEngineType", "", "type", "initVoiceParameter", "context", "Landroid/content/Context;", "isPlaying", "", "onCreate", "onDestroy", "setAudioPath", "path", "setVoiceName", Constant.PROTOCOL_WEBVIEW_NAME, "speak", "text", "callback", "Lcom/iflytek/cloud/SynthesizerListener;", "stopSpeaking", "synthesizeToUri", "file", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class Synthesizer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Synthesizer f3515a = new Synthesizer();
    private static SpeechSynthesizer b;

    private Synthesizer() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(int i) {
        t.m("Synthesizer", r.m("InitListener init() code = ", Integer.valueOf(i)));
        if (i != 0) {
            if (MucangConfig.v()) {
                u.h(r.m("初始化失败,错误码：", Integer.valueOf(i)));
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("语音初始化失败，错误码：", Integer.valueOf(i)));
        }
    }

    public final synchronized void a(Context context) {
        r.e(context, "context");
        String strB = TtsConfig.b();
        StringBuilder sb = new StringBuilder();
        ResourceUtil.RESOURCE_TYPE resource_type = ResourceUtil.RESOURCE_TYPE.assets;
        sb.append(ResourceUtil.generateResourcePath(context, resource_type, r.m("tts", "/common.jet")));
        sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
        sb.append(ResourceUtil.generateResourcePath(context, resource_type, "tts/" + strB + ".jet"));
        SpeechSynthesizer speechSynthesizer = b;
        if (speechSynthesizer != null) {
            speechSynthesizer.setParameter(SpeechConstant.ENGINE_TYPE, TtsConfig.d());
        }
        SpeechSynthesizer speechSynthesizer2 = b;
        if (speechSynthesizer2 != null) {
            speechSynthesizer2.setParameter(ResourceUtil.TTS_RES_PATH, sb.toString());
        }
        SpeechSynthesizer speechSynthesizer3 = b;
        if (speechSynthesizer3 != null) {
            speechSynthesizer3.setParameter(SpeechConstant.VOICE_NAME, strB);
        }
        SpeechSynthesizer speechSynthesizer4 = b;
        if (speechSynthesizer4 != null) {
            speechSynthesizer4.setParameter(SpeechConstant.SPEED, String.valueOf(TtsConfig.c()));
        }
        SpeechSynthesizer speechSynthesizer5 = b;
        if (speechSynthesizer5 != null) {
            speechSynthesizer5.setParameter(SpeechConstant.PITCH, "50");
        }
        SpeechSynthesizer speechSynthesizer6 = b;
        if (speechSynthesizer6 != null) {
            speechSynthesizer6.setParameter(SpeechConstant.VOLUME, "50");
        }
    }

    public final void c(Context context) {
        r.e(context, "context");
        SpeechUtility.createUtility(context, r.m("appid=", context.getString(R.string.app_id)) + ",engine_mode=msc");
        Setting.setShowLog(false);
        SpeechSynthesizer speechSynthesizerCreateSynthesizer = SpeechSynthesizer.createSynthesizer(context, new InitListener() { // from class: cn.mucang.android.jiakaoyi.framework.tts.a
            @Override // com.iflytek.cloud.InitListener
            public final void onInit(int i) {
                Synthesizer.d(i);
            }
        });
        b = speechSynthesizerCreateSynthesizer;
        if (speechSynthesizerCreateSynthesizer != null) {
            speechSynthesizerCreateSynthesizer.setParameter(SpeechConstant.STREAM_TYPE, "3");
        }
        SpeechSynthesizer speechSynthesizer = b;
        if (speechSynthesizer != null) {
            speechSynthesizer.setParameter(SpeechConstant.KEY_REQUEST_FOCUS, "true");
        }
        a(context);
    }

    public final void e(String path) {
        r.e(path, "path");
        SpeechSynthesizer speechSynthesizer = b;
        if (speechSynthesizer == null) {
            return;
        }
        speechSynthesizer.setParameter(SpeechConstant.TTS_AUDIO_PATH, path);
    }

    public final void f(String text, SynthesizerListener callback) {
        r.e(text, "text");
        r.e(callback, "callback");
        SpeechSynthesizer speechSynthesizer = b;
        if (speechSynthesizer == null) {
            return;
        }
        speechSynthesizer.startSpeaking(text, callback);
    }

    public final void g() {
        SpeechSynthesizer speechSynthesizer = b;
        if (speechSynthesizer == null) {
            return;
        }
        speechSynthesizer.stopSpeaking();
    }

    public final void h(String text, String file, SynthesizerListener listener) {
        r.e(text, "text");
        r.e(file, "file");
        r.e(listener, "listener");
        SpeechSynthesizer speechSynthesizer = b;
        if (speechSynthesizer == null) {
            return;
        }
        speechSynthesizer.synthesizeToUri(text, file, listener);
    }
}
