package cn.mucang.android.jiakaoyi.teachingk2.ui.car;

import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.teachingk2.login.api.RobotAdminApi;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarListViewModel$loadCarList$1", f = "CarListViewModel.kt", l = {}, m = "invokeSuspend")
final class CarListViewModel$loadCarList$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ CarListViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CarListViewModel$loadCarList$1(CarListViewModel carListViewModel, Continuation<? super CarListViewModel$loadCarList$1> continuation) {
        super(2, continuation);
        this.this$0 = carListViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new CarListViewModel$loadCarList$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((CarListViewModel$loadCarList$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            RobotAdminApi robotAdminApi = new RobotAdminApi();
            String strG = SelectCarManager.g();
            CarBindInfo carBindInfoA = CarInfoManager.a();
            this.this$0.j().u(robotAdminApi.p(strG, carBindInfoA == null ? null : kotlin.coroutines.jvm.internal.a.e(carBindInfoA.getDriveSchoolId()).toString()));
            LoadingViewModel.h(this.this$0, false, null, 3, null);
        } catch (Exception unused) {
            LoadingViewModel.d(this.this$0, false, null, 3, null);
        }
        return kotlin.v.f15822a;
    }
}
