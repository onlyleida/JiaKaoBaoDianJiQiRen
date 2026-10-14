package cn.mucang.android.jiakaoyi.teachingk2.ui.car;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.jiakaoyi.teachingk2.login.api.RobotAdminApi;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarListViewModel$addToMyCar$1", f = "CarListViewModel.kt", l = {}, m = "invokeSuspend")
final class CarListViewModel$addToMyCar$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ int $id;
    int label;
    final /* synthetic */ CarListViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CarListViewModel$addToMyCar$1(int i, CarListViewModel carListViewModel, Continuation<? super CarListViewModel$addToMyCar$1> continuation) {
        super(2, continuation);
        this.$id = i;
        this.this$0 = carListViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new CarListViewModel$addToMyCar$1(this.$id, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((CarListViewModel$addToMyCar$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            if (new RobotAdminApi().o(this.$id)) {
                cn.mucang.android.core.utils.u.h("添加成功");
            }
            this.this$0.k();
        } catch (Exception e2) {
            if (e2 instanceof ApiException) {
                ApiResponse apiResponse = ((ApiException) e2).getApiResponse();
                cn.mucang.android.core.utils.u.h(apiResponse == null ? null : apiResponse.getMessage());
            }
        }
        return kotlin.v.f15822a;
    }
}
