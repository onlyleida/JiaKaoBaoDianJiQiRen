package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class t extends g<String> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(String value) {
        super(value);
        kotlin.jvm.internal.r.e(value, "value");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public f0 a(z module) {
        kotlin.jvm.internal.r.e(module, "module");
        f0 f0VarW = module.k().W();
        kotlin.jvm.internal.r.d(f0VarW, "module.builtIns.stringType");
        return f0VarW;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public String toString() {
        return '\"' + b() + '\"';
    }
}
