package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Map;
import java.util.Objects;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class BuiltinMethodsWithDifferentJvmName extends SpecialGenericSignatures {
    public static final BuiltinMethodsWithDifferentJvmName m = new BuiltinMethodsWithDifferentJvmName();

    private BuiltinMethodsWithDifferentJvmName() {
    }

    public final kotlin.reflect.jvm.internal.impl.name.f i(n0 functionDescriptor) {
        kotlin.jvm.internal.r.e(functionDescriptor, "functionDescriptor");
        Map<String, kotlin.reflect.jvm.internal.impl.name.f> mapJ = SpecialGenericSignatures.f15015a.j();
        String strD = kotlin.reflect.jvm.internal.impl.load.kotlin.r.d(functionDescriptor);
        if (strD == null) {
            return null;
        }
        return mapJ.get(strD);
    }

    public final boolean j(final n0 functionDescriptor) {
        kotlin.jvm.internal.r.e(functionDescriptor, "functionDescriptor");
        return kotlin.reflect.jvm.internal.impl.builtins.g.e0(functionDescriptor) && DescriptorUtilsKt.d(functionDescriptor, false, new Function1<CallableMemberDescriptor, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithDifferentJvmName$isBuiltinFunctionWithDifferentNameInJvm$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(CallableMemberDescriptor it) {
                kotlin.jvm.internal.r.e(it, "it");
                Map<String, kotlin.reflect.jvm.internal.impl.name.f> mapJ = SpecialGenericSignatures.f15015a.j();
                String strD = kotlin.reflect.jvm.internal.impl.load.kotlin.r.d(functionDescriptor);
                Objects.requireNonNull(mapJ, "null cannot be cast to non-null type kotlin.collections.Map<K, *>");
                return Boolean.valueOf(mapJ.containsKey(strD));
            }
        }, 1, null) != null;
    }

    public final boolean k(n0 n0Var) {
        kotlin.jvm.internal.r.e(n0Var, "<this>");
        return kotlin.jvm.internal.r.a(n0Var.getName().b(), "removeAt") && kotlin.jvm.internal.r.a(kotlin.reflect.jvm.internal.impl.load.kotlin.r.d(n0Var), SpecialGenericSignatures.f15015a.h().b());
    }
}
