package cn.mucang.jiakaoyi.sundial.client;

import cn.mucang.sundial.library.Sundial;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.SundialClient$interceptLogin$1$isDiffStudent$1", f = "SundialClient.kt", l = {}, m = "invokeSuspend")
final class SundialClient$interceptLogin$1$isDiffStudent$1 extends SuspendLambda implements Function2<i0, Continuation<? super Boolean>, Object> {
    final /* synthetic */ String $xyToken;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SundialClient$interceptLogin$1$isDiffStudent$1(String str, Continuation<? super SundialClient$interceptLogin$1$isDiffStudent$1> continuation) {
        super(2, continuation);
        this.$xyToken = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new SundialClient$interceptLogin$1$isDiffStudent$1(this.$xyToken, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super Boolean> continuation) {
        return ((SundialClient$interceptLogin$1$isDiffStudent$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        return kotlin.coroutines.jvm.internal.a.a(Sundial.isDiffLoginStudent(this.$xyToken));
    }
}
