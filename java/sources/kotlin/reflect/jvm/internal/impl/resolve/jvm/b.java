package kotlin.reflect.jvm.internal.impl.resolve.jvm;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class b {
    private static final boolean a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        return r.a(DescriptorUtilsKt.i(dVar), h.f14804h);
    }

    public static final boolean b(k kVar) {
        r.e(kVar, "<this>");
        return kotlin.reflect.jvm.internal.impl.resolve.d.b(kVar) && !a((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar);
    }

    public static final boolean c(a0 a0Var) {
        r.e(a0Var, "<this>");
        f fVarU = a0Var.I0().u();
        return fVarU != null && b(fVarU);
    }

    private static final boolean d(a0 a0Var) {
        f fVarU = a0Var.I0().u();
        t0 t0Var = fVarU instanceof t0 ? (t0) fVarU : null;
        if (t0Var == null) {
            return false;
        }
        return e(TypeUtilsKt.i(t0Var));
    }

    private static final boolean e(a0 a0Var) {
        return c(a0Var) || d(a0Var);
    }

    public static final boolean f(CallableMemberDescriptor descriptor) {
        r.e(descriptor, "descriptor");
        kotlin.reflect.jvm.internal.impl.descriptors.c cVar = descriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.c ? (kotlin.reflect.jvm.internal.impl.descriptors.c) descriptor : null;
        if (cVar == null || kotlin.reflect.jvm.internal.impl.descriptors.r.g(cVar.getVisibility())) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarA0 = cVar.a0();
        r.d(dVarA0, "constructorDescriptor.constructedClass");
        if (kotlin.reflect.jvm.internal.impl.resolve.d.b(dVarA0) || kotlin.reflect.jvm.internal.impl.resolve.c.G(cVar.a0())) {
            return false;
        }
        List<v0> listF = cVar.f();
        r.d(listF, "constructorDescriptor.valueParameters");
        if ((listF instanceof Collection) && listF.isEmpty()) {
            return false;
        }
        Iterator<T> it = listF.iterator();
        while (it.hasNext()) {
            a0 type = ((v0) it.next()).getType();
            r.d(type, "it.type");
            if (e(type)) {
                return true;
            }
        }
        return false;
    }
}
