package cn.mucang.android.jiakaoyi.teachingk2.push;

import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$reconnect$1", f = "PusherManager.kt", l = {}, m = "invokeSuspend")
final class PusherManager$reconnect$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    PusherManager$reconnect$1(Continuation<? super PusherManager$reconnect$1> continuation) {
        super(2, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:6:0x0013  */
    /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
    public static final kotlin.v m56invokeSuspend$lambda0(kotlinx.coroutines.i0 i0Var) {
        if (PusherManager.o != null) {
            t1 t1Var = PusherManager.o;
            kotlin.jvm.internal.r.c(t1Var);
            if (!t1Var.isActive()) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("推流重连开始");
                PusherManager pusherManager = PusherManager.f7472a;
                PusherManager.o = kotlinx.coroutines.g.b(i0Var, null, null, new PusherManager$reconnect$1$1$1(null), 3, null);
            }
        } else {
            cn.mucang.android.jiakaoyi.framework.log.f.o("推流重连开始");
            PusherManager pusherManager2 = PusherManager.f7472a;
            PusherManager.o = kotlinx.coroutines.g.b(i0Var, null, null, new PusherManager$reconnect$1$1$1(null), 3, null);
        }
        return kotlin.v.f15822a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        PusherManager$reconnect$1 pusherManager$reconnect$1 = new PusherManager$reconnect$1(continuation);
        pusherManager$reconnect$1.L$0 = obj;
        return pusherManager$reconnect$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((PusherManager$reconnect$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        final kotlinx.coroutines.i0 i0Var = (kotlinx.coroutines.i0) this.L$0;
        cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.z
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return PusherManager$reconnect$1.m56invokeSuspend$lambda0(i0Var);
            }
        }).f(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.y
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj2) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("阿里云推流重连结束----end");
            }
        });
        return kotlin.v.f15822a;
    }
}
