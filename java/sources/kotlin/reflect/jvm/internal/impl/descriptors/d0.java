package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class d0 {
    public static final void a(c0 c0Var, kotlin.reflect.jvm.internal.impl.name.c fqName, Collection<b0> packageFragments) {
        kotlin.jvm.internal.r.e(c0Var, "<this>");
        kotlin.jvm.internal.r.e(fqName, "fqName");
        kotlin.jvm.internal.r.e(packageFragments, "packageFragments");
        if (c0Var instanceof e0) {
            ((e0) c0Var).b(fqName, packageFragments);
        } else {
            packageFragments.addAll(c0Var.a(fqName));
        }
    }

    public static final boolean b(c0 c0Var, kotlin.reflect.jvm.internal.impl.name.c fqName) {
        kotlin.jvm.internal.r.e(c0Var, "<this>");
        kotlin.jvm.internal.r.e(fqName, "fqName");
        return c0Var instanceof e0 ? ((e0) c0Var).c(fqName) : c(c0Var, fqName).isEmpty();
    }

    public static final List<b0> c(c0 c0Var, kotlin.reflect.jvm.internal.impl.name.c fqName) {
        kotlin.jvm.internal.r.e(c0Var, "<this>");
        kotlin.jvm.internal.r.e(fqName, "fqName");
        ArrayList arrayList = new ArrayList();
        a(c0Var, fqName, arrayList);
        return arrayList;
    }
}
