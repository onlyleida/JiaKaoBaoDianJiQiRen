package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class k extends g<Float> {
    public k(float f2) {
        super(Float.valueOf(f2));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public f0 a(z module) {
        kotlin.jvm.internal.r.e(module, "module");
        f0 f0VarB = module.k().B();
        kotlin.jvm.internal.r.d(f0VarB, "module.builtIns.floatType");
        return f0VarB;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public String toString() {
        return b().floatValue() + ".toFloat()";
    }
}
