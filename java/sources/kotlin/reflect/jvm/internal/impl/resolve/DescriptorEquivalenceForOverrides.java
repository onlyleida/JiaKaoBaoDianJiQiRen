package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import kotlin.collections.s;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.types.q0;

/* JADX INFO: loaded from: classes6.dex */
public final class DescriptorEquivalenceForOverrides {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DescriptorEquivalenceForOverrides f15479a = new DescriptorEquivalenceForOverrides();

    private DescriptorEquivalenceForOverrides() {
    }

    public static /* synthetic */ boolean b(DescriptorEquivalenceForOverrides descriptorEquivalenceForOverrides, kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, boolean z, boolean z2, boolean z3, kotlin.reflect.jvm.internal.impl.types.checker.g gVar, int i, Object obj) {
        return descriptorEquivalenceForOverrides.a(aVar, aVar2, z, (i & 8) != 0 ? true : z2, (i & 16) != 0 ? false : z3, gVar);
    }

    private final boolean c(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar2) {
        return r.a(dVar.i(), dVar2.i());
    }

    public static /* synthetic */ boolean e(DescriptorEquivalenceForOverrides descriptorEquivalenceForOverrides, kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar2, boolean z, boolean z2, int i, Object obj) {
        if ((i & 8) != 0) {
            z2 = true;
        }
        return descriptorEquivalenceForOverrides.d(kVar, kVar2, z, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean h(DescriptorEquivalenceForOverrides descriptorEquivalenceForOverrides, t0 t0Var, t0 t0Var2, boolean z, Function2 function2, int i, Object obj) {
        if ((i & 8) != 0) {
            function2 = new Function2<kotlin.reflect.jvm.internal.impl.descriptors.k, kotlin.reflect.jvm.internal.impl.descriptors.k, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.DescriptorEquivalenceForOverrides$areTypeParametersEquivalent$1
                @Override // kotlin.jvm.functions.Function2
                public final Boolean invoke(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar2) {
                    return Boolean.FALSE;
                }
            };
        }
        return descriptorEquivalenceForOverrides.g(t0Var, t0Var2, z, function2);
    }

    private final boolean i(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar2, Function2<? super kotlin.reflect.jvm.internal.impl.descriptors.k, ? super kotlin.reflect.jvm.internal.impl.descriptors.k, Boolean> function2, boolean z) {
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = kVar.b();
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarB2 = kVar2.b();
        return ((kVarB instanceof CallableMemberDescriptor) || (kVarB2 instanceof CallableMemberDescriptor)) ? function2.invoke(kVarB, kVarB2).booleanValue() : e(this, kVarB, kVarB2, z, false, 8, null);
    }

    private final o0 j(kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        while (aVar instanceof CallableMemberDescriptor) {
            CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) aVar;
            if (callableMemberDescriptor.g() != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
                break;
            }
            Collection<? extends CallableMemberDescriptor> overriddenDescriptors = callableMemberDescriptor.d();
            r.d(overriddenDescriptors, "overriddenDescriptors");
            aVar = (CallableMemberDescriptor) s.D0(overriddenDescriptors);
            if (aVar == null) {
                return null;
            }
        }
        return aVar.o();
    }

