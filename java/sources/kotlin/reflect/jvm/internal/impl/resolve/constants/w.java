package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class w extends y<Long> {
    public w(long j) {
        super(Long.valueOf(j));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public a0 a(z module) {
        kotlin.jvm.internal.r.e(module, "module");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarA = FindClassInModuleKt.a(module, kotlin.reflect.jvm.internal.impl.builtins.h.a.a0);
        f0 f0VarN = dVarA == null ? null : dVarA.n();
        if (f0VarN != null) {
            return f0VarN;
        }
        f0 f0VarJ = kotlin.reflect.jvm.internal.impl.types.t.j("Unsigned type ULong not found");
        kotlin.jvm.internal.r.d(f0VarJ, "createErrorType(\"Unsigned type ULong not found\")");
        return f0VarJ;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public String toString() {
        return b().longValue() + ".toULong()";
    }
}
