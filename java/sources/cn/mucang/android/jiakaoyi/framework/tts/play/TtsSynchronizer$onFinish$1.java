package cn.mucang.android.jiakaoyi.framework.tts.play;

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
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.framework.tts.play.TtsSynchronizer$onFinish$1", f = "TtsSynchronizer.kt", l = {}, m = "invokeSuspend")
final class TtsSynchronizer$onFinish$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ TtsSynchronizer.a $preWrapper;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TtsSynchronizer$onFinish$1(TtsSynchronizer.a aVar, Continuation<? super TtsSynchronizer$onFinish$1> continuation) {
        super(2, continuation);
        this.$preWrapper = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new TtsSynchronizer$onFinish$1(this.$preWrapper, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((TtsSynchronizer$onFinish$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        if (r.a(this.$preWrapper, TtsSynchronizer.f3523e)) {
            TtsSynchronizer ttsSynchronizer = TtsSynchronizer.f3521a;
            TtsSynchronizer.f3523e = null;
        }
        if (this.$preWrapper.getC()) {
            return v.f15822a;
        }
        this.$preWrapper.e(true);
        t.h("TtsSynchronizer", "onFinish通知出去");
        e b = this.$preWrapper.getB();
        if (b != null) {
            b.a(this.$preWrapper.getF3524a());
        }
        TtsSynchronizer.a aVar = (TtsSynchronizer.a) TtsSynchronizer.b.poll();
        if (aVar == null) {
            return v.f15822a;
        }
        if (aVar.getF3524a().i) {
            TtsSynchronizer.f3521a.l(aVar);
        } else {
            TtsSynchronizer.f3521a.o(aVar);
        }
        return v.f15822a;
    }
}
