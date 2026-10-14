package cn.mucang.jiakaoyi.uilib.login.face;

import android.os.HandlerThread;
import cn.mucang.jiakaoyi.uilib.login.face.check.BlurCheck;
import cn.mucang.jiakaoyi.uilib.login.face.check.GrayCheck;
import cn.mucang.jiakaoyi.uilib.login.face.check.LightCheck;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.i0;
import org.opencv.core.Mat;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$destroy$1$1", f = "FaceLoginPresenter.kt", l = {}, m = "invokeSuspend")
final class FaceLoginPresenter$destroy$1$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    int label;
    final /* synthetic */ FaceLoginPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FaceLoginPresenter$destroy$1$1(FaceLoginPresenter faceLoginPresenter, Continuation<? super FaceLoginPresenter$destroy$1$1> continuation) {
        super(2, continuation);
        this.this$0 = faceLoginPresenter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new FaceLoginPresenter$destroy$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((FaceLoginPresenter$destroy$1$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        LightCheck lightCheck = this.this$0.w;
        if (lightCheck != null) {
            lightCheck.i();
        }
        GrayCheck grayCheck = this.this$0.u;
        if (grayCheck != null) {
            grayCheck.d();
        }
        BlurCheck blurCheck = this.this$0.v;
        if (blurCheck != null) {
            blurCheck.f();
        }
        this.this$0.q = null;
        this.this$0.r = null;
        Mat mat = this.this$0.o;
        if (mat != null) {
            mat.release();
        }
        this.this$0.o = null;
        Mat mat2 = this.this$0.p;
        if (mat2 != null) {
            mat2.release();
        }
        this.this$0.p = null;
        Mat mat3 = this.this$0.t;
        if (mat3 != null) {
            mat3.release();
        }
        this.this$0.t = null;
        IFaceDetector iFaceDetector = this.this$0.l;
        if (iFaceDetector != null) {
            iFaceDetector.release();
        }
        this.this$0.l = null;
        this.this$0.m = null;
        HandlerThread handlerThread = this.this$0.z;
        if (handlerThread != null) {
            kotlin.coroutines.jvm.internal.a.a(handlerThread.quit());
        }
        this.this$0.z = null;
        return v.f15822a;
    }
}
