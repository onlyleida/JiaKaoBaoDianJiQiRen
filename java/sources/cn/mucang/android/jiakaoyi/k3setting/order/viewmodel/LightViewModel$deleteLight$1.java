package cn.mucang.android.jiakaoyi.k3setting.order.viewmodel;

import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.k3setting.order.LightApi;
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
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.LightViewModel$deleteLight$1", f = "LightViewModel.kt", l = {}, m = "invokeSuspend")
final class LightViewModel$deleteLight$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ LightExamModel $item;
    int label;
    final /* synthetic */ LightViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LightViewModel$deleteLight$1(LightExamModel lightExamModel, LightViewModel lightViewModel, Continuation<? super LightViewModel$deleteLight$1> continuation) {
        super(2, continuation);
        this.$item = lightExamModel;
        this.this$0 = lightViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new LightViewModel$deleteLight$1(this.$item, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((LightViewModel$deleteLight$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            if (new LightApi().r(this.$item.examProgramId)) {
                this.this$0.p().t(this.$item);
                f.o(r.m("删除灯光 ", this.$item.getLog()));
                ActionLog.f3431a.m(r.m("删除灯光 ", this.$item.getLog()));
                this.this$0.g(false, "删除成功");
            } else {
                this.this$0.c(false, "删除失败");
            }
        } catch (Exception unused) {
            this.this$0.c(false, "删除失败");
        }
        return v.f15822a;
    }
}
