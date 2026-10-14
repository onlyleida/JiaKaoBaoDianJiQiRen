package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachVerifyActivity$getTeachData$2", f = "TeachVerifyActivity.kt", l = {}, m = "invokeSuspend")
final class TeachVerifyActivity$getTeachData$2 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ HashMap<Step, Set<String>> $boundaryData;
    final /* synthetic */ HashMap<Step, List<TeachModel>> $teachData;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TeachVerifyActivity$getTeachData$2(HashMap<Step, List<TeachModel>> map, HashMap<Step, Set<String>> map2, Continuation<? super TeachVerifyActivity$getTeachData$2> continuation) {
        super(2, continuation);
        this.$teachData = map;
        this.$boundaryData = map2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new TeachVerifyActivity$getTeachData$2(this.$teachData, this.$boundaryData, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((TeachVerifyActivity$getTeachData$2) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            List<TeachModel> list = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().q(TeachModelEditor.f6857a.f(), 0);
            TeachDataProcessor teachDataProcessor = new TeachDataProcessor(true, false);
            kotlin.jvm.internal.r.d(list, "list");
            teachDataProcessor.b(list, this.$teachData, this.$boundaryData);
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("教学验证拉取教学方案失败，msg：", e2.getLocalizedMessage()));
        }
        return kotlin.v.f15822a;
    }
}
