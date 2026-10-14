package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;

/* JADX INFO: loaded from: classes6.dex */
public final class d extends e {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(kotlin.reflect.jvm.internal.impl.descriptors.d ownerDescriptor, n0 getterMethod, n0 n0Var, j0 overriddenProperty) {
        super(ownerDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), getterMethod.q(), getterMethod.getVisibility(), n0Var != null, overriddenProperty.getName(), getterMethod.o(), null, CallableMemberDescriptor.Kind.DECLARATION, false, null);
        r.e(ownerDescriptor, "ownerDescriptor");
        r.e(getterMethod, "getterMethod");
        r.e(overriddenProperty, "overriddenProperty");
    }
}
