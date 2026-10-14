package cn.mucang.android.jiakaoyi.k3setting.order.viewmodel;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.jiakaoyi.uilib.StepGetter;
import cn.mucang.jiakaoyi.uilib.model.K3OrderItem;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.ManualOrderViewModel$loadData$1", f = "ManualOrderViewModel.kt", l = {}, m = "invokeSuspend")
final class ManualOrderViewModel$loadData$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ long $siteId;
    int label;
    final /* synthetic */ ManualOrderViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ManualOrderViewModel$loadData$1(long j, ManualOrderViewModel manualOrderViewModel, Continuation<? super ManualOrderViewModel$loadData$1> continuation) {
        super(2, continuation);
        this.$siteId = j;
        this.this$0 = manualOrderViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new ManualOrderViewModel$loadData$1(this.$siteId, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((ManualOrderViewModel$loadData$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        List<K3OrderItem> listE = StepGetter.f9318a.e(this.$siteId);
        if (listE == null) {
            List<Step> listF = StepGetter.f();
            listF.add(0, Step.K3_QiBu);
            listF.add(0, Step.K3_ShangChe);
            ArrayList arrayList = new ArrayList();
            for (Step step : listF) {
                arrayList.add((step == Step.K3_ShangChe || step == Step.K3_QiBu) ? new K3OrderItem(step, false) : new K3OrderItem(step, true));
            }
            listE = new ArrayList<>();
            listE.addAll(arrayList);
        }
        this.this$0.a().l(listE);
        return v.f15822a;
    }
}