    public final boolean a(final kotlin.reflect.jvm.internal.impl.descriptors.a a2, final kotlin.reflect.jvm.internal.impl.descriptors.a b, final boolean z, boolean z2, boolean z3, kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        r.e(a2, "a");
        r.e(b, "b");
        r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        if (r.a(a2, b)) {
            return true;
        }
        if (!r.a(a2.getName(), b.getName())) {
            return false;
        }
        if (z2 && (a2 instanceof w) && (b instanceof w) && ((w) a2).i0() != ((w) b).i0()) {
            return false;
        }
        if ((r.a(a2.b(), b.b()) && (!z || !r.a(j(a2), j(b)))) || c.E(a2) || c.E(b) || !i(a2, b, new Function2<kotlin.reflect.jvm.internal.impl.descriptors.k, kotlin.reflect.jvm.internal.impl.descriptors.k, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.DescriptorEquivalenceForOverrides$areCallableDescriptorsEquivalent$1
            @Override // kotlin.jvm.functions.Function2
            public final Boolean invoke(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar2) {
                return Boolean.FALSE;
            }
        }, z)) {
            return false;
        }
        OverridingUtil overridingUtilI = OverridingUtil.i(kotlinTypeRefiner, new kotlin.reflect.jvm.internal.impl.types.checker.f.a() { // from class: kotlin.reflect.jvm.internal.impl.resolve.DescriptorEquivalenceForOverrides$areCallableDescriptorsEquivalent$overridingUtil$1
            @Override // kotlin.reflect.jvm.internal.impl.types.checker.f.a
            public final boolean a(q0 c1, q0 c2) {
                r.e(c1, "c1");
                r.e(c2, "c2");
                if (r.a(c1, c2)) {
                    return true;
                }
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = c1.u();
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarU2 = c2.u();
                if (!(fVarU instanceof t0) || !(fVarU2 instanceof t0)) {
                    return false;
                }
                boolean z4 = z;
                final kotlin.reflect.jvm.internal.impl.descriptors.a aVar = a2;
                final kotlin.reflect.jvm.internal.impl.descriptors.a aVar2 = b;
                return DescriptorEquivalenceForOverrides.f15479a.g((t0) fVarU, (t0) fVarU2, z4, new Function2<kotlin.reflect.jvm.internal.impl.descriptors.k, kotlin.reflect.jvm.internal.impl.descriptors.k, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.DescriptorEquivalenceForOverrides$areCallableDescriptorsEquivalent$overridingUtil$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Boolean invoke(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar2) {
                        return Boolean.valueOf(r.a(kVar, aVar) && r.a(kVar2, aVar2));
                    }
                });
            }
        });
        r.d(overridingUtilI, "a: CallableDescriptor,\n …= a && y == b }\n        }");
        OverridingUtil.OverrideCompatibilityInfo.Result resultC = overridingUtilI.F(a2, b, null, !z3).c();
        OverridingUtil.OverrideCompatibilityInfo.Result result = OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE;
        return resultC == result && overridingUtilI.F(b, a2, null, z3 ^ true).c() == result;
    }

    public final boolean d(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar2, boolean z, boolean z2) {
        if ((kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) && (kVar2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            return c((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar, (kotlin.reflect.jvm.internal.impl.descriptors.d) kVar2);
        }
        if ((kVar instanceof t0) && (kVar2 instanceof t0)) {
            return h(this, (t0) kVar, (t0) kVar2, z, null, 8, null);
        }
        if ((kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.a) && (kVar2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.a)) {
            return b(this, (kotlin.reflect.jvm.internal.impl.descriptors.a) kVar, (kotlin.reflect.jvm.internal.impl.descriptors.a) kVar2, z, z2, false, kotlin.reflect.jvm.internal.impl.types.checker.g.a.f15665a, 16, null);
        }
        return ((kVar instanceof b0) && (kVar2 instanceof b0)) ? r.a(((b0) kVar).e(), ((b0) kVar2).e()) : r.a(kVar, kVar2);
    }

    public final boolean f(t0 a2, t0 b, boolean z) {
        r.e(a2, "a");
        r.e(b, "b");
        return h(this, a2, b, z, null, 8, null);
    }

    public final boolean g(t0 a2, t0 b, boolean z, Function2<? super kotlin.reflect.jvm.internal.impl.descriptors.k, ? super kotlin.reflect.jvm.internal.impl.descriptors.k, Boolean> equivalentCallables) {
        r.e(a2, "a");
        r.e(b, "b");
        r.e(equivalentCallables, "equivalentCallables");
        if (r.a(a2, b)) {
            return true;
        }
        return !r.a(a2.b(), b.b()) && i(a2, b, equivalentCallables, z) && a2.h() == b.h();
    }
}
