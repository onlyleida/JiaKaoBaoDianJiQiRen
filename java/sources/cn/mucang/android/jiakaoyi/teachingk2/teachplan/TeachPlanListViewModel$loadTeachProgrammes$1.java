package cn.mucang.android.jiakaoyi.teachingk2.teachplan;

import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.teachingk2.model.TeachPlanItemModel;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.y;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.k;
import kotlin.v;
import kotlin.x.b;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.teachplan.TeachPlanListViewModel$loadTeachProgrammes$1", f = "TeachPlanListViewModel.kt", l = {}, m = "invokeSuspend")
final class TeachPlanListViewModel$loadTeachProgrammes$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ long $examSite;
    int label;
    final /* synthetic */ TeachPlanListViewModel this$0;

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 5, 1})
    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            TeachPlanItemModel teachPlanItemModel = (TeachPlanItemModel) t2;
            TeachPlanItemModel teachPlanItemModel2 = (TeachPlanItemModel) t;
            return b.c(Boolean.valueOf(cn.mucang.android.jiakaoyi.teachingk2.teachplan.a.a(teachPlanItemModel.examSiteId) == teachPlanItemModel.id), Boolean.valueOf(cn.mucang.android.jiakaoyi.teachingk2.teachplan.a.a(teachPlanItemModel2.examSiteId) == teachPlanItemModel2.id));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TeachPlanListViewModel$loadTeachProgrammes$1(long j, TeachPlanListViewModel teachPlanListViewModel, Continuation<? super TeachPlanListViewModel$loadTeachProgrammes$1> continuation) {
        super(2, continuation);
        this.$examSite = j;
        this.this$0 = teachPlanListViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new TeachPlanListViewModel$loadTeachProgrammes$1(this.$examSite, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((TeachPlanListViewModel$loadTeachProgrammes$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            List<TeachPlanItemModel> listM = new cn.mucang.android.jiakaoyi.teachingk2.teachplan.b.b().m(this.$examSite);
            if (listM != null && listM.size() > 1) {
                y.A(listM, new a());
            }
            this.this$0.a().l(listM);
        } catch (Exception unused) {
            this.this$0.b().l(LoadingState.Fail.buildMsg("网络异常"));
        }
        return v.f15822a;
    }
}
