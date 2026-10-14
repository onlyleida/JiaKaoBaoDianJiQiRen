package cn.mucang.jiakaoyi.uilib.rule.dialog;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.jiakaoyi.uilib.deduct.DeductSyncManager;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
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
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.rule.dialog.RuleRelevancyDeductViewModel$save$1", f = "RuleRelevancyDeductViewModel.kt", l = {}, m = "invokeSuspend")
final class RuleRelevancyDeductViewModel$save$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ KeMu $keMu;
    int label;
    final /* synthetic */ RuleRelevancyDeductViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RuleRelevancyDeductViewModel$save$1(RuleRelevancyDeductViewModel ruleRelevancyDeductViewModel, KeMu keMu, Continuation<? super RuleRelevancyDeductViewModel$save$1> continuation) {
        super(2, continuation);
        this.this$0 = ruleRelevancyDeductViewModel;
        this.$keMu = keMu;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new RuleRelevancyDeductViewModel$save$1(this.this$0, this.$keMu, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((RuleRelevancyDeductViewModel$save$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        if (this.this$0.f9518d.isEmpty()) {
            this.this$0.c(false, "保存失败");
            return v.f15822a;
        }
        ArrayList<DeductEntity> arrayList = new ArrayList();
        List<DeductEntity> listE = this.this$0.l().e();
        if (listE != null) {
            Iterator<T> it = listE.iterator();
            while (it.hasNext()) {
                arrayList.add((DeductEntity) it.next());
            }
        }
        for (DeductEntity deductEntity : arrayList) {
            if (deductEntity.getDeductScore() != 5 && deductEntity.getDeductScore() != 10 && deductEntity.getDeductScore() != 100) {
                u.h("分值只能设置为5，10，100");
                this.this$0.c(false, "保存失败");
                return v.f15822a;
            }
        }
        RuleRelevancyDeductViewModel ruleRelevancyDeductViewModel = this.this$0;
        List<? extends DeductEntity> listK = ruleRelevancyDeductViewModel.k(arrayList, ruleRelevancyDeductViewModel.f9518d);
        long jO = ExamSiteUtil.o(this.$keMu, 0L, 2, null);
        if (listK != null) {
            Iterator<T> it2 = listK.iterator();
            while (it2.hasNext()) {
                ((DeductEntity) it2.next()).setExamSiteId(jO);
            }
        }
        if (DeductSyncManager.f9236a.d(listK, this.$keMu)) {
            if (listK != null) {
                Iterator<T> it3 = listK.iterator();
                while (it3.hasNext()) {
                    cn.mucang.jiakaoyi.uilib.m.a.u((DeductEntity) it3.next(), jO);
                }
            }
            this.this$0.g(false, "保存成功");
        } else {
            this.this$0.g(false, "保存失败");
        }
        return v.f15822a;
    }
}
