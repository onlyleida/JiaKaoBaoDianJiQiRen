package cn.mucang.android.jiakaoyi.k3setting.p003route.manager;

import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.k3setting.route.RouteApi;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.route.manager.RouteViewModel$addToMyRoute$1", f = "RouteViewModel.kt", l = {}, m = "invokeSuspend")
final class RouteViewModel$addToMyRoute$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ LocalRoute $localRoute;
    int label;
    final /* synthetic */ RouteViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RouteViewModel$addToMyRoute$1(LocalRoute localRoute, RouteViewModel routeViewModel, Continuation<? super RouteViewModel$addToMyRoute$1> continuation) {
        super(2, continuation);
        this.$localRoute = localRoute;
        this.this$0 = routeViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new RouteViewModel$addToMyRoute$1(this.$localRoute, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((RouteViewModel$addToMyRoute$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            RouteApi routeApi = new RouteApi();
            String routeId = this.$localRoute.getRouteId();
            r.d(routeId, "localRoute.routeId");
            boolean zN = routeApi.n(routeId);
            f.o("添加到我的线路 routeId " + ((Object) this.$localRoute.getRouteId()) + " name " + ((Object) this.$localRoute.getRouteName()));
            ActionLog.f3431a.m("添加到我的线路 routeId " + ((Object) this.$localRoute.getRouteId()) + " name " + ((Object) this.$localRoute.getRouteName()));
            if (zN) {
                this.this$0.g(false, "添加成功");
            } else {
                this.this$0.c(false, "添加失败");
            }
        } catch (Exception e2) {
            String message = e2.getMessage();
            this.this$0.c(false, message != null ? message : "添加失败");
        }
        return v.f15822a;
    }
}
