package cn.mucang.android.jiakaoyi.k3setting.p003route.manager;

import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.k3setting.route.RouteApi;
import cn.mucang.jiakaoyi.uilib.model.OnlineRoute;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
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
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.route.manager.RouteViewModel$loadRouteList$1", f = "RouteViewModel.kt", l = {}, m = "invokeSuspend")
final class RouteViewModel$loadRouteList$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ long $examSiteId;
    final /* synthetic */ boolean $firstLoad;
    final /* synthetic */ String $type;
    int label;
    final /* synthetic */ RouteViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RouteViewModel$loadRouteList$1(long j, String str, RouteViewModel routeViewModel, boolean z, Continuation<? super RouteViewModel$loadRouteList$1> continuation) {
        super(2, continuation);
        this.$examSiteId = j;
        this.$type = str;
        this.this$0 = routeViewModel;
        this.$firstLoad = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new RouteViewModel$loadRouteList$1(this.$examSiteId, this.$type, this.this$0, this.$firstLoad, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((RouteViewModel$loadRouteList$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List<OnlineRoute> onlineList;
        b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            try {
                if (AppUtils.k()) {
                    onlineList = new RouteApi().r();
                } else {
                    cn.mucang.android.core.api.d.b bVarT = new RouteApi().t(this.$examSiteId, this.$type, this.this$0.f4628d, (8 & 8) != 0 ? 20 : 0);
                    RouteViewModel routeViewModel = this.this$0;
                    String strA = bVarT.a();
                    r.d(strA, "response.cursor");
                    routeViewModel.f4628d = strA;
                    this.this$0.f4629e = bVarT.c();
                    onlineList = bVarT.b();
                }
                r.d(onlineList, "onlineList");
                ArrayList arrayList = new ArrayList(kotlin.collections.v.u(onlineList, 10));
                Iterator<T> it = onlineList.iterator();
                while (it.hasNext()) {
                    arrayList.add(((OnlineRoute) it.next()).toLocalRoute());
                }
                this.this$0.t(this.$type);
                if (this.$firstLoad) {
                    this.this$0.o().u(arrayList);
                } else {
                    this.this$0.o().q(arrayList);
                }
                LoadingViewModel.h(this.this$0, false, null, 3, null);
            } catch (Exception unused) {
                if (this.$firstLoad) {
                    LoadingViewModel.d(this.this$0, false, null, 3, null);
                }
            }
            return v.f15822a;
        } finally {
            this.this$0.f4630f = false;
        }
    }
}
