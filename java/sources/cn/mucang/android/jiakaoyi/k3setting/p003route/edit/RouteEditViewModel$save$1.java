package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
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
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditViewModel$save$1", f = "RouteEditViewModel.kt", l = {}, m = "invokeSuspend")
final class RouteEditViewModel$save$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ LocalRoute $route;
    int label;
    final /* synthetic */ RouteEditViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RouteEditViewModel$save$1(LocalRoute localRoute, RouteEditViewModel routeEditViewModel, Continuation<? super RouteEditViewModel$save$1> continuation) {
        super(2, continuation);
        this.$route = localRoute;
        this.this$0 = routeEditViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new RouteEditViewModel$save$1(this.$route, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((RouteEditViewModel$save$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        LocalRoute localRoute = this.$route;
        if (localRoute != null) {
            RouteEditViewModel routeEditViewModel = this.this$0;
            RouteApi routeApi = new RouteApi();
            try {
                localRoute.setDistance(routeEditViewModel.getF4552e());
                if (routeApi.q(localRoute)) {
                    f.o(r.m("保存线路 ", localRoute.getLog()));
                    routeEditViewModel.E(localRoute);
                    ActionLog.f3431a.m(r.m("保存线路 ", localRoute.getLog()));
                    routeEditViewModel.i().l(LoadingState.Success.buildMsg("保存路线成功"));
                } else {
                    routeEditViewModel.i().l(LoadingState.Fail.buildMsg("保存路线失败"));
                }
            } catch (Exception unused) {
                routeEditViewModel.i().l(LoadingState.Fail.buildMsg("保存路线失败"));
            }
        }
        return v.f15822a;
    }
}
