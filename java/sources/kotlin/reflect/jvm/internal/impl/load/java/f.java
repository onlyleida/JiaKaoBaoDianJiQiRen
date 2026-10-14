package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;

/* JADX INFO: loaded from: classes6.dex */
public final class f {
    private static /* synthetic */ void a(int i) {
        Object[] objArr = new Object[3];
        if (i == 1 || i == 2) {
            objArr[0] = "companionObject";
        } else if (i != 3) {
            objArr[0] = "propertyDescriptor";
        } else {
            objArr[0] = "memberDescriptor";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/DescriptorsJvmAbiUtil";
        if (i == 1) {
            objArr[2] = "isClassCompanionObjectWithBackingFieldsInOuter";
        } else if (i == 2) {
            objArr[2] = "isMappedIntrinsicCompanionObject";
        } else if (i != 3) {
            objArr[2] = "isPropertyWithBackingFieldInOuterClass";
        } else {
            objArr[2] = "hasJvmFieldAnnotation";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static boolean b(CallableMemberDescriptor callableMemberDescriptor) {
        kotlin.reflect.jvm.internal.impl.descriptors.t tVarU0;
        if (callableMemberDescriptor == null) {
            a(3);
            throw null;
        }
        if ((callableMemberDescriptor instanceof j0) && (tVarU0 = ((j0) callableMemberDescriptor).u0()) != null && tVarU0.getAnnotations().h(q.b)) {
            return true;
        }
        return callableMemberDescriptor.getAnnotations().h(q.b);
    }

    public static boolean c(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (kVar != null) {
            return kotlin.reflect.jvm.internal.impl.resolve.c.x(kVar) && kotlin.reflect.jvm.internal.impl.resolve.c.w(kVar.b()) && !d((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar);
        }
        a(1);
        throw null;
    }

    public static boolean d(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar != null) {
            return kotlin.reflect.jvm.internal.impl.builtins.c.a(kotlin.reflect.jvm.internal.impl.builtins.b.f14779a, dVar);
        }
        a(2);
        throw null;
    }

    public static boolean e(j0 j0Var) {
        if (j0Var == null) {
            a(0);
            throw null;
        }
        if (j0Var.g() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
            return false;
        }
        if (c(j0Var.b())) {
            return true;
        }
        return kotlin.reflect.jvm.internal.impl.resolve.c.x(j0Var.b()) && b(j0Var);
    }
}
