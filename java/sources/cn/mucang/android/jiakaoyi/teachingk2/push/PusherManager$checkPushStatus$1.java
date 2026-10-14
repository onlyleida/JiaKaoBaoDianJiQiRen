package cn.mucang.android.jiakaoyi.teachingk2.push;

import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t1;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$checkPushStatus$1", f = "PusherManager.kt", l = {Videoio.CAP_PROP_XI_FFS_ACCESS_KEY}, m = "invokeSuspend")
final class PusherManager$checkPushStatus$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    int label;

    PusherManager$checkPushStatus$1(Continuation<? super PusherManager$checkPushStatus$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new PusherManager$checkPushStatus$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((PusherManager$checkPushStatus$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0047  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            this.label = 1;
            if (s0.a(DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        if (!kotlin.jvm.internal.r.a(PusherManager.i, kotlin.coroutines.jvm.internal.a.a(true))) {
            if (PusherManager.o != null) {
                t1 t1Var = PusherManager.o;
                kotlin.jvm.internal.r.c(t1Var);
                if (!t1Var.isActive()) {
                    PusherManager.f7472a.j0();
                }
            } else {
                PusherManager.f7472a.j0();
            }
        }
        return kotlin.v.f15822a;
    }
}
