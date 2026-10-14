package cn.mucang.android.jiakaoyi.teachingk2.push;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import cn.mucang.android.facelib.TimeOut;
import cn.mucang.android.jiakaoyi.framework.camera.ImageFormat;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream;
import cn.mucang.android.jiakaoyi.framework.camera.YuvFrameCallback;
import cn.mucang.android.jky.camera.CameraIntent;
import cn.mucang.android.jky.camera.UsbCameraManager;
import cn.mucang.sundial.android.log.SundialLog;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.serenegiant.usb.widget.CameraViewInterface;
import com.serenegiant.usb.widget.UVCCameraTextureView;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u00112\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\b\u0010\u0015\u001a\u00020\u0011H\u0016J\u0010\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0011H\u0016J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u001b\u001a\u00020\u0011H\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;", "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;", "intent", "Lcn/mucang/android/jky/camera/CameraIntent;", "(Lcn/mucang/android/jky/camera/CameraIntent;)V", "frameCallback", "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;", "noFaceTimeout", "Lcn/mucang/android/facelib/TimeOut;", "previewId", "", "time", "", "isPlaying", "", "onPreviewFrame", "", "data", "", "setYuvCallback", TtmlNode.START, "startPreview", "view", "Landroid/view/View;", "stop", "stopPreview", "tryReconnect", "yuvFormat", "Lcn/mucang/android/jiakaoyi/framework/camera/ImageFormat;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UsbCameraAdapter implements SourceVideoStream, UsbCameraManager.UsbCameraListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CameraIntent f7485a;
    private YuvFrameCallback b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7486d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TimeOut f7487e;

    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u001c\u0010\u000b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\f\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\r"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter$startPreview$1", "Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;", "onSurfaceChanged", "", "view", "Lcom/serenegiant/usb/widget/CameraViewInterface;", "surface", "Landroid/view/Surface;", "width", "", "height", "onSurfaceCreated", "onSurfaceDestroy", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements CameraViewInterface.Callback {
        a() {
        }

        @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
        public void onSurfaceChanged(CameraViewInterface view, Surface surface, int width, int height) {
        }

        @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
        public void onSurfaceCreated(CameraViewInterface view, Surface surface) {
            UsbCameraManager.INSTANCE.startPreviewCamera(UsbCameraAdapter.this.f7485a, surface, UsbCameraAdapter.this.f7486d);
        }

        @Override // com.serenegiant.usb.widget.CameraViewInterface.Callback
        public void onSurfaceDestroy(CameraViewInterface view, Surface surface) {
        }
    }

    @Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\r"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter$startPreview$2", "Landroid/view/TextureView$SurfaceTextureListener;", "onSurfaceTextureAvailable", "", "surface", "Landroid/graphics/SurfaceTexture;", "width", "", "height", "onSurfaceTextureDestroyed", "", "onSurfaceTextureSizeChanged", "onSurfaceTextureUpdated", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements TextureView.SurfaceTextureListener {
        b() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surface, int width, int height) {
            kotlin.jvm.internal.r.e(surface, "surface");
            UsbCameraManager.INSTANCE.startPreviewCamera(UsbCameraAdapter.this.f7485a, surface, UsbCameraAdapter.this.f7486d);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
            kotlin.jvm.internal.r.e(surface, "surface");
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surface, int width, int height) {
            kotlin.jvm.internal.r.e(surface, "surface");
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surface) {
            kotlin.jvm.internal.r.e(surface, "surface");
        }
    }

    public UsbCameraAdapter(CameraIntent intent) {
        kotlin.jvm.internal.r.e(intent, "intent");
        this.f7485a = intent;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream
    public ImageFormat a() {
        return ImageFormat.IMAGE_FORMAT_YUVNV21;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream
    public void b(View view) {
        kotlin.jvm.internal.r.e(view, "view");
        this.f7486d = view.hashCode();
        if (view instanceof UVCCameraTextureView) {
            UVCCameraTextureView uVCCameraTextureView = (UVCCameraTextureView) view;
            if (uVCCameraTextureView.hasSurface()) {
                UsbCameraManager.INSTANCE.startPreviewCamera(this.f7485a, uVCCameraTextureView.getSurface(), this.f7486d);
                return;
            } else {
                uVCCameraTextureView.setCallback(new a());
                return;
            }
        }
        if (view instanceof TextureView) {
            TextureView textureView = (TextureView) view;
            if (textureView.getSurfaceTexture() != null) {
                UsbCameraManager.INSTANCE.startPreviewCamera(this.f7485a, textureView.getSurfaceTexture(), this.f7486d);
            } else {
                textureView.setSurfaceTextureListener(new b());
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream
    public void c() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.c > 10000) {
            this.c = jCurrentTimeMillis;
            cn.mucang.android.jiakaoyi.framework.log.f.o("重试camera");
            kotlinx.coroutines.g.b(kotlinx.coroutines.j0.b(), null, null, new UsbCameraAdapter$tryReconnect$1(this, null), 3, null);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream
    public void d(View view) {
        kotlin.jvm.internal.r.e(view, "view");
        int i = this.f7486d;
        if (i > 0) {
            UsbCameraManager.INSTANCE.stopPreviewCamera(this.f7485a, i);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream
    public void e(YuvFrameCallback yuvFrameCallback) {
        this.b = yuvFrameCallback;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream
    public boolean isPlaying() {
        return true;
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onConnect() {
        UsbCameraManager.UsbCameraListener.DefaultImpls.onConnect(this);
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onDetached() {
        UsbCameraManager.UsbCameraListener.DefaultImpls.onDetached(this);
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onDisconnect() {
        UsbCameraManager.UsbCameraListener.DefaultImpls.onDisconnect(this);
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onPreviewFrame(byte[] data) {
        kotlin.jvm.internal.r.e(data, "data");
        if (this.f7487e == null) {
            SundialLog.normal("intent:" + this.f7485a.getDesc() + " ,收到视频流");
            TimeOut timeOut = new TimeOut(kotlinx.coroutines.j0.b(), 10000L);
            this.f7487e = timeOut;
            kotlin.jvm.internal.r.c(timeOut);
            timeOut.e(new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.UsbCameraAdapter.onPreviewFrame.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    SundialLog.normal("intent:" + UsbCameraAdapter.this.f7485a.getDesc() + " ,视频流断开了");
                    UsbCameraAdapter.this.f7487e = null;
                }
            });
        }
        TimeOut timeOut2 = this.f7487e;
        if (timeOut2 != null) {
            timeOut2.f();
        }
        YuvFrameCallback yuvFrameCallback = this.b;
        if (yuvFrameCallback == null) {
            return;
        }
        UsbCameraManager usbCameraManager = UsbCameraManager.INSTANCE;
        yuvFrameCallback.a(data, usbCameraManager.getWidth(), usbCameraManager.getHeight(), usbCameraManager.getWidth(), data.length, System.nanoTime() / ((long) 1000), 0);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream
    public void start() {
        UsbCameraManager.INSTANCE.registerCameraListener(this.f7485a, this);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream
    public void stop() {
        UsbCameraManager.INSTANCE.unregisterCameraListener(this.f7485a, this);
    }
}
