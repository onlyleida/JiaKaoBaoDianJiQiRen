package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class h extends g<Double> {
    public h(double d2) {
        super(Double.valueOf(d2));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public f0 a(z module) {
        kotlin.jvm.internal.r.e(module, "module");
        f0 f0VarZ = module.k().z();
        kotlin.jvm.internal.r.d(f0VarZ, "module.builtIns.doubleType");
        return f0VarZ;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public String toString() {
        return b().doubleValue() + ".toDouble()";
    }
}
