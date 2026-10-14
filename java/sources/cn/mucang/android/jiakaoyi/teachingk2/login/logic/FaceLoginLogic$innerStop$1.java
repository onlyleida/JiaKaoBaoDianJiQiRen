package cn.mucang.android.jiakaoyi.teachingk2.login.logic;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.login.logic.FaceLoginLogic$innerStop$1", f = "FaceLoginLogic.kt", l = {}, m = "invokeSuspend")
final class FaceLoginLogic$innerStop$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Function0<v> $actionInMain;
    int label;
    final /* synthetic */ FaceLoginLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FaceLoginLogic$innerStop$1(FaceLoginLogic faceLoginLogic, Function0<v> function0, Continuation<? super FaceLoginLogic$innerStop$1> continuation) {
        super(2, continuation);
        this.this$0 = faceLoginLogic;
        this.$actionInMain = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new FaceLoginLogic$innerStop$1(this.this$0, this.$actionInMain, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((FaceLoginLogic$innerStop$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        this.this$0.H(false);
        this.this$0.N();
        Function0<v> function0 = this.$actionInMain;
        if (function0 != null) {
            function0.invoke();
        }
        return v.f15822a;
    }
}
