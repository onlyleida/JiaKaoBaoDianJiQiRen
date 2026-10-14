package cn.mucang.android.jiakaoyi.k3collect.manager.map;

import cn.mucang.jiakaoyi.uilib.api.GeneralBusinessApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.K3MapManagerActivity$init$2$1$2$result$1", f = "K3MapManagerActivity.kt", l = {}, m = "invokeSuspend")
final class K3MapManagerActivity$init$2$1$2$result$1 extends SuspendLambda implements Function2<i0, Continuation<? super Result<? extends ExamSiteModel>>, Object> {
    final /* synthetic */ ExamSiteModel $newModel;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3MapManagerActivity$init$2$1$2$result$1(ExamSiteModel examSiteModel, Continuation<? super K3MapManagerActivity$init$2$1$2$result$1> continuation) {
        super(2, continuation);
        this.$newModel = examSiteModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new K3MapManagerActivity$init$2$1$2$result$1(this.$newModel, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super Result<? extends ExamSiteModel>> continuation) {
        return ((K3MapManagerActivity$init$2$1$2$result$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM139constructorimpl;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        ExamSiteModel examSiteModel = this.$newModel;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(new GeneralBusinessApi().n(examSiteModel, true));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        return Result.m138boximpl(objM139constructorimpl);
    }
}
