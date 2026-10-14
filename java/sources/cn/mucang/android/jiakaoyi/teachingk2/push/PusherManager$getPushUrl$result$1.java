package cn.mucang.android.jiakaoyi.teachingk2.push;

import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0002 \u0003*\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u00010\u0001*\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "Lcn/mucang/android/jiakaoyi/framework/api/Data;", "Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$getPushUrl$result$1", f = "PusherManager.kt", l = {}, m = "invokeSuspend")
final class PusherManager$getPushUrl$result$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super cn.mucang.android.jiakaoyi.framework.p002e.m<AliPushUrl>>, Object> {
    int label;

    PusherManager$getPushUrl$result$1(Continuation<? super PusherManager$getPushUrl$result$1> continuation) {
        super(2, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
    public static final AliPushUrl m52invokeSuspend$lambda0() {
        return new PushApi().n();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new PusherManager$getPushUrl$result$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super cn.mucang.android.jiakaoyi.framework.p002e.m<AliPushUrl>> continuation) {
        return ((PusherManager$getPushUrl$result$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        return cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.n
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return PusherManager$getPushUrl$result$1.m52invokeSuspend$lambda0();
            }
        });
    }
}
