package cn.mucang.android.jiakaoyi.speech.engine.wakeup;

import android.content.Context;
import android.os.Bundle;
import cn.mucang.android.jiakaoyi.speech.callback.IWakeupCallback;
import cn.mucang.android.jiakaoyi.speech.utils.ReportManager;
import cn.mucang.android.jiakaoyi.speech.utils.SpeechLogUtils;
import com.iflytek.cloud.InitListener;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.cloud.VoiceWakeuper;
import com.iflytek.cloud.WakeuperListener;
import com.iflytek.cloud.WakeuperResult;
import com.iflytek.cloud.util.ResourceUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.json.JSONObject;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.engine.m.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000G\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006*\u0001\f\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002J\u001c\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016J\u0018\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0011H\u0016J\u0010\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0006H\u0016J\b\u0010\u001d\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\r¨\u0006\u001f"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/engine/wakeup/IflytekWakeupEngine;", "Lcn/mucang/android/jiakaoyi/speech/engine/wakeup/IWakeupEngine;", "()V", "mContext", "Landroid/content/Context;", "mInited", "", "mWakeEngine", "Lcom/iflytek/cloud/VoiceWakeuper;", "mWakeupCallback", "Lcn/mucang/android/jiakaoyi/speech/callback/IWakeupCallback;", "mWakeuperListener", "cn/mucang/android/jiakaoyi/speech/engine/wakeup/IflytekWakeupEngine$mWakeuperListener$1", "Lcn/mucang/android/jiakaoyi/speech/engine/wakeup/IflytekWakeupEngine$mWakeuperListener$1;", "getWakeupModePath", "", "init", "", "context", "callback", "isWorking", "onAudioWrite", "data", "", "length", "", "release", "startWakeupMode", "force", "stopWakeupMode", "Companion", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class IflytekWakeupEngine implements IWakeupEngine {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private VoiceWakeuper f5885a;
    private IWakeupCallback b;
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f5886d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f5887e = new a();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.engine.m.c$a */
    @Metadata(d1 = {"\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J*\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\u0012"}, d2 = {"cn/mucang/android/jiakaoyi/speech/engine/wakeup/IflytekWakeupEngine$mWakeuperListener$1", "Lcom/iflytek/cloud/WakeuperListener;", "onBeginOfSpeech", "", "onError", "error", "Lcom/iflytek/cloud/SpeechError;", "onEvent", "p0", "", "p1", "p2", "p3", "Landroid/os/Bundle;", "onResult", SpeechUtility.TAG_RESOURCE_RESULT, "Lcom/iflytek/cloud/WakeuperResult;", "onVolumeChanged", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements WakeuperListener {
        a() {
        }

        @Override // com.iflytek.cloud.WakeuperListener
        public void onBeginOfSpeech() {
        }

        @Override // com.iflytek.cloud.WakeuperListener
        public void onError(SpeechError error) {
            SpeechLogUtils.b("IflytekWakeupEngine", r.m("onError ", error == null ? null : error.getPlainDescription(true)));
        }

        @Override // com.iflytek.cloud.WakeuperListener
        public void onEvent(int p0, int p1, int p2, Bundle p3) {
        }

        @Override // com.iflytek.cloud.WakeuperListener
        public void onResult(WakeuperResult result) {
            if (result != null) {
                try {
                    String keyWord = new JSONObject(result.getResultString()).optString("keyword");
                    SpeechLogUtils.c("IflytekWakeupEngine", "onWakeup : " + ((Object) keyWord) + " !!");
                    IWakeupCallback iWakeupCallback = IflytekWakeupEngine.this.b;
                    if (iWakeupCallback == null) {
                        return;
                    }
                    r.d(keyWord, "keyWord");
                    iWakeupCallback.a(6, keyWord, true);
                } catch (Exception e2) {
                    e2.printStackTrace();
                    SpeechLogUtils.b("IflytekWakeupEngine", e2.getMessage());
                }
            }
        }

        @Override // com.iflytek.cloud.WakeuperListener
        public void onVolumeChanged(int p0) {
        }
    }

    private final String i() {
        return ResourceUtil.generateResourcePath(this.c, ResourceUtil.RESOURCE_TYPE.assets, "ivw/5f0ea3a7.jet");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(int i) {
        SpeechLogUtils.c("IflytekWakeupEngine", r.m("init code=", Integer.valueOf(i)));
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.wakeup.IWakeupEngine
    public void a(boolean z) {
        SpeechLogUtils.a("IflytekWakeupEngine", "startWakeupMode");
        if (c() && !z) {
            SpeechLogUtils.c("IflytekWakeupEngine", "already is wakeup listening");
            return;
        }
        SpeechLogUtils.a("IflytekWakeupEngine", "start wakeup listen success");
        VoiceWakeuper voiceWakeuper = this.f5885a;
        if (voiceWakeuper == null) {
            return;
        }
        voiceWakeuper.startListening(this.f5887e);
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.wakeup.IWakeupEngine
    public void b() {
        if (c()) {
            SpeechLogUtils.a("IflytekWakeupEngine", "stop wakeup listen");
            VoiceWakeuper voiceWakeuper = this.f5885a;
            if (voiceWakeuper == null) {
                return;
            }
            voiceWakeuper.stopListening();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.IEngine
    public boolean c() {
        VoiceWakeuper voiceWakeuper = this.f5885a;
        if (voiceWakeuper == null) {
            return false;
        }
        r.c(voiceWakeuper);
        return voiceWakeuper.isListening();
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.IEngine
    public void e(byte[] data, int i) {
        VoiceWakeuper voiceWakeuper;
        r.e(data, "data");
        if (this.f5886d && c() && (voiceWakeuper = this.f5885a) != null) {
            voiceWakeuper.writeAudio(data, 0, i);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.speech.engine.IEngine
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public void g(Context context, IWakeupCallback iWakeupCallback) {
        if (context == null) {
            throw new IllegalArgumentException("context must not  null !!");
        }
        if (this.f5886d) {
            SpeechLogUtils.c("IflytekWakeupEngine", "already initialized");
            return;
        }
        this.c = context;
        this.b = iWakeupCallback;
        if (this.f5885a == null) {
            VoiceWakeuper voiceWakeuperCreateWakeuper = VoiceWakeuper.createWakeuper(context, new InitListener() { // from class: cn.mucang.android.jiakaoyi.speech.engine.m.a
                @Override // com.iflytek.cloud.InitListener
                public final void onInit(int i) {
                    IflytekWakeupEngine.k(i);
                }
            });
            this.f5885a = voiceWakeuperCreateWakeuper;
            if (voiceWakeuperCreateWakeuper != null) {
                voiceWakeuperCreateWakeuper.setParameter(SpeechConstant.PARAMS, null);
                voiceWakeuperCreateWakeuper.setParameter("ivw_threshold", "0:1450;1:2000;2:1450");
                voiceWakeuperCreateWakeuper.setParameter("sst", "wakeup");
                voiceWakeuperCreateWakeuper.setParameter(SpeechConstant.KEEP_ALIVE, "0");
                voiceWakeuperCreateWakeuper.setParameter(SpeechConstant.IVW_NET_MODE, "0");
                voiceWakeuperCreateWakeuper.setParameter("ivw_res_path", i());
                voiceWakeuperCreateWakeuper.setParameter(SpeechConstant.AUDIO_SOURCE, "-1");
                voiceWakeuperCreateWakeuper.setParameter(SpeechConstant.IVW_AUDIO_PATH, ReportManager.f5930a.c());
                voiceWakeuperCreateWakeuper.setParameter(SpeechConstant.AUDIO_FORMAT, "wav");
            }
        }
        this.f5886d = true;
    }
}
