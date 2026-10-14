package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class BuiltinMethodsWithSpecialGenericSignature extends SpecialGenericSignatures {
    public static final BuiltinMethodsWithSpecialGenericSignature m = new BuiltinMethodsWithSpecialGenericSignature();

    private BuiltinMethodsWithSpecialGenericSignature() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean j(CallableMemberDescriptor callableMemberDescriptor) {
        return CollectionsKt___CollectionsKt.S(SpecialGenericSignatures.f15015a.e(), kotlin.reflect.jvm.internal.impl.load.kotlin.r.d(callableMemberDescriptor));
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.u k(kotlin.reflect.jvm.internal.impl.descriptors.u functionDescriptor) {
        kotlin.jvm.internal.r.e(functionDescriptor, "functionDescriptor");
        BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature = m;
        kotlin.reflect.jvm.internal.impl.name.f name = functionDescriptor.getName();
        kotlin.jvm.internal.r.d(name, "functionDescriptor.name");
        if (builtinMethodsWithSpecialGenericSignature.l(name)) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.u) DescriptorUtilsKt.d(functionDescriptor, false, new Function1<CallableMemberDescriptor, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature$getOverriddenBuiltinFunctionWithErasedValueParametersInJava$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(CallableMemberDescriptor it) {
                    kotlin.jvm.internal.r.e(it, "it");
                    return Boolean.valueOf(BuiltinMethodsWithSpecialGenericSignature.m.j(it));
                }
            }, 1, null);
        }
        return null;
    }

    public static final SpecialGenericSignatures.SpecialSignatureInfo m(CallableMemberDescriptor callableMemberDescriptor) {
        kotlin.jvm.internal.r.e(callableMemberDescriptor, "<this>");
        SpecialGenericSignatures.a aVar = SpecialGenericSignatures.f15015a;
        if (!aVar.d().contains(callableMemberDescriptor.getName())) {
            return null;
        }
        CallableMemberDescriptor callableMemberDescriptorD = DescriptorUtilsKt.d(callableMemberDescriptor, false, new Function1<CallableMemberDescriptor, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature$getSpecialSignatureInfo$builtinSignature$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(CallableMemberDescriptor it) {
                kotlin.jvm.internal.r.e(it, "it");
                return Boolean.valueOf((it instanceof kotlin.reflect.jvm.internal.impl.descriptors.u) && BuiltinMethodsWithSpecialGenericSignature.m.j(it));
            }
        }, 1, null);
        String strD = callableMemberDescriptorD == null ? null : kotlin.reflect.jvm.internal.impl.load.kotlin.r.d(callableMemberDescriptorD);
        if (strD == null) {
            return null;
        }
        return aVar.l(strD);
    }

    public final boolean l(kotlin.reflect.jvm.internal.impl.name.f fVar) {
        kotlin.jvm.internal.r.e(fVar, "<this>");
        return SpecialGenericSignatures.f15015a.d().contains(fVar);
    }
}
