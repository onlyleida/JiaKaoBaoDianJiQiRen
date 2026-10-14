package cn.mucang.android.jiakaoyi.mapcollect.manager.car.model;

import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.CarCodeViewModel$enableAgentCarData$1", f = "CarCodeViewModel.kt", l = {}, m = "invokeSuspend")
final class CarCodeViewModel$enableAgentCarData$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ HpCarMapModel $hpCarMapModel;
    int label;
    final /* synthetic */ CarCodeViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CarCodeViewModel$enableAgentCarData$1(HpCarMapModel hpCarMapModel, CarCodeViewModel carCodeViewModel, Continuation<? super CarCodeViewModel$enableAgentCarData$1> continuation) {
        super(2, continuation);
        this.$hpCarMapModel = hpCarMapModel;
        this.this$0 = carCodeViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new CarCodeViewModel$enableAgentCarData$1(this.$hpCarMapModel, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((CarCodeViewModel$enableAgentCarData$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            if (new cn.mucang.android.jiakaoyi.mapcollect.collect.w0.a().q((int) this.$hpCarMapModel.id)) {
                this.this$0.g(false, "车身数据启用成功");
                this.this$0.p(true, 10);
            } else {
                this.this$0.c(false, "车身数据启用失败，请联系管理员");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            this.this$0.c(false, kotlin.jvm.internal.r.m("启用错误：", e2.getLocalizedMessage()));
        }
        return kotlin.v.f15822a;
    }
}
