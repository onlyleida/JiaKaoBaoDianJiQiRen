package cn.mucang.sundial.library.viewmodel;

import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.DeviceInfo;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.library.entity.DefaultConfig;
import cn.mucang.sundial.library.http.ParamsApi;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0005\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/i0;", "Lcn/mucang/sundial/android/db/entity/DeviceInfo;", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "cn.mucang.sundial.library.viewmodel.RegisterViewModel$getDeviceInfo$1$deviceInfo$1", f = "RegisterViewModel.kt", l = {}, m = "invokeSuspend")
final class RegisterViewModel$getDeviceInfo$1$deviceInfo$1 extends SuspendLambda implements Function2<i0, Continuation<? super DeviceInfo>, Object> {
    int label;

    RegisterViewModel$getDeviceInfo$1$deviceInfo$1(Continuation continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> completion) {
        r.e(completion, "completion");
        return new RegisterViewModel$getDeviceInfo$1$deviceInfo$1(completion);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super DeviceInfo> continuation) {
        return ((RegisterViewModel$getDeviceInfo$1$deviceInfo$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        DeviceInfo deviceInfo = sundialManager.getDeviceInfo();
        DefaultConfig defaultConfig = new ParamsApi().getDefaultConfig();
        DefaultConfig.Info info = defaultConfig != null ? defaultConfig.getInfo() : null;
        if (info != null && deviceInfo != null) {
            SundialLog.normal("注册信息：" + defaultConfig);
            deviceInfo.setCarNo(info.getCarNo());
            deviceInfo.setDevicePhone(info.getPhone());
            deviceInfo.setSerialNo(info.getSerialNo());
        }
        SundialLog.normal("注册页面设备信息：" + deviceInfo);
        return deviceInfo;
    }
}
