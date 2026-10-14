package cn.mucang.android.jiakaoyi.teachingk2.push;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.push.WebRtcCamera$reconnect$1", f = "WebRtcCamera.kt", l = {}, m = "invokeSuspend")
final class WebRtcCamera$reconnect$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ String $reason;
    int label;
    final /* synthetic */ WebRtcCamera this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WebRtcCamera$reconnect$1(WebRtcCamera webRtcCamera, String str, Continuation<? super WebRtcCamera$reconnect$1> continuation) {
        super(2, continuation);
        this.this$0 = webRtcCamera;
        this.$reason = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new WebRtcCamera$reconnect$1(this.this$0, this.$reason, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((WebRtcCamera$reconnect$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003f  */
    /* JADX WARN: Code duplicated, block: B:12:0x0040 A[Catch: all -> 0x0057, TryCatch #0 {all -> 0x0057, blocks: (B:5:0x0018, B:7:0x0020, B:14:0x0050, B:9:0x002d, B:13:0x004d, B:12:0x0040), top: B:25:0x0018 }] */
    /* JADX WARN: Code duplicated, block: B:9:0x002d A[Catch: all -> 0x0057, TryCatch #0 {all -> 0x0057, blocks: (B:5:0x0018, B:7:0x0020, B:14:0x0050, B:9:0x002d, B:13:0x004d, B:12:0x0040), top: B:25:0x0018 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM139constructorimpl;
        kotlinx.coroutines.i0 i0Var;
        t1 t1VarB;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        this.this$0.M(kotlin.coroutines.jvm.internal.a.a(false));
        WebRtcCamera webRtcCamera = this.this$0;
        String str = this.$reason;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (webRtcCamera.j != null) {
                t1 t1Var = webRtcCamera.j;
                kotlin.jvm.internal.r.c(t1Var);
                if (!t1Var.isActive()) {
                    webRtcCamera.f7493f = false;
                    cn.mucang.android.core.utils.t.d("WebRtcCamera", str);
                    cn.mucang.android.jiakaoyi.framework.log.f.o(str);
                    i0Var = webRtcCamera.f7494g;
                    t1VarB = null;
                    if (i0Var == null) {
                        t1VarB = kotlinx.coroutines.g.b(i0Var, null, null, new WebRtcCamera$reconnect$1$1$1(webRtcCamera, null), 3, null);
                    }
                    webRtcCamera.j = t1VarB;
                }
            } else {
                webRtcCamera.f7493f = false;
                cn.mucang.android.core.utils.t.d("WebRtcCamera", str);
                cn.mucang.android.jiakaoyi.framework.log.f.o(str);
                i0Var = webRtcCamera.f7494g;
                t1VarB = null;
                if (i0Var == null) {
                    t1VarB = kotlinx.coroutines.g.b(i0Var, null, null, new WebRtcCamera$reconnect$1$1$1(webRtcCamera, null), 3, null);
                }
                webRtcCamera.j = t1VarB;
            }
            objM139constructorimpl = Result.m139constructorimpl(kotlin.v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        if (Result.m142exceptionOrNullimpl(objM139constructorimpl) != null) {
            cn.mucang.android.core.utils.t.h("PusherManager", "rtc播放器重连结束----end");
            cn.mucang.android.jiakaoyi.framework.log.f.o("rtc播放器重连结束----end");
        }
        return kotlin.v.f15822a;
    }
}
