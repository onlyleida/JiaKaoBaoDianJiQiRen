package cn.mucang.android.jiakaoyi.framework.camera;

import android.view.View;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.camera.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\b\u0010\b\u001a\u00020\u0005H&J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\u0005H&J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&J\b\u0010\u000e\u001a\u00020\u0005H&J\b\u0010\u000f\u001a\u00020\u0010H&¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;", "", "isPlaying", "", "setYuvCallback", "", "frameCallback", "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;", TtmlNode.START, "startPreview", "view", "Landroid/view/View;", "stop", "stopPreview", "tryReconnect", "yuvFormat", "Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface SourceVideoStream {
    ImageFormat a();

    void b(View view);

    void c();

    void d(View view);

    void e(YuvFrameCallback yuvFrameCallback);

    boolean isPlaying();

    void start();

    void stop();
}
