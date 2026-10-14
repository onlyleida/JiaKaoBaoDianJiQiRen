package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class TypeParameterUtilsKt {
    public static final h0 a(kotlin.reflect.jvm.internal.impl.types.a0 a0Var) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        f fVarU = a0Var.I0().u();
        return b(a0Var, fVarU instanceof g ? (g) fVarU : null, 0);
    }

    private static final h0 b(kotlin.reflect.jvm.internal.impl.types.a0 a0Var, g gVar, int i) {
        if (gVar == null || kotlin.reflect.jvm.internal.impl.types.t.r(gVar)) {
            return null;
        }
        int size = gVar.p().size() + i;
        if (gVar.z()) {
            List<kotlin.reflect.jvm.internal.impl.types.s0> listSubList = a0Var.H0().subList(i, size);
            k kVarB = gVar.b();
            return new h0(gVar, listSubList, b(a0Var, kVarB instanceof g ? (g) kVarB : null, size));
        }
        if (size != a0Var.H0().size()) {
            kotlin.reflect.jvm.internal.impl.resolve.c.E(gVar);
        }
        return new h0(gVar, a0Var.H0().subList(i, a0Var.H0().size()), null);
    }

    private static final b c(t0 t0Var, k kVar, int i) {
        return new b(t0Var, kVar, i);
    }

    public static final List<t0> d(g gVar) {
        List<t0> listJ;
        k next;
        kotlin.reflect.jvm.internal.impl.types.q0 q0VarI;
        kotlin.jvm.internal.r.e(gVar, "<this>");
        List<t0> declaredTypeParameters = gVar.p();
        kotlin.jvm.internal.r.d(declaredTypeParameters, "declaredTypeParameters");
        if (!gVar.z() && !(gVar.b() instanceof a)) {
            return declaredTypeParameters;
        }
        List listA = SequencesKt___SequencesKt.A(SequencesKt___SequencesKt.s(SequencesKt___SequencesKt.o(SequencesKt___SequencesKt.y(DescriptorUtilsKt.m(gVar), new Function1<k, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(k it) {
                kotlin.jvm.internal.r.e(it, "it");
                return Boolean.valueOf(it instanceof a);
            }
        }), new Function1<k, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$2
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(k it) {
                kotlin.jvm.internal.r.e(it, "it");
                return Boolean.valueOf(!(it instanceof j));
            }
        }), new Function1<k, Sequence<? extends t0>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$3
            @Override // kotlin.jvm.functions.Function1
            public final Sequence<t0> invoke(k it) {
                kotlin.jvm.internal.r.e(it, "it");
                List<t0> typeParameters = ((a) it).getTypeParameters();
                kotlin.jvm.internal.r.d(typeParameters, "it as CallableDescriptor).typeParameters");
                return CollectionsKt___CollectionsKt.R(typeParameters);
            }
        }));
        Iterator<k> it = DescriptorUtilsKt.m(gVar).iterator();
        do {
            listJ = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(next instanceof d));
        d dVar = (d) next;
        if (dVar != null && (q0VarI = dVar.i()) != null) {
            listJ = q0VarI.getParameters();
        }
        if (listJ == null) {
            listJ = kotlin.collections.u.j();
        }
        if (listA.isEmpty() && listJ.isEmpty()) {
            List<t0> declaredTypeParameters2 = gVar.p();
            kotlin.jvm.internal.r.d(declaredTypeParameters2, "declaredTypeParameters");
            return declaredTypeParameters2;
        }
        List<t0> listX0 = CollectionsKt___CollectionsKt.x0(listA, listJ);
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listX0, 10));
        for (t0 it2 : listX0) {
            kotlin.jvm.internal.r.d(it2, "it");
            arrayList.add(c(it2, gVar, declaredTypeParameters.size()));
        }
        return CollectionsKt___CollectionsKt.x0(declaredTypeParameters, arrayList);
    }
}
