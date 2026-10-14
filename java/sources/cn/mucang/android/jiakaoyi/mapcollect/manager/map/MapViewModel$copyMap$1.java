package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.jiakaoyi.uilib.api.GeneralBusinessApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapViewModel$copyMap$1", f = "MapViewModel.kt", l = {}, m = "invokeSuspend")
final class MapViewModel$copyMap$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ ExamSiteModel $model;
    int label;
    final /* synthetic */ MapViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MapViewModel$copyMap$1(ExamSiteModel examSiteModel, MapViewModel mapViewModel, Continuation<? super MapViewModel$copyMap$1> continuation) {
        super(2, continuation);
        this.$model = examSiteModel;
        this.this$0 = mapViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new MapViewModel$copyMap$1(this.$model, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((MapViewModel$copyMap$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0060 A[Catch: Exception -> 0x0068, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x0068, blocks: (B:5:0x000c, B:10:0x0029, B:15:0x003b, B:20:0x0060), top: B:44:0x000c }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String message;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        boolean z = true;
        try {
            ExamSiteModel examSiteModelM = new GeneralBusinessApi().m(this.$model);
            String str = examSiteModelM.mapDataMd5;
            kotlin.jvm.internal.r.d(str, "newModel.mapDataMd5");
            if (str.length() > 0) {
                String str2 = examSiteModelM.mapDataUrl;
                kotlin.jvm.internal.r.d(str2, "newModel.mapDataUrl");
                if (str2.length() > 0) {
                    this.this$0.p().p(0, examSiteModelM);
                    this.this$0.g(false, "复制成功!");
                    try {
                        GeneralBusinessApi generalBusinessApi = new GeneralBusinessApi();
                        long j = examSiteModelM.examSiteId;
                        ExamSiteModel examSiteModel = this.$model;
                        generalBusinessApi.v(j, examSiteModel.originLatitude, examSiteModel.originLongitude, examSiteModel.originAltitude);
                    } catch (Exception e2) {
                        e = e2;
                        if (!z) {
                            ApiException apiException = e instanceof ApiException ? (ApiException) e : null;
                            String str3 = "复制失败";
                            if (apiException != null && (message = apiException.getMessage()) != null) {
                                str3 = message;
                            }
                            this.this$0.c(false, str3);
                        }
                    }
                } else {
                    this.this$0.c(false, "复制失败,没有地图数据");
                }
            } else {
                this.this$0.c(false, "复制失败,没有地图数据");
            }
        } catch (Exception e3) {
            e = e3;
            z = false;
        }
        return kotlin.v.f15822a;
    }
}
