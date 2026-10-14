package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
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
import kotlinx.coroutines.d2;
import kotlinx.coroutines.f;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditViewModel$init$1", f = "RouteEditViewModel.kt", l = {64, 64, 64}, m = "invokeSuspend")
final class RouteEditViewModel$init$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ JLoadingDialog $jLoadingDialog;
    final /* synthetic */ LocalRoute $route;
    Object L$0;
    int label;
    final /* synthetic */ RouteEditViewModel this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditViewModel$init$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditViewModel$init$1$1", f = "RouteEditViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ JLoadingDialog $jLoadingDialog;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(JLoadingDialog jLoadingDialog, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$jLoadingDialog = jLoadingDialog;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$jLoadingDialog, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            this.$jLoadingDialog.dismiss();
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RouteEditViewModel$init$1(LocalRoute localRoute, RouteEditViewModel routeEditViewModel, JLoadingDialog jLoadingDialog, Continuation<? super RouteEditViewModel$init$1> continuation) {
        super(2, continuation);
        this.$route = localRoute;
        this.this$0 = routeEditViewModel;
        this.$jLoadingDialog = jLoadingDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new RouteEditViewModel$init$1(this.$route, this.this$0, this.$jLoadingDialog, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((RouteEditViewModel$init$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
            try {
                try {
                    RouteApi routeApi = new RouteApi();
                    String routeId = this.$route.getRouteId();
                    r.d(routeId, "route.routeId");
                    this.this$0.m().l(routeApi.s(routeId));
                    this.this$0.l().l(LoadingState.Success.buildMsg("加载路线数据成功"));
                    d2 d2VarC = w0.c();
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$jLoadingDialog, null);
                    this.label = 1;
                    if (f.c(d2VarC, anonymousClass1, this) == objD) {
                        return objD;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    this.this$0.l().l(LoadingState.Fail.buildMsg("加载路线数据失败"));
                    d2 d2VarC2 = w0.c();
                    AnonymousClass1 anonymousClass2 = new AnonymousClass1(this.$jLoadingDialog, null);
                    this.label = 2;
                    if (f.c(d2VarC2, anonymousClass2, this) == objD) {
                        return objD;
                    }
                }
            } catch (Throwable th) {
                d2 d2VarC3 = w0.c();
                AnonymousClass1 anonymousClass3 = new AnonymousClass1(this.$jLoadingDialog, null);
                this.L$0 = th;
                this.label = 3;
                if (f.c(d2VarC3, anonymousClass3, this) == objD) {
                    return objD;
                }
                throw th;
            }
        } else {
            if (i != 1 && i != 2) {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                Throwable th2 = (Throwable) this.L$0;
                k.b(obj);
                throw th2;
            }
            k.b(obj);
        }
        return v.f15822a;
    }
}
