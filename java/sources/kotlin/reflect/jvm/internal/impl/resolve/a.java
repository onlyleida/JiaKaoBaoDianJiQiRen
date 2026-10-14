package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.s0;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15489a = new a();

    private a() {
    }

    private static final void b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, LinkedHashSet<kotlin.reflect.jvm.internal.impl.descriptors.d> linkedHashSet, MemberScope memberScope, boolean z) {
        for (kotlin.reflect.jvm.internal.impl.descriptors.k kVar : kotlin.reflect.jvm.internal.impl.resolve.scopes.h.a.a(memberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.d.q, null, 2, null)) {
            if (kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                kotlin.reflect.jvm.internal.impl.descriptors.d dVarR = (kotlin.reflect.jvm.internal.impl.descriptors.d) kVar;
                if (dVarR.i0()) {
                    kotlin.reflect.jvm.internal.impl.name.f name = dVarR.getName();
                    r.d(name, "descriptor.name");
                    kotlin.reflect.jvm.internal.impl.descriptors.f fVarF = memberScope.f(name, NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS);
                    dVarR = fVarF instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarF : fVarF instanceof s0 ? ((s0) fVarF).r() : null;
                }
                if (dVarR != null) {
                    if (c.z(dVarR, dVar)) {
                        linkedHashSet.add(dVarR);
                    }
                    if (z) {
                        MemberScope memberScopeS = dVarR.S();
                        r.d(memberScopeS, "refinedDescriptor.unsubstitutedInnerClassesScope");
                        b(dVar, linkedHashSet, memberScopeS, z);
                    }
                }
            }
        }
    }

    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> a(kotlin.reflect.jvm.internal.impl.descriptors.d sealedClass, boolean z) {
        kotlin.reflect.jvm.internal.impl.descriptors.k next;
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarB;
        r.e(sealedClass, "sealedClass");
        if (sealedClass.q() != Modality.SEALED) {
            return u.j();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (z) {
            Iterator<kotlin.reflect.jvm.internal.impl.descriptors.k> it = DescriptorUtilsKt.m(sealedClass).iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(next instanceof b0));
            kVarB = next;
        } else {
            kVarB = sealedClass.b();
        }
        if (kVarB instanceof b0) {
            b(sealedClass, linkedHashSet, ((b0) kVarB).m(), z);
        }
        MemberScope memberScopeS = sealedClass.S();
        r.d(memberScopeS, "sealedClass.unsubstitutedInnerClassesScope");
        b(sealedClass, linkedHashSet, memberScopeS, true);
        return linkedHashSet;
    }
}
