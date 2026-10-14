package cn.mucang.jiakaoyi.sundial.service.strategy;

import android.view.TextureView;
import android.widget.FrameLayout;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.camera.ImageFormat;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoFactory;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream;
import cn.mucang.android.jiakaoyi.framework.camera.YuvFrameCallback;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.jiakaoyi.sundial.client.SundialClient;
import cn.mucang.jiakaoyi.sundial.utils.MatUtils;
import cn.mucang.sundial.library.device.BaseCamera;
import cn.mucang.sundial.library.device.CameraResult;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.s;
import kotlin.v;
import kotlinx.coroutines.g;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t1;
import org.opencv.android.InstallCallbackInterface;
import org.opencv.android.LoaderCallbackInterface;
import org.opencv.android.OpenCVLoader;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B+\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u000bH\u0016J@\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u001aH\u0016J\u0010\u0010'\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020\u001aH\u0016J\u001a\u0010)\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020\u001a2\b\u0010+\u001a\u0004\u0018\u00010,H\u0016J\b\u0010-\u001a\u00020\u001cH\u0016J\b\u0010.\u001a\u00020\u001cH\u0016J\b\u0010/\u001a\u00020\u001cH\u0016J\b\u00100\u001a\u00020\u001cH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u00020\u00108BX\u0082\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/service/strategy/CameraStrategy;", "Lcn/mucang/sundial/library/device/BaseCamera;", "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;", "Lorg/opencv/android/LoaderCallbackInterface;", "cameraResult", "Lcn/mucang/sundial/library/device/CameraResult;", "textureView", "Landroid/view/TextureView;", "frameLayout", "Landroid/widget/FrameLayout;", "needPreview", "", "(Lcn/mucang/sundial/library/device/CameraResult;Landroid/view/TextureView;Landroid/widget/FrameLayout;Z)V", "captureTime", "", "dir", "Ljava/io/File;", "getDir", "()Ljava/io/File;", "hasFrame", "noCameraJob", "Lkotlinx/coroutines/Job;", "openCVIsSuccess", "sourceVideoStream", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;", "cameraCount", "", "init", "", "isolatePreviewPage", "onFrame", "byteArray", "", "width", "height", "stride", "size", "timeUs", "rotation", "onManagerConnected", "status", "onPackageInstall", "operation", "callback", "Lorg/opencv/android/InstallCallbackInterface;", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "pause", "release", "takePhoto", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CameraStrategy extends BaseCamera implements YuvFrameCallback, LoaderCallbackInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CameraResult f9169a;
    private final TextureView b;
    private final FrameLayout c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f9170d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private File f9171e = new File(MucangConfig.getContext().getFilesDir(), "sundial");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SourceVideoStream f9172f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private t1 f9173g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9174h;
    private long i;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.service.strategy.CameraStrategy$onManagerConnected$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.service.strategy.CameraStrategy$onManagerConnected$1", f = "CameraStrategy.kt", l = {88}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ long $time;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ CameraStrategy this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(long j, CameraStrategy cameraStrategy, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$time = j;
            this.this$0 = cameraStrategy;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$time, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            i0 i0Var;
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                k.b(obj);
                i0Var = (i0) this.L$0;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i0Var = (i0) this.L$0;
                k.b(obj);
            }
            while (j0.g(i0Var) && System.currentTimeMillis() - this.$time < 6000) {
                this.L$0 = i0Var;
                this.label = 1;
                if (s0.a(1000L, this) == objD) {
                    return objD;
                }
            }
            j0.f(i0Var);
            CameraResult cameraResult = this.this$0.f9169a;
            if (cameraResult != null) {
                cameraResult.cameraRemoved();
            }
            return v.f15822a;
        }
    }

    public CameraStrategy(CameraResult cameraResult, TextureView textureView, FrameLayout frameLayout, boolean z) {
        this.f9169a = cameraResult;
        this.b = textureView;
        this.c = frameLayout;
        this.f9170d = z;
    }

    private final File c() {
        if (!this.f9171e.exists()) {
            this.f9171e.mkdirs();
        }
        return this.f9171e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(CameraStrategy this$0) {
        r.e(this$0, "this$0");
        File[] fileArrListFiles = this$0.c().listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            String name = file.getName();
            r.d(name, "it.name");
            String name2 = file.getName();
            r.d(name2, "it.name");
            String strSubstring = name.substring(0, StringsKt__StringsKt.T(name2, "sundial_temp", 0, false, 6, null));
            r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            Long l = s.l(strSubstring);
            if (l != null && System.currentTimeMillis() - l.longValue() > 86400000) {
                file.delete();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(CameraStrategy this$0) {
        r.e(this$0, "this$0");
        if (this$0.f9170d) {
            cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "计时页面拍照：摄像头已连接");
        } else {
            cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "计时静默拍照：摄像头已连接");
        }
        CameraResult cameraResult = this$0.f9169a;
        if (cameraResult == null) {
            return;
        }
        cameraResult.connectSuccess();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(CameraStrategy this$0, File file) {
        r.e(this$0, "this$0");
        r.e(file, "$file");
        CameraResult cameraResult = this$0.f9169a;
        if (cameraResult == null) {
            return;
        }
        cameraResult.takePhotoFinish(file);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.YuvFrameCallback
    public void a(byte[] byteArray, int i, int i2, int i3, int i4, long j, int i5) throws IOException {
        r.e(byteArray, "byteArray");
        if (!this.f9174h) {
            this.f9174h = true;
            t1 t1Var = this.f9173g;
            if (t1Var != null) {
                t1.a.a(t1Var, null, 1, null);
            }
            u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.sundial.service.strategy.b
                @Override // java.lang.Runnable
                public final void run() {
                    CameraStrategy.h(this.f9176a);
                }
            });
        }
        if (this.i != 0) {
            final File file = new File(c(), System.currentTimeMillis() + "sundial_temp.jpg");
            SourceVideoStream sourceVideoStream = this.f9172f;
            MatUtils.f9098a.b(file, byteArray, i, i2, (sourceVideoStream != null ? sourceVideoStream.a() : null) == ImageFormat.IMAGE_FORMAT_YUV420P);
            cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "传入计时终端，照片文件 exists:" + file.exists() + "   " + ((Object) file.getAbsolutePath()));
            u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.sundial.service.strategy.a
                @Override // java.lang.Runnable
                public final void run() {
                    CameraStrategy.i(this.f9175a, file);
                }
            });
            if (this.f9170d) {
                cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "计时页面拍照：完成");
            } else {
                cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "计时静默拍照：完成");
            }
            this.i = 0L;
        }
    }

    @Override // cn.mucang.sundial.library.device.TtCamera
    public int cameraCount() {
        return this.f9174h ? 1 : 0;
    }

    @Override // cn.mucang.sundial.library.device.TtCamera
    public void init() {
        if (this.f9170d) {
            cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "计时页面拍照：初始化");
        } else {
            cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "计时静默拍照：初始化");
        }
        if (OpenCVLoader.initDebug()) {
            onManagerConnected(0);
        } else {
            OpenCVLoader.initAsync(OpenCVLoader.OPENCV_VERSION, MucangConfig.getContext(), this);
        }
        n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.sundial.service.strategy.c
            @Override // java.lang.Runnable
            public final void run() {
                CameraStrategy.d(this.f9177a);
            }
        });
    }

    @Override // cn.mucang.sundial.library.device.BaseCamera, cn.mucang.sundial.library.device.TtCamera
    public boolean isolatePreviewPage() {
        return false;
    }

    @Override // org.opencv.android.LoaderCallbackInterface
    public void onManagerConnected(int status) {
        if (status != 0) {
            CameraResult cameraResult = this.f9169a;
            if (cameraResult == null) {
                return;
            }
            cameraResult.cameraRemoved();
            return;
        }
        SourceVideoFactory b = SundialClient.f9111a.r().getB();
        SourceVideoStream sourceVideoStreamA = b == null ? null : b.a();
        this.f9172f = sourceVideoStreamA;
        if (sourceVideoStreamA == null) {
            CameraResult cameraResult2 = this.f9169a;
            if (cameraResult2 == null) {
                return;
            }
            cameraResult2.cameraRemoved();
            return;
        }
        sourceVideoStreamA.e(this);
        SourceVideoStream sourceVideoStream = this.f9172f;
        if (sourceVideoStream != null) {
            sourceVideoStream.start();
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        t1 t1Var = this.f9173g;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        this.f9173g = g.b(j0.b(), null, null, new AnonymousClass1(jCurrentTimeMillis, this, null), 3, null);
    }

    @Override // org.opencv.android.LoaderCallbackInterface
    public void onPackageInstall(int operation, InstallCallbackInterface callback) {
    }

    @Override // cn.mucang.sundial.library.device.TtCamera
    public void open() {
        FrameLayout frameLayout;
        SourceVideoStream sourceVideoStream;
        TextureView textureView;
        SourceVideoStream sourceVideoStream2 = this.f9172f;
        boolean z = (sourceVideoStream2 == null ? null : sourceVideoStream2.a()) == ImageFormat.IMAGE_FORMAT_YUV420P;
        if (this.f9170d) {
            if (!z && (textureView = this.b) != null) {
                SourceVideoStream sourceVideoStream3 = this.f9172f;
                if (sourceVideoStream3 == null) {
                    return;
                }
                sourceVideoStream3.b(textureView);
                return;
            }
            if (!z || (frameLayout = this.c) == null || (sourceVideoStream = this.f9172f) == null) {
                return;
            }
            sourceVideoStream.b(frameLayout);
        }
    }

    @Override // cn.mucang.sundial.library.device.TtCamera
    public void pause() {
        FrameLayout frameLayout;
        SourceVideoStream sourceVideoStream;
        TextureView textureView;
        SourceVideoStream sourceVideoStream2 = this.f9172f;
        boolean z = (sourceVideoStream2 == null ? null : sourceVideoStream2.a()) == ImageFormat.IMAGE_FORMAT_YUV420P;
        if (!z && (textureView = this.b) != null) {
            SourceVideoStream sourceVideoStream3 = this.f9172f;
            if (sourceVideoStream3 == null) {
                return;
            }
            sourceVideoStream3.d(textureView);
            return;
        }
        if (!z || (frameLayout = this.c) == null || (sourceVideoStream = this.f9172f) == null) {
            return;
        }
        sourceVideoStream.d(frameLayout);
    }

    @Override // cn.mucang.sundial.library.device.TtCamera
    public void release() {
        SourceVideoStream sourceVideoStream = this.f9172f;
        if (sourceVideoStream != null) {
            sourceVideoStream.e(null);
        }
        SourceVideoStream sourceVideoStream2 = this.f9172f;
        if (sourceVideoStream2 == null) {
            return;
        }
        sourceVideoStream2.stop();
    }

    @Override // cn.mucang.sundial.library.device.TtCamera
    public void takePhoto() {
        this.i = System.currentTimeMillis();
        if (this.f9170d) {
            cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "计时页面拍照：抓拍");
        } else {
            cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "计时静默拍照：抓拍");
        }
    }
}
