package cn.mucang.android.jiakaoyi.speech.engine.asr;

import android.content.Context;
import android.os.Bundle;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.speech.callback.IAsrCallback;
import cn.mucang.android.jiakaoyi.speech.utils.ReportManager;
import cn.mucang.android.jiakaoyi.speech.utils.SpeechLogUtils;
import com.iflytek.cloud.RecognizerListener;
import com.iflytek.cloud.RecognizerResult;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechRecognizer;
import com.iflytek.cloud.SpeechUtility;
import com.tencent.connect.common.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.engine.l.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000O\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\b\u0002*\u0001\u000e\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u001c\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0015\u001a\u00020\fH\u0016J\u0018\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0011H\u0016J\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\fH\u0016J\b\u0010\u001e\u001a\u00020\u0011H\u0016J\u0018\u0010\u001f\u001a\u00020\u00112\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010!H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000f¨\u0006#"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/engine/asr/IflytekAsrEngine;", "Lcn/mucang/android/jiakaoyi/speech/engine/asr/IAsrEngine;", "()V", "mAsrCallback", "Lcn/mucang/android/jiakaoyi/speech/callback/IAsrCallback;", "mAsrEngine", "Lcom/iflytek/cloud/SpeechRecognizer;", "mAsrResult", "", "mContext", "Landroid/content/Context;", "mInited", "", "mRecognizerListener", "cn/mucang/android/jiakaoyi/speech/engine/asr/IflytekAsrEngine$mRecognizerListener$1", "Lcn/mucang/android/jiakaoyi/speech/engine/asr/IflytekAsrEngine$mRecognizerListener$1;", "cancel", "", "init", "context", "callback", "isWorking", "onAudioWrite", "data", "", "length", "", "release", "startAsrMode", "force", "stopAsrMode", "uploadHotWords", "words", "", "Companion", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class IflytekAsrEngine implements IAsrEngine {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SpeechRecognizer f5880a;
    private IAsrCallback b;
    private volatile boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5881d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f5882e = new a();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.engine.l.b$a */
    @Metadata(d1 = {"\u0000?\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0012\u0010\u0005\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J*\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\n2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016¨\u0006\u0018"}, d2 = {"cn/mucang/android/jiakaoyi/speech/engine/asr/IflytekAsrEngine$mRecognizerListener$1", "Lcom/iflytek/cloud/RecognizerListener;", "onBeginOfSpeech", "", "onEndOfSpeech", "onError", "error", "Lcom/iflytek/cloud/SpeechError;", "onEvent", "p0", "", "p1", "p2", "p3", "Landroid/os/Bundle;", "onResult", SpeechUtility.TAG_RESOURCE_RESULT, "Lcom/iflytek/cloud/RecognizerResult;", "isFinal", "", "onVolumeChanged", SpeechConstant.VOLUME, "data", "", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements RecognizerListener {
        a() {
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onBeginOfSpeech() {
            IAsrCallback iAsrCallback = IflytekAsrEngine.this.b;
            if (iAsrCallback == null) {
                return;
            }
            iAsrCallback.b();
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onEndOfSpeech() {
            IAsrCallback iAsrCallback = IflytekAsrEngine.this.b;
            if (iAsrCallback == null) {
                return;
            }
            iAsrCallback.onSpeakEnd();
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onError(SpeechError error) {
            SpeechLogUtils.b("IflytekWakeupEngine", r.m("onError ", error == null ? null : error.getPlainDescription(true)));
            IAsrCallback iAsrCallback = IflytekAsrEngine.this.b;
            if (iAsrCallback != null) {
                r.c(error);
                iAsrCallback.d(error.getErrorCode());
            }
            IflytekAsrEngine.this.f5881d = "";
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onEvent(int p0, int p1, int p2, Bundle p3) {
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onResult(RecognizerResult result, boolean isFinal) {
            IflytekAsrEngine iflytekAsrEngine = IflytekAsrEngine.this;
            iflytekAsrEngine.f5881d = r.m(iflytekAsrEngine.f5881d, result == null ? null : result.getResultString());
            IAsrCallback iAsrCallback = IflytekAsrEngine.this.b;
            if (iAsrCallback == null) {
                return;
            }
            iAsrCallback.c(IflytekAsrEngine.this.f5881d, isFinal);
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onVolumeChanged(int volume, byte[] data) {
            IAsrCallback iAsrCallback = IflytekAsrEngine.this.b;
            if (iAsrCallback == null) {
                return;
            }
            iAsrCallback.onVolumeChanged(volume, data);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.IEngine
    public boolean c() {
        SpeechRecognizer speechRecognizer = this.f5880a;
        if (speechRecognizer == null) {
            return false;
        }
        r.c(speechRecognizer);
        return speechRecognizer.isListening();
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.asr.IAsrEngine
    public void cancel() {
        SpeechRecognizer speechRecognizer = this.f5880a;
        if (speechRecognizer == null) {
            return;
        }
        speechRecognizer.cancel();
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.asr.IAsrEngine
    public void d(boolean z) {
        SpeechLogUtils.a("IflytekAsrEngine", "startAsrMode");
        if (c() && !z) {
            SpeechLogUtils.c("IflytekAsrEngine", "is listening");
            return;
        }
        SpeechLogUtils.a("IflytekAsrEngine", "startAsrMode success");
        this.f5881d = "";
        SpeechRecognizer speechRecognizer = this.f5880a;
        if (speechRecognizer == null) {
            return;
        }
        speechRecognizer.startListening(this.f5882e);
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.IEngine
    public void e(byte[] data, int i) {
        SpeechRecognizer speechRecognizer;
        r.e(data, "data");
        if (this.c && c() && (speechRecognizer = this.f5880a) != null) {
            speechRecognizer.writeAudio(data, 0, i);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.asr.IAsrEngine
    public void f() {
        SpeechLogUtils.a("IflytekAsrEngine", "stopAsrMode");
        if (!c()) {
            SpeechLogUtils.c("IflytekAsrEngine", "is not listening");
            return;
        }
        SpeechLogUtils.a("IflytekAsrEngine", "stopAsrMode success");
        this.f5881d = "";
        SpeechRecognizer speechRecognizer = this.f5880a;
        if (speechRecognizer == null) {
            return;
        }
        speechRecognizer.stopListening();
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.IEngine
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void g(Context context, IAsrCallback iAsrCallback) {
        if (context == null) {
            throw new IllegalArgumentException("context must not  null !!");
        }
        if (this.c) {
            SpeechLogUtils.c("IflytekAsrEngine", "already initialized");
            return;
        }
        this.b = iAsrCallback;
        if (this.f5880a == null) {
            SpeechRecognizer speechRecognizerCreateRecognizer = SpeechRecognizer.createRecognizer(MucangConfig.getContext(), null);
            this.f5880a = speechRecognizerCreateRecognizer;
            if (speechRecognizerCreateRecognizer != null) {
                speechRecognizerCreateRecognizer.setParameter(SpeechConstant.PARAMS, null);
                speechRecognizerCreateRecognizer.setParameter(SpeechConstant.ENGINE_TYPE, SpeechConstant.TYPE_CLOUD);
                speechRecognizerCreateRecognizer.setParameter(SpeechConstant.RESULT_TYPE, "plain");
                speechRecognizerCreateRecognizer.setParameter(SpeechConstant.LANGUAGE, "zh_cn");
                speechRecognizerCreateRecognizer.setParameter(SpeechConstant.ACCENT, "mandarin");
                speechRecognizerCreateRecognizer.setParameter(SpeechConstant.VAD_BOS, "9999");
                speechRecognizerCreateRecognizer.setParameter(SpeechConstant.VAD_EOS, Constants.DEFAULT_UIN);
                speechRecognizerCreateRecognizer.setParameter(SpeechConstant.ASR_PTT, "0");
                speechRecognizerCreateRecognizer.setParameter(SpeechConstant.AUDIO_FORMAT, "wav");
                speechRecognizerCreateRecognizer.setParameter(SpeechConstant.AUDIO_SOURCE, "-1");
                speechRecognizerCreateRecognizer.setParameter(SpeechConstant.ASR_AUDIO_PATH, ReportManager.f5930a.a());
            }
        }
        this.c = true;
    }
}
