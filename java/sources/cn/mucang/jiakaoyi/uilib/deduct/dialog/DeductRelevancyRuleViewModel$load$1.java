package cn.mucang.jiakaoyi.uilib.deduct.dialog;

import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.deduct.dialog.DeductRelevancyRuleViewModel$load$1", f = "DeductRelevancyRuleViewModel.kt", l = {}, m = "invokeSuspend")
final class DeductRelevancyRuleViewModel$load$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ KeMu $keMu;
    final /* synthetic */ List<String> $split;
    int label;
    final /* synthetic */ DeductRelevancyRuleViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DeductRelevancyRuleViewModel$load$1(List<String> list, KeMu keMu, DeductRelevancyRuleViewModel deductRelevancyRuleViewModel, Continuation<? super DeductRelevancyRuleViewModel$load$1> continuation) {
        super(2, continuation);
        this.$split = list;
        this.$keMu = keMu;
        this.this$0 = deductRelevancyRuleViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new DeductRelevancyRuleViewModel$load$1(this.$split, this.$keMu, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((DeductRelevancyRuleViewModel$load$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.$split.iterator();
        while (it.hasNext()) {
            RuleConfig ruleConfigJ = cn.mucang.jiakaoyi.uilib.m.b.j(ExamSiteUtil.o(this.$keMu, 0L, 2, null), it.next());
            if (ruleConfigJ != null) {
                kotlin.coroutines.jvm.internal.a.a(arrayList.add(ruleConfigJ));
            }
        }
        this.this$0.k().l(arrayList);
        LoadingViewModel.h(this.this$0, false, null, 3, null);
        return v.f15822a;
    }
}
