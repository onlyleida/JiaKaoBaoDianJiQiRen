package cn.mucang.android.jiakaoyi.k3setting.p003route.detail;

import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.k3setting.route.RouteApi;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.ui.login.p008j.AccountUtils;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.text.t;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.route.detail.RouteMapViewModel$saveRoute$2", f = "RouteMapViewModel.kt", l = {}, m = "invokeSuspend")
final class RouteMapViewModel$saveRoute$2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ boolean $canPublic;
    final /* synthetic */ String $routeName;
    int label;
    final /* synthetic */ RouteMapViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RouteMapViewModel$saveRoute$2(String str, boolean z, RouteMapViewModel routeMapViewModel, Continuation<? super RouteMapViewModel$saveRoute$2> continuation) {
        super(2, continuation);
        this.$routeName = str;
        this.$canPublic = z;
        this.this$0 = routeMapViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new RouteMapViewModel$saveRoute$2(this.$routeName, this.$canPublic, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((RouteMapViewModel$saveRoute$2) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        LocalRoute localRoute = new LocalRoute();
        String string = UUID.randomUUID().toString();
        r.d(string, "randomUUID().toString()");
        localRoute.setRouteId(t.x(string, "-", "", false, 4, null));
        localRoute.setRouteName(this.$routeName);
        localRoute.setCanPublic(this.$canPublic);
        localRoute.setExamSiteId(this.this$0.getF4498a().examSiteId);
        localRoute.setExamSiteName(this.this$0.getF4498a().examSiteName);
        localRoute.setAreaCode(this.this$0.getF4498a().cityCode);
        localRoute.setAreaName(this.this$0.getF4498a().cityName);
        localRoute.setNodes(this.this$0.j().e());
        localRoute.setDistance(this.this$0.getF4501f());
        localRoute.setUserId(AccountUtils.c());
        try {
            if (new RouteApi().v(localRoute)) {
                ActionLog actionLog = ActionLog.f3431a;
                String log = localRoute.getLog();
                r.d(log, "localRoute.log");
                actionLog.m(log);
                this.this$0.g().l(LoadingState.Success.buildMsg("保存路线成功"));
            } else {
                this.this$0.g().l(LoadingState.Fail.buildMsg("保存路线失败"));
            }
        } catch (Exception unused) {
            this.this$0.g().l(LoadingState.Fail.buildMsg("保存路线失败"));
        }
        return v.f15822a;
    }
}
