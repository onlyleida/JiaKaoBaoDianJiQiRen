package cn.mucang.android.jiakaoyi.k3collect;

import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.q0;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$initDeleteView$2$1", f = "K3PosCollectActivity.kt", l = {Videoio.CAP_PROP_XI_REGION_SELECTOR}, m = "invokeSuspend")
final class K3PosCollectActivity$initDeleteView$2$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ K3PosCollectActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3PosCollectActivity$initDeleteView$2$1(K3PosCollectActivity k3PosCollectActivity, Continuation<? super K3PosCollectActivity$initDeleteView$2$1> continuation) {
        super(2, continuation);
        this.this$0 = k3PosCollectActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new K3PosCollectActivity$initDeleteView$2$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((K3PosCollectActivity$initDeleteView$2$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Pos selectPos;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            K3SrcData k3SrcData = this.this$0.t;
            if (k3SrcData != null) {
                K3PosCollectActivity k3PosCollectActivity = this.this$0;
                cn.mucang.android.jiakaoyi.k3collect.g0.j jVarC = k3PosCollectActivity.getP().c(k3SrcData.id, ((q0) k3PosCollectActivity).c);
                if (jVarC != null && (selectPos = jVarC.f3760e) != null) {
                    k3PosCollectActivity.u.clear();
                    k3PosCollectActivity.v = null;
                    k3PosCollectActivity.l1();
                    r.d(selectPos, "selectPos");
                    k3PosCollectActivity.t1(selectPos, k3SrcData);
                    k3PosCollectActivity.t = null;
                    d2 d2VarC = w0.c();
                    K3PosCollectActivity$initDeleteView$2$1$1$1$1$1 k3PosCollectActivity$initDeleteView$2$1$1$1$1$1 = new K3PosCollectActivity$initDeleteView$2$1$1$1$1$1(k3PosCollectActivity, null);
                    this.label = 1;
                    if (kotlinx.coroutines.f.c(d2VarC, k3PosCollectActivity$initDeleteView$2$1$1$1$1$1, this) == objD) {
                        return objD;
                    }
                }
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        return kotlin.v.f15822a;
    }
}
