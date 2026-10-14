package cn.mucang.android.jiakaoyi.teachingk2.push;

import android.opengl.EGL14;
import cn.mucang.android.jiakaoyi.framework.camera.YuvFrameCallback;
import javax.microedition.khronos.egl.EGL10;
import kotlin.Metadata;
import org.webrtc.EglBase;
import org.webrtc.EglBase10;
import org.webrtc.EglBase14;
import org.webrtc.SurfaceViewRenderer;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.push.k0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0002J\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\n\u001a\u00020\bJ\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0006\u0010\r\u001a\u00020\bJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u0016J\b\u0010\u0017\u001a\u00020\bH\u0007J\u0010\u0010\u0017\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u000e\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/push/AiCameraManager;", "", "()V", "closeTask", "Ljava/lang/Runnable;", "webRtcCamera", "Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;", "checkUse", "", "destroy", "forceReconnect", "getSharedEglContext", "Lorg/webrtc/EglBase$Context;", "init", "isPlaying", "", "isRegisterFrameCallback", "callback", "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;", "registerFrameCallback", "startPreview", "render", "Lorg/webrtc/SurfaceViewRenderer;", "stopPreview", "unregisterFrameCallback", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AiCameraManager {
    private static WebRtcCamera b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AiCameraManager f7519a = new AiCameraManager();
    private static Runnable c = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.c
        @Override // java.lang.Runnable
        public final void run() {
            AiCameraManager.b();
        }
    };

    private AiCameraManager() {
    }

    private final void a() {
        cn.mucang.android.core.utils.u.e(c);
        WebRtcCamera webRtcCamera = b;
        boolean z = false;
        if (webRtcCamera != null && webRtcCamera.B()) {
            z = true;
        }
        if (!z) {
            cn.mucang.android.core.utils.u.d(c, 3000L);
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("业务需要使用ai摄像头，开始webrtc连接");
        WebRtcCamera webRtcCamera2 = b;
        if (webRtcCamera2 == null) {
            return;
        }
        webRtcCamera2.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b() {
        cn.mucang.android.jiakaoyi.framework.log.f.o("没有业务使用ai摄像头，断开webrtc连接");
        WebRtcCamera webRtcCamera = b;
        if (webRtcCamera == null) {
            return;
        }
        WebRtcCamera.u(webRtcCamera, false, 1, null);
    }

    public final void c() {
        WebRtcCamera webRtcCamera = b;
        if (webRtcCamera == null) {
            return;
        }
        webRtcCamera.q();
    }

    public final void d() {
        WebRtcCamera webRtcCamera = b;
        if (webRtcCamera == null) {
            return;
        }
        webRtcCamera.Q();
    }

    public final EglBase.Context e() {
        EglBase f7490a;
        WebRtcCamera webRtcCamera = b;
        EglBase.Context eglBaseContext = (webRtcCamera == null || (f7490a = webRtcCamera.getF7490a()) == null) ? null : f7490a.getEglBaseContext();
        if (eglBaseContext instanceof EglBase10.Context) {
            if (kotlin.jvm.internal.r.a(((EglBase10.Context) eglBaseContext).getRawContext(), EGL10.EGL_NO_CONTEXT)) {
                return null;
            }
        } else if ((eglBaseContext instanceof EglBase14.Context) && kotlin.jvm.internal.r.a(((EglBase14.Context) eglBaseContext).getRawContext(), EGL14.EGL_NO_CONTEXT)) {
            return null;
        }
        return eglBaseContext;
    }

    public final void f() {
        cn.mucang.android.jiakaoyi.framework.log.f.o("ai摄像头管理器初始化");
        WebRtcCamera webRtcCamera = new WebRtcCamera();
        b = webRtcCamera;
        if (webRtcCamera == null) {
            return;
        }
        webRtcCamera.C();
    }

    public final boolean g() {
        WebRtcCamera webRtcCamera = b;
        return webRtcCamera != null && webRtcCamera.D();
    }

    public final boolean h(YuvFrameCallback callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        WebRtcCamera webRtcCamera = b;
        return webRtcCamera != null && webRtcCamera.p(callback);
    }

    public final void j(YuvFrameCallback callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        WebRtcCamera webRtcCamera = b;
        if (webRtcCamera != null) {
            webRtcCamera.n(callback);
        }
        a();
    }

    public final void k(SurfaceViewRenderer render) {
        kotlin.jvm.internal.r.e(render, "render");
        cn.mucang.android.jiakaoyi.framework.log.f.o("ai摄像开始预览");
        WebRtcCamera webRtcCamera = b;
        if (webRtcCamera != null) {
            webRtcCamera.O(render);
        }
        a();
    }

    public final void l() {
        cn.mucang.android.jiakaoyi.framework.log.f.o("ai摄像停止预览");
        m(null);
    }

    public final void m(SurfaceViewRenderer surfaceViewRenderer) {
        WebRtcCamera webRtcCamera = b;
        if (kotlin.jvm.internal.r.a(surfaceViewRenderer, webRtcCamera == null ? null : webRtcCamera.A()) || surfaceViewRenderer == null) {
            WebRtcCamera webRtcCamera2 = b;
            if (webRtcCamera2 != null) {
                webRtcCamera2.O(null);
            }
            a();
        }
    }

    public final void n(YuvFrameCallback callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        WebRtcCamera webRtcCamera = b;
        if (webRtcCamera != null) {
            webRtcCamera.L(callback);
        }
        a();
    }
}
