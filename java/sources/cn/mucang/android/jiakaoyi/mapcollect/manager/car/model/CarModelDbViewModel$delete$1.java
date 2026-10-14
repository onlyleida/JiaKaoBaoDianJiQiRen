package cn.mucang.android.jiakaoyi.mapcollect.manager.car.model;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.CarModelDbViewModel$delete$1", f = "CarModelDbViewModel.kt", l = {}, m = "invokeSuspend")
final class CarModelDbViewModel$delete$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ HpCarMapModel $item;
    int label;
    final /* synthetic */ CarModelDbViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CarModelDbViewModel$delete$1(HpCarMapModel hpCarMapModel, CarModelDbViewModel carModelDbViewModel, Continuation<? super CarModelDbViewModel$delete$1> continuation) {
        super(2, continuation);
        this.$item = hpCarMapModel;
        this.this$0 = carModelDbViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new CarModelDbViewModel$delete$1(this.$item, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((CarModelDbViewModel$delete$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            if (new cn.mucang.android.jiakaoyi.mapcollect.collect.w0.a().p(String.valueOf(this.$item.id))) {
                this.this$0.p().t(this.$item);
            } else {
                cn.mucang.android.core.utils.u.h("删除失败");
            }
        } catch (Exception e2) {
            if (e2 instanceof ApiException) {
                ApiResponse apiResponse = ((ApiException) e2).getApiResponse();
                cn.mucang.android.core.utils.u.h(apiResponse == null ? null : apiResponse.getMessage());
            }
        }
        return kotlin.v.f15822a;
    }
}
