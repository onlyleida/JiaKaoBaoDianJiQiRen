package cn.mucang.android.jiakaoyi.k3setting.teach;

import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import com.alibaba.fastjson.JSON;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingViewModel$save$1", f = "K3TeachSettingViewModel.kt", l = {}, m = "invokeSuspend")
final class K3TeachSettingViewModel$save$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ cn.mucang.android.jiakaoyi.framework.h.b<Boolean> $callback;
    int label;
    final /* synthetic */ K3TeachSettingViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3TeachSettingViewModel$save$1(K3TeachSettingViewModel k3TeachSettingViewModel, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar, Continuation<? super K3TeachSettingViewModel$save$1> continuation) {
        super(2, continuation);
        this.this$0 = k3TeachSettingViewModel;
        this.$callback = bVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new K3TeachSettingViewModel$save$1(this.this$0, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((K3TeachSettingViewModel$save$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        List<TeachData> listP = this.this$0.p();
        if (listP == null || listP.isEmpty()) {
            this.this$0.c(false, "没有修改过数据");
            return kotlin.v.f15822a;
        }
        try {
            cn.mucang.android.jiakaoyi.framework.log.f.o("考场 " + this.this$0.getC().examSiteId + " save teach " + ((Object) JSON.toJSONString(listP)));
            if (new K3TeachApi().q(this.this$0.getC().examSiteId, listP)) {
                LoadingViewModel.h(this.this$0, false, null, 2, null);
                cn.mucang.android.core.utils.u.h("保存成功");
                try {
                    this.this$0.s();
                } catch (Exception e2) {
                    LoadingViewModel.d(this.this$0, false, null, 2, null);
                    e2.printStackTrace();
                    cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar = this.$callback;
                    if (bVar != null) {
                        bVar.callback(kotlin.coroutines.jvm.internal.a.a(false));
                    }
                    return kotlin.v.f15822a;
                }
            } else {
                LoadingViewModel.d(this.this$0, false, null, 2, null);
                cn.mucang.android.core.utils.u.h("保存失败");
            }
        } catch (Exception e3) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("教学保存失败 ", e3.getMessage()));
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("教学保存失败 ", cn.mucang.android.core.utils.t.g(e3)));
            e3.printStackTrace();
            LoadingViewModel.d(this.this$0, false, null, 2, null);
            cn.mucang.android.core.utils.u.h("保存出错");
        }
        return kotlin.v.f15822a;
    }
}
