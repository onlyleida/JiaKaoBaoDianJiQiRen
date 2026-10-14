package cn.mucang.jiakaoyi.uilib.siterule;

import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.siterule.SwitchSiteRuleViewModel$loadSiteData$1", f = "SwitchSiteRuleViewModel.kt", l = {}, m = "invokeSuspend")
final class SwitchSiteRuleViewModel$loadSiteData$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ KeMu $keMu;
    int label;
    final /* synthetic */ SwitchSiteRuleViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SwitchSiteRuleViewModel$loadSiteData$1(KeMu keMu, SwitchSiteRuleViewModel switchSiteRuleViewModel, Continuation<? super SwitchSiteRuleViewModel$loadSiteData$1> continuation) {
        super(2, continuation);
        this.$keMu = keMu;
        this.this$0 = switchSiteRuleViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new SwitchSiteRuleViewModel$loadSiteData$1(this.$keMu, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((SwitchSiteRuleViewModel$loadSiteData$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List<ExamSiteModel> listO;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            SiteApi siteApi = new SiteApi();
            if (AppUtils.k()) {
                listO = siteApi.p(this.$keMu);
            } else {
                listO = (AppUtils.f() || AppUtils.l() || AppUtils.i()) ? siteApi.o() : siteApi.q();
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("考场规则列表：", JSON.toJSONString(listO)));
            androidx.lifecycle.z<List<ExamSiteItem>> zVarI = this.this$0.i();
            ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listO, 10));
            Iterator<T> it = listO.iterator();
            while (it.hasNext()) {
                arrayList.add(new ExamSiteItem((ExamSiteModel) it.next(), false, false, 6, null));
            }
            zVarI.l(arrayList);
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("获取考场规则列表异常：", e2.getLocalizedMessage()));
            this.this$0.j().l(LoadingState.Fail.buildMsg("网络异常"));
        }
        return kotlin.v.f15822a;
    }
}
