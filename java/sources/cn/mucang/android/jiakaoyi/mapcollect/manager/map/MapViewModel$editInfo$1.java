package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import cn.mucang.jiakaoyi.uilib.api.GeneralBusinessApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapViewModel$editInfo$1", f = "MapViewModel.kt", l = {}, m = "invokeSuspend")
final class MapViewModel$editInfo$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ ExamSiteModel $model;
    int label;
    final /* synthetic */ MapViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MapViewModel$editInfo$1(ExamSiteModel examSiteModel, MapViewModel mapViewModel, Continuation<? super MapViewModel$editInfo$1> continuation) {
        super(2, continuation);
        this.$model = examSiteModel;
        this.this$0 = mapViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new MapViewModel$editInfo$1(this.$model, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((MapViewModel$editInfo$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            if (new GeneralBusinessApi().w(this.$model)) {
                this.this$0.p().s();
                long jE = ExamSiteUtil.e(0L);
                ExamSiteModel examSiteModel = this.$model;
                if (jE == examSiteModel.examSiteId) {
                    ExamSiteUtil.r(examSiteModel);
                }
                this.this$0.g(false, "编辑成功");
            } else {
                this.this$0.g(false, "编辑失败");
            }
        } catch (Exception e2) {
            this.this$0.c(false, kotlin.jvm.internal.r.m("编辑失败：", e2.getLocalizedMessage()));
        }
        return kotlin.v.f15822a;
    }
}
