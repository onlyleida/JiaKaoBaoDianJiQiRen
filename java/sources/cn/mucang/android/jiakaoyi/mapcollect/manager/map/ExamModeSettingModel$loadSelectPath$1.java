package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.mapcollect.manager.map.ExamModeSettingModel$loadSelectPath$1", f = "ExamModeSettingModel.kt", l = {}, m = "invokeSuspend")
final class ExamModeSettingModel$loadSelectPath$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ long $examSiteId;
    int label;
    final /* synthetic */ ExamModeSettingModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExamModeSettingModel$loadSelectPath$1(long j, ExamModeSettingModel examModeSettingModel, Continuation<? super ExamModeSettingModel$loadSelectPath$1> continuation) {
        super(2, continuation);
        this.$examSiteId = j;
        this.this$0 = examModeSettingModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new ExamModeSettingModel$loadSelectPath$1(this.$examSiteId, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((ExamModeSettingModel$loadSelectPath$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            this.this$0.i().l(new cn.mucang.android.jiakaoyi.mapcollect.b.a.a().m(this.$examSiteId));
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.core.utils.u.h("获取考试模式地图失败");
        }
        return kotlin.v.f15822a;
    }
}
