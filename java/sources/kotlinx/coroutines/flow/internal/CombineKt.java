package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public final class CombineKt {
    public static final <R, T> Object a(kotlinx.coroutines.flow.d<? super R> dVar, kotlinx.coroutines.flow.c<? extends T>[] cVarArr, Function0<T[]> function0, Function3<? super kotlinx.coroutines.flow.d<? super R>, ? super T[], ? super Continuation<? super v>, ? extends Object> function3, Continuation<? super v> continuation) {
        Object objA = k.a(new CombineKt$combineInternal$2(dVar, cVarArr, function0, function3, null), continuation);
        return objA == kotlin.coroutines.intrinsics.b.d() ? objA : v.f15822a;
    }
}
