package cn.mucang.android.jiakaoyi.teachingk2.push;

import android.view.View;
import android.widget.FrameLayout;
import cn.mucang.android.jiakaoyi.framework.camera.ImageFormat;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream;
import cn.mucang.android.jiakaoyi.framework.camera.YuvFrameCallback;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import org.webrtc.SurfaceViewRenderer;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.push.j0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\bH\u0016J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\bH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/push/AiCameraAdapter;", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;", "()V", "frameCallback", "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;", "isPlaying", "", "setYuvCallback", "", TtmlNode.START, "startPreview", "view", "Landroid/view/View;", "stop", "stopPreview", "tryReconnect", "yuvFormat", "Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AiCameraAdapter implements SourceVideoStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private YuvFrameCallback f7517a;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(AiCameraAdapter this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        YuvFrameCallback yuvFrameCallback = this$0.f7517a;
        if (yuvFrameCallback == null) {
            return;
        }
        AiCameraManager.f7519a.j(yuvFrameCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(AiCameraAdapter this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        YuvFrameCallback yuvFrameCallback = this$0.f7517a;
        if (yuvFrameCallback == null) {
            return;
        }
        AiCameraManager.f7519a.n(yuvFrameCallback);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream
    public ImageFormat a() {
        return ImageFormat.IMAGE_FORMAT_YUV420P;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream
    public void b(View view) {
        kotlin.jvm.internal.r.e(view, "view");
        if (!(view instanceof FrameLayout)) {
            if (view instanceof SurfaceViewRenderer) {
                AiCameraManager.f7519a.k((SurfaceViewRenderer) view);
                return;
            }
            return;
        }
        FrameLayout frameLayout = (FrameLayout) view;
        int childCount = frameLayout.getChildCount();
        View surfaceViewRenderer = null;
        if (childCount > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                View childAt = frameLayout.getChildAt(i);
                if (childAt instanceof SurfaceViewRenderer) {
                    surfaceViewRenderer = childAt;
                }
                if (i2 >= childCount) {
                    break;
                } else {
                    i = i2;
                }
            }
        }
        if (surfaceViewRenderer == null) {
            surfaceViewRenderer = new SurfaceViewRenderer(frameLayout.getContext());
            frameLayout.addView(surfaceViewRenderer);
        }
        SurfaceViewRenderer surfaceViewRenderer2 = (SurfaceViewRenderer) surfaceViewRenderer;
        if (!(surfaceViewRenderer2.isSelected())) {
            surfaceViewRenderer2.init(AiCameraManager.f7519a.e(), null);
            surfaceViewRenderer2.setSelected(true);
        }
        AiCameraManager.f7519a.k(surfaceViewRenderer2);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream
    public void c() {
        AiCameraManager.f7519a.d();
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream
    public void d(View view) {
        kotlin.jvm.internal.r.e(view, "view");
        if (!(view instanceof FrameLayout)) {
            if (view instanceof SurfaceViewRenderer) {
                AiCameraManager.f7519a.m((SurfaceViewRenderer) view);
                return;
            } else {
                AiCameraManager.f7519a.l();
                return;
            }
        }
        int i = 0;
        FrameLayout frameLayout = (FrameLayout) view;
        int childCount = frameLayout.getChildCount();
        if (childCount <= 0) {
            return;
        }
        while (true) {
            int i2 = i + 1;
            View childAt = frameLayout.getChildAt(i);
            if (childAt instanceof SurfaceViewRenderer) {
                AiCameraManager.f7519a.m((SurfaceViewRenderer) childAt);
                return;
            } else if (i2 >= childCount) {
                return;
            } else {
                i = i2;
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream
    public void e(YuvFrameCallback yuvFrameCallback) {
        YuvFrameCallback yuvFrameCallback2 = this.f7517a;
        if (yuvFrameCallback2 != null) {
            AiCameraManager aiCameraManager = AiCameraManager.f7519a;
            if (aiCameraManager.h(yuvFrameCallback2)) {
                aiCameraManager.n(yuvFrameCallback2);
            }
        }
        this.f7517a = yuvFrameCallback;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream
    public boolean isPlaying() {
        return AiCameraManager.f7519a.g();
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream
    public void start() {
        cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.b
            @Override // java.lang.Runnable
            public final void run() {
                AiCameraAdapter.h(this.f7500a);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream
    public void stop() {
        cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.a
            @Override // java.lang.Runnable
            public final void run() {
                AiCameraAdapter.i(this.f7498a);
            }
        });
    }
}
