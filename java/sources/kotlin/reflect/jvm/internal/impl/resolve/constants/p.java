package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class p extends m<Long> {
    public p(long j) {
        super(Long.valueOf(j));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public f0 a(z module) {
        kotlin.jvm.internal.r.e(module, "module");
        f0 f0VarF = module.k().F();
        kotlin.jvm.internal.r.d(f0VarF, "module.builtIns.longType");
        return f0VarF;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public String toString() {
        return b().longValue() + ".toLong()";
    }
}
