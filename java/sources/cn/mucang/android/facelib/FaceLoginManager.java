package cn.mucang.android.facelib;

import android.graphics.Bitmap;
import android.view.View;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.facelib.model.FaceHistoryEntity;
import cn.mucang.android.facelib.model.FaceUserModel;
import cn.mucang.android.facelib.model.NonPerceiveLoginData;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoFactory;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream;
import cn.mucang.android.jiakaoyi.framework.utils.DebounceUtil;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.jiakaoyi.uilib.login.LoginManager;
import cn.mucang.jiakaoyi.uilib.login.api.FaceCheckApi;
import cn.mucang.jiakaoyi.uilib.login.face.AbsFaceCheckListener;
import cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener;
import cn.mucang.jiakaoyi.uilib.login.face.FaceLoginListener;
import cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter;
import cn.mucang.jiakaoyi.uilib.login.face.IFaceFilter;
import cn.mucang.jiakaoyi.uilib.login.face.LandmarkEntity;
import cn.mucang.jiakaoyi.uilib.login.face.MaskDetectorListener;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import cn.mucang.jiakaoyi.uilib.login.model.MatchResultModel;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.iflytek.cloud.SpeechUtility;
import com.mobile.auth.BuildConfig;
import com.tencent.connect.common.Constants;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;
import org.apache.commons.math3.optimization.direct.CMAESOptimizer;
import org.opencv.core.Rect;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000±\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001\r\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u00032\u00020\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0006J\u0006\u0010&\u001a\u00020'J\u0016\u0010(\u001a\u00020'2\u0006\u0010)\u001a\u00020 2\u0006\u0010*\u001a\u00020 J\u0006\u0010+\u001a\u00020'J\u0012\u0010,\u001a\u0004\u0018\u00010\u00022\u0006\u0010-\u001a\u00020.H\u0016J\u0018\u0010/\u001a\u00020'2\u0006\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u000103J\b\u00104\u001a\u00020'H\u0002J\u0018\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u00022\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010:\u001a\u00020'2\u0006\u0010;\u001a\u00020\bH\u0016J \u0010<\u001a\u0002062\u0006\u00107\u001a\u00020\u00022\u0006\u0010=\u001a\u00020\u00042\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010>\u001a\u00020'2\b\u0010?\u001a\u0004\u0018\u00010\u001eJ\u0010\u0010@\u001a\u00020'2\b\u0010?\u001a\u0004\u0018\u00010\u001cJ\u0010\u0010A\u001a\u00020'2\b\u0010?\u001a\u0004\u0018\u00010\u001cJ\u000e\u0010B\u001a\u00020'2\u0006\u0010=\u001a\u00020CJ\u000e\u0010D\u001a\u00020'2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010E\u001a\u00020'2\u0006\u0010F\u001a\u00020GJ\u0006\u0010H\u001a\u00020'J\u0006\u0010I\u001a\u00020'J\u000e\u0010J\u001a\u00020'2\u0006\u0010F\u001a\u00020GJ\u0016\u0010K\u001a\u00020'2\u0006\u0010L\u001a\u00020 2\u0006\u0010*\u001a\u00020 R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006M"}, d2 = {"Lcn/mucang/android/facelib/FaceLoginManager;", "Lcn/mucang/android/facelib/auto/common/FaceDetector;", "Lcn/mucang/android/facelib/tflite/SimilarityClassifier$Recognition;", "Lcn/mucang/android/facelib/auto/common/UserFaceStorage;", "Lcn/mucang/android/facelib/model/FaceUserModel;", "Lcn/mucang/jiakaoyi/uilib/login/face/MaskDetectorListener;", "()V", "MODE_LEARN", "", "MODE_LOGIN", "detector", "Lcn/mucang/android/facelib/tflite/SimilarityClassifier;", "faceMatchingListener", "cn/mucang/android/facelib/FaceLoginManager$faceMatchingListener$1", "Lcn/mucang/android/facelib/FaceLoginManager$faceMatchingListener$1;", "facePresenter", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;", "faceRegister", "Lcn/mucang/android/facelib/FaceRegister;", "leanMode", "learningFlow", "Lcn/mucang/android/facelib/auto/learn/LearningFlow;", "learningTimeOut", "Lcn/mucang/android/facelib/TimeOut;", "matchingFlow", "Lcn/mucang/android/facelib/auto/match/MatchingFlow;", "matchingTimeOut", "nonStandardLoginListener", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginListener;", "proxyCheckListener", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;", "scene", "", Constants.PARAM_SCOPE, "Lkotlinx/coroutines/CoroutineScope;", "sourceVideoStream", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;", "standardLoginListener", "clearFaceData", "", "deleteUserFaceData", "studentId", "mark", "destroy", "detect", "data", "Landroid/graphics/Bitmap;", "init", "factory", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoFactory;", "faceFilter", "Lcn/mucang/jiakaoyi/uilib/login/face/IFaceFilter;", "initLocalRecognizer", "match", "", "faceData", "faceResult", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;", "onMaskResult", "maskResult", "save", "user", "setCheckListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setNonStandardLoginListener", "setStandardLoginListener", "startLearn", "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "startLogin", "startPreview", "view", "Landroid/view/View;", "stopLearn", "stopLogin", "stopPreview", "updateFaceHistory", "mucangId", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FaceLoginManager implements cn.mucang.android.facelib.w.a.b<cn.mucang.android.facelib.y.e.a>, cn.mucang.android.facelib.w.a.c<cn.mucang.android.facelib.y.e.a, FaceUserModel>, MaskDetectorListener {
    private static cn.mucang.android.facelib.w.c.b<cn.mucang.android.facelib.y.e.a, FaceUserModel> b = null;
    private static cn.mucang.android.facelib.w.b.a<cn.mucang.android.facelib.y.e.a, FaceUserModel> c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static FaceRegister f3001d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static FaceLoginPresenter f3002e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile int f3003f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static cn.mucang.android.facelib.y.e f3004g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static volatile String f3005h = "";
    private static FaceLoginListener i;
    private static FaceLoginListener j;
    private static FaceCheckListener k;
    private static i0 l;
    private static SourceVideoStream m;
    private static TimeOut n;
    private static TimeOut o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FaceLoginManager f3000a = new FaceLoginManager();
    private static final a p = new a();

    @Metadata(d1 = {"\u0000A\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\fH\u0016J(\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\fH\u0016J \u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\fH\u0016J\b\u0010\u0017\u001a\u00020\u0005H\u0016J\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\fH\u0016J\u0018\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"cn/mucang/android/facelib/FaceLoginManager$faceMatchingListener$1", "Lcn/mucang/jiakaoyi/uilib/login/face/AbsFaceCheckListener;", "time", "", "onAngleWrong", "", "angleX", "", "angleY", "angleZ", "onBlurVar", "blur", "", "onBrightness", "brightness", "onCheckFace", "pos", "Lorg/opencv/core/Rect;", "landmark", "Lcn/mucang/jiakaoyi/uilib/login/face/LandmarkEntity;", "width", "height", "onCheckFarFace", "onCheckNoFace", "onCheckSuitableFace", "onHighLight", "highLightRate", "onSuccess", OptionalModuleUtils.FACE, "Landroid/graphics/Bitmap;", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends AbsFaceCheckListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f3006a;

        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void l(Rect pos, int i) {
            r.e(pos, "$pos");
            StringBuilder sb = new StringBuilder();
            sb.append("人脸");
            sb.append(FaceLoginManager.f3003f == 1 ? "匹配" : "学习");
            sb.append("：人脸太远了 ratio:");
            sb.append(pos.height / i);
            cn.mucang.android.facelib.x.a.a(sb.toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void m() {
            StringBuilder sb = new StringBuilder();
            sb.append("人脸");
            sb.append(FaceLoginManager.f3003f == 1 ? "匹配" : "学习");
            sb.append("：没检测到人脸");
            cn.mucang.android.facelib.x.a.a(sb.toString());
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void a(final Rect pos, int i, final int i2) {
            r.e(pos, "pos");
            FaceCheckListener faceCheckListener = FaceLoginManager.k;
            if (faceCheckListener != null) {
                faceCheckListener.a(pos, i, i2);
            }
            DebounceUtil.f3633a.b("onCheckFarFace", CMAESOptimizer.DEFAULT_MAXITERATIONS, new Runnable() { // from class: cn.mucang.android.facelib.d
                @Override // java.lang.Runnable
                public final void run() {
                    FaceLoginManager.a.l(pos, i2);
                }
            });
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void b(Rect pos, LandmarkEntity landmark, int i, int i2) {
            r.e(pos, "pos");
            r.e(landmark, "landmark");
            FaceCheckListener faceCheckListener = FaceLoginManager.k;
            if (faceCheckListener == null) {
                return;
            }
            faceCheckListener.b(pos, landmark, i, i2);
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void c() {
            DebounceUtil.f3633a.b("onCheckNoFace", CMAESOptimizer.DEFAULT_MAXITERATIONS, new Runnable() { // from class: cn.mucang.android.facelib.c
                @Override // java.lang.Runnable
                public final void run() {
                    FaceLoginManager.a.m();
                }
            });
            FaceCheckListener faceCheckListener = FaceLoginManager.k;
            if (faceCheckListener == null) {
                return;
            }
            faceCheckListener.c();
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.AbsFaceCheckListener, cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void d(int i) {
            FaceCheckListener faceCheckListener = FaceLoginManager.k;
            if (faceCheckListener == null) {
                return;
            }
            faceCheckListener.d(i);
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.AbsFaceCheckListener, cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void e(int i) {
            FaceCheckListener faceCheckListener = FaceLoginManager.k;
            if (faceCheckListener == null) {
                return;
            }
            faceCheckListener.e(i);
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.AbsFaceCheckListener, cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void f(float f2, float f3, float f4) {
            FaceCheckListener faceCheckListener = FaceLoginManager.k;
            if (faceCheckListener != null) {
                faceCheckListener.f(f2, f3, f4);
            }
            if (Math.abs(f3) >= 45.0f || System.currentTimeMillis() - this.f3006a <= SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
                return;
            }
            cn.mucang.android.jiakaoyi.framework.log.f.g("角度不合适， angleX:" + f2 + ", Y:" + f3 + ", Z:" + f4);
            this.f3006a = System.currentTimeMillis();
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void g(Rect pos) {
            r.e(pos, "pos");
            FaceCheckListener faceCheckListener = FaceLoginManager.k;
            if (faceCheckListener == null) {
                return;
            }
            faceCheckListener.g(pos);
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void h(int i) {
            FaceCheckListener faceCheckListener = FaceLoginManager.k;
            if (faceCheckListener == null) {
                return;
            }
            faceCheckListener.h(i);
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void i(Bitmap face, cn.mucang.jiakaoyi.uilib.login.face.m result) {
            r.e(face, "face");
            r.e(result, "result");
            FaceCheckListener faceCheckListener = FaceLoginManager.k;
            if (faceCheckListener != null) {
                faceCheckListener.i(face, result);
            }
            if (FaceLoginManager.f3003f == 1) {
                TimeOut timeOut = FaceLoginManager.n;
                if (timeOut != null) {
                    timeOut.f();
                }
                cn.mucang.android.facelib.w.c.b bVar = FaceLoginManager.b;
                if (bVar == null) {
                    return;
                }
                bVar.d(face, result);
                return;
            }
            if (FaceLoginManager.f3003f == 2) {
                TimeOut timeOut2 = FaceLoginManager.o;
                if (timeOut2 != null) {
                    timeOut2.f();
                }
                cn.mucang.android.facelib.w.b.a aVar = FaceLoginManager.c;
                if (aVar == null) {
                    return;
                }
                aVar.d(face, result);
            }
        }
    }

    private FaceLoginManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(int i2) {
        if (i2 == 1) {
            cn.mucang.android.facelib.x.a.a("戴口罩了");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s() {
        n0.a(new Runnable() { // from class: cn.mucang.android.facelib.f
            @Override // java.lang.Runnable
            public final void run() {
                FaceLoginManager.t();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t() {
        kotlin.v vVar;
        try {
            Result.Companion companion = Result.INSTANCE;
            FaceRegister faceRegister = f3001d;
            if (faceRegister == null) {
                vVar = null;
            } else {
                faceRegister.a();
                vVar = kotlin.v.f15822a;
            }
            Result.m139constructorimpl(vVar);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
        cn.mucang.android.facelib.x.a.a("清除所有离线人脸向量数据和照片");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(String mark, String studentId) {
        kotlin.v vVar;
        r.e(mark, "$mark");
        r.e(studentId, "$studentId");
        try {
            Result.Companion companion = Result.INSTANCE;
            FaceRegister faceRegister = f3001d;
            if (faceRegister == null) {
                vVar = null;
            } else {
                faceRegister.b(studentId, mark);
                vVar = kotlin.v.f15822a;
            }
            Result.m139constructorimpl(vVar);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
        cn.mucang.android.facelib.x.a.a("删除（" + mark + "）离线人脸向量数据和照片");
    }

    private final void z() {
        TfLitePool.f3042a.g(new Function1<cn.mucang.android.facelib.y.e, kotlin.v>() { // from class: cn.mucang.android.facelib.FaceLoginManager$initLocalRecognizer$1

            /* JADX INFO: renamed from: cn.mucang.android.facelib.FaceLoginManager$initLocalRecognizer$1$1, reason: invalid class name */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
            @DebugMetadata(c = "cn.mucang.android.facelib.FaceLoginManager$initLocalRecognizer$1$1", f = "FaceLoginManager.kt", l = {}, m = "invokeSuspend")
            static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
                final /* synthetic */ cn.mucang.android.facelib.y.e $it;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(cn.mucang.android.facelib.y.e eVar, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$it = eVar;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass1(this.$it, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
                    return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) throws Throwable {
                    kotlin.coroutines.intrinsics.b.d();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    kotlin.k.b(obj);
                    FaceLoginManager faceLoginManager = FaceLoginManager.f3000a;
                    FaceLoginManager.f3004g = this.$it;
                    return kotlin.v.f15822a;
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(cn.mucang.android.facelib.y.e eVar) {
                invoke2(eVar);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(cn.mucang.android.facelib.y.e it) {
                r.e(it, "it");
                i0 i0Var = FaceLoginManager.l;
                if (i0Var == null) {
                    return;
                }
                kotlinx.coroutines.g.b(i0Var, null, null, new AnonymousClass1(it, null), 3, null);
            }
        });
        i0 i0Var = l;
        if (i0Var == null) {
            return;
        }
        kotlinx.coroutines.g.b(i0Var, null, null, new FaceLoginManager$initLocalRecognizer$2(null), 3, null);
    }

    @Override // cn.mucang.android.facelib.w.a.c
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public boolean c(cn.mucang.android.facelib.y.e.a faceData, cn.mucang.jiakaoyi.uilib.login.face.m faceResult) throws IOException {
        Object token;
        Object objM139constructorimpl;
        XyUserModel xyUserModel;
        float[] fArr;
        Object objM139constructorimpl2;
        r.e(faceData, "faceData");
        r.e(faceResult, "faceResult");
        Object objA = faceData.a();
        float[][] fArr2 = objA instanceof float[][] ? (float[][]) objA : null;
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z = true;
        if (fArr2 == null || (fArr = (float[]) kotlin.collections.k.B(fArr2, 0)) == null) {
            token = null;
        } else {
            FaceStatLog.a aVar = FaceStatLog.f3037a;
            aVar.b(aVar.a() + 1);
            String str = f3005h;
            if (str == null) {
                return false;
            }
            if (!r.a(str, BuildConfig.FLAVOR_feat)) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM139constructorimpl2 = Result.m139constructorimpl(new FaceCheckApi().n(faceResult.b(), fArr, str));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM139constructorimpl2 = Result.m139constructorimpl(kotlin.k.a(th));
                }
                if (Result.m145isFailureimpl(objM139constructorimpl2)) {
                    objM139constructorimpl2 = null;
                }
                MatchResultModel matchResultModel = (MatchResultModel) objM139constructorimpl2;
                token = matchResultModel == null ? null : matchResultModel.getToken();
            } else {
                if (faceResult.f() == null) {
                    return false;
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                faceResult.f().compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    FaceCheckApi faceCheckApi = new FaceCheckApi();
                    String string = UUID.randomUUID().toString();
                    r.d(string, "randomUUID().toString()");
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    r.d(byteArray, "bos.toByteArray()");
                    token = Result.m139constructorimpl(faceCheckApi.m(string, byteArray));
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    token = Result.m139constructorimpl(kotlin.k.a(th2));
                }
                if (Result.m145isFailureimpl(token)) {
                    token = null;
                }
                byteArrayOutputStream.close();
            }
            cn.mucang.android.core.utils.t.h("faceLogin", "findNearest耗费：" + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
        }
        NonPerceiveLoginData nonPerceiveLoginData = new NonPerceiveLoginData((String) token);
        CharSequence charSequence = (CharSequence) token;
        if (charSequence == null || charSequence.length() == 0) {
            cn.mucang.android.facelib.x.a.a("当前人脸未匹配到账号，" + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
            xyUserModel = null;
        } else {
            try {
                Result.Companion companion5 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(LoginManager.y(LoginType.FACE, nonPerceiveLoginData));
            } catch (Throwable th3) {
                Result.Companion companion6 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th3));
            }
            Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
            if (thM142exceptionOrNullimpl != null) {
                if (thM142exceptionOrNullimpl instanceof ApiException) {
                    cn.mucang.android.jiakaoyi.framework.log.f.g("登录（人脸）接口失败(" + ((ApiException) thM142exceptionOrNullimpl).getErrorCode() + ")：" + ((Object) thM142exceptionOrNullimpl.getMessage()) + (char) 65292 + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
                }
                thM142exceptionOrNullimpl.printStackTrace();
            }
            if (Result.m145isFailureimpl(objM139constructorimpl)) {
                objM139constructorimpl = null;
            }
            xyUserModel = (XyUserModel) objM139constructorimpl;
            StringBuilder sb = new StringBuilder();
            sb.append("匹配成功的角度：");
            sb.append(faceResult.b());
            sb.append(", user:");
            sb.append((Object) (xyUserModel == null ? null : xyUserModel.getName()));
            sb.append((char) 65292);
            sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
            sb.append("ms");
            cn.mucang.android.jiakaoyi.framework.log.f.g(sb.toString());
        }
        if (xyUserModel != null) {
            File file = new File(MucangConfig.getContext().getCacheDir(), "sundial");
            if (!file.exists()) {
                file.mkdirs();
            }
            i0 i0Var = l;
            if (i0Var != null) {
                kotlinx.coroutines.g.b(i0Var, w0.c(), null, new FaceLoginManager$match$2(xyUserModel, nonPerceiveLoginData, null), 2, null);
            }
            O();
            i0 i0Var2 = l;
            if (i0Var2 != null) {
                kotlinx.coroutines.g.b(i0Var2, w0.b(), null, new FaceLoginManager$match$3(xyUserModel, faceData, null), 2, null);
            }
        } else {
            z = false;
        }
        int i2 = r.a(f3005h, BuildConfig.FLAVOR_feat) ? 10 : 15;
        if (!z && FaceStatLog.f3037a.a() >= i2) {
            i0 i0Var3 = l;
            if (i0Var3 != null) {
                kotlinx.coroutines.g.b(i0Var3, null, null, new FaceLoginManager$match$4(null), 3, null);
            }
            O();
        }
        return z;
    }

    @Override // cn.mucang.android.facelib.w.a.c
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public boolean b(cn.mucang.android.facelib.y.e.a faceData, FaceUserModel user, cn.mucang.jiakaoyi.uilib.login.face.m faceResult) {
        r.e(faceData, "faceData");
        r.e(user, "user");
        r.e(faceResult, "faceResult");
        FaceRegister faceRegister = f3001d;
        boolean z = false;
        if (faceRegister != null && faceRegister.j(faceData, user, faceResult) == 10001) {
            z = true;
        }
        boolean z2 = !z;
        if (!z2) {
            cn.mucang.android.facelib.x.a.a("注册流程自动结束");
            N();
        }
        return z2;
    }

    public final void H(FaceCheckListener faceCheckListener) {
        k = faceCheckListener;
    }

    public final void I(FaceLoginListener faceLoginListener) {
        j = faceLoginListener;
    }

    public final void J(FaceLoginListener faceLoginListener) {
        cn.mucang.android.jiakaoyi.framework.log.f.g(r.m("setStandardLoginListener：", faceLoginListener));
        i = faceLoginListener;
    }

    public final void K(XyUserModel user) {
        r.e(user, "user");
        O();
        if (f3004g == null || f3001d == null) {
            return;
        }
        String name = user.getName();
        if (name == null) {
            name = "";
        }
        String strValueOf = String.valueOf(user.getStudentId());
        String mucangId = user.getMucangId();
        if (mucangId == null) {
            mucangId = "";
        }
        String xyToken = user.getXyToken();
        FaceUserModel faceUserModel = new FaceUserModel(name, strValueOf, mucangId, xyToken != null ? xyToken : "");
        cn.mucang.android.facelib.w.b.a<cn.mucang.android.facelib.y.e.a, FaceUserModel> aVar = c;
        if (aVar != null && aVar != null) {
            aVar.b();
        }
        FaceRegister faceRegister = f3001d;
        if (faceRegister != null) {
            faceRegister.k();
        }
        TimeOut timeOut = o;
        if (timeOut != null) {
            timeOut.d();
        }
        i0 i0Var = l;
        TimeOut timeOut2 = i0Var == null ? null : new TimeOut(i0Var, 180000L);
        o = timeOut2;
        if (timeOut2 != null) {
            timeOut2.e(new Function0<kotlin.v>() { // from class: cn.mucang.android.facelib.FaceLoginManager$startLearn$2
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    cn.mucang.android.facelib.x.a.a("人脸学习:检测超时了");
                    FaceLoginManager.f3000a.N();
                }
            });
        }
        f3003f = 2;
        FaceLoginPresenter faceLoginPresenter = f3002e;
        if (faceLoginPresenter != null) {
            faceLoginPresenter.j0();
        }
        cn.mucang.android.facelib.x.a.a(r.m(faceUserModel.getF3024a(), " 开始人脸学习"));
        cn.mucang.android.facelib.w.b.a<cn.mucang.android.facelib.y.e.a, FaceUserModel> aVar2 = new cn.mucang.android.facelib.w.b.a<>(faceUserModel, this, this, 1000L);
        c = aVar2;
        if (aVar2 == null) {
            return;
        }
        aVar2.a();
    }

    public final void L(String scene) {
        r.e(scene, "scene");
        if (f3004g == null || f3002e == null) {
            return;
        }
        if (c != null) {
            cn.mucang.android.facelib.x.a.a("正在人脸学习，不进行人脸登录");
            return;
        }
        f3005h = scene;
        cn.mucang.android.facelib.x.a.a("开始人脸识别登录");
        FaceStatLog.f3037a.b(0);
        TimeOut timeOut = n;
        if (timeOut != null) {
            timeOut.d();
        }
        i0 i0Var = l;
        TimeOut timeOut2 = i0Var == null ? null : new TimeOut(i0Var, 180000L);
        n = timeOut2;
        if (timeOut2 != null) {
            timeOut2.e(new Function0<kotlin.v>() { // from class: cn.mucang.android.facelib.FaceLoginManager$startLogin$2
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    cn.mucang.android.facelib.x.a.a("人脸登录:检测超时了");
                    FaceLoginManager.f3000a.O();
                }
            });
        }
        f3003f = 1;
        FaceLoginPresenter faceLoginPresenter = f3002e;
        if (faceLoginPresenter != null) {
            faceLoginPresenter.j0();
        }
        cn.mucang.android.facelib.w.c.b<cn.mucang.android.facelib.y.e.a, FaceUserModel> bVar = b;
        if (bVar != null && bVar != null) {
            bVar.b();
        }
        cn.mucang.android.facelib.w.c.b<cn.mucang.android.facelib.y.e.a, FaceUserModel> bVar2 = new cn.mucang.android.facelib.w.c.b<>(this, this, 0L);
        b = bVar2;
        if (bVar2 == null) {
            return;
        }
        bVar2.a();
    }

    public final void M(View view) {
        r.e(view, "view");
        SourceVideoStream sourceVideoStream = m;
        if (sourceVideoStream == null) {
            return;
        }
        sourceVideoStream.b(view);
    }

    public final void N() {
        if (f3003f == 2) {
            cn.mucang.android.facelib.x.a.a("停止人脸学习");
            FaceLoginPresenter faceLoginPresenter = f3002e;
            if (faceLoginPresenter != null) {
                faceLoginPresenter.l0();
            }
            f3003f = -1;
            cn.mucang.android.facelib.w.b.a<cn.mucang.android.facelib.y.e.a, FaceUserModel> aVar = c;
            if (aVar != null) {
                aVar.b();
            }
            c = null;
            TimeOut timeOut = o;
            if (timeOut != null) {
                timeOut.d();
            }
            o = null;
        }
    }

    public final void O() {
        cn.mucang.android.facelib.w.c.b<cn.mucang.android.facelib.y.e.a, FaceUserModel> bVar = b;
        if (bVar != null) {
            bVar.b();
        }
        b = null;
        if (f3003f == 1) {
            cn.mucang.android.facelib.x.a.a("停止人脸识别登录");
            FaceLoginPresenter faceLoginPresenter = f3002e;
            if (faceLoginPresenter != null) {
                faceLoginPresenter.l0();
            }
            f3003f = -1;
            TimeOut timeOut = n;
            if (timeOut != null) {
                timeOut.d();
            }
            n = null;
        }
    }

    public final void P(View view) {
        r.e(view, "view");
        SourceVideoStream sourceVideoStream = m;
        if (sourceVideoStream == null) {
            return;
        }
        sourceVideoStream.d(view);
    }

    public final void Q(String mucangId, String mark) {
        r.e(mucangId, "mucangId");
        r.e(mark, "mark");
        if (mucangId.length() == 0) {
            return;
        }
        Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
        r.d(DbLock, "DbLock");
        synchronized (DbLock) {
            try {
                Result.Companion companion = Result.INSTANCE;
                FaceHistoryEntity faceHistoryEntity = (FaceHistoryEntity) cn.mucang.android.jiakaoyi.framework.f.a.a().n(FaceHistoryEntity.class, cn.mucang.android.core.db.e.d("select * from t_face_history where mucang_id=?", mucangId));
                if (faceHistoryEntity == null) {
                    faceHistoryEntity = new FaceHistoryEntity();
                    faceHistoryEntity.setMucangId(mucangId);
                    faceHistoryEntity.setMark(mark);
                }
                faceHistoryEntity.setUpdateTime(System.currentTimeMillis());
                cn.mucang.android.jiakaoyi.framework.f.a.a().w(faceHistoryEntity);
                Result.m139constructorimpl(kotlin.v.f15822a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m139constructorimpl(kotlin.k.a(th));
            }
        }
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.MaskDetectorListener
    public void e(final int i2) {
        DebounceUtil.f3633a.b("onMaskResult", 5000, new Runnable() { // from class: cn.mucang.android.facelib.a
            @Override // java.lang.Runnable
            public final void run() {
                FaceLoginManager.F(i2);
            }
        });
    }

    public final void r() {
        DebounceUtil.f3633a.b("clearFaceData", 1000, new Runnable() { // from class: cn.mucang.android.facelib.e
            @Override // java.lang.Runnable
            public final void run() {
                FaceLoginManager.s();
            }
        });
    }

    public final void u(final String studentId, final String mark) {
        r.e(studentId, "studentId");
        r.e(mark, "mark");
        n0.a(new Runnable() { // from class: cn.mucang.android.facelib.b
            @Override // java.lang.Runnable
            public final void run() {
                FaceLoginManager.v(mark, studentId);
            }
        });
    }

    public final void w() {
        cn.mucang.android.facelib.x.a.a("人脸登录管理器：销毁");
        O();
        N();
        FaceLoginPresenter faceLoginPresenter = f3002e;
        if (faceLoginPresenter != null) {
            faceLoginPresenter.P();
        }
        TfLitePool.f3042a.m();
    }

    @Override // cn.mucang.android.facelib.w.a.b
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public cn.mucang.android.facelib.y.e.a a(Bitmap data) throws InterruptedException {
        r.e(data, "data");
        boolean z = true;
        List<cn.mucang.android.facelib.y.e.a> listK = TfLitePool.f3042a.k(data, true);
        if (listK != null && !listK.isEmpty()) {
            z = false;
        }
        if (z) {
            cn.mucang.android.facelib.x.a.a("获取人脸向量失败");
        }
        cn.mucang.android.facelib.y.e.a aVar = listK == null ? null : (cn.mucang.android.facelib.y.e.a) kotlin.collections.s.f0(listK, 0);
        if (aVar != null) {
            aVar.d(data);
        }
        return aVar;
    }

    public final void y(SourceVideoFactory factory, IFaceFilter iFaceFilter) {
        r.e(factory, "factory");
        cn.mucang.android.facelib.x.a.a("人脸登录管理器：初始化");
        SourceVideoStream sourceVideoStreamA = factory.a();
        l = j0.b();
        GoogleDetectorFactory googleDetectorFactory = new GoogleDetectorFactory();
        FaceLoginPresenter faceLoginPresenter = new FaceLoginPresenter(l, 112, 112, cn.mucang.android.jiakaoyi.framework.utils.i0.d("key_face_limit_pixel_v2", FaceLoginPresenter.B.b()), sourceVideoStreamA, googleDetectorFactory, p);
        f3002e = faceLoginPresenter;
        if (faceLoginPresenter != null) {
            faceLoginPresenter.g0(iFaceFilter);
        }
        FaceLoginPresenter faceLoginPresenter2 = f3002e;
        if (faceLoginPresenter2 != null) {
            faceLoginPresenter2.h0(this);
        }
        m = sourceVideoStreamA;
        z();
    }
}
