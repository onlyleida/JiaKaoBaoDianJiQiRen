package cn.mucang.android.jiakaoyi.k3collect;

import android.widget.LinearLayout;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$initDeleteView$2$1$1$1$1$1", f = "K3PosCollectActivity.kt", l = {}, m = "invokeSuspend")
final class K3PosCollectActivity$initDeleteView$2$1$1$1$1$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ K3PosCollectActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3PosCollectActivity$initDeleteView$2$1$1$1$1$1(K3PosCollectActivity k3PosCollectActivity, Continuation<? super K3PosCollectActivity$initDeleteView$2$1$1$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = k3PosCollectActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new K3PosCollectActivity$initDeleteView$2$1$1$1$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((K3PosCollectActivity$initDeleteView$2$1$1$1$1$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        ((LinearLayout) this.this$0.findViewById(R.id.llDeletePos)).setVisibility(8);
        BaseLineLayout baseLineLayout = this.this$0.o;
        if (baseLineLayout != null) {
            baseLineLayout.q();
        }
        return kotlin.v.f15822a;
    }
}
