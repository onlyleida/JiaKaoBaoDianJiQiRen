package cn.mucang.jiakaoyi.uilib.siterule;

import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.siterule.SwitchSiteRuleViewModel$saveRuleExamSite$1", f = "SwitchSiteRuleViewModel.kt", l = {}, m = "invokeSuspend")
final class SwitchSiteRuleViewModel$saveRuleExamSite$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ ExamSiteModel $examSiteModel;
    final /* synthetic */ KeMu $keMu;
    int label;
    final /* synthetic */ SwitchSiteRuleViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SwitchSiteRuleViewModel$saveRuleExamSite$1(ExamSiteModel examSiteModel, KeMu keMu, SwitchSiteRuleViewModel switchSiteRuleViewModel, Continuation<? super SwitchSiteRuleViewModel$saveRuleExamSite$1> continuation) {
        super(2, continuation);
        this.$examSiteModel = examSiteModel;
        this.$keMu = keMu;
        this.this$0 = switchSiteRuleViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new SwitchSiteRuleViewModel$saveRuleExamSite$1(this.$examSiteModel, this.$keMu, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((SwitchSiteRuleViewModel$saveRuleExamSite$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        boolean zN;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            SiteApi siteApi = new SiteApi();
            if (AppUtils.k()) {
                String str = this.$examSiteModel.examSiteName;
                kotlin.jvm.internal.r.d(str, "examSiteModel.examSiteName");
                zN = siteApi.r(str, this.$keMu);
            } else if (AppUtils.f() || AppUtils.l() || AppUtils.i()) {
                String str2 = this.$examSiteModel.examSiteName;
                kotlin.jvm.internal.r.d(str2, "examSiteModel.examSiteName");
                zN = siteApi.n(str2);
            } else {
                zN = false;
            }
            if (zN) {
                this.this$0.g(false, "添加规则成功!");
                this.this$0.k(this.$keMu);
            } else {
                this.this$0.c(false, "添加规则失败!");
            }
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("添加规则异常：", e2.getLocalizedMessage()));
            this.this$0.a().l(LoadingState.Fail.buildMsg("网络异常"));
        }
        return kotlin.v.f15822a;
    }
}
