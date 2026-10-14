package cn.mucang.android.jiakaoyi.k3collect.manager.map;

import cn.mucang.jiakaoyi.uilib.api.GeneralBusinessApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.K3MapViewModel$deleteMap$1", f = "K3MapViewModel.kt", l = {}, m = "invokeSuspend")
final class K3MapViewModel$deleteMap$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ ExamSiteModel $mapModel;
    int label;
    final /* synthetic */ K3MapViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3MapViewModel$deleteMap$1(ExamSiteModel examSiteModel, K3MapViewModel k3MapViewModel, Continuation<? super K3MapViewModel$deleteMap$1> continuation) {
        super(2, continuation);
        this.$mapModel = examSiteModel;
        this.this$0 = k3MapViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new K3MapViewModel$deleteMap$1(this.$mapModel, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((K3MapViewModel$deleteMap$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            if (new GeneralBusinessApi().o(this.$mapModel.examSiteId)) {
                this.this$0.n().t(this.$mapModel);
                this.this$0.g(false, "删除成功");
                cn.mucang.android.jiakaoyi.k3collect.db.a.c().b(String.valueOf(this.$mapModel.examSiteId));
            } else {
                this.this$0.c(false, "删除失败");
            }
        } catch (Exception unused) {
            this.this$0.c(false, "删除失败");
        }
        return kotlin.v.f15822a;
    }
}
