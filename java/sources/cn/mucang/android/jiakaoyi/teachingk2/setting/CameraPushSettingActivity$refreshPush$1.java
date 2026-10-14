package cn.mucang.android.jiakaoyi.teachingk2.setting;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager;
import cn.mucang.jiakaoyi.uilib.socket.model.PushSwitchModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.setting.CameraPushSettingActivity$refreshPush$1", f = "CameraPushSettingActivity.kt", l = {130, 133}, m = "invokeSuspend")
final class CameraPushSettingActivity$refreshPush$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ CameraPushSettingActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CameraPushSettingActivity$refreshPush$1(CameraPushSettingActivity cameraPushSettingActivity, Continuation<? super CameraPushSettingActivity$refreshPush$1> continuation) {
        super(2, continuation);
        this.this$0 = cameraPushSettingActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new CameraPushSettingActivity$refreshPush$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((CameraPushSettingActivity$refreshPush$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                kotlin.k.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            this.this$0.x(LocalConfigManager.f(LocalConfig.PushSourceFromAi));
            return kotlin.v.f15822a;
        }
        kotlin.k.b(obj);
        this.label = 1;
        if (kotlinx.coroutines.s0.a(500L, this) == objD) {
            return objD;
        }
        PusherManager.f7472a.G();
        LiveBus.c(new PushSwitchModel(true));
        this.label = 2;
        if (kotlinx.coroutines.s0.a(500L, this) == objD) {
            return objD;
        }
        this.this$0.x(LocalConfigManager.f(LocalConfig.PushSourceFromAi));
        return kotlin.v.f15822a;
    }
}
