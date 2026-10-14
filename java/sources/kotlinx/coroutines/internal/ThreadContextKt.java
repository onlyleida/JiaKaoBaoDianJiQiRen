package kotlinx.coroutines.internal;

import java.util.Objects;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.q2;

/* JADX INFO: loaded from: classes6.dex */
public final class ThreadContextKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final y f16003a = new y("ZERO");
    private static final Function2<Object, CoroutineContext.a, Object> b = new Function2<Object, CoroutineContext.a, Object>() { // from class: kotlinx.coroutines.internal.ThreadContextKt$countAll$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, CoroutineContext.a aVar) {
            if (!(aVar instanceof q2)) {
                return obj;
            }
            if (!(obj instanceof Integer)) {
                obj = null;
            }
            Integer num = (Integer) obj;
            int iIntValue = num != null ? num.intValue() : 1;
            return iIntValue == 0 ? aVar : Integer.valueOf(iIntValue + 1);
        }
    };
    private static final Function2<q2<?>, CoroutineContext.a, q2<?>> c = new Function2<q2<?>, CoroutineContext.a, q2<?>>() { // from class: kotlinx.coroutines.internal.ThreadContextKt$findOne$1
        @Override // kotlin.jvm.functions.Function2
        public final q2<?> invoke(q2<?> q2Var, CoroutineContext.a aVar) {
            if (q2Var != null) {
                return q2Var;
            }
            if (!(aVar instanceof q2)) {
                aVar = null;
            }
            return (q2) aVar;
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Function2<e0, CoroutineContext.a, e0> f16004d = new Function2<e0, CoroutineContext.a, e0>() { // from class: kotlinx.coroutines.internal.ThreadContextKt$updateState$1
        @Override // kotlin.jvm.functions.Function2
        public final e0 invoke(e0 e0Var, CoroutineContext.a aVar) {
            if (aVar instanceof q2) {
                e0Var.a(((q2) aVar).H(e0Var.b()));
            }
            return e0Var;
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Function2<e0, CoroutineContext.a, e0> f16005e = new Function2<e0, CoroutineContext.a, e0>() { // from class: kotlinx.coroutines.internal.ThreadContextKt$restoreState$1
        @Override // kotlin.jvm.functions.Function2
        public final e0 invoke(e0 e0Var, CoroutineContext.a aVar) {
            if (aVar instanceof q2) {
                ((q2) aVar).p(e0Var.b(), e0Var.d());
            }
            return e0Var;
        }
    };

    public static final void a(CoroutineContext coroutineContext, Object obj) {
        if (obj == f16003a) {
            return;
        }
        if (obj instanceof e0) {
            ((e0) obj).c();
            coroutineContext.fold(obj, f16005e);
        } else {
            Object objFold = coroutineContext.fold(null, c);
            Objects.requireNonNull(objFold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
            ((q2) objFold).p(coroutineContext, obj);
        }
    }

    public static final Object b(CoroutineContext coroutineContext) {
        Object objFold = coroutineContext.fold(0, b);
        kotlin.jvm.internal.r.c(objFold);
        return objFold;
    }

    public static final Object c(CoroutineContext coroutineContext, Object obj) {
        if (obj == null) {
            obj = b(coroutineContext);
        }
        if (obj == 0) {
            return f16003a;
        }
        if (obj instanceof Integer) {
            return coroutineContext.fold(new e0(coroutineContext, ((Number) obj).intValue()), f16004d);
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((q2) obj).H(coroutineContext);
    }
}
