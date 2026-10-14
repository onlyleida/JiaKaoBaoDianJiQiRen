package cn.mucang.android.facelib;

import android.graphics.Bitmap;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.facelib.FaceLoginManager$match$3", f = "FaceLoginManager.kt", l = {}, m = "invokeSuspend")
final class FaceLoginManager$match$3 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ cn.mucang.android.facelib.y.e.a $faceData;
    final /* synthetic */ XyUserModel $xyUserModel;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FaceLoginManager$match$3(XyUserModel xyUserModel, cn.mucang.android.facelib.y.e.a aVar, Continuation<? super FaceLoginManager$match$3> continuation) {
        super(2, continuation);
        this.$xyUserModel = xyUserModel;
        this.$faceData = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new FaceLoginManager$match$3(this.$xyUserModel, this.$faceData, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((FaceLoginManager$match$3) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        FaceDebugUtil.a aVar = FaceDebugUtil.f3029a;
        String strValueOf = String.valueOf(this.$xyUserModel.getStudentId());
        String name = this.$xyUserModel.getName();
        if (name == null) {
            name = "";
        }
        Bitmap bitmapB = this.$faceData.b();
        r.d(bitmapB, "faceData.faceBitmap");
        aVar.i(strValueOf, name, bitmapB);
        return kotlin.v.f15822a;
    }
}
