package cn.mucang.jiakaoyi.uilib.deduct.dialog;

import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.jiakaoyi.uilib.model.RuleConfigEntity;
import cn.mucang.jiakaoyi.uilib.rule.RuleSyncManager;
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
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.deduct.dialog.DeductRelevancyRuleViewModel$save$1", f = "DeductRelevancyRuleViewModel.kt", l = {}, m = "invokeSuspend")
final class DeductRelevancyRuleViewModel$save$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ KeMu $keMu;
    int label;
    final /* synthetic */ DeductRelevancyRuleViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DeductRelevancyRuleViewModel$save$1(DeductRelevancyRuleViewModel deductRelevancyRuleViewModel, KeMu keMu, Continuation<? super DeductRelevancyRuleViewModel$save$1> continuation) {
        super(2, continuation);
        this.this$0 = deductRelevancyRuleViewModel;
        this.$keMu = keMu;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new DeductRelevancyRuleViewModel$save$1(this.this$0, this.$keMu, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((DeductRelevancyRuleViewModel$save$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        ArrayList arrayList = new ArrayList();
        List<RuleConfig<Object>> listE = this.this$0.k().e();
        if (listE != null) {
            Iterator<T> it = listE.iterator();
            while (it.hasNext()) {
                arrayList.add((RuleConfig) it.next());
            }
        }
        if (!this.this$0.j(arrayList)) {
            this.this$0.c(false, "参数设置不合法");
            return v.f15822a;
        }
        ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(cn.mucang.jiakaoyi.uilib.f.c((RuleConfig) it2.next()));
        }
        long jO = ExamSiteUtil.o(this.$keMu, 0L, 2, null);
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            ((RuleConfigEntity) it3.next()).setExamSiteId(jO);
        }
        if (RuleSyncManager.f9550a.d(arrayList2, this.$keMu)) {
            Iterator it4 = arrayList2.iterator();
            while (it4.hasNext()) {
                cn.mucang.jiakaoyi.uilib.m.b.w((RuleConfigEntity) it4.next(), jO);
            }
            this.this$0.g(false, "保存成功");
        } else {
            this.this$0.g(false, "保存失败");
        }
        return v.f15822a;
    }
}
