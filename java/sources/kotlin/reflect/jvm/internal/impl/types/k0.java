package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class k0 {

    public static final class a extends r0 {
        final /* synthetic */ List<q0> c;

        /* JADX WARN: Multi-variable type inference failed */
        a(List<? extends q0> list) {
            this.c = list;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.r0
        public s0 k(q0 key) {
            kotlin.jvm.internal.r.e(key, "key");
            if (!this.c.contains(key)) {
                return null;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = key.u();
            Objects.requireNonNull(fVarU, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor");
            return y0.t((kotlin.reflect.jvm.internal.impl.descriptors.t0) fVarU);
        }
    }

    private static final a0 a(List<? extends q0> list, List<? extends a0> list2, kotlin.reflect.jvm.internal.impl.builtins.g gVar) {
        a0 a0VarP = TypeSubstitutor.g(new a(list)).p((a0) kotlin.collections.s.c0(list2), Variance.OUT_VARIANCE);
        if (a0VarP == null) {
            a0VarP = gVar.y();
        }
        kotlin.jvm.internal.r.d(a0VarP, "typeParameters: List<Typ… ?: builtIns.defaultBound");
        return a0VarP;
    }

    public static final a0 b(kotlin.reflect.jvm.internal.impl.descriptors.t0 t0Var) {
        kotlin.jvm.internal.r.e(t0Var, "<this>");
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = t0Var.b();
        kotlin.jvm.internal.r.d(kVarB, "this.containingDeclaration");
        if (kVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.g) {
            List<kotlin.reflect.jvm.internal.impl.descriptors.t0> parameters = ((kotlin.reflect.jvm.internal.impl.descriptors.g) kVarB).i().getParameters();
            kotlin.jvm.internal.r.d(parameters, "descriptor.typeConstructor.parameters");
            ArrayList arrayList = new ArrayList(kotlin.collections.v.u(parameters, 10));
            Iterator<T> it = parameters.iterator();
            while (it.hasNext()) {
                q0 q0VarI = ((kotlin.reflect.jvm.internal.impl.descriptors.t0) it.next()).i();
                kotlin.jvm.internal.r.d(q0VarI, "it.typeConstructor");
                arrayList.add(q0VarI);
            }
            List<a0> upperBounds = t0Var.getUpperBounds();
            kotlin.jvm.internal.r.d(upperBounds, "upperBounds");
            return a(arrayList, upperBounds, DescriptorUtilsKt.g(t0Var));
        }
        if (!(kVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.u)) {
            throw new IllegalArgumentException("Unsupported descriptor type to build star projection type based on type parameters of it");
        }
        List<kotlin.reflect.jvm.internal.impl.descriptors.t0> typeParameters = ((kotlin.reflect.jvm.internal.impl.descriptors.u) kVarB).getTypeParameters();
        kotlin.jvm.internal.r.d(typeParameters, "descriptor.typeParameters");
        ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(typeParameters, 10));
        Iterator<T> it2 = typeParameters.iterator();
        while (it2.hasNext()) {
            q0 q0VarI2 = ((kotlin.reflect.jvm.internal.impl.descriptors.t0) it2.next()).i();
            kotlin.jvm.internal.r.d(q0VarI2, "it.typeConstructor");
            arrayList2.add(q0VarI2);
        }
        List<a0> upperBounds2 = t0Var.getUpperBounds();
        kotlin.jvm.internal.r.d(upperBounds2, "upperBounds");
        return a(arrayList2, upperBounds2, DescriptorUtilsKt.g(t0Var));
    }
}
