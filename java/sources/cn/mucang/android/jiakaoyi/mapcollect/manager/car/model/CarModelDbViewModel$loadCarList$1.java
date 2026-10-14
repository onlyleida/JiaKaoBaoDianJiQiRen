package cn.mucang.android.jiakaoyi.mapcollect.manager.car.model;

import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.CarModelDbViewModel$loadCarList$1", f = "CarModelDbViewModel.kt", l = {}, m = "invokeSuspend")
final class CarModelDbViewModel$loadCarList$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ boolean $firstLoad;
    final /* synthetic */ int $status;
    int label;
    final /* synthetic */ CarModelDbViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CarModelDbViewModel$loadCarList$1(CarModelDbViewModel carModelDbViewModel, int i, boolean z, Continuation<? super CarModelDbViewModel$loadCarList$1> continuation) {
        super(2, continuation);
        this.this$0 = carModelDbViewModel;
        this.$status = i;
        this.$firstLoad = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new CarModelDbViewModel$loadCarList$1(this.this$0, this.$status, this.$firstLoad, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((CarModelDbViewModel$loadCarList$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            try {
                cn.mucang.android.core.api.d.b<HpCarMapModel> bVarT = new cn.mucang.android.jiakaoyi.mapcollect.collect.w0.a().t(this.this$0.c, this.$status);
                CarModelDbViewModel carModelDbViewModel = this.this$0;
                String strA = bVarT.a();
                kotlin.jvm.internal.r.d(strA, "response.cursor");
                carModelDbViewModel.c = strA;
                this.this$0.f5034d = bVarT.c();
                if (this.$firstLoad) {
                    this.this$0.p().u(bVarT.b());
                } else {
                    this.this$0.p().q(bVarT.b());
                }
                LoadingViewModel.h(this.this$0, false, null, 3, null);
            } catch (Exception unused) {
                if (this.$firstLoad) {
                    LoadingViewModel.d(this.this$0, false, null, 3, null);
                }
            }
            return kotlin.v.f15822a;
        } finally {
            this.this$0.f5035e = false;
        }
    }
}
