package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.exam.k3.creator.ExamDataCreator;
import java.util.Map;
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
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.route.edit.ExamSiteRouteConfigModel$getConfigs$1", f = "ExamSiteRouteConfigModel.kt", l = {}, m = "invokeSuspend")
final class ExamSiteRouteConfigModel$getConfigs$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ String $cityCode;
    final /* synthetic */ long $examSiteId;
    int label;
    final /* synthetic */ ExamSiteRouteConfigModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExamSiteRouteConfigModel$getConfigs$1(long j, String str, ExamSiteRouteConfigModel examSiteRouteConfigModel, Continuation<? super ExamSiteRouteConfigModel$getConfigs$1> continuation) {
        super(2, continuation);
        this.$examSiteId = j;
        this.$cityCode = str;
        this.this$0 = examSiteRouteConfigModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new ExamSiteRouteConfigModel$getConfigs$1(this.$examSiteId, this.$cityCode, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((ExamSiteRouteConfigModel$getConfigs$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        Map<Step, BaseStepConfig> configs = ExamDataCreator.getConfigs(this.$examSiteId, this.$cityCode);
        if (configs != null) {
            this.this$0.b().l(configs);
        }
        return v.f15822a;
    }
}
