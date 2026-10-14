package cn.mucang.android.jiakaoyi.teachingk2.login;

import android.graphics.Bitmap;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.facelib.FaceLoginManager;
import cn.mucang.android.facelib.GoogleDetectorFactory;
import cn.mucang.android.facelib.TfLitePool;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.push.AiCameraAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.push.UsbCameraAdapter;
import cn.mucang.android.jky.camera.CameraIntent;
import cn.mucang.jiakaoyi.uilib.login.api.FaceCheckApi;
import cn.mucang.jiakaoyi.uilib.login.face.AbsFaceCheckListener;
import cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter;
import cn.mucang.jiakaoyi.uilib.login.face.IFaceFilter;
import cn.mucang.jiakaoyi.uilib.login.face.LandmarkEntity;
import cn.mucang.jiakaoyi.uilib.login.face.MaskDetectorListener;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.iflytek.cloud.SpeechUtility;
import com.tencent.connect.common.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import org.opencv.core.Rect;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000G\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006*\u0001\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0004H\u0016J\u0006\u0010\u0019\u001a\u00020\u0016J\u000e\u0010\u001a\u001a\u00020\u00162\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u001b\u001a\u00020\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;", "Lcn/mucang/jiakaoyi/uilib/login/face/MaskDetectorListener;", "()V", "checkCount", "", "checkListener", "cn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$checkListener$1", "Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$checkListener$1;", "isStarted", "", "loginType", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;", "noMatchCount", "presenter", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;", Constants.PARAM_SCOPE, "Lkotlinx/coroutines/CoroutineScope;", "sourceVideoStream", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;", "tfApi", "Lcn/mucang/android/facelib/tflite/SimilarityClassifier;", "innerStop", "", "onMaskResult", "maskResult", "release", "startCheck", "stopCheck", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AbnormalLoginChecker implements MaskDetectorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SourceVideoStream f7285a;
    private FaceLoginPresenter b;
    private i0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.facelib.y.e f7286d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7287e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f7288f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f7289g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a f7290h = new a();

    @Metadata(d1 = {"\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J(\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016J \u0010\u000f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016J\b\u0010\u0010\u001a\u00020\u0005H\u0016J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$checkListener$1", "Lcn/mucang/jiakaoyi/uilib/login/face/AbsFaceCheckListener;", "faceApi", "Lcn/mucang/jiakaoyi/uilib/login/api/FaceCheckApi;", "onBrightness", "", "brightness", "", "onCheckFace", "pos", "Lorg/opencv/core/Rect;", "landmark", "Lcn/mucang/jiakaoyi/uilib/login/face/LandmarkEntity;", "width", "height", "onCheckFarFace", "onCheckNoFace", "onCheckSuitableFace", "onSuccess", OptionalModuleUtils.FACE, "Landroid/graphics/Bitmap;", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends AbsFaceCheckListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final FaceCheckApi f7291a = new FaceCheckApi();

        a() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void a(Rect pos, int i, int i2) {
            r.e(pos, "pos");
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void b(Rect pos, LandmarkEntity landmark, int i, int i2) {
            r.e(pos, "pos");
            r.e(landmark, "landmark");
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void c() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void g(Rect pos) {
            r.e(pos, "pos");
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void h(int i) {
        }

        @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener
        public void i(Bitmap face, cn.mucang.jiakaoyi.uilib.login.face.m result) {
            cn.mucang.android.facelib.y.e.a aVar;
            Object objM139constructorimpl;
            r.e(face, "face");
            r.e(result, "result");
            XyUserModel xyUserModelE = RobotAccount.i().e();
            if (xyUserModelE != null) {
                String xyToken = xyUserModelE.getXyToken();
                boolean zBooleanValue = false;
                if (!(xyToken == null || xyToken.length() == 0) && AbnormalLoginChecker.this.f7287e != 30) {
                    if (AbnormalLoginChecker.this.f7288f == 15) {
                        FaceCheckApi faceCheckApi = new FaceCheckApi();
                        String strValueOf = String.valueOf(xyUserModelE.getXyToken());
                        if (strValueOf == null) {
                            strValueOf = "";
                        }
                        cn.mucang.android.jiakaoyi.framework.log.f.g("账号异常，删除（" + ((Object) xyUserModelE.getName()) + "）的人脸数据结果：" + faceCheckApi.o(strValueOf));
                        AbnormalLoginChecker.this.p();
                        return;
                    }
                    AbnormalLoginChecker.this.f7287e++;
                    AbnormalLoginChecker abnormalLoginChecker = AbnormalLoginChecker.this;
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        List<cn.mucang.android.facelib.y.e.a> listK = TfLitePool.f3042a.k(face, true);
                        Object obj = null;
                        Object objA = (listK == null || (aVar = listK.get(0)) == null) ? null : aVar.a();
                        float[][] fArr = objA instanceof float[][] ? (float[][]) objA : null;
                        float[] fArr2 = fArr == null ? null : fArr[0];
                        if (fArr2 != null) {
                            try {
                                FaceCheckApi faceCheckApi2 = this.f7291a;
                                String xyToken2 = xyUserModelE.getXyToken();
                                r.c(xyToken2);
                                objM139constructorimpl = Result.m139constructorimpl(Boolean.valueOf(faceCheckApi2.p(xyToken2, result.b(), fArr2)));
                            } catch (Throwable th) {
                                Result.Companion companion2 = Result.INSTANCE;
                                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
                            }
                            Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
                            if (thM142exceptionOrNullimpl != null) {
                                cn.mucang.android.jiakaoyi.framework.log.f.g("angle:" + result.b() + ", checkCount：" + abnormalLoginChecker.f7287e + " ，noMatchCount：" + abnormalLoginChecker.f7288f + " 无感登录异常检测接口失败：" + ((Object) thM142exceptionOrNullimpl.getMessage()));
                                if (thM142exceptionOrNullimpl instanceof ApiException) {
                                    int errorCode = ((ApiException) thM142exceptionOrNullimpl).getErrorCode();
                                    if (errorCode == 10002) {
                                        abnormalLoginChecker.p();
                                        cn.mucang.android.jiakaoyi.framework.log.f.g(r.m(xyUserModelE.getName(), " 还未注册人脸"));
                                        if (LoginHelper.f7296a.b()) {
                                            FaceLoginManager.f3000a.K(xyUserModelE);
                                        }
                                    } else if (errorCode == 10003) {
                                        abnormalLoginChecker.f7288f++;
                                    }
                                }
                            }
                            if (!Result.m145isFailureimpl(objM139constructorimpl)) {
                                obj = objM139constructorimpl;
                            }
                            Boolean bool = (Boolean) obj;
                            if (bool != null) {
                                zBooleanValue = bool.booleanValue();
                            }
                            if (zBooleanValue) {
                                cn.mucang.android.jiakaoyi.framework.log.f.g("checkCount：" + abnormalLoginChecker.f7287e + "  ，noMatchCount：" + abnormalLoginChecker.f7288f + " 是本人账号，无异常");
                                abnormalLoginChecker.p();
                                if (LoginHelper.f7296a.b()) {
                                    FaceLoginManager.f3000a.K(xyUserModelE);
                                }
                            }
                        }
                        Result.m139constructorimpl(v.f15822a);
                        return;
                    } catch (Throwable th2) {
                        Result.Companion companion3 = Result.INSTANCE;
                        Result.m139constructorimpl(kotlin.k.a(th2));
                        return;
                    }
                }
            }
            AbnormalLoginChecker.this.p();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p() {
        this.f7289g = false;
        FaceLoginPresenter faceLoginPresenter = this.b;
        if (faceLoginPresenter == null) {
            return;
        }
        faceLoginPresenter.l0();
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.MaskDetectorListener
    public void e(int i) {
    }

    /* JADX INFO: renamed from: q, reason: from getter */
    public final boolean getF7289g() {
        return this.f7289g;
    }

    public final void r(LoginType loginType) {
        r.e(loginType, "loginType");
        this.f7287e = 0;
        this.f7288f = 0;
        TfLitePool.f3042a.g(new Function1<cn.mucang.android.facelib.y.e, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.AbnormalLoginChecker$startCheck$1

            /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.AbnormalLoginChecker$startCheck$1$1, reason: invalid class name */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
            @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.login.AbnormalLoginChecker$startCheck$1$1", f = "AbnormalLoginChecker.kt", l = {}, m = "invokeSuspend")
            static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
                int label;
                final /* synthetic */ AbnormalLoginChecker this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(AbnormalLoginChecker abnormalLoginChecker, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.this$0 = abnormalLoginChecker;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass1(this.this$0, continuation);
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
                    LocalConfig localConfig = LocalConfig.FaceLoginFromAi;
                    boolean zF = LocalConfigManager.f(localConfig);
                    if (this.this$0.b == null) {
                        if (zF) {
                            this.this$0.f7285a = new AiCameraAdapter();
                        } else {
                            this.this$0.f7285a = new UsbCameraAdapter(CameraIntent.FACE);
                        }
                        int iD = cn.mucang.android.jiakaoyi.framework.utils.i0.d("key_face_limit_pixel_v2", FaceLoginPresenter.B.b());
                        this.this$0.c = j0.b();
                        AbnormalLoginChecker abnormalLoginChecker = this.this$0;
                        i0 i0Var = this.this$0.c;
                        SourceVideoStream sourceVideoStream = this.this$0.f7285a;
                        r.c(sourceVideoStream);
                        abnormalLoginChecker.b = new FaceLoginPresenter(i0Var, 112, 112, iD, sourceVideoStream, new GoogleDetectorFactory(), this.this$0.f7290h);
                        IFaceFilter iFaceFilterG = LocalConfigManager.f(localConfig) ? AiFaceCoverManager.f7292a.g() : null;
                        FaceLoginPresenter faceLoginPresenter = this.this$0.b;
                        if (faceLoginPresenter != null) {
                            faceLoginPresenter.g0(iFaceFilterG);
                        }
                        FaceLoginPresenter faceLoginPresenter2 = this.this$0.b;
                        if (faceLoginPresenter2 != null) {
                            faceLoginPresenter2.h0(this.this$0);
                        }
                    }
                    this.this$0.f7289g = true;
                    FaceLoginPresenter faceLoginPresenter3 = this.this$0.b;
                    if (faceLoginPresenter3 != null) {
                        faceLoginPresenter3.j0();
                    }
                    return v.f15822a;
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(cn.mucang.android.facelib.y.e eVar) {
                invoke2(eVar);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(cn.mucang.android.facelib.y.e it) {
                r.e(it, "it");
                this.this$0.f7286d = it;
                kotlinx.coroutines.g.b(j0.b(), null, null, new AnonymousClass1(this.this$0, null), 3, null);
            }
        });
    }

    public final void s() {
        p();
    }
}
