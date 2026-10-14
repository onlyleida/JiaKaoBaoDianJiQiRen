package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.b0;
import kotlin.reflect.jvm.internal.impl.types.c1;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: loaded from: classes6.dex */
public final class e {
    public static final c1 a(List<? extends c1> types) {
        f0 f0VarQ0;
        kotlin.jvm.internal.r.e(types, "types");
        int size = types.size();
        if (size == 0) {
            throw new IllegalStateException("Expected some types".toString());
        }
        if (size == 1) {
            return (c1) kotlin.collections.s.C0(types);
        }
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(types, 10));
        boolean z = false;
        boolean z2 = false;
        for (c1 c1Var : types) {
            z = z || b0.a(c1Var);
            if (c1Var instanceof f0) {
                f0VarQ0 = (f0) c1Var;
            } else {
                if (!(c1Var instanceof kotlin.reflect.jvm.internal.impl.types.v)) {
                    throw new NoWhenBranchMatchedException();
                }
                if (kotlin.reflect.jvm.internal.impl.types.r.a(c1Var)) {
                    return c1Var;
                }
                f0VarQ0 = ((kotlin.reflect.jvm.internal.impl.types.v) c1Var).Q0();
                z2 = true;
            }
            arrayList.add(f0VarQ0);
        }
        if (z) {
            f0 f0VarJ = kotlin.reflect.jvm.internal.impl.types.t.j(kotlin.jvm.internal.r.m("Intersection of error types: ", types));
            kotlin.jvm.internal.r.d(f0VarJ, "createErrorType(\"Interse… of error types: $types\")");
            return f0VarJ;
        }
        if (!z2) {
            return TypeIntersector.f15658a.c(arrayList);
        }
        ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(types, 10));
        Iterator<T> it = types.iterator();
        while (it.hasNext()) {
            arrayList2.add(y.d((c1) it.next()));
        }
        TypeIntersector typeIntersector = TypeIntersector.f15658a;
        return KotlinTypeFactory.d(typeIntersector.c(arrayList), typeIntersector.c(arrayList2));
    }
}
