package cn.mucang.android.jiakaoyi.framework.tts.play;

import cn.mucang.android.jiakaoyi.framework.tts.Synthesizer;
import cn.mucang.android.jiakaoyi.framework.tts.voice.o;
import java.util.LinkedList;
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
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.framework.tts.play.TtsSynchronizer$stop$1", f = "TtsSynchronizer.kt", l = {}, m = "invokeSuspend")
final class TtsSynchronizer$stop$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ o $voiceTask;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TtsSynchronizer$stop$1(o oVar, Continuation<? super TtsSynchronizer$stop$1> continuation) {
        super(2, continuation);
        this.$voiceTask = oVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new TtsSynchronizer$stop$1(this.$voiceTask, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((TtsSynchronizer$stop$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        TtsSynchronizer.a aVar = TtsSynchronizer.f3523e;
        Object obj2 = null;
        if (r.a(aVar == null ? null : aVar.getF3524a(), this.$voiceTask)) {
            TtsSynchronizer.a aVar2 = TtsSynchronizer.f3523e;
            r.c(aVar2);
            if (!aVar2.getC()) {
                TtsSynchronizer.a aVar3 = TtsSynchronizer.f3523e;
                r.c(aVar3);
                aVar3.e(true);
                TtsSynchronizer.a aVar4 = TtsSynchronizer.f3523e;
                r.c(aVar4);
                e b = aVar4.getB();
                if (b != null) {
                    TtsSynchronizer.a aVar5 = TtsSynchronizer.f3523e;
                    r.c(aVar5);
                    b.a(aVar5.getF3524a());
                }
            }
            TtsSynchronizer ttsSynchronizer = TtsSynchronizer.f3521a;
            TtsSynchronizer.f3523e = null;
            Synthesizer.f3515a.g();
        }
        LinkedList linkedList = TtsSynchronizer.b;
        o oVar = this.$voiceTask;
        for (Object obj3 : linkedList) {
            if (r.a(((TtsSynchronizer.a) obj3).getF3524a(), oVar)) {
                obj2 = obj3;
                break;
            }
        }
        TtsSynchronizer.a aVar6 = (TtsSynchronizer.a) obj2;
        if (aVar6 != null) {
            TtsSynchronizer.b.remove(aVar6);
            e b2 = aVar6.getB();
            if (b2 != null) {
                b2.a(aVar6.getF3524a());
            }
        }
        return v.f15822a;
    }
}
