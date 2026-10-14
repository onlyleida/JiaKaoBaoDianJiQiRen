package cn.mucang.android.jiakaoyi.teachingk2.highlight.video;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.teachingk2.highlight.VideoUtils;
import cn.mucang.android.jky.camera.CameraIntent;
import cn.mucang.android.jky.camera.UsbCameraManager;
import com.mobile.auth.gatewayauth.Constant;
import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.highlight.u.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0019\u001a\u00020\u000fJ,\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\n2\b\u0010\u001d\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004H\u0002J\b\u0010 \u001a\u00020\u001bH\u0016J\u0010\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\nH\u0016J\u000e\u0010#\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010$\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\f0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/highlight/video/VideoRecorder;", "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;", "()V", "CAPTURE_PREPARE", "", "CAPTURE_RUNNING", "CAPTURE_STOP", "TAG", "", "byteBuffer", "", "es", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "fileAvailable", "", "mCaptureState", "mEncodeListener", "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/video/Encoder$EncodeListener;", "mEncoder", "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/video/Encoder;", "needSave", Constant.START_TIME, "", "time", "isRunning", "nv21ToNV12", "", "nv21", "nv12", "width", "height", "onDisconnect", "onPreviewFrame", "data", "startRecord", "stopRecord", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class VideoRecorder implements UsbCameraManager.UsbCameraListener {
    private static long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static c f7179d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile int f7180e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f7181f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static byte[] f7182g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static long f7183h;
    private static boolean i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final VideoRecorder f7178a = new VideoRecorder();
    private static final ExecutorService b = Executors.newSingleThreadExecutor();
    private static final c.a j = new a();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.highlight.u.e$a */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/highlight/video/VideoRecorder$mEncodeListener$1", "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/video/Encoder$EncodeListener;", "onPreapared", "", "encoder", "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/video/Encoder;", "onRelease", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements c.a {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e() {
            f.o("编码开始");
            VideoRecorder videoRecorder = VideoRecorder.f7178a;
            VideoRecorder.f7180e = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(c encoder) {
            r.e(encoder, "$encoder");
            f.o("编码结束");
            VideoRecorder videoRecorder = VideoRecorder.f7178a;
            VideoRecorder.f7180e = 0;
            File file = new File(encoder.e());
            if (VideoRecorder.f7181f && VideoRecorder.i) {
                file.renameTo(VideoUtils.f7169a.d(VideoRecorder.f7183h));
            } else {
                file.delete();
            }
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.highlight.u.c.a
        public void a(final c encoder) {
            r.e(encoder, "encoder");
            VideoRecorder.b.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.u.a
                @Override // java.lang.Runnable
                public final void run() {
                    VideoRecorder.a.f(encoder);
                }
            });
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.highlight.u.c.a
        public void b(c encoder) {
            r.e(encoder, "encoder");
            VideoRecorder.b.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.u.b
                @Override // java.lang.Runnable
                public final void run() {
                    VideoRecorder.a.e();
                }
            });
        }
    }

    private VideoRecorder() {
    }

    private final void g(byte[] bArr, byte[] bArr2, int i2, int i3) {
        if (bArr == null || bArr2 == null) {
            return;
        }
        int i4 = i2 * i3;
        int i5 = (i4 / 2) + i4;
        System.arraycopy(bArr, 0, bArr2, 0, i4);
        for (int i6 = i4; i6 < i5; i6 += 2) {
            bArr2[i6 - 1] = bArr[i6];
        }
        while (i4 < i5) {
            bArr2[i4] = bArr[i4 - 1];
            i4 += 2;
        }
    }

    public final boolean f() {
        return f7180e == 2;
    }

    public final void h(long j2) {
        UsbCameraManager usbCameraManager = UsbCameraManager.INSTANCE;
        usbCameraManager.registerCameraListener(CameraIntent.PUSH, this);
        f7183h = j2;
        if (f7179d == null && f7180e == 0) {
            f7181f = false;
            f7180e = 1;
            File fileE = VideoUtils.f7169a.e(f7183h);
            if (fileE.exists()) {
                fileE.delete();
            }
            SurfaceEncoder surfaceEncoder = new SurfaceEncoder(fileE.getAbsolutePath(), usbCameraManager.getWidth(), usbCameraManager.getHeight());
            f7179d = surfaceEncoder;
            if (surfaceEncoder != null) {
                surfaceEncoder.j(j);
            }
            try {
                f.o("VideoRecorder:开始录制");
                c cVar = f7179d;
                if (cVar != null) {
                    cVar.g();
                }
                c cVar2 = f7179d;
                if (cVar2 == null) {
                    return;
                }
                cVar2.m();
            } catch (Exception e2) {
                f.o(r.m("VideoRecorder:编码器初始化失败，", e2.getLocalizedMessage()));
                f7180e = 0;
            }
        }
    }

    public final void i(boolean z) {
        String strE;
        UsbCameraManager.INSTANCE.unregisterCameraListener(CameraIntent.PUSH, this);
        i = z;
        c cVar = f7179d;
        String str = "";
        if (cVar != null && (strE = cVar.e()) != null) {
            str = strE;
        }
        File file = new File(str);
        f7181f = file.exists() && file.length() > 0;
        f7180e = 0;
        c cVar2 = f7179d;
        if (cVar2 != null) {
            cVar2.n();
        }
        f7179d = null;
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
        i(false);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002c  */
    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onPreviewFrame(byte[] data) {
        r.e(data, "data");
        if (f7180e == 2) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - c > 40) {
                VideoRecorder videoRecorder = f7178a;
                c = jCurrentTimeMillis;
                byte[] bArr = f7182g;
                if (bArr == null) {
                    f7182g = new byte[data.length];
                } else {
                    if (!(bArr != null && bArr.length == data.length)) {
                        f7182g = new byte[data.length];
                    }
                }
                byte[] bArr2 = f7182g;
                UsbCameraManager usbCameraManager = UsbCameraManager.INSTANCE;
                videoRecorder.g(data, bArr2, usbCameraManager.getWidth(), usbCameraManager.getHeight());
                try {
                    c cVar = f7179d;
                    if (cVar == null) {
                        return;
                    }
                    byte[] bArr3 = f7182g;
                    cVar.c(bArr3, bArr3 == null ? 0 : bArr3.length);
                } catch (Exception unused) {
                    f.o("编码器错误，停止录制");
                    f7178a.i(false);
                }
            }
        }
    }
}
