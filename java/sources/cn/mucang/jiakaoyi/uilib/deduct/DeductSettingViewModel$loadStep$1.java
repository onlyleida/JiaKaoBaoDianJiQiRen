package cn.mucang.jiakaoyi.uilib.deduct;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.jiakaoyi.uilib.StepGetter;
import cn.mucang.jiakaoyi.uilib.model.StepItem;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.deduct.DeductSettingViewModel$loadStep$1", f = "DeductSettingViewModel.kt", l = {}, m = "invokeSuspend")
final class DeductSettingViewModel$loadStep$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ DeductSettingViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DeductSettingViewModel$loadStep$1(DeductSettingViewModel deductSettingViewModel, Continuation<? super DeductSettingViewModel$loadStep$1> continuation) {
        super(2, continuation);
        this.this$0 = deductSettingViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new DeductSettingViewModel$loadStep$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((DeductSettingViewModel$loadStep$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        List<Step> listB = StepGetter.b(this.this$0.getF9229d());
        DeductSettingViewModel deductSettingViewModel = this.this$0;
        Iterator<T> it = listB.iterator();
        while (it.hasNext()) {
            deductSettingViewModel.j.add(new StepItem((Step) it.next(), false, false, 4, null));
        }
        ((StepItem) this.this$0.j.get(0)).e(true);
        this.this$0.x().l(this.this$0.j);
        DeductSettingViewModel deductSettingViewModel2 = this.this$0;
        deductSettingViewModel2.y(((StepItem) deductSettingViewModel2.j.get(0)).getStep());
        return kotlin.v.f15822a;
    }
}
