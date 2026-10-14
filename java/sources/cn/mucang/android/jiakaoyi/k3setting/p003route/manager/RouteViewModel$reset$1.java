package cn.mucang.android.jiakaoyi.k3setting.p003route.manager;

import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.k3setting.order.api.K3StepOrderApi;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.a;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.route.manager.RouteViewModel$reset$1", f = "RouteViewModel.kt", l = {}, m = "invokeSuspend")
final class RouteViewModel$reset$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ long $examSiteId;
    final /* synthetic */ Function0<v> $resetSuccess;
    int label;
    final /* synthetic */ RouteViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RouteViewModel$reset$1(long j, RouteViewModel routeViewModel, Function0<v> function0, Continuation<? super RouteViewModel$reset$1> continuation) {
        super(2, continuation);
        this.$examSiteId = j;
        this.this$0 = routeViewModel;
        this.$resetSuccess = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new RouteViewModel$reset$1(this.$examSiteId, this.this$0, this.$resetSuccess, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((RouteViewModel$reset$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            if (new K3StepOrderApi().q(this.$examSiteId)) {
                this.this$0.g(false, "重置成功");
                f.o(r.m("重置路线数据 examSiteId:", a.e(this.$examSiteId)));
                ActionLog.f3431a.m("重置路线指令：" + this.$examSiteId + ", 重置会变成默认数据,关联得路线也会受影响");
                Function0<v> function0 = this.$resetSuccess;
                if (function0 != null) {
                    function0.invoke();
                }
            } else {
                this.this$0.c(false, "重置失败");
            }
        } catch (Exception unused) {
            LoadingViewModel.d(this.this$0, false, null, 2, null);
        }
        return v.f15822a;
    }
}
