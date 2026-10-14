package cn.mucang.android.jiakaoyi.framework.tts;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.tts.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\b\u0010\b\u001a\u00020\u0003H\u0016J\b\u0010\t\u001a\u00020\u0003H\u0016J\b\u0010\n\u001a\u00020\u0003H\u0016J\b\u0010\u000b\u001a\u00020\u0003H\u0016J \u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\b\u0010\r\u001a\u00020\u0003H\u0016¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "", "onBufferProgress", "", "percent", "", "beginPos", "endPos", "onIntercept", "onSpeakBegin", "onSpeakEnd", "onSpeakPaused", "onSpeakProgress", "onSpeakResumed", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface TtsListener {

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.tts.f$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        public static void a(TtsListener ttsListener, int i, int i2, int i3) {
            r.e(ttsListener, "this");
        }

        public static void b(TtsListener ttsListener) {
            r.e(ttsListener, "this");
        }

        public static void c(TtsListener ttsListener) {
            r.e(ttsListener, "this");
        }

        public static void d(TtsListener ttsListener) {
            r.e(ttsListener, "this");
        }

        public static void e(TtsListener ttsListener) {
            r.e(ttsListener, "this");
        }

        public static void f(TtsListener ttsListener, int i, int i2, int i3) {
            r.e(ttsListener, "this");
        }

        public static void g(TtsListener ttsListener) {
            r.e(ttsListener, "this");
        }
    }

    void onIntercept();

    void onSpeakBegin();

    void onSpeakEnd();

    void onSpeakPaused();

    void onSpeakResumed();
}
