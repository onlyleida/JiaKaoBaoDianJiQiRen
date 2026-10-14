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
import kotlin.coroutines.jvm.internal.a;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.K3RouteStepViewModel$batchSave$1", f = "K3RouteStepViewModel.kt", l = {}, m = "invokeSuspend")
final class K3RouteStepViewModel$batchSave$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Function1<Boolean, v> $callback;
    final /* synthetic */ List<StepOrderItem> $items;
    final /* synthetic */ long $ruleExamSiteId;
    int label;
    final /* synthetic */ K3RouteStepViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    K3RouteStepViewModel$batchSave$1(long j, List<? extends StepOrderItem> list, K3RouteStepViewModel k3RouteStepViewModel, Function1<? super Boolean, v> function1, Continuation<? super K3RouteStepViewModel$batchSave$1> continuation) {
        super(2, continuation);
        this.$ruleExamSiteId = j;
        this.$items = list;
        this.this$0 = k3RouteStepViewModel;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new K3RouteStepViewModel$batchSave$1(this.$ruleExamSiteId, this.$items, this.this$0, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((K3RouteStepViewModel$batchSave$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
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
            if (k3StepOrderApi.m(this.$ruleExamSiteId, this.$items)) {
                List<StepOrderItem> listP = k3StepOrderApi.p(this.$ruleExamSiteId, 0);
                this.this$0.k().u(listP);
                StringBuilder sb = new StringBuilder();
                for (StepOrderItem stepOrderItem : listP) {
                    sb.append("id:" + stepOrderItem.id + ",name:" + ((Object) stepOrderItem.name) + ",alias:" + ((Object) stepOrderItem.stepAliasName) + ",content:" + ((Object) stepOrderItem.content) + ';');
                }
                ActionLog.f3431a.m(r.m("保存路线指令顺序：", sb));
                this.$callback.invoke(a.a(true));
                this.this$0.g(false, "保存成功");
            } else {
                this.this$0.c(false, "保存失败");
            }
        } catch (Exception unused) {
            LoadingViewModel.d(this.this$0, false, null, 2, null);
        }
        return v.f15822a;
    }
}
