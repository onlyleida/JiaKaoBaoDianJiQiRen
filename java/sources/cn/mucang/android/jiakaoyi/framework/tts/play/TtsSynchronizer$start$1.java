package cn.mucang.android.jiakaoyi.framework.tts.play;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.framework.tts.play.TtsSynchronizer$start$1", f = "TtsSynchronizer.kt", l = {}, m = "invokeSuspend")
final class TtsSynchronizer$start$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ TtsSynchronizer.a $wrapper;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TtsSynchronizer$start$1(TtsSynchronizer.a aVar, Continuation<? super TtsSynchronizer$start$1> continuation) {
        super(2, continuation);
        this.$wrapper = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new TtsSynchronizer$start$1(this.$wrapper, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((TtsSynchronizer$start$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        if (TtsSynchronizer.f3523e == null) {
            TtsSynchronizer ttsSynchronizer = TtsSynchronizer.f3521a;
            TtsSynchronizer.f3523e = this.$wrapper;
            if (this.$wrapper.getF3524a().i) {
                ttsSynchronizer.l(this.$wrapper);
            } else {
                ttsSynchronizer.o(this.$wrapper);
            }
        } else {
            TtsSynchronizer.b.add(this.$wrapper);
        }
        return v.f15822a;
    }
}
