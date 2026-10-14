package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;

/* JADX INFO: loaded from: classes6.dex */
public final class j implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c0 f15599a;

    public j(c0 packageFragmentProvider) {
        kotlin.jvm.internal.r.e(packageFragmentProvider, "packageFragmentProvider");
        this.f15599a = packageFragmentProvider;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.e
    public d a(kotlin.reflect.jvm.internal.impl.name.b classId) {
        d dVarA;
        kotlin.jvm.internal.r.e(classId, "classId");
        c0 c0Var = this.f15599a;
        kotlin.reflect.jvm.internal.impl.name.c cVarH = classId.h();
        kotlin.jvm.internal.r.d(cVarH, "classId.packageFqName");
        for (b0 b0Var : d0.c(c0Var, cVarH)) {
            if ((b0Var instanceof k) && (dVarA = ((k) b0Var).B0().a(classId)) != null) {
                return dVarA;
            }
        }
        return null;
    }
}
