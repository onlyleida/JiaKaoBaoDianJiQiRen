package cn.mucang.android.jiakaoyi.k3setting.order.viewmodel;

import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.k3setting.order.api.K3StepOrderApi;
import cn.mucang.jiakaoyi.uilib.model.StepOrderItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.K3RouteStepViewModel$delete$1", f = "K3RouteStepViewModel.kt", l = {}, m = "invokeSuspend")
final class K3RouteStepViewModel$delete$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ StepOrderItem $item;
    final /* synthetic */ long $ruleExamSiteId;
    int label;
    final /* synthetic */ K3RouteStepViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3RouteStepViewModel$delete$1(StepOrderItem stepOrderItem, long j, K3RouteStepViewModel k3RouteStepViewModel, Continuation<? super K3RouteStepViewModel$delete$1> continuation) {
        super(2, continuation);
        this.$item = stepOrderItem;
        this.$ruleExamSiteId = j;
        this.this$0 = k3RouteStepViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new K3RouteStepViewModel$delete$1(this.$item, this.$ruleExamSiteId, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((K3RouteStepViewModel$delete$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        K3StepOrderApi k3StepOrderApi = new K3StepOrderApi();
        try {
            long j = this.$item.id;
            if (j <= 0) {
                this.this$0.k().t(this.$item);
                K3RouteStepViewModel k3RouteStepViewModel = this.this$0;
                long j2 = this.$ruleExamSiteId;
                Object objE = k3RouteStepViewModel.k().e();
                r.c(objE);
                r.d(objE, "itemList.value!!");
                final StepOrderItem stepOrderItem = this.$item;
                k3RouteStepViewModel.i(j2, (List) objE, new Function1<Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.K3RouteStepViewModel$delete$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ v invoke(Boolean bool) {
                        invoke(bool.booleanValue());
                        return v.f15822a;
                    }

                    public final void invoke(boolean z) {
                        ActionLog.f3431a.m("id:" + stepOrderItem.id + ",name:" + ((Object) stepOrderItem.name) + ",alias:" + ((Object) stepOrderItem.stepAliasName) + ",content:" + ((Object) stepOrderItem.content) + ';');
                    }
                });
            } else if (k3StepOrderApi.n(this.$ruleExamSiteId, j)) {
                this.this$0.k().t(this.$item);
                ActionLog.f3431a.m("删除路线指令 id:" + this.$item.id + ",name:" + ((Object) this.$item.name) + ",alias:" + ((Object) this.$item.stepAliasName) + ",content:" + ((Object) this.$item.content) + ';');
                this.this$0.g(false, "删除成功");
            } else {
                this.this$0.c(false, "删除失败");
            }
        } catch (Exception unused) {
            LoadingViewModel.d(this.this$0, false, null, 2, null);
        }
        return v.f15822a;
    }
}
