package kotlinx.coroutines.flow.internal;

import java.util.Objects;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes6.dex */
public final class SafeCollector_commonKt {
    public static final void a(final SafeCollector<?> safeCollector, CoroutineContext coroutineContext) {
        if (((Number) coroutineContext.fold(0, new Function2<Integer, CoroutineContext.a, Integer>() { // from class: kotlinx.coroutines.flow.internal.SafeCollector_commonKt$checkContext$result$1
            {
                super(2);
            }

            public final int invoke(int i, CoroutineContext.a aVar) {
                CoroutineContext.b<?> key = aVar.getKey();
                CoroutineContext.a aVar2 = safeCollector.collectContext.get(key);
                if (key != t1.R) {
                    if (aVar != aVar2) {
                        return Integer.MIN_VALUE;
                    }
                    return i + 1;
                }
                t1 t1Var = (t1) aVar2;
                Objects.requireNonNull(aVar, "null cannot be cast to non-null type kotlinx.coroutines.Job");
                t1 t1VarB = SafeCollector_commonKt.b((t1) aVar, t1Var);
                if (t1VarB == t1Var) {
                    return t1Var == null ? i : i + 1;
                }
                throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + t1VarB + ", expected child of " + t1Var + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(Integer num, CoroutineContext.a aVar) {
                return Integer.valueOf(invoke(num.intValue(), aVar));
            }
        })).intValue() == safeCollector.collectContextSize) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + safeCollector.collectContext + ",\n\t\tbut emission happened in " + coroutineContext + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    public static final t1 b(t1 t1Var, t1 t1Var2) {
        while (t1Var != null) {
            if (t1Var == t1Var2 || !(t1Var instanceof w)) {
                return t1Var;
            }
            t1Var = ((w) t1Var).X0();
        }
        return null;
    }
}
