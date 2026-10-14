package cn.mucang.sundial.library.tts;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0004J#\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bH&¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH&¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcn/mucang/sundial/library/tts/Speaker;", "", "Lkotlin/v;", "init", "()V", "destroy", "", "word", "Lcn/mucang/sundial/library/tts/SpeakListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "speak", "(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V", "", "isSpeaking", "()Z", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public abstract class Speaker {
    public static /* synthetic */ void speak$default(Speaker speaker, String str, SpeakListener speakListener, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: speak");
        }
        if ((i & 2) != 0) {
            speakListener = null;
        }
        speaker.speak(str, speakListener);
    }

    public abstract void destroy();

    public abstract void init();

    public abstract boolean isSpeaking();

    public abstract void speak(String word, SpeakListener listener);
}
