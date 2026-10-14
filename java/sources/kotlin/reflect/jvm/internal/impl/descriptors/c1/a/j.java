package kotlin.reflect.jvm.internal.impl.descriptors.c1.a;

import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

/* JADX INFO: loaded from: classes6.dex */
public final class j implements kotlin.reflect.jvm.internal.impl.serialization.deserialization.l {
    public static final j b = new j();

    private j() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.l
    public void a(CallableMemberDescriptor descriptor) {
        r.e(descriptor, "descriptor");
        throw new IllegalStateException(r.m("Cannot infer visibility for ", descriptor));
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.l
    public void b(kotlin.reflect.jvm.internal.impl.descriptors.d descriptor, List<String> unresolvedSuperClasses) {
        r.e(descriptor, "descriptor");
        r.e(unresolvedSuperClasses, "unresolvedSuperClasses");
        throw new IllegalStateException("Incomplete hierarchy for class " + descriptor.getName() + ", unresolved classes " + unresolvedSuperClasses);
    }
}
