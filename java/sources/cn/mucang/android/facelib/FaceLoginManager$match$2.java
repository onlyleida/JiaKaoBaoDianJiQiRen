package cn.mucang.android.facelib;

import cn.mucang.android.facelib.model.NonPerceiveLoginData;
import cn.mucang.jiakaoyi.uilib.login.face.FaceLoginListener;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import com.mobile.auth.BuildConfig;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.facelib.FaceLoginManager$match$2", f = "FaceLoginManager.kt", l = {}, m = "invokeSuspend")
final class FaceLoginManager$match$2 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ NonPerceiveLoginData $loginData;
    final /* synthetic */ XyUserModel $xyUserModel;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FaceLoginManager$match$2(XyUserModel xyUserModel, NonPerceiveLoginData nonPerceiveLoginData, Continuation<? super FaceLoginManager$match$2> continuation) {
        super(2, continuation);
        this.$xyUserModel = xyUserModel;
        this.$loginData = nonPerceiveLoginData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new FaceLoginManager$match$2(this.$xyUserModel, this.$loginData, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((FaceLoginManager$match$2) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        FaceLoginListener faceLoginListener;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        if (FaceLoginManager.i != null && r.a(FaceLoginManager.f3005h, BuildConfig.FLAVOR_feat)) {
            FaceLoginListener faceLoginListener2 = FaceLoginManager.i;
            if (faceLoginListener2 != null) {
                faceLoginListener2.b(this.$xyUserModel, this.$loginData);
            }
        } else if (FaceLoginManager.j != null && r.a(FaceLoginManager.f3005h, "nonstandard") && (faceLoginListener = FaceLoginManager.j) != null) {
            faceLoginListener.b(this.$xyUserModel, this.$loginData);
        }
        return kotlin.v.f15822a;
    }
}
