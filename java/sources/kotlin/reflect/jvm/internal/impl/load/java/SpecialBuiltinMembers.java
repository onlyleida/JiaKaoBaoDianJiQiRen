package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class SpecialBuiltinMembers {
    public static final boolean a(CallableMemberDescriptor callableMemberDescriptor) {
        kotlin.jvm.internal.r.e(callableMemberDescriptor, "<this>");
        return d(callableMemberDescriptor) != null;
    }

    public static final String b(CallableMemberDescriptor callableMemberDescriptor) {
        kotlin.reflect.jvm.internal.impl.name.f fVarI;
        kotlin.jvm.internal.r.e(callableMemberDescriptor, "callableMemberDescriptor");
        CallableMemberDescriptor callableMemberDescriptorC = c(callableMemberDescriptor);
        CallableMemberDescriptor callableMemberDescriptorO = callableMemberDescriptorC == null ? null : DescriptorUtilsKt.o(callableMemberDescriptorC);
        if (callableMemberDescriptorO == null) {
            return null;
        }
        if (callableMemberDescriptorO instanceof j0) {
            return ClassicBuiltinSpecialProperties.f15006a.a(callableMemberDescriptorO);
        }
        if (!(callableMemberDescriptorO instanceof n0) || (fVarI = BuiltinMethodsWithDifferentJvmName.m.i((n0) callableMemberDescriptorO)) == null) {
            return null;
        }
        return fVarI.b();
    }

    private static final CallableMemberDescriptor c(CallableMemberDescriptor callableMemberDescriptor) {
        if (kotlin.reflect.jvm.internal.impl.builtins.g.e0(callableMemberDescriptor)) {
            return d(callableMemberDescriptor);
        }
        return null;
    }

    public static final <T extends CallableMemberDescriptor> T d(T t) {
        kotlin.jvm.internal.r.e(t, "<this>");
        if (!SpecialGenericSignatures.f15015a.g().contains(t.getName()) && !c.f15028a.d().contains(DescriptorUtilsKt.o(t).getName())) {
            return null;
        }
        if (t instanceof j0 ? true : t instanceof i0) {
            return (T) DescriptorUtilsKt.d(t, false, new Function1<CallableMemberDescriptor, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers$getOverriddenBuiltinWithDifferentJvmName$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(CallableMemberDescriptor it) {
                    kotlin.jvm.internal.r.e(it, "it");
                    return Boolean.valueOf(ClassicBuiltinSpecialProperties.f15006a.b(DescriptorUtilsKt.o(it)));
                }
            }, 1, null);
        }
        if (t instanceof n0) {
            return (T) DescriptorUtilsKt.d(t, false, new Function1<CallableMemberDescriptor, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers$getOverriddenBuiltinWithDifferentJvmName$2
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(CallableMemberDescriptor it) {
                    kotlin.jvm.internal.r.e(it, "it");
                    return Boolean.valueOf(BuiltinMethodsWithDifferentJvmName.m.j((n0) it));
                }
            }, 1, null);
        }
        return null;
    }

    public static final <T extends CallableMemberDescriptor> T e(T t) {
        kotlin.jvm.internal.r.e(t, "<this>");
        T t2 = (T) d(t);
        if (t2 != null) {
            return t2;
        }
        BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature = BuiltinMethodsWithSpecialGenericSignature.m;
        kotlin.reflect.jvm.internal.impl.name.f name = t.getName();
        kotlin.jvm.internal.r.d(name, "name");
        if (builtinMethodsWithSpecialGenericSignature.l(name)) {
            return (T) DescriptorUtilsKt.d(t, false, new Function1<CallableMemberDescriptor, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(CallableMemberDescriptor it) {
                    kotlin.jvm.internal.r.e(it, "it");
                    return Boolean.valueOf(kotlin.reflect.jvm.internal.impl.builtins.g.e0(it) && BuiltinMethodsWithSpecialGenericSignature.m(it) != null);
                }
            }, 1, null);
        }
        return null;
    }

    public static final boolean f(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.a specialCallableDescriptor) {
        kotlin.jvm.internal.r.e(dVar, "<this>");
        kotlin.jvm.internal.r.e(specialCallableDescriptor, "specialCallableDescriptor");
        f0 f0VarN = ((kotlin.reflect.jvm.internal.impl.descriptors.d) specialCallableDescriptor.b()).n();
        kotlin.jvm.internal.r.d(f0VarN, "specialCallableDescripto…ssDescriptor).defaultType");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarS = kotlin.reflect.jvm.internal.impl.resolve.c.s(dVar);
        while (true) {
            if (dVarS == null) {
                return false;
            }
            if (!(dVarS instanceof kotlin.reflect.jvm.internal.impl.load.java.descriptors.c)) {
                if (kotlin.reflect.jvm.internal.impl.types.checker.t.b(dVarS.n(), f0VarN) != null) {
                    return !kotlin.reflect.jvm.internal.impl.builtins.g.e0(dVarS);
                }
            }
            dVarS = kotlin.reflect.jvm.internal.impl.resolve.c.s(dVarS);
        }
    }

    public static final boolean g(CallableMemberDescriptor callableMemberDescriptor) {
        kotlin.jvm.internal.r.e(callableMemberDescriptor, "<this>");
        return DescriptorUtilsKt.o(callableMemberDescriptor).b() instanceof kotlin.reflect.jvm.internal.impl.load.java.descriptors.c;
    }

    public static final boolean h(CallableMemberDescriptor callableMemberDescriptor) {
        kotlin.jvm.internal.r.e(callableMemberDescriptor, "<this>");
        return g(callableMemberDescriptor) || kotlin.reflect.jvm.internal.impl.builtins.g.e0(callableMemberDescriptor);
    }
}
