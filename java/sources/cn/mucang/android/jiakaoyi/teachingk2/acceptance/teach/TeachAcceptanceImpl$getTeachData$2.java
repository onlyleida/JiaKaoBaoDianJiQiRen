package cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachDataProcessor;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach.TeachAcceptanceImpl$getTeachData$2", f = "TeachAcceptanceImpl.kt", l = {}, m = "invokeSuspend")
final class TeachAcceptanceImpl$getTeachData$2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ HashMap<Step, Set<String>> $boundaryData;
    final /* synthetic */ HashMap<Step, List<TeachModel>> $teachData;
    int label;
    final /* synthetic */ TeachAcceptanceImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TeachAcceptanceImpl$getTeachData$2(TeachAcceptanceImpl teachAcceptanceImpl, HashMap<Step, List<TeachModel>> map, HashMap<Step, Set<String>> map2, Continuation<? super TeachAcceptanceImpl$getTeachData$2> continuation) {
        super(2, continuation);
        this.this$0 = teachAcceptanceImpl;
        this.$teachData = map;
        this.$boundaryData = map2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new TeachAcceptanceImpl$getTeachData$2(this.this$0, this.$teachData, this.$boundaryData, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((TeachAcceptanceImpl$getTeachData$2) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            List<TeachModel> list = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().q(this.this$0.f6060e, 0);
            TeachDataProcessor teachDataProcessor = new TeachDataProcessor(false, false);
            r.d(list, "list");
            teachDataProcessor.b(list, this.$teachData, this.$boundaryData);
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("拉取教学方案失败，id：" + ((Object) this.this$0.f6060e) + "，msg：" + ((Object) e2.getLocalizedMessage()));
        }
        return v.f15822a;
    }
}
