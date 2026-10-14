package cn.mucang.android.jiakaoyi.k3setting.teach;

import cn.mucang.android.jiakaoyi.exam.k3.teach.model.K3TeachEntity;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingViewModel$deleteTeachStep$1", f = "K3TeachSettingViewModel.kt", l = {}, m = "invokeSuspend")
final class K3TeachSettingViewModel$deleteTeachStep$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ K3TeachEntity $selectK3TeachEntity;
    int label;
    final /* synthetic */ K3TeachSettingViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3TeachSettingViewModel$deleteTeachStep$1(K3TeachSettingViewModel k3TeachSettingViewModel, K3TeachEntity k3TeachEntity, Continuation<? super K3TeachSettingViewModel$deleteTeachStep$1> continuation) {
        super(2, continuation);
        this.this$0 = k3TeachSettingViewModel;
        this.$selectK3TeachEntity = k3TeachEntity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new K3TeachSettingViewModel$deleteTeachStep$1(this.this$0, this.$selectK3TeachEntity, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((K3TeachSettingViewModel$deleteTeachStep$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            K3TeachApi k3TeachApi = new K3TeachApi();
            String strValueOf = String.valueOf(this.this$0.getC().examSiteId);
            K3TeachEntity k3TeachEntity = this.$selectK3TeachEntity;
            boolean zO = k3TeachApi.o(strValueOf, k3TeachEntity.stepId, k3TeachEntity.teachNum);
            if (zO) {
                this.this$0.g(false, "删除成功");
                this.this$0.s();
            }
            cn.mucang.android.core.utils.u.h(zO ? "添加成功" : "添加失败");
        } catch (Exception e2) {
            e2.printStackTrace();
            this.this$0.c(false, "删除失败");
        }
        return kotlin.v.f15822a;
    }
}
