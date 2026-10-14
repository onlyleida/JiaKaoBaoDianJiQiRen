package cn.mucang.jiakaoyi.uilib.splash;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.SchoolDeviceUtil;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.jiakaoyi.uilib.activate.ActivateModel;
import cn.mucang.jiakaoyi.uilib.api.CacheDeviceApi;
import cn.mucang.jiakaoyi.uilib.model.DeviceAgent;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.splash.CheckViewModel$deviceCanUse$1", f = "CheckViewModel.kt", l = {}, m = "invokeSuspend")
final class CheckViewModel$deviceCanUse$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ ActivateModel $model;
    int label;
    final /* synthetic */ CheckViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CheckViewModel$deviceCanUse$1(ActivateModel activateModel, CheckViewModel checkViewModel, Continuation<? super CheckViewModel$deviceCanUse$1> continuation) {
        super(2, continuation);
        this.$model = activateModel;
        this.this$0 = checkViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new CheckViewModel$deviceCanUse$1(this.$model, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((CheckViewModel$deviceCanUse$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            DeviceUtils.v(this.$model.getDeviceNum());
            if (AppUtils.g()) {
                DeviceAgent deviceAgentD = new CacheDeviceApi().d(true);
                cn.mucang.android.jiakaoyi.framework.log.f.o("设备信息：agentId " + deviceAgentD.agentId + "; tenantId " + deviceAgentD.tenantId + " ; passEnabled " + deviceAgentD.passEnabled);
                SchoolDeviceUtil.f3622a.b(deviceAgentD.isPassEnabled());
            }
            if (n0.e(SelectCarManager.f())) {
                this.this$0.k().l(kotlin.coroutines.jvm.internal.a.d(1));
            } else {
                this.this$0.k().l(kotlin.coroutines.jvm.internal.a.d(2));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("/api/open/device/get-paas-info.htm 报错：", cn.mucang.android.core.utils.t.g(e2)));
        }
        return kotlin.v.f15822a;
    }
}
