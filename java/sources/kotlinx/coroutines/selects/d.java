package kotlinx.coroutines.selects;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
public interface d<Q> {
    <R> void f(f<? super R> fVar, Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2);
}
