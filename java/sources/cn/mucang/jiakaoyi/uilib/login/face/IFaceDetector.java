package cn.mucang.jiakaoyi.uilib.login.face;

import kotlin.Metadata;
import org.opencv.core.Rect;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.face.n, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H&J\"\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H&J\b\u0010\u000b\u001a\u00020\fH&J\b\u0010\r\u001a\u00020\u000eH&J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H&J\b\u0010\u0013\u001a\u00020\u0010H&J\b\u0010\u0014\u001a\u00020\u000eH&¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/face/IFaceDetector;", "", "containFaceI420", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;", "i420Data", "", "preViewW", "", "preViewH", "containFaceNv21", "nv21Yuv", "getContainRatio", "", "init", "", "intercept", "", "rect", "Lorg/opencv/core/Rect;", "isActive", "release", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface IFaceDetector {
    float a();

    m b(byte[] bArr, int i, int i2);

    boolean c(Rect rect, int i, int i2);

    m d(byte[] bArr, int i, int i2);

    void init();

    void release();
}
