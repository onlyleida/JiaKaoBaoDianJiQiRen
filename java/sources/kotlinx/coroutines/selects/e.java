package kotlinx.coroutines.selects;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
public interface e<P, Q> {
    <R> void a(f<? super R> fVar, P p, Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2);
}
