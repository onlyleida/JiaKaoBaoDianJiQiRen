package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class c {
    public static final boolean a(b bVar, kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
        r.e(bVar, "<this>");
        r.e(classDescriptor, "classDescriptor");
        if (kotlin.reflect.jvm.internal.impl.resolve.c.x(classDescriptor)) {
            Set<kotlin.reflect.jvm.internal.impl.name.b> setB = bVar.b();
            kotlin.reflect.jvm.internal.impl.name.b bVarH = DescriptorUtilsKt.h(classDescriptor);
            if (CollectionsKt___CollectionsKt.S(setB, bVarH == null ? null : bVarH.g())) {
                return true;
            }
        }
        return false;
    }
}
