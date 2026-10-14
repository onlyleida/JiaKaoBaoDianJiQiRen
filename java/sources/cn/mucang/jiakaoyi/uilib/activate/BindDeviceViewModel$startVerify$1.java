package cn.mucang.jiakaoyi.uilib.activate;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.SchoolDeviceUtil;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.jiakaoyi.uilib.api.CacheDeviceApi;
import cn.mucang.jiakaoyi.uilib.api.DeviceApi;
import cn.mucang.jiakaoyi.uilib.model.DeviceAgent;
import java.net.SocketTimeoutException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.activate.BindDeviceViewModel$startVerify$1", f = "BindDeviceViewModel.kt", l = {}, m = "invokeSuspend")
final class BindDeviceViewModel$startVerify$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    int label;
    final /* synthetic */ BindDeviceViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BindDeviceViewModel$startVerify$1(BindDeviceViewModel bindDeviceViewModel, Continuation<? super BindDeviceViewModel$startVerify$1> continuation) {
        super(2, continuation);
        this.this$0 = bindDeviceViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new BindDeviceViewModel$startVerify$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((BindDeviceViewModel$startVerify$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String message;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("查询激活状态,硬件编号=", DeviceUtils.e()));
            ActivateModel activateModelC = CacheDeviceApi.c(new CacheDeviceApi(), false, 1, null);
            cn.mucang.android.jiakaoyi.framework.log.f.o("激活信息: status=" + activateModelC.getStatus() + ", hp=" + activateModelC.getHighPrecision() + ", device=" + ((Object) activateModelC.getDeviceNum()));
            if (activateModelC.getStatus() != 10) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("*******************激活状态不正常:" + activateModelC.getStatus() + "********************");
            } else if (n0.g(activateModelC.getDeviceNum())) {
                DeviceUtils.v(activateModelC.getDeviceNum());
                if (AppUtils.g()) {
                    DeviceAgent deviceAgentM = new DeviceApi().m();
                    cn.mucang.android.jiakaoyi.framework.log.f.o("设备信息：agentId " + deviceAgentM.agentId + "; tenantId " + deviceAgentM.tenantId + " ; passEnabled " + deviceAgentM.passEnabled);
                    SchoolDeviceUtil.f3622a.b(deviceAgentM.isPassEnabled());
                }
                if (n0.e(SelectCarManager.f())) {
                    this.this$0.j().l(kotlin.coroutines.jvm.internal.a.d(1));
                    cn.mucang.android.jiakaoyi.framework.log.f.o("激活页面获取设备状态正常，没有车型，选择车型");
                } else {
                    this.this$0.j().l(kotlin.coroutines.jvm.internal.a.d(2));
                    cn.mucang.android.jiakaoyi.framework.log.f.o("激活页面获取设备状态正常，进入主页");
                }
            } else {
                cn.mucang.android.jiakaoyi.framework.log.f.o("激活页面获取设备状态正常，但没有设备号！");
            }
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("激活页面失败:", e2.getLocalizedMessage()));
            if (e2 instanceof SocketTimeoutException) {
                message = "网络超时，请重试";
            } else {
                message = e2.getMessage();
                if (message == null) {
                    message = "";
                }
            }
            LoadingViewModel.d(this.this$0, false, message, 1, null);
        }
        return v.f15822a;
    }
}
