package cn.mucang.jiakaoyi.sundial.client;

import android.content.Intent;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.view.View;
import android.widget.FrameLayout;
import androidx.lifecycle.s;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.camera.ImageFormat;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoFactory;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream;
import cn.mucang.android.jky.camera.CameraIntent;
import cn.mucang.android.jky.camera.UsbCameraManager;
import cn.mucang.jiakaoyi.sundial.R;
import cn.mucang.jiakaoyi.sundial.databinding.ActivitySundialCameraBinding;
import com.serenegiant.usb.widget.UVCCameraTextureView;
import java.io.File;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.i0;
import org.opencv.android.InstallCallbackInterface;
import org.opencv.android.LoaderCallbackInterface;
import org.opencv.android.OpenCVLoader;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004B\u0005¢\u0006\u0002\u0010\u0005J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0014J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u0017\u001a\u00020\u0015H\u0014J\b\u0010\u0018\u001a\u00020\u0015H\u0016J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u000bH\u0016J\u001a\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u000b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020\u0015H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/client/CameraActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/jiakaoyi/sundial/databinding/ActivitySundialCameraBinding;", "Lorg/opencv/android/LoaderCallbackInterface;", "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;", "()V", "frameCallback", "Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;", "openCVIsSuccess", "", "previewId", "", "soundPool", "Landroid/media/SoundPool;", "sourceVideoStream", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;", "wavCamera", "wavTimer", "getStatName", "", "init", "", "onConnect", "onDestroy", "onDisconnect", "onManagerConnected", "status", "onPackageInstall", "operation", "callback", "Lorg/opencv/android/InstallCallbackInterface;", "onPreviewFrame", "data", "", "startTimer", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CameraActivity extends BaseViewBindingActivity<ActivitySundialCameraBinding> implements LoaderCallbackInterface, UsbCameraManager.UsbCameraListener {
    private volatile boolean b;
    private FrameCallback c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SoundPool f9099d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9100e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9101f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private SourceVideoStream f9102g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f9103h;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(CameraActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(CameraActivity this$0, View view) {
        r.e(this$0, "this$0");
        if (this$0.b && !this$0.g().btnCameraC1.isSelected()) {
            this$0.g().btnCameraC1.setSelected(true);
            this$0.r();
        }
    }

    private final void r() {
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        g().ivCamera.setImageResource(R.drawable.ic_camera_01);
        kotlinx.coroutines.g.b(s.a(this), null, null, new CameraActivity$startTimer$1(this, 3, ref$IntRef, null), 3, null);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "拍照";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        if (OpenCVLoader.initDebug()) {
            onManagerConnected(0);
        } else {
            OpenCVLoader.initAsync(OpenCVLoader.OPENCV_VERSION, MucangConfig.getContext(), this);
        }
        UsbCameraManager usbCameraManager = UsbCameraManager.INSTANCE;
        usbCameraManager.setPreviewInOpen(false);
        SoundPool soundPoolBuild = new SoundPool.Builder().setMaxStreams(1).setAudioAttributes(new AudioAttributes.Builder().setLegacyStreamType(3).build()).build();
        this.f9099d = soundPoolBuild;
        this.f9100e = soundPoolBuild == null ? 0 : soundPoolBuild.load(this, R.raw.wav_camera, 1);
        SoundPool soundPool = this.f9099d;
        this.f9101f = soundPool == null ? 0 : soundPool.load(this, R.raw.raw_hint, 1);
        SourceVideoFactory b = SundialClient.f9111a.r().getB();
        SourceVideoStream sourceVideoStreamA = b == null ? null : b.a();
        this.f9102g = sourceVideoStreamA;
        if (sourceVideoStreamA != null) {
            boolean z = sourceVideoStreamA.a() == ImageFormat.IMAGE_FORMAT_YUV420P;
            cn.mucang.jiakaoyi.sundial.a.a("SundialLog", r.m("相机初始化成功， 使用AI的摄像头?:", Boolean.valueOf(z)));
            FrameCallback frameCallback = new FrameCallback(false, z, new Function1<File, v>() { // from class: cn.mucang.jiakaoyi.sundial.client.CameraActivity$init$1$1

                /* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.client.CameraActivity$init$1$1$1, reason: invalid class name */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
                @DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.CameraActivity$init$1$1$1", f = "CameraActivity.kt", l = {}, m = "invokeSuspend")
                static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
                    final /* synthetic */ File $it;
                    int label;
                    final /* synthetic */ CameraActivity this$0;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass1(CameraActivity cameraActivity, File file, Continuation<? super AnonymousClass1> continuation) {
                        super(2, continuation);
                        this.this$0 = cameraActivity;
                        this.$it = file;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                        return new AnonymousClass1(this.this$0, this.$it, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
                        return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) throws Throwable {
                        kotlin.coroutines.intrinsics.b.d();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        kotlin.k.b(obj);
                        this.this$0.g().btnCameraC1.setSelected(false);
                        Intent intentPutExtra = new Intent().putExtra("file_path", this.$it.getAbsolutePath());
                        r.d(intentPutExtra, "Intent().putExtra(Whats.…LE_PATH, it.absolutePath)");
                        this.this$0.setResult(-1, intentPutExtra);
                        this.this$0.finish();
                        return v.f15822a;
                    }
                }

                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ v invoke(File file) {
                    invoke2(file);
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(File it) {
                    r.e(it, "it");
                    cn.mucang.jiakaoyi.sundial.a.a("SundialLog", "手动拍照成功，返回文件" + ((Object) it.getAbsolutePath()) + (char) 65292);
                    kotlinx.coroutines.g.b(s.a(this.this$0), null, null, new AnonymousClass1(this.this$0, it, null), 3, null);
                }
            }, 1, null);
            this.c = frameCallback;
            if (frameCallback == null) {
                r.u("frameCallback");
                throw null;
            }
            sourceVideoStreamA.e(frameCallback);
            sourceVideoStreamA.start();
            FrameLayout frameLayout = g().aiContainer;
            r.d(frameLayout, "viewBinding.aiContainer");
            frameLayout.setVisibility(z ? 0 : 8);
            UVCCameraTextureView uVCCameraTextureView = g().camera;
            r.d(uVCCameraTextureView, "viewBinding.camera");
            uVCCameraTextureView.setVisibility(z ^ true ? 0 : 8);
            if (z) {
                FrameLayout frameLayout2 = g().aiContainer;
                r.d(frameLayout2, "viewBinding.aiContainer");
                sourceVideoStreamA.b(frameLayout2);
            } else {
                UVCCameraTextureView uVCCameraTextureView2 = g().camera;
                r.d(uVCCameraTextureView2, "viewBinding.camera");
                sourceVideoStreamA.b(uVCCameraTextureView2);
                usbCameraManager.registerCameraListener(CameraIntent.FACE, this);
            }
        }
        g().btnBack.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.sundial.client.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CameraActivity.n(this.f9138a, view);
            }
        });
        g().btnCameraC1.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.sundial.client.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CameraActivity.o(this.f9139a, view);
            }
        });
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onConnect() {
        if (g().camera.hasSurface()) {
            this.f9103h = g().camera.getSurface().hashCode();
            UsbCameraManager.INSTANCE.startPreviewCamera(CameraIntent.FACE, g().camera.getSurface(), this.f9103h);
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        SoundPool soundPool = this.f9099d;
        if (soundPool != null) {
            soundPool.release();
        }
        UsbCameraManager usbCameraManager = UsbCameraManager.INSTANCE;
        usbCameraManager.setPreviewInOpen(true);
        usbCameraManager.unregisterCameraListener(CameraIntent.FACE, this);
        SourceVideoStream sourceVideoStream = this.f9102g;
        if (sourceVideoStream != null) {
            if (sourceVideoStream.a() == ImageFormat.IMAGE_FORMAT_YUV420P) {
                FrameLayout frameLayout = g().aiContainer;
                r.d(frameLayout, "viewBinding.aiContainer");
                sourceVideoStream.d(frameLayout);
            } else {
                UVCCameraTextureView uVCCameraTextureView = g().camera;
                r.d(uVCCameraTextureView, "viewBinding.camera");
                sourceVideoStream.d(uVCCameraTextureView);
            }
            sourceVideoStream.stop();
        }
        FrameCallback frameCallback = this.c;
        if (frameCallback != null) {
            frameCallback.h();
        } else {
            r.u("frameCallback");
            throw null;
        }
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onDetached() {
        UsbCameraManager.UsbCameraListener.DefaultImpls.onDetached(this);
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onDisconnect() {
    }

    @Override // org.opencv.android.LoaderCallbackInterface
    public void onManagerConnected(int status) {
        if (status == 0) {
            this.b = true;
        }
    }

    @Override // org.opencv.android.LoaderCallbackInterface
    public void onPackageInstall(int operation, InstallCallbackInterface callback) {
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onPreviewFrame(byte[] data) {
        r.e(data, "data");
    }
}
