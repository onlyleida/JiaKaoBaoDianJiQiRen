package cn.mucang.android.jiakaoyi.teachingk2.ui;

import cn.mucang.android.jiakaoyi.teachingk2.model.TeachPlanItemModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.ui.TeachProgrammeManagerActivity$enableProgramme$2", f = "TeachProgrammeManagerActivity.kt", l = {}, m = "invokeSuspend")
final class TeachProgrammeManagerActivity$enableProgramme$2 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super Object>, Object> {
    final /* synthetic */ TeachPlanItemModel $item;
    final /* synthetic */ Ref$BooleanRef $result;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TeachProgrammeManagerActivity$enableProgramme$2(Ref$BooleanRef ref$BooleanRef, TeachPlanItemModel teachPlanItemModel, Continuation<? super TeachProgrammeManagerActivity$enableProgramme$2> continuation) {
        super(2, continuation);
        this.$result = ref$BooleanRef;
        this.$item = teachPlanItemModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new TeachProgrammeManagerActivity$enableProgramme$2(this.$result, this.$item, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super Object> continuation) {
        return invoke2(i0Var, (Continuation<Object>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(kotlinx.coroutines.i0 i0Var, Continuation<Object> continuation) {
        return ((TeachProgrammeManagerActivity$enableProgramme$2) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            this.$result.element = new cn.mucang.android.jiakaoyi.teachingk2.teachplan.b.a().m(this.$item.id);
            return kotlin.v.f15822a;
        } catch (Exception e2) {
            return kotlin.coroutines.jvm.internal.a.d(cn.mucang.android.core.utils.t.d("TAG", e2.toString()));
        }
    }
}
