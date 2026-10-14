package cn.mucang.jiakaoyi.sundial.service;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.sundial.library.tts.SpeakListener;
import cn.mucang.sundial.library.tts.Speaker;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.service.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016¨\u0006\r"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/service/SundialSpeaker;", "Lcn/mucang/sundial/library/tts/Speaker;", "()V", "destroy", "", "init", "isSpeaking", "", "speak", "word", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/sundial/library/tts/SpeakListener;", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SundialSpeaker extends Speaker {

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.service.d$a */
    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"cn/mucang/jiakaoyi/sundial/service/SundialSpeaker$speak$1", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "onIntercept", "", "onSpeakEnd", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements TtsListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ SpeakListener f9168a;

        a(SpeakListener speakListener) {
            this.f9168a = speakListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(SpeakListener speakListener) {
            if (speakListener == null) {
                return;
            }
            speakListener.onCompleted(0, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(SpeakListener speakListener) {
            if (speakListener == null) {
                return;
            }
            speakListener.onCompleted(0, null);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            TtsListener.a.b(this);
            final SpeakListener speakListener = this.f9168a;
            u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.sundial.service.b
                @Override // java.lang.Runnable
                public final void run() {
                    SundialSpeaker.a.c(speakListener);
                }
            });
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakBegin() {
            TtsListener.a.c(this);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            TtsListener.a.d(this);
            final SpeakListener speakListener = this.f9168a;
            u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.sundial.service.a
                @Override // java.lang.Runnable
                public final void run() {
                    SundialSpeaker.a.d(speakListener);
                }
            });
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakPaused() {
            TtsListener.a.e(this);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakResumed() {
            TtsListener.a.g(this);
        }
    }

    @Override // cn.mucang.sundial.library.tts.Speaker
    public void destroy() {
    }

    @Override // cn.mucang.sundial.library.tts.Speaker
    public void init() {
    }

    @Override // cn.mucang.sundial.library.tts.Speaker
    public boolean isSpeaking() {
        return false;
    }

    @Override // cn.mucang.sundial.library.tts.Speaker
    public void speak(String word, SpeakListener listener) {
        r.e(word, "word");
        TtsManager.u(word, TtsGrade.SpecialVoice, new a(listener));
    }
}
