package cn.mucang.android.jiakaoyi.k3collect.manager.map;

import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.jiakaoyi.uilib.api.GeneralBusinessApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.K3MapViewModel$loadMapList$1", f = "K3MapViewModel.kt", l = {}, m = "invokeSuspend")
final class K3MapViewModel$loadMapList$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ boolean $firstLoad;
    int label;
    final /* synthetic */ K3MapViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3MapViewModel$loadMapList$1(K3MapViewModel k3MapViewModel, boolean z, Continuation<? super K3MapViewModel$loadMapList$1> continuation) {
        super(2, continuation);
        this.this$0 = k3MapViewModel;
        this.$firstLoad = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new K3MapViewModel$loadMapList$1(this.this$0, this.$firstLoad, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((K3MapViewModel$loadMapList$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            try {
                cn.mucang.android.core.api.d.b<ExamSiteModel> bVarR = new GeneralBusinessApi().r(this.this$0.c, false);
                K3MapViewModel k3MapViewModel = this.this$0;
                String strA = bVarR.a();
                kotlin.jvm.internal.r.d(strA, "response.cursor");
                k3MapViewModel.c = strA;
                this.this$0.f4091d = bVarR.c();
                if (this.$firstLoad) {
                    this.this$0.n().u(bVarR.b());
                } else {
                    this.this$0.n().q(bVarR.b());
                }
                LoadingViewModel.h(this.this$0, false, null, 3, null);
            } catch (Exception unused) {
                if (this.$firstLoad) {
                    LoadingViewModel.d(this.this$0, false, null, 3, null);
                }
            }
            return kotlin.v.f15822a;
        } finally {
            this.this$0.f4092e = false;
        }
    }
}
