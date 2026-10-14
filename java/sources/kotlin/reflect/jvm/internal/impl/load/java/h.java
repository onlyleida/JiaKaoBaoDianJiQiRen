package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;

/* JADX INFO: loaded from: classes6.dex */
public final class h implements ExternalOverridabilityCondition {
    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public ExternalOverridabilityCondition.Contract a() {
        return ExternalOverridabilityCondition.Contract.BOTH;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public ExternalOverridabilityCondition.Result b(kotlin.reflect.jvm.internal.impl.descriptors.a superDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a subDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        kotlin.jvm.internal.r.e(superDescriptor, "superDescriptor");
        kotlin.jvm.internal.r.e(subDescriptor, "subDescriptor");
        if (!(subDescriptor instanceof j0) || !(superDescriptor instanceof j0)) {
            return ExternalOverridabilityCondition.Result.UNKNOWN;
        }
        j0 j0Var = (j0) subDescriptor;
        j0 j0Var2 = (j0) superDescriptor;
        if (!kotlin.jvm.internal.r.a(j0Var.getName(), j0Var2.getName())) {
            return ExternalOverridabilityCondition.Result.UNKNOWN;
        }
        if (kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b.a(j0Var) && kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b.a(j0Var2)) {
            return ExternalOverridabilityCondition.Result.OVERRIDABLE;
        }
        return (kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b.a(j0Var) || kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b.a(j0Var2)) ? ExternalOverridabilityCondition.Result.INCOMPATIBLE : ExternalOverridabilityCondition.Result.UNKNOWN;
    }
}
