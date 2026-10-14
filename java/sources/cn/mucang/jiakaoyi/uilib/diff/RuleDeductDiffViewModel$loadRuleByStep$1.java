package cn.mucang.jiakaoyi.uilib.diff;

import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.jiakaoyi.uilib.model.StepItem;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffViewModel$loadRuleByStep$1", f = "RuleDeductDiffViewModel.kt", l = {}, m = "invokeSuspend")
final class RuleDeductDiffViewModel$loadRuleByStep$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Step $step;
    final /* synthetic */ boolean $teaching;
    int label;
    final /* synthetic */ RuleDeductDiffViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RuleDeductDiffViewModel$loadRuleByStep$1(RuleDeductDiffViewModel ruleDeductDiffViewModel, boolean z, Step step, Continuation<? super RuleDeductDiffViewModel$loadRuleByStep$1> continuation) {
        super(2, continuation);
        this.this$0 = ruleDeductDiffViewModel;
        this.$teaching = z;
        this.$step = step;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new RuleDeductDiffViewModel$loadRuleByStep$1(this.this$0, this.$teaching, this.$step, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((RuleDeductDiffViewModel$loadRuleByStep$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        List<StepItem> listE = this.this$0.p().e();
        if (listE != null) {
            Step step = this.$step;
            for (StepItem stepItem : listE) {
                stepItem.e(stepItem.getStep().type == step.type);
            }
        }
        z<List<StepItem>> zVarP = this.this$0.p();
        if (listE == null) {
            listE = new ArrayList<>();
        }
        zVarP.l(listE);
        Map map = this.$teaching ? this.this$0.k : this.this$0.j;
        List<RuleConfig<Object>> list = map == null ? null : (List) map.get(this.$step);
        if (list != null && (true ^ list.isEmpty())) {
            this.this$0.o().l(list);
        }
        this.this$0.m().l(new TabCount(DataType.RULE.getType(), list != null ? list.size() : 0));
        return v.f15822a;
    }
}
