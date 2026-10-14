package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes6.dex */
public final class k {
    public static final <R> Object a(Function2<? super i0, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super R> continuation) {
        i iVar = new i(continuation.getContext(), continuation);
        Object objE = kotlinx.coroutines.a3.b.e(iVar, iVar, function2);
        if (objE == kotlin.coroutines.intrinsics.b.d()) {
            kotlin.coroutines.jvm.internal.f.c(continuation);
        }
        return objE;
    }
}
