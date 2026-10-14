package cn.mucang.jiakaoyi.uilib.login.face;

import android.graphics.Bitmap;
import android.graphics.PointF;
import android.os.Handler;
import android.os.HandlerThread;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.camera.ImageFormat;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream;
import cn.mucang.android.jiakaoyi.framework.camera.YuvFrameCallback;
import cn.mucang.jiakaoyi.uilib.login.face.check.BlurCheck;
import cn.mucang.jiakaoyi.uilib.login.face.check.GrayCheck;
import cn.mucang.jiakaoyi.uilib.login.face.check.LightCheck;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.iflytek.cloud.SpeechUtility;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.w0;
import org.opencv.android.InstallCallbackInterface;
import org.opencv.android.LoaderCallbackInterface;
import org.opencv.android.OpenCVLoader;
import org.opencv.android.Utils;
import org.opencv.calib3d.Calib3d;
import org.opencv.core.CvType;
import org.opencv.core.Mat;
import org.opencv.core.MatOfPoint2f;
import org.opencv.core.Point;
import org.opencv.core.Rect;
import org.opencv.imgproc.Imgproc;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 R2\u00020\u0001:\u0002RSB9\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rB?\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\u000fJ \u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u0005H\u0002J\u0006\u00108\u001a\u000203J(\u00109\u001a\u0002032\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=2\u0006\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u0005H\u0002J \u0010>\u001a\u0002032\u0006\u0010:\u001a\u00020;2\u0006\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u0005H\u0002J\b\u0010?\u001a\u000203H\u0002J\u0010\u0010@\u001a\u0002032\u0006\u0010:\u001a\u00020;H\u0002J@\u0010A\u001a\u0002032\u0006\u0010B\u001a\u0002052\u0006\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u0005H\u0016J\u0018\u0010H\u001a\u0002032\u0006\u0010I\u001a\u00020\u001f2\u0006\u0010J\u001a\u00020KH\u0002J\u0010\u0010L\u001a\u0002032\b\u0010M\u001a\u0004\u0018\u00010\u001dJ\u000e\u0010N\u001a\u0002032\u0006\u0010\u000b\u001a\u00020*J\u000e\u0010O\u001a\u0002032\u0006\u0010\u000b\u001a\u000201J\u0006\u0010P\u001a\u000203J\u0006\u0010Q\u001a\u000203R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010'\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u000101X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006T"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;", "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;", Constants.PARAM_SCOPE, "Lkotlinx/coroutines/CoroutineScope;", "capWidth", "", "capHeight", "sourceVideoStream", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;", "detectorFactory", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceDetectorFactory;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;", "(Lkotlinx/coroutines/CoroutineScope;IILcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;Lcn/mucang/jiakaoyi/uilib/login/face/FaceDetectorFactory;Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;)V", "limitPixel", "(Lkotlinx/coroutines/CoroutineScope;IIILcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;Lcn/mucang/jiakaoyi/uilib/login/face/FaceDetectorFactory;Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;)V", "affineMat", "Lorg/opencv/core/Mat;", "blurCheck", "Lcn/mucang/jiakaoyi/uilib/login/face/check/BlurCheck;", "checkJob", "Lkotlinx/coroutines/Job;", "checking", "", "dispatcher", "Lkotlinx/coroutines/android/HandlerDispatcher;", "faceDetector", "Lcn/mucang/jiakaoyi/uilib/login/face/IFaceDetector;", "faceFilter", "Lcn/mucang/jiakaoyi/uilib/login/face/IFaceFilter;", "faceInputBitmap", "Landroid/graphics/Bitmap;", "faceInputMat", "grayCheck", "Lcn/mucang/jiakaoyi/uilib/login/face/check/GrayCheck;", "handlerThread", "Landroid/os/HandlerThread;", "lightCheck", "Lcn/mucang/jiakaoyi/uilib/login/face/check/LightCheck;", "maskDetector", "Lcn/mucang/jiakaoyi/uilib/login/face/IMaskDetector;", "maskDetectorListener", "Lcn/mucang/jiakaoyi/uilib/login/face/MaskDetectorListener;", "maskInputBitmap", "maskInputMat", "onResume", "openCVIsSuccess", "originBitmap", "testListener", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$TestListener;", "checkFace", "", "data", "", "width", "height", "destroy", "onCheckFace", "pos", "Lorg/opencv/core/Rect;", "landmark", "Lcn/mucang/jiakaoyi/uilib/login/face/LandmarkEntity;", "onCheckFarFace", "onCheckNoFace", "onCheckSuitableFace", "onFrame", "byteArray", "stride", "size", "timeUs", "", "rotation", "onSuccess", OptionalModuleUtils.FACE, SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;", "setFaceFilter", "filter", "setMaskDetectListener", "setTestListener", TtmlNode.START, "stop", "Companion", "TestListener", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FaceLoginPresenter implements YuvFrameCallback {
    public static final a B = new a(null);
    private static final float C = 0.1125f;
    private static final int D = 20;
    private static final int E = 15;
    private static int F;
    private kotlinx.coroutines.android.a A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i0 f9367a;
    private final int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f9368d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SourceVideoStream f9369e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final FaceDetectorFactory f9370f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final FaceCheckListener f9371g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f9372h;
    private volatile boolean i;
    private volatile boolean j;
    private t1 k;
    private IFaceDetector l;
    private IMaskDetector m;
    private IFaceFilter n;
    private Mat o;
    private Mat p;
    private Bitmap q;
    private Bitmap r;
    private Bitmap s;
    private Mat t;
    private GrayCheck u;
    private BlurCheck v;
    private LightCheck w;
    private b x;
    private MaskDetectorListener y;
    private HandlerThread z;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$1", f = "FaceLoginPresenter.kt", l = {Videoio.CAP_PROP_XI_MANUAL_WB, Imgproc.COLOR_RGB2YUV_YV12}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        Object L$0;
        boolean Z$0;
        int label;

        /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$1$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$1$2", f = "FaceLoginPresenter.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
            final /* synthetic */ IFaceDetector $detector;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(IFaceDetector iFaceDetector, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.$detector = iFaceDetector;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass2(this.$detector, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
                return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                kotlin.coroutines.intrinsics.b.d();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
                this.$detector.init();
                return v.f15822a;
            }
        }

        /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$1$a */
        @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001a\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, d2 = {"cn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$1$result$1$1", "Lorg/opencv/android/LoaderCallbackInterface;", "onManagerConnected", "", "status", "", "onPackageInstall", "operation", "callback", "Lorg/opencv/android/InstallCallbackInterface;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        public static final class a implements LoaderCallbackInterface {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.k<Boolean> f9373a;

            /* JADX WARN: Multi-variable type inference failed */
            a(kotlinx.coroutines.k<? super Boolean> kVar) {
                this.f9373a = kVar;
            }

            @Override // org.opencv.android.LoaderCallbackInterface
            public void onManagerConnected(int status) {
                kotlinx.coroutines.k<Boolean> kVar = this.f9373a;
                Result.Companion companion = Result.INSTANCE;
                kVar.resumeWith(Result.m139constructorimpl(Boolean.valueOf(status == 0)));
            }

            @Override // org.opencv.android.LoaderCallbackInterface
            public void onPackageInstall(int operation, InstallCallbackInterface callback) {
            }
        }

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return FaceLoginPresenter.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IFaceDetector iFaceDetectorB;
            boolean z;
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    kotlin.k.b(obj);
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    z = this.Z$0;
                    iFaceDetectorB = (IFaceDetector) this.L$0;
                    kotlin.k.b(obj);
                }
                FaceLoginPresenter.this.l = iFaceDetectorB;
                FaceLoginPresenter.this.j = z;
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("opencv（for人脸）初始化结果：", kotlin.coroutines.jvm.internal.a.a(z)));
                FaceDetectorFactory faceDetectorFactory = FaceLoginPresenter.this.f9370f;
                final FaceLoginPresenter faceLoginPresenter = FaceLoginPresenter.this;
                faceDetectorFactory.a(new Function1<IMaskDetector, v>() { // from class: cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter.1.3
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ v invoke(IMaskDetector iMaskDetector) {
                        invoke2(iMaskDetector);
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(IMaskDetector it) {
                        kotlin.jvm.internal.r.e(it, "it");
                        FaceLoginPresenter faceLoginPresenter2 = faceLoginPresenter;
                        faceLoginPresenter2.p = new Mat(it.b().getHeight(), it.b().getWidth(), CvType.CV_8UC3);
                        faceLoginPresenter2.r = Bitmap.createBitmap(it.b().getWidth(), it.b().getHeight(), Bitmap.Config.ARGB_8888);
                        faceLoginPresenter.m = it;
                    }
                });
                return v.f15822a;
            }
            kotlin.k.b(obj);
            FaceLoginPresenter faceLoginPresenter2 = FaceLoginPresenter.this;
            a aVar = FaceLoginPresenter.B;
            int i2 = FaceLoginPresenter.F;
            FaceLoginPresenter.F = i2 + 1;
            faceLoginPresenter2.z = new HandlerThread(kotlin.jvm.internal.r.m("FaceLoginPresenter", kotlin.coroutines.jvm.internal.a.d(i2)));
            HandlerThread handlerThread = FaceLoginPresenter.this.z;
            kotlin.jvm.internal.r.c(handlerThread);
            handlerThread.start();
            FaceLoginPresenter faceLoginPresenter3 = FaceLoginPresenter.this;
            HandlerThread handlerThread2 = FaceLoginPresenter.this.z;
            kotlin.jvm.internal.r.c(handlerThread2);
            faceLoginPresenter3.A = kotlinx.coroutines.android.b.c(new Handler(handlerThread2.getLooper()), null, 1, null);
            this.label = 1;
            kotlinx.coroutines.l lVar = new kotlinx.coroutines.l(IntrinsicsKt__IntrinsicsJvmKt.c(this), 1);
            lVar.z();
            if (OpenCVLoader.initDebug()) {
                Result.Companion companion = Result.INSTANCE;
                lVar.resumeWith(Result.m139constructorimpl(kotlin.coroutines.jvm.internal.a.a(true)));
            } else {
                OpenCVLoader.initAsync(OpenCVLoader.OPENCV_VERSION, MucangConfig.getContext(), new a(lVar));
            }
            obj = lVar.x();
            if (obj == kotlin.coroutines.intrinsics.b.d()) {
                kotlin.coroutines.jvm.internal.f.c(this);
            }
            if (obj == objD) {
                return objD;
            }
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            if (zBooleanValue) {
                iFaceDetectorB = FaceLoginPresenter.this.f9370f.b();
                FaceLoginPresenter faceLoginPresenter4 = FaceLoginPresenter.this;
                faceLoginPresenter4.o = new Mat(faceLoginPresenter4.c, FaceLoginPresenter.this.b, CvType.CV_8UC3);
                FaceLoginPresenter faceLoginPresenter5 = FaceLoginPresenter.this;
                FaceCheckListener faceCheckListener = faceLoginPresenter5.f9371g;
                int i3 = FaceLoginPresenter.this.f9368d;
                final FaceLoginPresenter faceLoginPresenter6 = FaceLoginPresenter.this;
                faceLoginPresenter5.w = new LightCheck(faceCheckListener, i3, new Function1<Mat, v>() { // from class: cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter.1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ v invoke(Mat mat) {
                        invoke2(mat);
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Mat it) {
                        kotlin.jvm.internal.r.e(it, "it");
                        b bVar = faceLoginPresenter6.x;
                        if (bVar == null) {
                            return;
                        }
                        bVar.a(it);
                    }
                });
                FaceLoginPresenter.this.u = new GrayCheck();
                FaceLoginPresenter faceLoginPresenter7 = FaceLoginPresenter.this;
                faceLoginPresenter7.v = new BlurCheck(faceLoginPresenter7.f9371g);
                FaceLoginPresenter.this.t = new Mat();
                CoroutineDispatcher coroutineDispatcherB = w0.b();
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(iFaceDetectorB, null);
                this.L$0 = iFaceDetectorB;
                this.Z$0 = zBooleanValue;
                this.label = 2;
                if (kotlinx.coroutines.f.c(coroutineDispatcherB, anonymousClass2, this) == objD) {
                    return objD;
                }
                z = zBooleanValue;
                FaceLoginPresenter.this.l = iFaceDetectorB;
                FaceLoginPresenter.this.j = z;
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("opencv（for人脸）初始化结果：", kotlin.coroutines.jvm.internal.a.a(z)));
                FaceDetectorFactory faceDetectorFactory2 = FaceLoginPresenter.this.f9370f;
                final FaceLoginPresenter faceLoginPresenter8 = FaceLoginPresenter.this;
                faceDetectorFactory2.a(new Function1<IMaskDetector, v>() { // from class: cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter.1.3
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ v invoke(IMaskDetector iMaskDetector) {
                        invoke2(iMaskDetector);
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(IMaskDetector it) {
                        kotlin.jvm.internal.r.e(it, "it");
                        FaceLoginPresenter faceLoginPresenter9 = faceLoginPresenter8;
                        faceLoginPresenter9.p = new Mat(it.b().getHeight(), it.b().getWidth(), CvType.CV_8UC3);
                        faceLoginPresenter9.r = Bitmap.createBitmap(it.b().getWidth(), it.b().getHeight(), Bitmap.Config.ARGB_8888);
                        faceLoginPresenter8.m = it;
                    }
                });
            }
            return v.f15822a;
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\f8\u0002X\u0083D¢\u0006\b\n\u0000\u0012\u0004\b\r\u0010\u0002R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$Companion;", "", "()V", "DEFAULT_LIMIT_BLUR", "", "getDEFAULT_LIMIT_BLUR$annotations", "getDEFAULT_LIMIT_BLUR", "()I", "DEFAULT_LIMIT_PIXEL_V2", "getDEFAULT_LIMIT_PIXEL_V2$annotations", "getDEFAULT_LIMIT_PIXEL_V2", "MIN_FACE_RATIO", "", "getMIN_FACE_RATIO$annotations", "threadIndex", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final int a() {
            return FaceLoginPresenter.E;
        }

        public final int b() {
            return FaceLoginPresenter.D;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$TestListener;", "", "showBrightnessImg", "", "mat", "Lorg/opencv/core/Mat;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface b {
        void a(Mat mat);
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9374a;

        static {
            int[] iArr = new int[ImageFormat.values().length];
            iArr[ImageFormat.IMAGE_FORMAT_YUVNV21.ordinal()] = 1;
            iArr[ImageFormat.IMAGE_FORMAT_YUV420P.ordinal()] = 2;
            f9374a = iArr;
        }
    }

    public FaceLoginPresenter(i0 i0Var, int i, int i2, int i3, SourceVideoStream sourceVideoStream, FaceDetectorFactory detectorFactory, FaceCheckListener listener) {
        kotlin.jvm.internal.r.e(sourceVideoStream, "sourceVideoStream");
        kotlin.jvm.internal.r.e(detectorFactory, "detectorFactory");
        kotlin.jvm.internal.r.e(listener, "listener");
        this.f9367a = i0Var;
        this.b = i;
        this.c = i2;
        this.f9368d = i3;
        this.f9369e = sourceVideoStream;
        this.f9370f = detectorFactory;
        this.f9371g = listener;
        sourceVideoStream.e(this);
        this.q = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        if (i0Var == null) {
            return;
        }
        kotlinx.coroutines.g.b(i0Var, null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:13:0x0034  */
    /* JADX WARN: Code duplicated, block: B:49:0x0160  */
    /* JADX WARN: Code duplicated, block: B:95:0x0324  */
    public final void N(byte[] bArr, int i, int i2) {
        m mVarB;
        boolean z;
        boolean zA;
        boolean zD;
        boolean zA2;
        Bitmap bitmap;
        Bitmap bitmap2;
        Integer numValueOf;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i3 = c.f9374a[this.f9369e.a().ordinal()];
        if (i3 == 1) {
            IFaceDetector iFaceDetector = this.l;
            if (iFaceDetector == null) {
                mVarB = null;
            } else {
                mVarB = iFaceDetector.b(bArr, i, i2);
            }
        } else {
            if (i3 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            IFaceDetector iFaceDetector2 = this.l;
            if (iFaceDetector2 == null) {
                mVarB = null;
            } else {
                mVarB = iFaceDetector2.d(bArr, i, i2);
            }
        }
        t.h("faceLogin", "人脸扫描耗费：" + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
        if (mVarB == null || mVarB.g() == null) {
            b0();
            return;
        }
        if (mVarB.g().width != mVarB.g().height) {
            int i4 = mVarB.g().x;
            int i5 = mVarB.g().width;
            int i6 = mVarB.g().y;
            int i7 = mVarB.g().height;
            mVarB.g().x = i4 - ((i7 - i5) / 2);
            mVarB.g().width = i7;
            if (mVarB.g().x < 0 || mVarB.g().x + mVarB.g().width > i) {
                mVarB.g().x = i4;
                mVarB.g().width = i5;
                mVarB.g().y = i6 - ((i5 - i7) / 2);
                mVarB.g().height = i5;
            }
        }
        Rect rectG = mVarB.g();
        kotlin.jvm.internal.r.d(rectG, "faceResult.pos");
        LandmarkEntity landmarkEntityE = mVarB.e();
        kotlin.jvm.internal.r.d(landmarkEntityE, "faceResult.landmark");
        X(rectG, landmarkEntityE, i, i2);
        float f2 = mVarB.g().height / i2;
        t.h("faceLogin", kotlin.jvm.internal.r.m("人脸占比ratio:", Float.valueOf(f2)));
        IFaceDetector iFaceDetector3 = this.l;
        Float fValueOf = iFaceDetector3 == null ? null : Float.valueOf(iFaceDetector3.a());
        if (f2 < (fValueOf == null ? C : fValueOf.floatValue())) {
            Rect rectG2 = mVarB.g();
            kotlin.jvm.internal.r.d(rectG2, "faceResult.pos");
            Z(rectG2, i, i2);
            return;
        }
        if (Math.abs(mVarB.b()) >= 45.0f || mVarB.a() >= 20.0f || mVarB.a() <= -15.0f || Math.abs(mVarB.c()) >= 15.0f) {
            final m mVar = mVarB;
            u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.face.f
                @Override // java.lang.Runnable
                public final void run() {
                    FaceLoginPresenter.O(this.f9383a, mVar);
                }
            });
            return;
        }
        Rect rectG3 = mVarB.g();
        kotlin.jvm.internal.r.d(rectG3, "faceResult.pos");
        d0(rectG3);
        IFaceDetector iFaceDetector4 = this.l;
        boolean z2 = false;
        if (iFaceDetector4 == null) {
            z = false;
        } else {
            Rect rectG4 = mVarB.g();
            kotlin.jvm.internal.r.d(rectG4, "faceResult.pos");
            if (iFaceDetector4.c(rectG4, i, i2)) {
                z = true;
            } else {
                z = false;
            }
        }
        if (z) {
            return;
        }
        OpencvHelper opencvHelper = OpencvHelper.f9399a;
        Rect rectG5 = mVarB.g();
        kotlin.jvm.internal.r.d(rectG5, "faceResult.pos");
        if (opencvHelper.a(rectG5, i, i2)) {
            Mat dst = mVarB.d().submat(mVarB.g());
            GrayCheck grayCheck = this.u;
            if (grayCheck == null) {
                zA = false;
            } else {
                Rect rectG6 = mVarB.g();
                kotlin.jvm.internal.r.d(rectG6, "faceResult.pos");
                kotlin.jvm.internal.r.d(dst, "dst");
                LandmarkEntity landmarkEntityE2 = mVarB.e();
                kotlin.jvm.internal.r.d(landmarkEntityE2, "faceResult.landmark");
                zA = grayCheck.a(rectG6, dst, landmarkEntityE2);
            }
            mVarB.i(zA);
            LightCheck lightCheck = this.w;
            if (lightCheck == null) {
                zD = false;
            } else {
                Rect rectG7 = mVarB.g();
                kotlin.jvm.internal.r.d(rectG7, "faceResult.pos");
                kotlin.jvm.internal.r.d(dst, "dst");
                LandmarkEntity landmarkEntityE3 = mVarB.e();
                kotlin.jvm.internal.r.d(landmarkEntityE3, "faceResult.landmark");
                zD = lightCheck.d(zA, rectG7, dst, landmarkEntityE3);
            }
            if (zD) {
                return;
            }
            BlurCheck blurCheck = this.v;
            if (blurCheck == null) {
                zA2 = false;
            } else {
                Rect rectG8 = mVarB.g();
                kotlin.jvm.internal.r.d(rectG8, "faceResult.pos");
                kotlin.jvm.internal.r.d(dst, "dst");
                LandmarkEntity landmarkEntityE4 = mVarB.e();
                kotlin.jvm.internal.r.d(landmarkEntityE4, "faceResult.landmark");
                zA2 = blurCheck.a(zA, rectG8, dst, landmarkEntityE4);
            }
            if (zA2) {
                return;
            }
            List<PointF> listM = kotlin.collections.u.m(mVarB.e().getEyeLeft(), mVarB.e().getEyeRight(), mVarB.e().getNose(), mVarB.e().getMouthLeft(), mVarB.e().getMouthRight());
            ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listM, 10));
            for (PointF pointF : listM) {
                arrayList.add(new Point(pointF.x - mVarB.g().x, pointF.y - mVarB.g().y));
            }
            Object[] array = arrayList.toArray(new Point[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            Point[] pointArr = (Point[]) array;
            MatOfPoint2f matOfPoint2f = new MatOfPoint2f((Point[]) Arrays.copyOf(pointArr, pointArr.length));
            double d2 = ((double) mVarB.g().width) / ((double) 112);
            m mVar2 = mVarB;
            double d3 = d2 * 51.0d;
            double d4 = 92.0d * d2;
            MatOfPoint2f matOfPoint2f2 = new MatOfPoint2f(new Point(d2 * 38.0d, d3), new Point(73.0d * d2, d3), new Point(56.0d * d2, d2 * 71.0d), new Point(41.0d * d2, d4), new Point(d2 * 70.0d, d4));
            Mat matEstimateAffine2D = Calib3d.estimateAffine2D(matOfPoint2f, matOfPoint2f2);
            matOfPoint2f.release();
            matOfPoint2f2.release();
            Imgproc.warpAffine(dst, this.t, matEstimateAffine2D, dst.size());
            Mat mat = this.o;
            if (mat == null || (bitmap = this.q) == null) {
                return;
            }
            Imgproc.resize(this.t, mat, mat.size());
            Utils.matToBitmap(mat, bitmap);
            if (this.y != null) {
                IFaceFilter iFaceFilter = this.n;
                if (iFaceFilter != null && iFaceFilter.a()) {
                    z2 = true;
                }
                if (!z2) {
                    Mat mat2 = this.p;
                    if (mat2 == null) {
                        numValueOf = null;
                    } else {
                        Imgproc.resize(dst, mat2, mat2.size());
                        Utils.matToBitmap(mat2, this.r);
                        IMaskDetector iMaskDetector = this.m;
                        if (iMaskDetector == null || (bitmap2 = this.r) == null) {
                            numValueOf = null;
                        } else {
                            numValueOf = Integer.valueOf(iMaskDetector.a(bitmap2));
                        }
                    }
                    if (numValueOf != null) {
                        numValueOf.intValue();
                        MaskDetectorListener maskDetectorListener = this.y;
                        if (maskDetectorListener != null) {
                            maskDetectorListener.e(numValueOf.intValue());
                            v vVar = v.f15822a;
                        }
                    }
                    if (numValueOf != null && numValueOf.intValue() == 1) {
                        return;
                    }
                }
            }
            if (this.s == null) {
                this.s = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            }
            Mat matD = mVar2.d();
            Bitmap bitmap3 = this.s;
            kotlin.jvm.internal.r.c(bitmap3);
            Utils.matToBitmap(matD, bitmap3);
            Bitmap bitmap4 = this.s;
            kotlin.jvm.internal.r.c(bitmap4);
            mVar2.j(bitmap4);
            f0(bitmap, mVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(FaceLoginPresenter this$0, m mVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f9371g.f(mVar.a(), mVar.b(), mVar.c());
    }

    private final void X(final Rect rect, final LandmarkEntity landmarkEntity, final int i, final int i2) {
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.face.c
            @Override // java.lang.Runnable
            public final void run() {
                FaceLoginPresenter.Y(this.f9377a, rect, landmarkEntity, i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y(FaceLoginPresenter this$0, Rect pos, LandmarkEntity landmark, int i, int i2) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(pos, "$pos");
        kotlin.jvm.internal.r.e(landmark, "$landmark");
        this$0.f9371g.b(pos, landmark, i, i2);
    }

    private final void Z(final Rect rect, final int i, final int i2) {
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.face.e
            @Override // java.lang.Runnable
            public final void run() {
                FaceLoginPresenter.a0(this.f9381a, rect, i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a0(FaceLoginPresenter this$0, Rect pos, int i, int i2) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(pos, "$pos");
        this$0.f9371g.a(pos, i, i2);
    }

    private final void b0() {
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.face.d
            @Override // java.lang.Runnable
            public final void run() {
                FaceLoginPresenter.c0(this.f9380a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c0(FaceLoginPresenter this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f9371g.c();
    }

    private final void d0(final Rect rect) {
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.face.b
            @Override // java.lang.Runnable
            public final void run() {
                FaceLoginPresenter.e0(this.f9376a, rect);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(FaceLoginPresenter this$0, Rect pos) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(pos, "$pos");
        this$0.f9371g.g(pos);
    }

    private final void f0(Bitmap bitmap, m mVar) {
        this.f9371g.i(bitmap, mVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(FaceLoginPresenter this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f9369e.start();
        IFaceFilter iFaceFilter = this$0.n;
        if (iFaceFilter == null) {
            return;
        }
        iFaceFilter.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m0(FaceLoginPresenter this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f9369e.stop();
        IFaceFilter iFaceFilter = this$0.n;
        if (iFaceFilter == null) {
            return;
        }
        iFaceFilter.stop();
    }

    public final void P() {
        t1 t1Var = this.k;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        this.k = null;
        this.j = false;
        kotlinx.coroutines.android.a aVar = this.A;
        if (aVar == null) {
            return;
        }
        kotlinx.coroutines.g.b(j0.b(), aVar, null, new FaceLoginPresenter$destroy$1$1(this, null), 2, null);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.camera.YuvFrameCallback
    public void a(byte[] byteArray, int i, int i2, int i3, int i4, long j, int i5) {
        kotlin.jvm.internal.r.e(byteArray, "byteArray");
        i0 i0Var = this.f9367a;
        this.k = i0Var == null ? null : kotlinx.coroutines.g.b(i0Var, w0.c(), null, new FaceLoginPresenter$onFrame$1(this, byteArray, i, i2, null), 2, null);
    }

    public final void g0(IFaceFilter iFaceFilter) {
        this.n = iFaceFilter;
    }

    public final void h0(MaskDetectorListener listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.y = listener;
    }

    public final void i0(b listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.x = listener;
    }

    public final void j0() {
        this.f9372h = true;
        u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.face.a
            @Override // java.lang.Runnable
            public final void run() {
                FaceLoginPresenter.k0(this.f9375a);
            }
        });
    }

    public final void l0() {
        this.f9372h = false;
        u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.face.g
            @Override // java.lang.Runnable
            public final void run() {
                FaceLoginPresenter.m0(this.f9384a);
            }
        });
    }
}
