package cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite;

import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.jiakaoyi.uilib.api.GeneralBusinessApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite.K3ExamSiteSelectViewModel$loadData$1", f = "K3ExamSiteSelectViewModel.kt", l = {}, m = "invokeSuspend")
final class K3ExamSiteSelectViewModel$loadData$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ String $cityCode;
    final /* synthetic */ boolean $firstLoad;
    int label;
    final /* synthetic */ K3ExamSiteSelectViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3ExamSiteSelectViewModel$loadData$1(String str, K3ExamSiteSelectViewModel k3ExamSiteSelectViewModel, boolean z, Continuation<? super K3ExamSiteSelectViewModel$loadData$1> continuation) {
        super(2, continuation);
        this.$cityCode = str;
        this.this$0 = k3ExamSiteSelectViewModel;
        this.$firstLoad = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new K3ExamSiteSelectViewModel$loadData$1(this.$cityCode, this.this$0, this.$firstLoad, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((K3ExamSiteSelectViewModel$loadData$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            cn.mucang.android.core.api.d.b<ExamSiteModel> bVarT = new GeneralBusinessApi().t(this.$cityCode, this.this$0.c);
            K3ExamSiteSelectViewModel k3ExamSiteSelectViewModel = this.this$0;
            String strA = bVarT.a();
            r.d(strA, "response.cursor");
            k3ExamSiteSelectViewModel.c = strA;
            this.this$0.h(bVarT.c());
            if (this.$firstLoad) {
                this.this$0.e().u(bVarT.b());
            } else {
                this.this$0.e().q(bVarT.b());
            }
            this.this$0.d().l(LoadingState.Success);
        } catch (Exception unused) {
            this.this$0.d().l(LoadingState.Fail);
        }
        return v.f15822a;
    }
}
