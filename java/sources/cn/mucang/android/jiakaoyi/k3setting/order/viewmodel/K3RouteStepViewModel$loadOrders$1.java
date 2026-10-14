package cn.mucang.android.jiakaoyi.k3setting.order.viewmodel;

import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.k3setting.order.K3OrderHelper;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.K3RouteStepViewModel$loadOrders$1", f = "K3RouteStepViewModel.kt", l = {}, m = "invokeSuspend")
final class K3RouteStepViewModel$loadOrders$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ int $displayStatus;
    final /* synthetic */ long $ruleExamSiteId;
    int label;
    final /* synthetic */ K3RouteStepViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3RouteStepViewModel$loadOrders$1(long j, int i, K3RouteStepViewModel k3RouteStepViewModel, Continuation<? super K3RouteStepViewModel$loadOrders$1> continuation) {
        super(2, continuation);
        this.$ruleExamSiteId = j;
        this.$displayStatus = i;
        this.this$0 = k3RouteStepViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new K3RouteStepViewModel$loadOrders$1(this.$ruleExamSiteId, this.$displayStatus, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((K3RouteStepViewModel$loadOrders$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            this.this$0.k().u(new K3OrderHelper().f(this.$ruleExamSiteId, this.$displayStatus));
            LoadingViewModel.h(this.this$0, true, null, 2, null);
        } catch (Exception e2) {
            e2.printStackTrace();
            LoadingViewModel.d(this.this$0, true, null, 2, null);
        }
        return v.f15822a;
    }
}
