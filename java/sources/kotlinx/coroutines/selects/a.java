package kotlinx.coroutines.selects;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
public interface a<R> {
    void f(long j, Function1<? super Continuation<? super R>, ? extends Object> function1);

    <Q> void t(d<? extends Q> dVar, Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2);
}
