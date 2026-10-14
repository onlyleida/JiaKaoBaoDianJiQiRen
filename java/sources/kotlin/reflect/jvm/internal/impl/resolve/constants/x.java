package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class x extends y<Short> {
    public x(short s) {
        super(Short.valueOf(s));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public a0 a(z module) {
        kotlin.jvm.internal.r.e(module, "module");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarA = FindClassInModuleKt.a(module, kotlin.reflect.jvm.internal.impl.builtins.h.a.Y);
        f0 f0VarN = dVarA == null ? null : dVarA.n();
        if (f0VarN != null) {
            return f0VarN;
        }
        f0 f0VarJ = kotlin.reflect.jvm.internal.impl.types.t.j("Unsigned type UShort not found");
        kotlin.jvm.internal.r.d(f0VarJ, "createErrorType(\"Unsigned type UShort not found\")");
        return f0VarJ;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public String toString() {
        return b().intValue() + ".toUShort()";
    }
}
