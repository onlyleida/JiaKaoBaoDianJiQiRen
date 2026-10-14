package cn.mucang.android.jiakaoyi.speech.model;

import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010-\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001c\u0010'\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010$\"\u0004\b)\u0010&R\u001c\u0010*\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010$\"\u0004\b,\u0010&¨\u0006."}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;", "Ljava/io/Serializable;", "()V", "closeAfterSpeak", "", "getCloseAfterSpeak", "()Z", "setCloseAfterSpeak", "(Z)V", "closePanel", "getClosePanel", "setClosePanel", "code", "", "getCode", "()I", "setCode", "(I)V", "forcePlay", "getForcePlay", "setForcePlay", "grade", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;", "getGrade", "()Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;", "setGrade", "(Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "getListener", "()Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "setListener", "(Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;)V", "playText", "", "getPlayText", "()Ljava/lang/String;", "setPlayText", "(Ljava/lang/String;)V", "sessionId", "getSessionId", "setSessionId", "voiceUrl", "getVoiceUrl", "setVoiceUrl", "isNotMatch", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class VoicePerformanceModel implements Serializable {
    private boolean closeAfterSpeak;
    private boolean closePanel;
    private boolean forcePlay;
    private TtsListener listener;
    private String playText;
    private String sessionId;
    private String voiceUrl;
    private TtsGrade grade = TtsGrade.VoiceRobot;
    private int code = -1;

    public final boolean getCloseAfterSpeak() {
        return this.closeAfterSpeak;
    }

    public final boolean getClosePanel() {
        return this.closePanel;
    }

    public final int getCode() {
        return this.code;
    }

    public final boolean getForcePlay() {
        return this.forcePlay;
    }

    public final TtsGrade getGrade() {
        return this.grade;
    }

    public final TtsListener getListener() {
        return this.listener;
    }

    public final String getPlayText() {
        return this.playText;
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public final String getVoiceUrl() {
        return this.voiceUrl;
    }

    public final boolean isNotMatch() {
        return false;
    }

    public final void setCloseAfterSpeak(boolean z) {
        this.closeAfterSpeak = z;
    }

    public final void setClosePanel(boolean z) {
        this.closePanel = z;
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public final void setForcePlay(boolean z) {
        this.forcePlay = z;
    }

    public final void setGrade(TtsGrade ttsGrade) {
        r.e(ttsGrade, "<set-?>");
        this.grade = ttsGrade;
    }

    public final void setListener(TtsListener ttsListener) {
        this.listener = ttsListener;
    }

    public final void setPlayText(String str) {
        this.playText = str;
    }

    public final void setSessionId(String str) {
        this.sessionId = str;
    }

    public final void setVoiceUrl(String str) {
        this.voiceUrl = str;
    }
}
