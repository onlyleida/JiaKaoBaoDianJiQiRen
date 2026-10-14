package cn.mucang.sundial.library.tts;

import android.os.Bundle;
import com.amap.api.maps.model.MyLocationStyle;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\bf\u0018\u00002\u00020\u0001J1\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\r\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eJ1\u0010\u0014\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0016\u0010\fJ\u000f\u0010\u0017\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0017\u0010\fJ!\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u00022\b\u0010\u0019\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcn/mucang/sundial/library/tts/SpeakListener;", "", "", "progress", "beginPos", "endPos", "", "info", "Lkotlin/v;", "onBufferProgress", "(IIILjava/lang/String;)V", "onSpeakBegin", "()V", "onSpeakProgress", "(III)V", "eventType", "arg1", "arg2", "Landroid/os/Bundle;", "obj", "onEvent", "(IIILandroid/os/Bundle;)V", "onSpeakPaused", "onSpeakResumed", MyLocationStyle.ERROR_CODE, "errorMsg", "onCompleted", "(ILjava/lang/String;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public interface SpeakListener {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 1, 15})
    public static final class DefaultImpls {
        public static void onBufferProgress(SpeakListener speakListener, int i, int i2, int i3, String str) {
        }

        public static void onCompleted(SpeakListener speakListener, int i, String str) {
        }

        public static void onEvent(SpeakListener speakListener, int i, int i2, int i3, Bundle bundle) {
        }

        public static void onSpeakBegin(SpeakListener speakListener) {
        }

        public static void onSpeakPaused(SpeakListener speakListener) {
        }

        public static void onSpeakProgress(SpeakListener speakListener, int i, int i2, int i3) {
        }

        public static void onSpeakResumed(SpeakListener speakListener) {
        }
    }

    void onBufferProgress(int progress, int beginPos, int endPos, String info);

    void onCompleted(int errorCode, String errorMsg);

    void onEvent(int eventType, int arg1, int arg2, Bundle obj);

    void onSpeakBegin();

    void onSpeakPaused();

    void onSpeakProgress(int progress, int beginPos, int endPos);

    void onSpeakResumed();
}
