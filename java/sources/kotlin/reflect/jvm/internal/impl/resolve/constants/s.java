package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class s extends m<Short> {
    public s(short s) {
        super(Short.valueOf(s));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public f0 a(z module) {
        kotlin.jvm.internal.r.e(module, "module");
        f0 f0VarT = module.k().T();
        kotlin.jvm.internal.r.d(f0VarT, "module.builtIns.shortType");
        return f0VarT;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public String toString() {
        return b().intValue() + ".toShort()";
    }
}
