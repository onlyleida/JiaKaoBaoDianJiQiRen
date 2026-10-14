package cn.mucang.android.jiakaoyi.teachingk2.login.ui;

import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.facelib.GoogleDetectorFactory;
import cn.mucang.android.facelib.TfLitePool;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.DebounceUtil;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityFaceRegisterBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutLoginFaceBinding;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.push.AiCameraAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.push.AiCameraManager;
import cn.mucang.android.jiakaoyi.teachingk2.push.UsbCameraAdapter;
import cn.mucang.android.jky.camera.CameraIntent;
import cn.mucang.android.jky.camera.UsbCameraManager;
import cn.mucang.jiakaoyi.uilib.login.api.FaceCheckApi;
import cn.mucang.jiakaoyi.uilib.login.face.AbsFaceCheckListener;
import cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter;
import cn.mucang.jiakaoyi.uilib.login.face.LandmarkEntity;
import cn.mucang.jiakaoyi.uilib.login.face.MaskDetectorListener;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import com.mobile.auth.BuildConfig;
import com.serenegiant.usb.widget.UVCCameraTextureView;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.w0;
import org.opencv.core.Rect;
import org.webrtc.SurfaceViewRenderer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004*\u0001\u000f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004B\u0005¢\u0006\u0002\u0010\u0005J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u001eH\u0014J\b\u0010\u001f\u001a\u00020\u001eH\u0014J\u0010\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020%H\u0016J\b\u0010&\u001a\u00020\u001eH\u0002J\b\u0010'\u001a\u00020\u001eH\u0002J\b\u0010(\u001a\u00020\u001eH\u0002R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \u0015*\u0004\u0018\u00010\u00140\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityFaceRegisterBinding;", "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;", "Lcn/mucang/jiakaoyi/uilib/login/face/MaskDetectorListener;", "()V", "binding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;", "getBinding", "()Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;", "binding$delegate", "Lkotlin/Lazy;", "faceApi", "Lcn/mucang/jiakaoyi/uilib/login/api/FaceCheckApi;", "faceCheckListener", "cn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$faceCheckListener$1", "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceRegisterActivity$faceCheckListener$1;", "faceLoginPresenter", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;", "rotateAnimator", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", "scanAnimator", "sourceVideoStream", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;", "tfApi", "Lcn/mucang/android/facelib/tflite/SimilarityClassifier;", "getStatName", "", "init", "", "onDestroy", "onMaskResult", "maskResult", "", "onPreviewFrame", "data", "", "startAnimation", "startPreview", "stopAnimation", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FaceRegisterActivity extends BaseViewBindingActivity<ActivityFaceRegisterBinding> implements UsbCameraManager.UsbCameraListener, MaskDetectorListener {
    private FaceLoginPresenter b;
    private SourceVideoStream c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.facelib.y.e f7354d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ValueAnimator f7358h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final FaceCheckApi f7355e = new FaceCheckApi();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f7356f = kotlin.i.b(new Function0<LayoutLoginFaceBinding>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.FaceRegisterActivity$binding$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final LayoutLoginFaceBinding invoke() {
            return this.this$0.g().faceLayout;
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ValueAnimator f7357g = ValueAnimator.ofInt(0, 360).setDuration(3000L);
    private final FaceRegisterActivity$faceCheckListener$1 i = new AbsFaceCheckListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.FaceRegisterActivity$faceCheckListener$1
        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void a(Rect pos, int i, int i2) {
            kotlin.jvm.internal.r.e(pos, "pos");
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void b(Rect pos, LandmarkEntity landmark, int i, int i2) {
            kotlin.jvm.internal.r.e(pos, "pos");
            kotlin.jvm.internal.r.e(landmark, "landmark");
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void c() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void g(Rect pos) {
            kotlin.jvm.internal.r.e(pos, "pos");
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void h(int i) {
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void i(Bitmap face, cn.mucang.jiakaoyi.uilib.login.face.m result) throws InterruptedException {
            cn.mucang.android.facelib.y.e.a aVar;
            String xyToken;
            Object objM139constructorimpl;
            kotlin.jvm.internal.r.e(face, "face");
            kotlin.jvm.internal.r.e(result, "result");
            List<cn.mucang.android.facelib.y.e.a> listK = TfLitePool.f3042a.k(face, true);
            Object objA = (listK == null || (aVar = listK.get(0)) == null) ? null : aVar.a();
            float[][] fArr = objA instanceof float[][] ? (float[][]) objA : null;
            float[] fArr2 = fArr == null ? null : fArr[0];
            if (fArr2 == null) {
                return;
            }
            FaceRegisterActivity faceRegisterActivity = this.f7359a;
            XyUserModel xyUserModelE = RobotAccount.i().e();
            if (xyUserModelE == null || (xyToken = xyUserModelE.getXyToken()) == null) {
                return;
            }
            Log.i("www", kotlin.jvm.internal.r.m("角度：", Float.valueOf(result.b())));
            try {
                Result.Companion companion = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(Boolean.valueOf(faceRegisterActivity.f7355e.q(xyToken, result.b(), fArr2, BuildConfig.FLAVOR_feat, "123456")));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
            }
            if (Result.m145isFailureimpl(objM139constructorimpl)) {
                objM139constructorimpl = null;
            }
            Boolean bool = (Boolean) objM139constructorimpl;
            if (bool != null ? bool.booleanValue() : false) {
                cn.mucang.android.jiakaoyi.framework.log.f.g(kotlin.jvm.internal.r.m("人脸注册成功, 角度：", Float.valueOf(result.b())));
                TtsManager.r(k0.a(R.string.teachbase_face_register_success), TtsGrade.GlobalTip);
                FaceLoginPresenter faceLoginPresenter = faceRegisterActivity.b;
                if (faceLoginPresenter != null) {
                    faceLoginPresenter.l0();
                }
                kotlinx.coroutines.g.b(androidx.lifecycle.s.a(faceRegisterActivity), null, null, new FaceRegisterActivity$faceCheckListener$1$onSuccess$1$1$1(faceRegisterActivity, null), 3, null);
            }
        }
    };

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.ui.FaceRegisterActivity$init$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.login.ui.FaceRegisterActivity$init$1", f = "FaceRegisterActivity.kt", l = {80}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        Object L$0;
        int label;

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.ui.FaceRegisterActivity$init$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lcn/mucang/android/facelib/tflite/SimilarityClassifier;", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.login.ui.FaceRegisterActivity$init$1$1", f = "FaceRegisterActivity.kt", l = {}, m = "invokeSuspend")
        static final class C01331 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super cn.mucang.android.facelib.y.e>, Object> {
            int label;

            C01331(Continuation<? super C01331> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
                return new C01331(continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super cn.mucang.android.facelib.y.e> continuation) {
                return ((C01331) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                kotlin.coroutines.intrinsics.b.d();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
                return cn.mucang.android.facelib.y.f.b(MucangConfig.getContext().getAssets(), "mobile_face_net.tflite", 112, true, false);
            }
        }

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return FaceRegisterActivity.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            FaceRegisterActivity faceRegisterActivity;
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                FaceRegisterActivity faceRegisterActivity2 = FaceRegisterActivity.this;
                CoroutineDispatcher coroutineDispatcherB = w0.b();
                C01331 c01331 = new C01331(null);
                this.L$0 = faceRegisterActivity2;
                this.label = 1;
                Object objC = kotlinx.coroutines.f.c(coroutineDispatcherB, c01331, this);
                if (objC == objD) {
                    return objD;
                }
                faceRegisterActivity = faceRegisterActivity2;
                obj = objC;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                faceRegisterActivity = (FaceRegisterActivity) this.L$0;
                kotlin.k.b(obj);
            }
            faceRegisterActivity.f7354d = (cn.mucang.android.facelib.y.e) obj;
            cn.mucang.android.jiakaoyi.framework.log.f.o("tensorflow初始化成功");
            FaceRegisterActivity.this.y();
            return kotlin.v.f15822a;
        }
    }

    private final LayoutLoginFaceBinding o() {
        return (LayoutLoginFaceBinding) this.f7356f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(FaceRegisterActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        FaceLoginPresenter faceLoginPresenter = this$0.b;
        if (faceLoginPresenter != null) {
            faceLoginPresenter.j0();
        }
        this$0.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u() {
        TtsManager.r(k0.a(R.string.teachbase_take_off_mask), TtsGrade.GlobalTip);
    }

    private final void v() {
        if (!this.f7357g.isStarted()) {
            this.f7357g.setInterpolator(new LinearInterpolator());
            this.f7357g.setRepeatCount(-1);
            this.f7357g.setTarget(o().circleIv);
            this.f7357g.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.l
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    FaceRegisterActivity.w(this.f7389a, valueAnimator);
                }
            });
            this.f7357g.start();
        }
        ValueAnimator valueAnimator = this.f7358h;
        if (valueAnimator != null && !valueAnimator.isStarted()) {
            valueAnimator.setInterpolator(new LinearInterpolator());
            valueAnimator.setRepeatCount(-1);
            valueAnimator.setTarget(o().scanView);
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.k
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    FaceRegisterActivity.x(this.f7388a, valueAnimator2);
                }
            });
            valueAnimator.start();
        }
        View view = o().scanView;
        kotlin.jvm.internal.r.d(view, "binding.scanView");
        view.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(FaceRegisterActivity this$0, ValueAnimator valueAnimator) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ImageView imageView = this$0.o().circleIv;
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        imageView.setRotation(((Integer) animatedValue).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(FaceRegisterActivity this$0, ValueAnimator valueAnimator) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int iIntValue = ((Integer) animatedValue).intValue();
        ViewGroup.LayoutParams layoutParams = this$0.o().scanView.getLayoutParams();
        layoutParams.height = iIntValue;
        this$0.o().scanView.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y() {
        boolean zF = LocalConfigManager.f(LocalConfig.FaceLoginFromAi);
        SurfaceViewRenderer surfaceViewRenderer = o().aiCamera;
        kotlin.jvm.internal.r.d(surfaceViewRenderer, "binding.aiCamera");
        surfaceViewRenderer.setVisibility(zF ? 0 : 8);
        UVCCameraTextureView uVCCameraTextureView = o().camera;
        kotlin.jvm.internal.r.d(uVCCameraTextureView, "binding.camera");
        uVCCameraTextureView.setVisibility(zF ^ true ? 0 : 8);
        if (zF) {
            SourceVideoStream sourceVideoStream = this.c;
            if (sourceVideoStream == null) {
                return;
            }
            SurfaceViewRenderer surfaceViewRenderer2 = o().aiCamera;
            kotlin.jvm.internal.r.d(surfaceViewRenderer2, "binding.aiCamera");
            sourceVideoStream.b(surfaceViewRenderer2);
            return;
        }
        SourceVideoStream sourceVideoStream2 = this.c;
        if (sourceVideoStream2 == null) {
            return;
        }
        UVCCameraTextureView uVCCameraTextureView2 = o().camera;
        kotlin.jvm.internal.r.d(uVCCameraTextureView2, "binding.camera");
        sourceVideoStream2.b(uVCCameraTextureView2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z() {
        View view = o().scanView;
        kotlin.jvm.internal.r.d(view, "binding.scanView");
        view.setVisibility(8);
        this.f7357g.cancel();
        ValueAnimator valueAnimator = this.f7358h;
        if (valueAnimator == null) {
            return;
        }
        valueAnimator.cancel();
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.MaskDetectorListener
    public void e(int i) {
        if (i == 1) {
            DebounceUtil.f3633a.a(5000, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.i
                @Override // java.lang.Runnable
                public final void run() {
                    FaceRegisterActivity.u();
                }
            });
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "FaceRegisterActivity";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        int iD = cn.mucang.android.jiakaoyi.framework.utils.i0.d("key_face_limit_pixel_v2", FaceLoginPresenter.B.b());
        if (LocalConfigManager.f(LocalConfig.FaceLoginFromAi)) {
            if (!o().aiCamera.isSelected()) {
                o().aiCamera.init(AiCameraManager.f7519a.e(), null);
                o().aiCamera.setSelected(true);
            }
            this.c = new AiCameraAdapter();
        } else {
            CameraIntent cameraIntent = CameraIntent.FACE;
            this.c = new UsbCameraAdapter(cameraIntent);
            UsbCameraManager.INSTANCE.registerCameraListener(cameraIntent, this);
        }
        androidx.lifecycle.m mVarA = androidx.lifecycle.s.a(this);
        SourceVideoStream sourceVideoStream = this.c;
        kotlin.jvm.internal.r.c(sourceVideoStream);
        FaceLoginPresenter faceLoginPresenter = new FaceLoginPresenter(mVarA, 112, 112, iD, sourceVideoStream, new GoogleDetectorFactory(), this.i);
        this.b = faceLoginPresenter;
        if (faceLoginPresenter != null) {
            faceLoginPresenter.h0(this);
        }
        kotlinx.coroutines.g.b(androidx.lifecycle.s.a(this), null, null, new AnonymousClass1(null), 3, null);
        TextView textView = g().tvName;
        XyUserModel xyUserModelE = RobotAccount.i().e();
        textView.setText(xyUserModelE != null ? xyUserModelE.getName() : null);
        TextView textView2 = o().btnFaceCheck;
        kotlin.jvm.internal.r.d(textView2, "binding.btnFaceCheck");
        textView2.setVisibility(8);
        o().faceTipTv.setText(k0.a(R.string.teachbase_move_face_recog_frame));
        g().btnRegister.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FaceRegisterActivity.p(this.f7386a, view);
            }
        });
    }

    @Override // cn.mucang.android.jky.camera.UsbCameraManager.UsbCameraListener
    public void onConnect() {
        UsbCameraManager.UsbCameraListener.DefaultImpls.onConnect(this);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        FaceLoginPresenter faceLoginPresenter = this.b;
        if (faceLoginPresenter != null) {
            faceLoginPresenter.P();
        }
        if (LocalConfigManager.f(LocalConfig.FaceLoginFromAi)) {
            SourceVideoStream sourceVideoStream = this.c;
            if (sourceVideoStream != null) {
                SurfaceViewRenderer surfaceViewRenderer = o().aiCamera;
                kotlin.jvm.internal.r.d(surfaceViewRenderer, "binding.aiCamera");
                sourceVideoStream.d(surfaceViewRenderer);
            }
        } else {
            SourceVideoStream sourceVideoStream2 = this.c;
            if (sourceVideoStream2 != null) {
                UVCCameraTextureView uVCCameraTextureView = o().camera;
                kotlin.jvm.internal.r.d(uVCCameraTextureView, "binding.camera");
                sourceVideoStream2.d(uVCCameraTextureView);
            }
        }
        SourceVideoStream sourceVideoStream3 = this.c;
        if (sourceVideoStream3 != null) {
            sourceVideoStream3.stop();
        }
        this.c = null;
        RobotAccount.p("FaceRegister", null, 2, null);
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
    }
}
