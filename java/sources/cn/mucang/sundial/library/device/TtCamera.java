package cn.mucang.sundial.library.device;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H&¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\n\u001a\u00020\u0006H&¢\u0006\u0004\b\n\u0010\bJ\u000f\u0010\u000b\u001a\u00020\u0006H&¢\u0006\u0004\b\u000b\u0010\bJ\u000f\u0010\f\u001a\u00020\u0006H&¢\u0006\u0004\b\f\u0010\bJ\u000f\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcn/mucang/sundial/library/device/TtCamera;", "", "", "isolatePreviewPage", "()Z", "hasPermission", "Lkotlin/v;", "init", "()V", "takePhoto", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "pause", "release", "", "cameraCount", "()I", "library_release"}, k = 1, mv = {1, 1, 15})
public interface TtCamera {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 1, 15})
    public static final class DefaultImpls {
        public static boolean hasPermission(TtCamera ttCamera) {
            return true;
        }

        public static boolean isolatePreviewPage(TtCamera ttCamera) {
            return false;
        }
    }

    int cameraCount();

    boolean hasPermission();

    void init();

    boolean isolatePreviewPage();

    void open();

    void pause();

    void release();

    void takePhoto();
}
