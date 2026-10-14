package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends g<Boolean> {
    public c(boolean z) {
        super(Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public f0 a(z module) {
        kotlin.jvm.internal.r.e(module, "module");
        f0 f0VarN = module.k().n();
        kotlin.jvm.internal.r.d(f0VarN, "module.builtIns.booleanType");
        return f0VarN;
    }
}
