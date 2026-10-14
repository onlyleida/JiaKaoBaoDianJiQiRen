package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public class b extends g<List<? extends g<?>>> {
    private final Function1<z, a0> b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public b(List<? extends g<?>> value, Function1<? super z, ? extends a0> computeType) {
        super(value);
        kotlin.jvm.internal.r.e(value, "value");
        kotlin.jvm.internal.r.e(computeType, "computeType");
        this.b = computeType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public a0 a(z module) {
        kotlin.jvm.internal.r.e(module, "module");
        a0 a0VarInvoke = this.b.invoke(module);
        if (!kotlin.reflect.jvm.internal.impl.builtins.g.c0(a0VarInvoke) && !kotlin.reflect.jvm.internal.impl.builtins.g.o0(a0VarInvoke)) {
            kotlin.reflect.jvm.internal.impl.builtins.g.B0(a0VarInvoke);
        }
        return a0VarInvoke;
    }
}
