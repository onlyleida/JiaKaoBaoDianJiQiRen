package cn.mucang.android.jiakaoyi.teachingk2.ui;

import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.UnityCameraViewModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.ui.TeachTipsDialog$changeUnity$1", f = "TeachTipsDialog.kt", l = {117}, m = "invokeSuspend")
final class TeachTipsDialog$changeUnity$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ UnityCameraViewModel $model;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TeachTipsDialog$changeUnity$1(UnityCameraViewModel unityCameraViewModel, Continuation<? super TeachTipsDialog$changeUnity$1> continuation) {
        super(2, continuation);
        this.$model = unityCameraViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new TeachTipsDialog$changeUnity$1(this.$model, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((TeachTipsDialog$changeUnity$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            this.label = 1;
            if (kotlinx.coroutines.s0.a(100L, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        cn.mucang.android.jiakaoyi.unity.c.d.e(this.$model);
        return kotlin.v.f15822a;
    }
}
