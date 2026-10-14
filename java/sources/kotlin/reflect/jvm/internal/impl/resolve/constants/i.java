package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class i extends g<Pair<? extends kotlin.reflect.jvm.internal.impl.name.b, ? extends kotlin.reflect.jvm.internal.impl.name.f>> {
    private final kotlin.reflect.jvm.internal.impl.name.b b;
    private final kotlin.reflect.jvm.internal.impl.name.f c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(kotlin.reflect.jvm.internal.impl.name.b enumClassId, kotlin.reflect.jvm.internal.impl.name.f enumEntryName) {
        super(kotlin.l.a(enumClassId, enumEntryName));
        kotlin.jvm.internal.r.e(enumClassId, "enumClassId");
        kotlin.jvm.internal.r.e(enumEntryName, "enumEntryName");
        this.b = enumClassId;
        this.c = enumEntryName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public a0 a(z module) {
        kotlin.jvm.internal.r.e(module, "module");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarA = FindClassInModuleKt.a(module, this.b);
        f0 f0VarN = null;
        if (dVarA != null) {
            if (!kotlin.reflect.jvm.internal.impl.resolve.c.A(dVarA)) {
                dVarA = null;
            }
            if (dVarA != null) {
                f0VarN = dVarA.n();
            }
        }
        if (f0VarN != null) {
            return f0VarN;
        }
        f0 f0VarJ = kotlin.reflect.jvm.internal.impl.types.t.j("Containing class for error-class based enum entry " + this.b + '.' + this.c);
        kotlin.jvm.internal.r.d(f0VarJ, "createErrorType(\"Contain…mClassId.$enumEntryName\")");
        return f0VarJ;
    }

    public final kotlin.reflect.jvm.internal.impl.name.f c() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.b.j());
        sb.append('.');
        sb.append(this.c);
        return sb.toString();
    }
}
