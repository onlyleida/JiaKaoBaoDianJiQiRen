package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class m implements ExternalOverridabilityCondition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15129a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        private final boolean b(kotlin.reflect.jvm.internal.impl.descriptors.u uVar) {
            if (uVar.f().size() != 1) {
                return false;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = uVar.b();
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = kVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) kVarB : null;
            if (dVar == null) {
                return false;
            }
            List<v0> listF = uVar.f();
            kotlin.jvm.internal.r.d(listF, "f.valueParameters");
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = ((v0) kotlin.collections.s.C0(listF)).getType().I0().u();
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar2 = fVarU instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarU : null;
            return dVar2 != null && kotlin.reflect.jvm.internal.impl.builtins.g.p0(dVar) && kotlin.jvm.internal.r.a(DescriptorUtilsKt.i(dVar), DescriptorUtilsKt.i(dVar2));
        }

        private final kotlin.reflect.jvm.internal.impl.load.kotlin.h c(kotlin.reflect.jvm.internal.impl.descriptors.u uVar, v0 v0Var) {
            if (kotlin.reflect.jvm.internal.impl.load.kotlin.r.e(uVar) || b(uVar)) {
                a0 type = v0Var.getType();
                kotlin.jvm.internal.r.d(type, "valueParameterDescriptor.type");
                return kotlin.reflect.jvm.internal.impl.load.kotlin.r.g(TypeUtilsKt.q(type));
            }
            a0 type2 = v0Var.getType();
            kotlin.jvm.internal.r.d(type2, "valueParameterDescriptor.type");
            return kotlin.reflect.jvm.internal.impl.load.kotlin.r.g(type2);
        }

        public final boolean a(kotlin.reflect.jvm.internal.impl.descriptors.a superDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a subDescriptor) {
            kotlin.jvm.internal.r.e(superDescriptor, "superDescriptor");
            kotlin.jvm.internal.r.e(subDescriptor, "subDescriptor");
            if ((subDescriptor instanceof JavaMethodDescriptor) && (superDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.u)) {
                JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) subDescriptor;
                javaMethodDescriptor.f().size();
                kotlin.reflect.jvm.internal.impl.descriptors.u uVar = (kotlin.reflect.jvm.internal.impl.descriptors.u) superDescriptor;
                uVar.f().size();
                List<v0> listF = javaMethodDescriptor.a().f();
                kotlin.jvm.internal.r.d(listF, "subDescriptor.original.valueParameters");
                List<v0> listF2 = uVar.a().f();
                kotlin.jvm.internal.r.d(listF2, "superDescriptor.original.valueParameters");
                for (Pair pair : CollectionsKt___CollectionsKt.T0(listF, listF2)) {
                    v0 subParameter = (v0) pair.component1();
                    v0 superParameter = (v0) pair.component2();
                    kotlin.jvm.internal.r.d(subParameter, "subParameter");
                    boolean z = c((kotlin.reflect.jvm.internal.impl.descriptors.u) subDescriptor, subParameter) instanceof kotlin.reflect.jvm.internal.impl.load.kotlin.h.d;
                    kotlin.jvm.internal.r.d(superParameter, "superParameter");
                    if (z != (c(uVar, superParameter) instanceof kotlin.reflect.jvm.internal.impl.load.kotlin.h.d)) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    private final boolean c(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if ((aVar instanceof CallableMemberDescriptor) && (aVar2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.u) && !kotlin.reflect.jvm.internal.impl.builtins.g.e0(aVar2)) {
            BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature = BuiltinMethodsWithSpecialGenericSignature.m;
            kotlin.reflect.jvm.internal.impl.descriptors.u uVar = (kotlin.reflect.jvm.internal.impl.descriptors.u) aVar2;
            kotlin.reflect.jvm.internal.impl.name.f name = uVar.getName();
            kotlin.jvm.internal.r.d(name, "subDescriptor.name");
            if (!builtinMethodsWithSpecialGenericSignature.l(name)) {
                SpecialGenericSignatures.a aVar3 = SpecialGenericSignatures.f15015a;
                kotlin.reflect.jvm.internal.impl.name.f name2 = uVar.getName();
                kotlin.jvm.internal.r.d(name2, "subDescriptor.name");
                if (!aVar3.k(name2)) {
                    return false;
                }
            }
            CallableMemberDescriptor callableMemberDescriptorE = SpecialBuiltinMembers.e((CallableMemberDescriptor) aVar);
            boolean zY0 = uVar.y0();
            boolean z = aVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.u;
            kotlin.reflect.jvm.internal.impl.descriptors.u uVar2 = z ? (kotlin.reflect.jvm.internal.impl.descriptors.u) aVar : null;
            if ((!(uVar2 != null && zY0 == uVar2.y0())) && (callableMemberDescriptorE == null || !uVar.y0())) {
                return true;
            }
            if ((dVar instanceof kotlin.reflect.jvm.internal.impl.load.java.descriptors.c) && uVar.q0() == null && callableMemberDescriptorE != null && !SpecialBuiltinMembers.f(dVar, callableMemberDescriptorE)) {
                if ((callableMemberDescriptorE instanceof kotlin.reflect.jvm.internal.impl.descriptors.u) && z && BuiltinMethodsWithSpecialGenericSignature.k((kotlin.reflect.jvm.internal.impl.descriptors.u) callableMemberDescriptorE) != null) {
                    String strC = kotlin.reflect.jvm.internal.impl.load.kotlin.r.c(uVar, false, false, 2, null);
                    kotlin.reflect.jvm.internal.impl.descriptors.u uVarA = ((kotlin.reflect.jvm.internal.impl.descriptors.u) aVar).a();
                    kotlin.jvm.internal.r.d(uVarA, "superDescriptor.original");
                    if (kotlin.jvm.internal.r.a(strC, kotlin.reflect.jvm.internal.impl.load.kotlin.r.c(uVarA, false, false, 2, null))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public ExternalOverridabilityCondition.Contract a() {
        return ExternalOverridabilityCondition.Contract.CONFLICTS_ONLY;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public ExternalOverridabilityCondition.Result b(kotlin.reflect.jvm.internal.impl.descriptors.a superDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a subDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        kotlin.jvm.internal.r.e(superDescriptor, "superDescriptor");
        kotlin.jvm.internal.r.e(subDescriptor, "subDescriptor");
        if (c(superDescriptor, subDescriptor, dVar)) {
            return ExternalOverridabilityCondition.Result.INCOMPATIBLE;
        }
        return f15129a.a(superDescriptor, subDescriptor) ? ExternalOverridabilityCondition.Result.INCOMPATIBLE : ExternalOverridabilityCondition.Result.UNKNOWN;
    }
}
