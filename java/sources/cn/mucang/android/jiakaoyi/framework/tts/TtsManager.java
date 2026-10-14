package cn.mucang.android.jiakaoyi.framework.tts;

import android.content.Context;
import android.media.AudioManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.tts.voice.m;
import cn.mucang.android.jiakaoyi.framework.tts.voice.o;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.t;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.tts.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0004J\n\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0007J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0018\u001a\u00020\u0004H\u0007J\u0010\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\b\u0010\u001d\u001a\u00020\u001eH\u0007J\b\u0010\u001f\u001a\u00020\u000fH\u0002J\b\u0010 \u001a\u00020\u001eH\u0007J\u0010\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u001aH\u0007J\b\u0010\"\u001a\u00020\u000fH\u0002J\b\u0010#\u001a\u00020\u000fH\u0007J\u0018\u0010$\u001a\u00020\u000f2\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011J\u001a\u0010%\u001a\u00020\u000f2\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011H\u0007J\u001a\u0010&\u001a\u00020\u000f2\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011H\u0007J\u001a\u0010'\u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u0017H\u0007J$\u0010'\u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u00172\b\u0010)\u001a\u0004\u0018\u00010*H\u0007J,\u0010'\u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u00172\b\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010+\u001a\u00020\u0004H\u0007J6\u0010'\u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u00172\b\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010+\u001a\u00020\u00042\b\u0010,\u001a\u0004\u0018\u00010\u001aH\u0007J>\u0010'\u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u00172\b\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010+\u001a\u00020\u00042\b\u0010,\u001a\u0004\u0018\u00010\u001a2\u0006\u0010-\u001a\u00020\u0004H\u0007J.\u0010'\u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u00172\b\u0010)\u001a\u0004\u0018\u00010*2\b\u0010,\u001a\u0004\u0018\u00010\u001aH\u0007J\"\u0010'\u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u00172\u0006\u0010+\u001a\u00020\u0004H\u0007J,\u0010'\u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u00172\u0006\u0010+\u001a\u00020\u00042\b\u0010,\u001a\u0004\u0018\u00010\u001aH\u0007J$\u0010'\u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u00172\b\u0010,\u001a\u0004\u0018\u00010\u001aH\u0007J.\u0010'\u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\b\u0010.\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u00172\b\u0010)\u001a\u0004\u0018\u00010*H\u0007J\u001a\u0010/\u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u0017H\u0007J$\u0010/\u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u00172\b\u0010)\u001a\u0004\u0018\u00010*H\u0007J\"\u0010/\u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u00172\u0006\u0010+\u001a\u00020\u0004H\u0007J,\u0010/\u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u00172\u0006\u0010+\u001a\u00020\u00042\b\u0010)\u001a\u0004\u0018\u00010*H\u0007J.\u0010/\u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\u001a2\b\u0010.\u001a\u0004\u0018\u00010\u001a2\u0006\u0010(\u001a\u00020\u00172\b\u0010)\u001a\u0004\u0018\u00010*H\u0007J\u0010\u00100\u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\u001aJ\b\u00101\u001a\u00020\u000fH\u0007J\u0006\u00102\u001a\u00020\u000fJ\b\u00103\u001a\u00020\u000fH\u0007J\u0010\u00103\u001a\u00020\u000f2\u0006\u00104\u001a\u00020\u001eH\u0007J\u0010\u00103\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0004H\u0007J\u0006\u00105\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/tts/TtsManager;", "", "()V", "ChannelLow", "", "ChannelNormal", "LowVolume", "", "MediaPlayerType", "NormalVolume", "TtsType", "lowVoicePlayer", "Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePlayerManager;", "voicePlayer", "addSpeakingCallback", "", "callback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoiceTask;", "changeVoiceParam", "context", "Landroid/content/Context;", "currentGrade", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;", "channel", "currentPlayingTxt", "", "getChannelPlayer", "globalInit", "hasPlayTask", "", "highVolume", "isPlaying", "text", "lowVolume", "onDestroy", "removeSpeakingCallback", "setLowSpeakingCallback", "setSpeakingCallback", "startSpeaking", "grade", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "code", "key", "type", "voiceUrl", "startSpeechLow", "startSynthesize", "stopAllSpeaking", "stopLowSpeaking", "stopSpeaking", "isClear", "stopTeachVoice", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TtsManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TtsManager f3517a = new TtsManager();
    private static final m b = new m(1, new a());
    private static final m c = new m(2, null);

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.tts.g$a */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/framework/tts/TtsManager$voicePlayer$1", "Lcn/mucang/android/jiakaoyi/framework/tts/play/PlayerListener;", "onFinish", "", "task", "Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoiceTask;", "onPause", "onResume", "onStart", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements cn.mucang.android.jiakaoyi.framework.tts.play.e {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.play.e
        public void a(o oVar) {
            if (oVar == null) {
                TtsManager.f3517a.k();
            }
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.play.e
        public void b(o oVar) {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.play.e
        public void c(o oVar) {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.play.e
        public void d(o oVar) {
            TtsManager.f3517a.n();
        }
    }

    private TtsManager() {
    }

    public static final void A(String str, TtsGrade grade, int i) {
        r.e(grade, "grade");
        B(str, grade, i, null);
    }

    public static final void B(String str, TtsGrade grade, int i, TtsListener ttsListener) {
        r.e(grade, "grade");
        if (str == null || t.r(str)) {
            return;
        }
        c.v(new o(i, null, str, grade, ttsListener, 2, true, 2));
    }

    public static final void C(String str, TtsGrade grade, TtsListener ttsListener) {
        r.e(grade, "grade");
        B(str, grade, -1, ttsListener);
    }

    public static final void D(String str, String str2, TtsGrade grade, TtsListener ttsListener) {
        r.e(grade, "grade");
        if (str == null || t.r(str)) {
            return;
        }
        c.v(new o(-1, null, str, grade, ttsListener, 2, true, 2, str2));
    }

    public static final void F() {
        TtsManager ttsManager = f3517a;
        J(true);
        ttsManager.G();
    }

    public static final void H() {
        J(true);
    }

    public static final void I(int i) {
        f3517a.h(i).w();
    }

    public static final void J(boolean z) {
        b.n(z);
    }

    public static final void d(Context context) {
        r.e(context, "context");
        Synthesizer.f3515a.a(context);
    }

    public static final String f() {
        return f3517a.h(1).f();
    }

    public static final String g(int i) {
        return f3517a.h(i).f();
    }

    private final m h(int i) {
        return i == 1 ? b : c;
    }

    public static final void i(Context context) {
        r.e(context, "context");
        Synthesizer.f3515a.c(context);
    }

    public static final boolean j() {
        return b.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k() {
        c.t(1.0f);
    }

    public static final boolean l() {
        return b.i();
    }

    public static final boolean m(String text) {
        r.e(text, "text");
        return b.j(text);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n() {
        Object systemService = MucangConfig.getContext().getSystemService("audio");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        AudioManager audioManager = (AudioManager) systemService;
        float streamVolume = ((audioManager.getStreamVolume(3) + 1.0f) * 1.0f) / (audioManager.getStreamMaxVolume(3) + 1);
        c.t(((streamVolume * 0.5f * streamVolume) + 0.5f) * 0.5f);
    }

    public static final void o() {
        b.q();
    }

    public static final void q(cn.mucang.android.jiakaoyi.framework.h.b<o> bVar) {
        b.s(bVar);
    }

    public static final void r(String str, TtsGrade grade) {
        r.e(grade, "grade");
        x(str, grade, null, 0, null, 2);
    }

    public static final void s(String str, TtsGrade grade, int i) {
        r.e(grade, "grade");
        x(str, grade, null, i, null, 2);
    }

    public static final void t(String str, TtsGrade grade, int i, String str2) {
        r.e(grade, "grade");
        x(str, grade, null, i, str2, 2);
    }

    public static final void u(String str, TtsGrade grade, TtsListener ttsListener) {
        r.e(grade, "grade");
        v(str, grade, ttsListener, 0);
    }

    public static final void v(String str, TtsGrade grade, TtsListener ttsListener, int i) {
        r.e(grade, "grade");
        x(str, grade, ttsListener, i, null, 2);
    }

    public static final void w(String str, TtsGrade grade, TtsListener ttsListener, int i, String str2) {
        r.e(grade, "grade");
        x(str, grade, ttsListener, i, str2, 2);
    }

    public static final void x(String str, TtsGrade grade, TtsListener ttsListener, int i, String str2, int i2) {
        r.e(grade, "grade");
        b.v(new o(i, str2, str, grade, ttsListener, i2, true));
    }

    public static final void y(String str, String str2, TtsGrade grade, TtsListener ttsListener) {
        r.e(grade, "grade");
        if (str == null || t.r(str)) {
            return;
        }
        b.v(new o(-1, null, str, grade, ttsListener, 2, true, 1, str2));
    }

    public static final void z(String str, TtsGrade grade) {
        r.e(grade, "grade");
        C(str, grade, null);
    }

    public final void E(String str) {
        if (str == null || t.r(str)) {
            return;
        }
        b.v(new o(-1, null, str, TtsGrade.GlobalTip, null, 2, false));
    }

    public final void G() {
        c.w();
    }

    public final void K() {
        if (h(1).e() == TtsGrade.Teach) {
            h(1).w();
        }
    }

    public final void c(cn.mucang.android.jiakaoyi.framework.h.b<o> bVar) {
        b.d(bVar);
    }

    public final TtsGrade e(int i) {
        return h(i).e();
    }

    public final void p(cn.mucang.android.jiakaoyi.framework.h.b<o> bVar) {
        b.r(bVar);
    }
}
