package cn.mucang.jiakaoyi.sundial.service;

import cn.mucang.jiakaoyi.sundial.client.SundialClient;
import cn.mucang.jiakaoyi.sundial.client.model.LeaningTime;
import cn.mucang.sundial.library.Sundial;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.service.JkySundialService$timerSend$1", f = "JkySundialService.kt", l = {49}, m = "invokeSuspend")
final class JkySundialService$timerSend$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    JkySundialService$timerSend$1(Continuation<? super JkySundialService$timerSend$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        JkySundialService$timerSend$1 jkySundialService$timerSend$1 = new JkySundialService$timerSend$1(continuation);
        jkySundialService$timerSend$1.L$0 = obj;
        return jkySundialService$timerSend$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((JkySundialService$timerSend$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        i0 i0Var;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
            i0Var = (i0) this.L$0;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i0Var = (i0) this.L$0;
            k.b(obj);
        }
        while (j0.g(i0Var)) {
            SundialClient.f9111a.s().setValue(new LeaningTime(Sundial.isLearning(), Sundial.getLearningTime()));
            this.L$0 = i0Var;
            this.label = 1;
            if (s0.a(1000L, this) == objD) {
                return objD;
            }
        }
        return v.f15822a;
    }
}
