package cn.mucang.android.jiakaoyi.framework.log;

import cn.mucang.android.core.utils.t;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.framework.log.SystemLogUtil$stopLog$1", f = "SystemLogUtil.kt", l = {}, m = "invokeSuspend")
final class SystemLogUtil$stopLog$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    int label;

    SystemLogUtil$stopLog$1(Continuation<? super SystemLogUtil$stopLog$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new SystemLogUtil$stopLog$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((SystemLogUtil$stopLog$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        int iB = SystemLogUtil.f3459a.b();
        if (iB > 0) {
            t.h("SystemLogUtil", r.m("kill -2 ", kotlin.coroutines.jvm.internal.a.d(iB)));
            Runtime.getRuntime().exec(r.m("kill -2 ", kotlin.coroutines.jvm.internal.a.d(iB)));
        } else {
            t.h("SystemLogUtil", "pid null, start destory");
        }
        return v.f15822a;
    }
}
