package cn.mucang.android.jiakaoyi.speech.ui;

import android.app.Activity;
import android.app.Dialog;
import android.text.TextUtils;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback;
import cn.mucang.android.jiakaoyi.speech.utils.SpeechLogUtils;
import com.iflytek.cloud.SpeechConstant;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.ui.i, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0004\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0002J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J$\u0010\u000b\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\t2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0006H\u0016J\u0012\u0010\u0010\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010\u0011\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016J\b\u0010\u0013\u001a\u00020\u0006H\u0016J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u001a\u0010\u0017\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u001a\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J$\u0010\u001d\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0018\u001a\u00020\u00162\b\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/ui/SpeechViewController;", "Lcn/mucang/android/jiakaoyi/speech/callback/ISpeechViewCallback;", "()V", "mSpeechPanel", "Lcn/mucang/android/jiakaoyi/speech/ui/VoiceNewPanel;", "closePanel", "", "onAnswerText", "sessionId", "", "ttsText", "onAsrResult", "words", "isFinal", "", "onDismissHint", "onSessionEnd", "onShowHint", "onSpeakEnd", "onSpeakStart", "onStateChanged", "state", "", "onTimeout", "type", "onVolumeChanged", SpeechConstant.VOLUME, "data", "", "onWakeup", "keyWord", "Companion", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SpeechViewController implements ISpeechViewCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private VoiceNewPanel f5921a;

    private final void j() {
        SpeechLogUtils.c("SpeechViewController", "closePanel");
        VoiceNewPanel voiceNewPanel = this.f5921a;
        if (voiceNewPanel == null) {
            SpeechLogUtils.c("SpeechViewController", "closePanel speechPanel == null");
            return;
        }
        if (voiceNewPanel != null) {
            voiceNewPanel.dismiss();
        }
        this.f5921a = null;
    }

    @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechStateChangeCallback
    public void a(int i) {
        VoiceNewPanel voiceNewPanel = this.f5921a;
        if (voiceNewPanel == null) {
            return;
        }
        voiceNewPanel.C(i != 5);
    }

    @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
    public void b() {
    }

    @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
    public void c(String str, int i) {
        SpeechLogUtils.c("SpeechViewController", r.m("onTimeout sessionId=", str));
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
    public void d(String str) {
        SpeechLogUtils.c("SpeechViewController", r.m("onShowHint words=", str));
        Activity activityI = MucangConfig.i();
        if (activityI.isDestroyed() || activityI.isFinishing()) {
            return;
        }
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if (this.f5921a == null) {
            VoiceNewPanel voiceNewPanel = new VoiceNewPanel(objArr2 == true ? 1 : 0, 1, objArr == true ? 1 : 0);
            this.f5921a = voiceNewPanel;
            r.c(voiceNewPanel);
            voiceNewPanel.B(1);
        }
        androidx.fragment.app.d dVar = activityI instanceof androidx.fragment.app.d ? (androidx.fragment.app.d) activityI : null;
        FragmentManager supportFragmentManager = dVar != null ? dVar.getSupportFragmentManager() : null;
        if (supportFragmentManager == null) {
            return;
        }
        VoiceNewPanel voiceNewPanel2 = this.f5921a;
        r.c(voiceNewPanel2);
        if (voiceNewPanel2.getDialog() != null) {
            VoiceNewPanel voiceNewPanel3 = this.f5921a;
            r.c(voiceNewPanel3);
            Dialog dialog = voiceNewPanel3.getDialog();
            r.c(dialog);
            if (!dialog.isShowing()) {
                VoiceNewPanel voiceNewPanel4 = this.f5921a;
                r.c(voiceNewPanel4);
                voiceNewPanel4.show(supportFragmentManager, "DefaultVoiceCallback");
            }
        } else {
            VoiceNewPanel voiceNewPanel5 = this.f5921a;
            r.c(voiceNewPanel5);
            voiceNewPanel5.show(supportFragmentManager, "DefaultVoiceCallback");
        }
        VoiceNewPanel voiceNewPanel6 = this.f5921a;
        r.c(voiceNewPanel6);
        r.c(str);
        voiceNewPanel6.z(str);
    }

    @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
    public void e(String str) {
        SpeechLogUtils.c("SpeechViewController", r.m("onClose sessionId=", str));
        j();
    }

    @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
    public void f(String str, String str2, boolean z) {
        VoiceNewPanel voiceNewPanel;
        if (TextUtils.isEmpty(str2) || !z || (voiceNewPanel = this.f5921a) == null) {
            return;
        }
        r.c(str2);
        Objects.requireNonNull(str2, "null cannot be cast to non-null type kotlin.CharSequence");
        voiceNewPanel.w(StringsKt__StringsKt.J0(str2).toString());
    }

    @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
    public void g(String str, String str2) {
        VoiceNewPanel voiceNewPanel = this.f5921a;
        if (voiceNewPanel == null) {
            return;
        }
        r.c(str2);
        voiceNewPanel.v(str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
    public void h(String str, int i, String str2) {
        j();
        SpeechLogUtils.c("SpeechViewController", "onWakeup: sessionId:" + ((Object) str) + ", type:" + i);
        VoiceNewPanel voiceNewPanel = new VoiceNewPanel(0 == true ? 1 : 0, 1, 0 == true ? 1 : 0);
        this.f5921a = voiceNewPanel;
        r.c(voiceNewPanel);
        voiceNewPanel.B(0);
        Activity activityI = MucangConfig.i();
        if (activityI.isDestroyed() || activityI.isFinishing()) {
            return;
        }
        androidx.fragment.app.d dVar = activityI instanceof androidx.fragment.app.d ? (androidx.fragment.app.d) activityI : null;
        FragmentManager supportFragmentManager = dVar != null ? dVar.getSupportFragmentManager() : null;
        if (supportFragmentManager == null) {
            return;
        }
        VoiceNewPanel voiceNewPanel2 = this.f5921a;
        r.c(voiceNewPanel2);
        voiceNewPanel2.show(supportFragmentManager, "DefaultVoiceCallback");
    }

    @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
    public void i() {
        SpeechLogUtils.c("SpeechViewController", "onDismissHint");
        VoiceNewPanel voiceNewPanel = this.f5921a;
        if (voiceNewPanel != null) {
            boolean z = false;
            if (voiceNewPanel != null && voiceNewPanel.getF5925e() == 1) {
                z = true;
            }
            if (z) {
                j();
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
    public void onSpeakEnd() {
    }

    @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechViewCallback
    public void onVolumeChanged(int volume, byte[] data) {
        VoiceNewPanel voiceNewPanel;
        if (data == null || (voiceNewPanel = this.f5921a) == null) {
            return;
        }
        voiceNewPanel.x(data);
    }
}
