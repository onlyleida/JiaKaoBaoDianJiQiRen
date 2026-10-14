package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Collection;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class ClassicBuiltinSpecialProperties {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ClassicBuiltinSpecialProperties f15006a = new ClassicBuiltinSpecialProperties();

    private ClassicBuiltinSpecialProperties() {
    }

    private final boolean c(CallableMemberDescriptor callableMemberDescriptor) {
        if (CollectionsKt___CollectionsKt.S(c.f15028a.c(), DescriptorUtilsKt.e(callableMemberDescriptor)) && callableMemberDescriptor.f().isEmpty()) {
            return true;
        }
        if (!kotlin.reflect.jvm.internal.impl.builtins.g.e0(callableMemberDescriptor)) {
            return false;
        }
        Collection<? extends CallableMemberDescriptor> overriddenDescriptors = callableMemberDescriptor.d();
        kotlin.jvm.internal.r.d(overriddenDescriptors, "overriddenDescriptors");
        if (!overriddenDescriptors.isEmpty()) {
            for (CallableMemberDescriptor it : overriddenDescriptors) {
                ClassicBuiltinSpecialProperties classicBuiltinSpecialProperties = f15006a;
                kotlin.jvm.internal.r.d(it, "it");
                if (classicBuiltinSpecialProperties.b(it)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String a(CallableMemberDescriptor callableMemberDescriptor) {
        kotlin.reflect.jvm.internal.impl.name.f fVar;
        kotlin.jvm.internal.r.e(callableMemberDescriptor, "<this>");
        kotlin.reflect.jvm.internal.impl.builtins.g.e0(callableMemberDescriptor);
        CallableMemberDescriptor callableMemberDescriptorD = DescriptorUtilsKt.d(DescriptorUtilsKt.o(callableMemberDescriptor), false, new Function1<CallableMemberDescriptor, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.ClassicBuiltinSpecialProperties$getBuiltinSpecialPropertyGetterName$descriptor$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(CallableMemberDescriptor it) {
                kotlin.jvm.internal.r.e(it, "it");
                return Boolean.valueOf(ClassicBuiltinSpecialProperties.f15006a.b(it));
            }
        }, 1, null);
        if (callableMemberDescriptorD == null || (fVar = c.f15028a.a().get(DescriptorUtilsKt.i(callableMemberDescriptorD))) == null) {
            return null;
        }
        return fVar.b();
    }

    public final boolean b(CallableMemberDescriptor callableMemberDescriptor) {
        kotlin.jvm.internal.r.e(callableMemberDescriptor, "callableMemberDescriptor");
        if (c.f15028a.d().contains(callableMemberDescriptor.getName())) {
            return c(callableMemberDescriptor);
        }
        return false;
    }
}
