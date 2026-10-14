package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.z;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public final class SafeCollectorKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Function3<kotlinx.coroutines.flow.d<Object>, Object, Continuation<? super v>, Object> f15969a;

    static {
        SafeCollectorKt$emitFun$1 safeCollectorKt$emitFun$1 = new SafeCollectorKt$emitFun$1();
        z.e(safeCollectorKt$emitFun$1, 3);
        f15969a = safeCollectorKt$emitFun$1;
    }
}
