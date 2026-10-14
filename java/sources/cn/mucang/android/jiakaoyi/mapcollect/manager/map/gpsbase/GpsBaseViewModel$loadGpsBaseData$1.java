package cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase;

import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase.GpsBaseViewModel$loadGpsBaseData$1", f = "GpsBaseViewModel.kt", l = {}, m = "invokeSuspend")
final class GpsBaseViewModel$loadGpsBaseData$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ String $cityCode;
    int label;
    final /* synthetic */ GpsBaseViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GpsBaseViewModel$loadGpsBaseData$1(String str, GpsBaseViewModel gpsBaseViewModel, Continuation<? super GpsBaseViewModel$loadGpsBaseData$1> continuation) {
        super(2, continuation);
        this.$cityCode = str;
        this.this$0 = gpsBaseViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new GpsBaseViewModel$loadGpsBaseData$1(this.$cityCode, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((GpsBaseViewModel$loadGpsBaseData$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            this.this$0.a().l(new GpsBaseApi().m(this.$cityCode));
        } catch (Exception unused) {
            this.this$0.b().l(LoadingState.Fail.buildMsg("网络异常"));
        }
        return v.f15822a;
    }
}
