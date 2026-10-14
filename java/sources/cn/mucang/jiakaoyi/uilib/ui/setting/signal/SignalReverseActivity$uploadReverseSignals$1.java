package cn.mucang.jiakaoyi.uilib.ui.setting.signal;

import cn.mucang.jiakaoyi.uilib.manager.SignalValueManager;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalReverseActivity$uploadReverseSignals$1", f = "SignalReverseActivity.kt", l = {79}, m = "invokeSuspend")
final class SignalReverseActivity$uploadReverseSignals$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    int label;

    SignalReverseActivity$uploadReverseSignals$1(Continuation<? super SignalReverseActivity$uploadReverseSignals$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new SignalReverseActivity$uploadReverseSignals$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((SignalReverseActivity$uploadReverseSignals$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            boolean zD = SignalValueManager.d(SignalValueManager.f9459a, false, 1, null);
            String str = zD ? "保存反转信号成功" : "保存反转信号失败";
            cn.mucang.android.core.utils.u.h(str);
            cn.mucang.android.jiakaoyi.framework.log.f.o(str);
            if (!zD) {
                this.label = 1;
                if (s0.a(10000L, this) == objD) {
                    return objD;
                }
            }
            return kotlin.v.f15822a;
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        SignalValueManager.d(SignalValueManager.f9459a, false, 1, null);
        return kotlin.v.f15822a;
    }
}
