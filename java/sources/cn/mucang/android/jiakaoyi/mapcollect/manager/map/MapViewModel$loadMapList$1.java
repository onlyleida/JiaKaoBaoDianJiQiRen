package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.jiakaoyi.uilib.api.GeneralBusinessApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapViewModel$loadMapList$1", f = "MapViewModel.kt", l = {}, m = "invokeSuspend")
final class MapViewModel$loadMapList$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ boolean $firstLoad;
    final /* synthetic */ boolean $onlyPublic;
    int label;
    final /* synthetic */ MapViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MapViewModel$loadMapList$1(MapViewModel mapViewModel, boolean z, boolean z2, Continuation<? super MapViewModel$loadMapList$1> continuation) {
        super(2, continuation);
        this.this$0 = mapViewModel;
        this.$onlyPublic = z;
        this.$firstLoad = z2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new MapViewModel$loadMapList$1(this.this$0, this.$onlyPublic, this.$firstLoad, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((MapViewModel$loadMapList$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            try {
                cn.mucang.android.core.api.d.b<ExamSiteModel> bVarR = new GeneralBusinessApi().r(this.this$0.c, this.$onlyPublic);
                MapViewModel mapViewModel = this.this$0;
                String strA = bVarR.a();
                kotlin.jvm.internal.r.d(strA, "response.cursor");
                mapViewModel.c = strA;
                this.this$0.f5075d = bVarR.c();
                if (this.$firstLoad) {
                    this.this$0.p().u(bVarR.b());
                } else {
                    this.this$0.p().q(bVarR.b());
                }
                LoadingViewModel.h(this.this$0, false, null, 3, null);
            } catch (Exception unused) {
                if (this.$firstLoad) {
                    LoadingViewModel.d(this.this$0, false, null, 3, null);
                }
            }
            return kotlin.v.f15822a;
        } finally {
            this.this$0.f5076e = false;
        }
    }
}
