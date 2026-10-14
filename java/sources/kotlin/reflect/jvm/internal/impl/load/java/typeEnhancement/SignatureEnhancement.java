package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState;
import kotlin.reflect.jvm.internal.impl.load.java.ReportLevel;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.p;
import kotlin.reflect.jvm.internal.impl.load.java.s;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.load.kotlin.q;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.a1;
import kotlin.reflect.jvm.internal.impl.types.b0;
import kotlin.reflect.jvm.internal.impl.types.c1;
import kotlin.reflect.jvm.internal.impl.types.e0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.x;
import kotlin.reflect.jvm.internal.impl.types.y;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class SignatureEnhancement {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AnnotationTypeQualifierResolver f15153a;
    private final JavaTypeEnhancementState b;
    private final d c;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a0 f15160a;
        private final boolean b;
        private final boolean c;

        public a(a0 type, boolean z, boolean z2) {
            r.e(type, "type");
            this.f15160a = type;
            this.b = z;
            this.c = z2;
        }

        public final boolean a() {
            return this.c;
        }

        public final a0 b() {
            return this.f15160a;
        }

        public final boolean c() {
            return this.b;
        }
    }

    public SignatureEnhancement(AnnotationTypeQualifierResolver annotationTypeQualifierResolver, JavaTypeEnhancementState javaTypeEnhancementState, d typeEnhancement) {
        r.e(annotationTypeQualifierResolver, "annotationTypeQualifierResolver");
        r.e(javaTypeEnhancementState, "javaTypeEnhancementState");
        r.e(typeEnhancement, "typeEnhancement");
        this.f15153a = annotationTypeQualifierResolver;
        this.b = javaTypeEnhancementState;
        this.c = typeEnhancement;
    }

    private final g c(kotlin.reflect.jvm.internal.impl.name.c cVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar2, boolean z) {
        ReportLevel reportLevelInvoke = this.b.c().invoke(cVar);
        if (reportLevelInvoke.isIgnore()) {
            return null;
        }
        boolean z2 = reportLevelInvoke.isWarning() || z;
        if (s.l().contains(cVar)) {
            return new g(NullabilityQualifier.NULLABLE, z2);
        }
        if (s.k().contains(cVar)) {
            return new g(NullabilityQualifier.NOT_NULL, z2);
        }
        if (r.a(cVar, s.g())) {
            return new g(NullabilityQualifier.NULLABLE, z2);
        }
        if (r.a(cVar, s.h())) {
            return new g(NullabilityQualifier.FORCE_FLEXIBILITY, z2);
        }
        if (r.a(cVar, s.f())) {
            return j(cVar2, z2);
        }
        if (r.a(cVar, s.d())) {
            return new g(NullabilityQualifier.NULLABLE, z2);
        }
        if (r.a(cVar, s.c())) {
            return new g(NullabilityQualifier.NOT_NULL, z2);
        }
        if (r.a(cVar, s.a())) {
            return new g(NullabilityQualifier.NOT_NULL, z2);
        }
        if (r.a(cVar, s.b())) {
            return new g(NullabilityQualifier.NULLABLE, z2);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0055  */
    /* JADX WARN: Code duplicated, block: B:95:0x017c  */
    private final <D extends CallableMemberDescriptor> D d(D d2, kotlin.reflect.jvm.internal.impl.load.java.lazy.e eVar) {
        D d3;
        a aVarH;
        String strA;
        boolean z;
        boolean z2;
        List<n> listA;
        if (!(d2 instanceof kotlin.reflect.jvm.internal.impl.load.java.descriptors.a)) {
            return d2;
        }
        kotlin.reflect.jvm.internal.impl.load.java.descriptors.a aVar = (kotlin.reflect.jvm.internal.impl.load.java.descriptors.a) d2;
        boolean z3 = true;
        if (aVar.g() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE && aVar.a().d().size() == 1) {
            return d2;
        }
        kotlin.reflect.jvm.internal.impl.load.java.lazy.e eVarH = ContextKt.h(eVar, k(d2, eVar));
        if (d2 instanceof kotlin.reflect.jvm.internal.impl.load.java.descriptors.e) {
            kotlin.reflect.jvm.internal.impl.load.java.descriptors.e eVar2 = (kotlin.reflect.jvm.internal.impl.load.java.descriptors.e) d2;
            kotlin.reflect.jvm.internal.impl.descriptors.impl.a0 a0VarM0 = eVar2.getGetter();
            if ((a0VarM0 == null || a0VarM0.E()) ? false : true) {
                kotlin.reflect.jvm.internal.impl.descriptors.impl.a0 a0VarM1 = eVar2.getGetter();
                r.c(a0VarM1);
                r.d(a0VarM1, "getter!!");
                d3 = a0VarM1;
            } else {
                d3 = d2;
            }
        } else {
            d3 = d2;
        }
        if (aVar.O() != null) {
            u uVar = (u) (!(d3 instanceof u) ? null : d3);
            aVarH = SignatureParts.h(m(d2, uVar == null ? null : (v0) uVar.s0(JavaMethodDescriptor.F), eVarH, new Function1<CallableMemberDescriptor, a0>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$enhanceSignature$receiverTypeEnhancement$1
                @Override // kotlin.jvm.functions.Function1
                public final a0 invoke(CallableMemberDescriptor it) {
                    r.e(it, "it");
                    m0 m0VarO = it.O();
                    r.c(m0VarO);
                    a0 type = m0VarO.getType();
                    r.d(type, "it.extensionReceiverParameter!!.type");
                    return type;
                }
            }), null, 1, null);
        } else {
            aVarH = null;
        }
        JavaMethodDescriptor javaMethodDescriptor = d2 instanceof JavaMethodDescriptor ? (JavaMethodDescriptor) d2 : null;
        h hVar = (javaMethodDescriptor == null || (strA = q.a(SignatureBuildingComponents.f15194a, (kotlin.reflect.jvm.internal.impl.descriptors.d) javaMethodDescriptor.b(), kotlin.reflect.jvm.internal.impl.load.kotlin.r.c(javaMethodDescriptor, false, false, 3, null))) == null) ? null : PredefinedEnhancementInfoKt.d().get(strA);
        if (hVar != null) {
            hVar.a().size();
            aVar.f().size();
        }
        List<v0> listF = d3.f();
        r.d(listF, "annotationOwnerForMember.valueParameters");
        ArrayList arrayList = new ArrayList(v.u(listF, 10));
        for (final v0 v0Var : listF) {
            arrayList.add(m(d2, v0Var, eVarH, new Function1<CallableMemberDescriptor, a0>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$enhanceSignature$valueParameterEnhancements$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final a0 invoke(CallableMemberDescriptor it) {
                    r.e(it, "it");
                    a0 type = it.f().get(v0Var.h()).getType();
                    r.d(type, "it.valueParameters[p.index].type");
                    return type;
                }
            }).f((hVar == null || (listA = hVar.a()) == null) ? null : (n) kotlin.collections.s.f0(listA, v0Var.h())));
        }
        j0 j0Var = (j0) (!(d2 instanceof j0) ? null : d2);
        a aVarF = l(d2, d3, true, eVarH, j0Var != null && kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b.a(j0Var) ? AnnotationQualifierApplicabilityType.FIELD : AnnotationQualifierApplicabilityType.METHOD_RETURN_TYPE, new Function1<CallableMemberDescriptor, a0>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$enhanceSignature$returnTypeEnhancement$1
            @Override // kotlin.jvm.functions.Function1
            public final a0 invoke(CallableMemberDescriptor it) {
                r.e(it, "it");
                a0 returnType = it.getReturnType();
                r.c(returnType);
                r.d(returnType, "it.returnType!!");
                return returnType;
            }
        }).f(hVar == null ? null : hVar.b());
        if ((aVarH != null && aVarH.a()) || aVarF.a()) {
            z = true;
        } else {
            if (arrayList.isEmpty()) {
                z2 = false;
                break;
            }
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z2 = false;
                    break;
                }
                if (((a) it.next()).a()) {
                    z2 = true;
                    break;
                }
            }
            if (z2) {
                z = true;
            } else {
                z = false;
            }
        }
        if (!(aVarH != null && aVarH.c()) && !aVarF.c()) {
            if (arrayList.isEmpty()) {
                z3 = false;
                break;
            }
            Iterator it2 = arrayList.iterator();
            do {
                if (!it2.hasNext()) {
                    z3 = false;
                    break;
                }
            } while (!((a) it2.next()).c());
            if (!z3 && !z) {
                return d2;
            }
        }
        Pair<kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, ?> pairA = z ? kotlin.l.a(kotlin.reflect.jvm.internal.impl.resolve.m.a.a(), new kotlin.reflect.jvm.internal.impl.load.java.e(d2)) : null;
        a0 a0VarB = aVarH == null ? null : aVarH.b();
        ArrayList arrayList2 = new ArrayList(v.u(arrayList, 10));
        int i = 0;
        for (Object obj : arrayList) {
            int i2 = i + 1;
            if (i < 0) {
                kotlin.collections.s.t();
                throw null;
            }
            arrayList2.add(new kotlin.reflect.jvm.internal.impl.load.java.descriptors.h(((a) obj).b(), d3.f().get(i).x0()));
            i = i2;
        }
        return aVar.X(a0VarB, arrayList2, aVarF.b(), pairA);
    }

    private final g i(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar, boolean z, boolean z2) {
        kotlin.reflect.jvm.internal.impl.name.c cVarE = cVar.e();
        if (cVarE == null) {
            return null;
        }
        g gVarC = c(cVarE, cVar, (cVar instanceof LazyJavaAnnotationDescriptor) && (((LazyJavaAnnotationDescriptor) cVar).j() || z2) && !z);
        if (gVarC == null) {
            return null;
        }
        return (!gVarC.d() && (cVar instanceof kotlin.reflect.jvm.internal.impl.load.java.descriptors.f) && ((kotlin.reflect.jvm.internal.impl.load.java.descriptors.f) cVar).k()) ? g.b(gVarC, null, true, 1, null) : gVarC;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final g j(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar, boolean z) {
        kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVarB = DescriptorUtilsKt.b(cVar);
        kotlin.reflect.jvm.internal.impl.resolve.constants.i iVar = gVarB instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.i ? (kotlin.reflect.jvm.internal.impl.resolve.constants.i) gVarB : null;
        if (iVar == null) {
            return new g(NullabilityQualifier.NOT_NULL, z);
        }
        String strB = iVar.c().b();
        switch (strB.hashCode()) {
            case 73135176:
                if (!strB.equals("MAYBE")) {
                    return null;
                }
                break;
            case 74175084:
                if (!strB.equals("NEVER")) {
                    return null;
                }
                break;
            case 433141802:
                if (strB.equals("UNKNOWN")) {
                    return new g(NullabilityQualifier.FORCE_FLEXIBILITY, z);
                }
                return null;
            case 1933739535:
                if (strB.equals("ALWAYS")) {
                    return new g(NullabilityQualifier.NOT_NULL, z);
                }
                return null;
            default:
                return null;
        }
        return new g(NullabilityQualifier.NULLABLE, z);
    }

    private final <D extends CallableMemberDescriptor> kotlin.reflect.jvm.internal.impl.descriptors.annotations.e k(D d2, kotlin.reflect.jvm.internal.impl.load.java.lazy.e eVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarA = kotlin.reflect.jvm.internal.impl.descriptors.q.a(d2);
        if (fVarA == null) {
            return d2.getAnnotations();
        }
        LazyJavaClassDescriptor lazyJavaClassDescriptor = fVarA instanceof LazyJavaClassDescriptor ? (LazyJavaClassDescriptor) fVarA : null;
        List<kotlin.reflect.jvm.internal.impl.load.java.structure.a> listM0 = lazyJavaClassDescriptor != null ? lazyJavaClassDescriptor.M0() : null;
        if (listM0 == null || listM0.isEmpty()) {
            return d2.getAnnotations();
        }
        ArrayList arrayList = new ArrayList(v.u(listM0, 10));
        Iterator<T> it = listM0.iterator();
        while (it.hasNext()) {
            arrayList.add(new LazyJavaAnnotationDescriptor(eVar, (kotlin.reflect.jvm.internal.impl.load.java.structure.a) it.next(), true));
        }
        return kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.a(CollectionsKt___CollectionsKt.v0(d2.getAnnotations(), arrayList));
    }

    private final SignatureParts l(CallableMemberDescriptor callableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a aVar, boolean z, kotlin.reflect.jvm.internal.impl.load.java.lazy.e eVar, AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType, Function1<? super CallableMemberDescriptor, ? extends a0> function1) {
        a0 a0VarInvoke = function1.invoke(callableMemberDescriptor);
        Collection<? extends CallableMemberDescriptor> collectionD = callableMemberDescriptor.d();
        r.d(collectionD, "this.overriddenDescriptors");
        ArrayList arrayList = new ArrayList(v.u(collectionD, 10));
        for (CallableMemberDescriptor it : collectionD) {
            r.d(it, "it");
            arrayList.add(function1.invoke(it));
        }
        return new SignatureParts(aVar, a0VarInvoke, arrayList, z, ContextKt.h(eVar, function1.invoke(callableMemberDescriptor).getAnnotations()), annotationQualifierApplicabilityType, false, false, 192, null);
    }

    private final SignatureParts m(CallableMemberDescriptor callableMemberDescriptor, v0 v0Var, kotlin.reflect.jvm.internal.impl.load.java.lazy.e eVar, Function1<? super CallableMemberDescriptor, ? extends a0> function1) {
        kotlin.reflect.jvm.internal.impl.load.java.lazy.e eVarH;
        return l(callableMemberDescriptor, v0Var, false, (v0Var == null || (eVarH = ContextKt.h(eVar, v0Var.getAnnotations())) == null) ? eVar : eVarH, AnnotationQualifierApplicabilityType.VALUE_PARAMETER, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <D extends CallableMemberDescriptor> Collection<D> e(kotlin.reflect.jvm.internal.impl.load.java.lazy.e c, Collection<? extends D> platformSignatures) {
        r.e(c, "c");
        r.e(platformSignatures, "platformSignatures");
        ArrayList arrayList = new ArrayList(v.u(platformSignatures, 10));
        Iterator<T> it = platformSignatures.iterator();
        while (it.hasNext()) {
            arrayList.add(d((CallableMemberDescriptor) it.next(), c));
        }
        return arrayList;
    }

    public final a0 f(a0 type, kotlin.reflect.jvm.internal.impl.load.java.lazy.e context) {
        r.e(type, "type");
        r.e(context, "context");
        return SignatureParts.h(new SignatureParts(null, type, kotlin.collections.u.j(), false, context, AnnotationQualifierApplicabilityType.TYPE_USE, false, true, 64, null), null, 1, null).b();
    }

    public final List<a0> g(t0 typeParameter, List<? extends a0> bounds, kotlin.reflect.jvm.internal.impl.load.java.lazy.e context) {
        r.e(typeParameter, "typeParameter");
        r.e(bounds, "bounds");
        r.e(context, "context");
        ArrayList arrayList = new ArrayList(v.u(bounds, 10));
        for (Iterator it = bounds.iterator(); it.hasNext(); it = it) {
            a0 a0VarB = (a0) it.next();
            if (!TypeUtilsKt.b(a0VarB, new Function1<c1, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$enhanceTypeParameterBounds$1$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(c1 it2) {
                    r.e(it2, "it");
                    return Boolean.valueOf(it2 instanceof e0);
                }
            })) {
                a0VarB = SignatureParts.h(new SignatureParts(typeParameter, a0VarB, kotlin.collections.u.j(), false, context, AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS, true, false, 128, null), null, 1, null).b();
            }
            arrayList.add(a0VarB);
        }
        return arrayList;
    }

    public final g h(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c annotationDescriptor, boolean z, boolean z2) {
        g gVarI;
        r.e(annotationDescriptor, "annotationDescriptor");
        g gVarI2 = i(annotationDescriptor, z, z2);
        if (gVarI2 != null) {
            return gVarI2;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVarM = this.f15153a.m(annotationDescriptor);
        if (cVarM == null) {
            return null;
        }
        ReportLevel reportLevelJ = this.f15153a.j(annotationDescriptor);
        if (reportLevelJ.isIgnore() || (gVarI = i(cVarM, z, z2)) == null) {
            return null;
        }
        return g.b(gVarI, null, reportLevelJ.isWarning(), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class SignatureParts {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.a f15154a;
        private final a0 b;
        private final Collection<a0> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f15155d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.load.java.lazy.e f15156e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final AnnotationQualifierApplicabilityType f15157f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f15158g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f15159h;

        /* JADX WARN: Multi-variable type inference failed */
        public SignatureParts(SignatureEnhancement this$0, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a aVar, a0 fromOverride, Collection<? extends a0> fromOverridden, boolean z, kotlin.reflect.jvm.internal.impl.load.java.lazy.e containerContext, AnnotationQualifierApplicabilityType containerApplicabilityType, boolean z2, boolean z3) {
            r.e(this$0, "this$0");
            r.e(fromOverride, "fromOverride");
            r.e(fromOverridden, "fromOverridden");
            r.e(containerContext, "containerContext");
            r.e(containerApplicabilityType, "containerApplicabilityType");
            SignatureEnhancement.this = this$0;
            this.f15154a = aVar;
            this.b = fromOverride;
            this.c = fromOverridden;
            this.f15155d = z;
            this.f15156e = containerContext;
            this.f15157f = containerApplicabilityType;
            this.f15158g = z2;
            this.f15159h = z3;
        }

        private final g b(t0 t0Var) {
            boolean z;
            boolean z2;
            a0 it;
            boolean z3;
            if (t0Var instanceof kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.d) {
                kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.d) t0Var;
                List<a0> upperBounds = dVar.getUpperBounds();
                r.d(upperBounds, "upperBounds");
                boolean z4 = false;
                boolean z5 = true;
                if (!(upperBounds instanceof Collection) || !upperBounds.isEmpty()) {
                    Iterator<T> it2 = upperBounds.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            z = true;
                            break;
                        }
                        if (!b0.a((a0) it2.next())) {
                            z = false;
                            break;
                        }
                    }
                } else {
                    z = true;
                    break;
                }
                if (!z) {
                    List<a0> upperBounds2 = dVar.getUpperBounds();
                    r.d(upperBounds2, "upperBounds");
                    if (!(upperBounds2 instanceof Collection) || !upperBounds2.isEmpty()) {
                        Iterator<T> it3 = upperBounds2.iterator();
                        while (true) {
                            if (!it3.hasNext()) {
                                z2 = true;
                                break;
                            }
                            if (!j.b((a0) it3.next())) {
                                z2 = false;
                                break;
                            }
                        }
                    } else {
                        z2 = true;
                        break;
                    }
                    if (!z2) {
                        List<a0> upperBounds3 = dVar.getUpperBounds();
                        r.d(upperBounds3, "upperBounds");
                        if ((upperBounds3 instanceof Collection) && upperBounds3.isEmpty()) {
                            z5 = false;
                            break;
                        }
                        Iterator<T> it4 = upperBounds3.iterator();
                        do {
                            if (!it4.hasNext()) {
                                z5 = false;
                                break;
                            }
                            it = (a0) it4.next();
                            r.d(it, "it");
                        } while (!(!b0.b(it)));
                        return new g(z5 ? NullabilityQualifier.NOT_NULL : NullabilityQualifier.NULLABLE, false, 2, null);
                    }
                    List<a0> upperBounds4 = dVar.getUpperBounds();
                    r.d(upperBounds4, "upperBounds");
                    if (!(upperBounds4 instanceof Collection) || !upperBounds4.isEmpty()) {
                        Iterator<T> it5 = upperBounds4.iterator();
                        while (true) {
                            if (!it5.hasNext()) {
                                z3 = false;
                                break;
                            }
                            a0 a0Var = (a0) it5.next();
                            if ((a0Var instanceof x) && !b0.b(((x) a0Var).e0())) {
                                z3 = true;
                                break;
                            }
                        }
                    } else {
                        z3 = false;
                        break;
                    }
                    if (z3) {
                        return new g(NullabilityQualifier.NOT_NULL, true);
                    }
                    List<a0> upperBounds5 = dVar.getUpperBounds();
                    r.d(upperBounds5, "upperBounds");
                    if (!(upperBounds5 instanceof Collection) || !upperBounds5.isEmpty()) {
                        for (a0 a0Var2 : upperBounds5) {
                            if ((a0Var2 instanceof x) && b0.b(((x) a0Var2).e0())) {
                                z4 = true;
                                break;
                            }
                        }
                    }
                    if (z4) {
                        return new g(NullabilityQualifier.NULLABLE, true);
                    }
                    return null;
                }
            }
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:21:0x0060  */
        private final Function1<Integer, e> c() {
            boolean z;
            boolean z2;
            Collection<a0> collection = this.c;
            ArrayList arrayList = new ArrayList(v.u(collection, 10));
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                arrayList.add(q((a0) it.next()));
            }
            List<k> listQ = q(this.b);
            if (this.f15155d) {
                Collection<a0> collection2 = this.c;
                if (!(collection2 instanceof Collection) || !collection2.isEmpty()) {
                    Iterator<T> it2 = collection2.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            z2 = false;
                            break;
                        }
                        if (!kotlin.reflect.jvm.internal.impl.types.checker.f.f15664a.b((a0) it2.next(), this.b)) {
                            z2 = true;
                            break;
                        }
                    }
                } else {
                    z2 = false;
                    break;
                }
                if (z2) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            int size = z ? 1 : listQ.size();
            final e[] eVarArr = new e[size];
            int i = 0;
            while (i < size) {
                boolean z3 = i == 0;
                k kVar = listQ.get(i);
                a0 a0VarA = kVar.a();
                kotlin.reflect.jvm.internal.impl.load.java.k kVarB = kVar.b();
                t0 t0VarC = kVar.c();
                boolean zD = kVar.d();
                ArrayList arrayList2 = new ArrayList();
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    k kVar2 = (k) kotlin.collections.s.f0((List) it3.next(), i);
                    a0 a0VarE = kVar2 == null ? null : kVar2.e();
                    if (a0VarE != null) {
                        arrayList2.add(a0VarE);
                    }
                }
                eVarArr[i] = e(a0VarA, arrayList2, kVarB, z3, t0VarC, zD);
                i++;
            }
            return new Function1<Integer, e>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$SignatureParts$computeIndexedQualifiersForOverride$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ e invoke(Integer num) {
                    return invoke(num.intValue());
                }

                public final e invoke(int i2) {
                    e[] eVarArr2 = eVarArr;
                    return (i2 < 0 || i2 > ArraysKt___ArraysKt.y(eVarArr2)) ? e.f15167e.a() : eVarArr2[i2];
                }
            };
        }

        private final g d(g gVar, kotlin.reflect.jvm.internal.impl.load.java.k kVar, t0 t0Var) {
            g gVarF;
            if (gVar == null) {
                gVar = (kVar == null || (gVarF = kVar.f()) == null) ? null : new g(gVarF.c(), gVarF.d());
            }
            g gVarB = t0Var != null ? b(t0Var) : null;
            if (gVarB == null) {
                return gVar;
            }
            if (kVar == null && gVar == null && gVarB.c() == NullabilityQualifier.NULLABLE) {
                return new g(NullabilityQualifier.FORCE_FLEXIBILITY, gVarB.d());
            }
            return gVar == null ? gVarB : o(gVarB, gVar);
        }

        /* JADX WARN: Code duplicated, block: B:69:0x011d  */
        private final e e(a0 a0Var, Collection<? extends a0> collection, kotlin.reflect.jvm.internal.impl.load.java.k kVar, boolean z, t0 t0Var, boolean z2) {
            boolean z3;
            boolean z4;
            ArrayList arrayList = new ArrayList(v.u(collection, 10));
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                arrayList.add(j((a0) it.next()));
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                MutabilityQualifier mutabilityQualifierB = ((e) it2.next()).b();
                if (mutabilityQualifierB != null) {
                    arrayList2.add(mutabilityQualifierB);
                }
            }
            Set setQ0 = CollectionsKt___CollectionsKt.Q0(arrayList2);
            ArrayList arrayList3 = new ArrayList();
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                NullabilityQualifier nullabilityQualifierC = ((e) it3.next()).c();
                if (nullabilityQualifierC != null) {
                    arrayList3.add(nullabilityQualifierC);
                }
            }
            Set setQ1 = CollectionsKt___CollectionsKt.Q0(arrayList3);
            ArrayList arrayList4 = new ArrayList();
            Iterator<T> it4 = collection.iterator();
            while (it4.hasNext()) {
                NullabilityQualifier nullabilityQualifierC2 = j(a1.d((a0) it4.next())).c();
                if (nullabilityQualifierC2 != null) {
                    arrayList4.add(nullabilityQualifierC2);
                }
            }
            Set setQ2 = CollectionsKt___CollectionsKt.Q0(arrayList4);
            e eVarK = k(a0Var, z, kVar, t0Var, z2);
            NullabilityQualifier nullabilityQualifier = null;
            e eVar = eVarK.e() ^ true ? eVarK : null;
            NullabilityQualifier nullabilityQualifierC3 = eVar == null ? null : eVar.c();
            NullabilityQualifier nullabilityQualifierC4 = eVarK.c();
            boolean z5 = this.f15155d && z;
            NullabilityQualifier nullabilityQualifierD = m.d(setQ1, nullabilityQualifierC3, z5);
            if (nullabilityQualifierD != null) {
                if (!(n() && z && nullabilityQualifierD == NullabilityQualifier.NULLABLE)) {
                    nullabilityQualifier = nullabilityQualifierD;
                }
            }
            MutabilityQualifier mutabilityQualifier = (MutabilityQualifier) m.c(setQ0, MutabilityQualifier.MUTABLE, MutabilityQualifier.READ_ONLY, eVarK.b(), z5);
            boolean z6 = (nullabilityQualifierC4 == nullabilityQualifierC3 && r.a(setQ2, setQ1)) ? false : true;
            if (eVarK.d()) {
                z3 = true;
            } else {
                if (!arrayList.isEmpty()) {
                    Iterator it5 = arrayList.iterator();
                    while (true) {
                        if (!it5.hasNext()) {
                            z4 = false;
                            break;
                        }
                        if (((e) it5.next()).d()) {
                            z4 = true;
                            break;
                        }
                    }
                } else {
                    z4 = false;
                    break;
                }
                if (z4) {
                    z3 = true;
                } else {
                    z3 = false;
                }
            }
            if (nullabilityQualifier == null && z6) {
                return m.a(m.d(setQ2, nullabilityQualifierC4, z5), mutabilityQualifier, true, z3);
            }
            return m.a(nullabilityQualifier, mutabilityQualifier, nullabilityQualifier == null, z3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean g(c1 c1Var) {
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = c1Var.I0().u();
            if (fVarU == null) {
                return false;
            }
            kotlin.reflect.jvm.internal.impl.name.f name = fVarU.getName();
            kotlin.reflect.jvm.internal.impl.builtins.jvm.c cVar = kotlin.reflect.jvm.internal.impl.builtins.jvm.c.f14839a;
            return r.a(name, cVar.i().g()) && r.a(DescriptorUtilsKt.e(fVarU), cVar.i());
        }

        public static /* synthetic */ a h(SignatureParts signatureParts, n nVar, int i, Object obj) {
            if ((i & 1) != 0) {
                nVar = null;
            }
            return signatureParts.f(nVar);
        }

        private final g i(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, boolean z, boolean z2) {
            SignatureEnhancement signatureEnhancement = SignatureEnhancement.this;
            Iterator<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> it = eVar.iterator();
            while (it.hasNext()) {
                g gVarH = signatureEnhancement.h(it.next(), z, z2);
                if (gVarH != null) {
                    return gVarH;
                }
            }
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0048  */
        /* JADX WARN: Code duplicated, block: B:17:0x004b  */
        /* JADX WARN: Code duplicated, block: B:19:0x0051  */
        /* JADX WARN: Code duplicated, block: B:20:0x0054  */
        private final e j(a0 a0Var) {
            Pair pair;
            NullabilityQualifier nullabilityQualifier;
            NullabilityQualifier nullabilityQualifier2;
            MutabilityQualifier mutabilityQualifier;
            if (y.b(a0Var)) {
                kotlin.reflect.jvm.internal.impl.types.v vVarA = y.a(a0Var);
                pair = new Pair(vVarA.Q0(), vVarA.R0());
            } else {
                pair = new Pair(a0Var, a0Var);
            }
            a0 a0Var2 = (a0) pair.component1();
            a0 a0Var3 = (a0) pair.component2();
            kotlin.reflect.jvm.internal.impl.builtins.jvm.d dVar = kotlin.reflect.jvm.internal.impl.builtins.jvm.d.f14846a;
            if (!a0Var2.J0()) {
                if (a0Var3.J0()) {
                    nullabilityQualifier = null;
                } else {
                    nullabilityQualifier2 = NullabilityQualifier.NOT_NULL;
                }
                if (dVar.f(a0Var2)) {
                    mutabilityQualifier = MutabilityQualifier.READ_ONLY;
                } else if (dVar.d(a0Var3)) {
                    mutabilityQualifier = MutabilityQualifier.MUTABLE;
                } else {
                    mutabilityQualifier = null;
                }
                return new e(nullabilityQualifier, mutabilityQualifier, a0Var.L0() instanceof f, false, 8, null);
            }
            nullabilityQualifier2 = NullabilityQualifier.NULLABLE;
            nullabilityQualifier = nullabilityQualifier2;
            if (dVar.f(a0Var2)) {
                mutabilityQualifier = MutabilityQualifier.READ_ONLY;
            } else if (dVar.d(a0Var3)) {
                mutabilityQualifier = MutabilityQualifier.MUTABLE;
            } else {
                mutabilityQualifier = null;
            }
            return new e(nullabilityQualifier, mutabilityQualifier, a0Var.L0() instanceof f, false, 8, null);
        }

        /* JADX WARN: Code duplicated, block: B:42:0x00a8  */
        /* JADX WARN: Code duplicated, block: B:65:0x00f7  */
        private final e k(a0 a0Var, boolean z, kotlin.reflect.jvm.internal.impl.load.java.k kVar, t0 t0Var, boolean z2) {
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations;
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.a aVar;
            boolean z3;
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.a aVar2;
            if (z2) {
                if ((t0Var == null ? null : t0Var.getVariance()) == Variance.IN_VARIANCE) {
                    return e.f15167e.a();
                }
            }
            boolean zB = this.f15156e.a().q().b();
            boolean z4 = false;
            if (!z || (aVar2 = this.f15154a) == null || (aVar2 instanceof t0) || !zB) {
                annotations = (!z || (aVar = this.f15154a) == null) ? a0Var.getAnnotations() : kotlin.reflect.jvm.internal.impl.descriptors.annotations.g.a(aVar.getAnnotations(), a0Var.getAnnotations());
            } else {
                kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations2 = aVar2.getAnnotations();
                SignatureEnhancement signatureEnhancement = SignatureEnhancement.this;
                ArrayList arrayList = new ArrayList();
                for (kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar : annotations2) {
                    AnnotationTypeQualifierResolver.a aVarH = signatureEnhancement.f15153a.h(cVar);
                    if (aVarH == null || !aVarH.b().contains(AnnotationQualifierApplicabilityType.TYPE_USE)) {
                        arrayList.add(cVar);
                    }
                }
                annotations = kotlin.reflect.jvm.internal.impl.descriptors.annotations.g.a(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.a(arrayList), a0Var.getAnnotations());
            }
            if (z) {
                p pVarB = this.f15156e.b();
                kVar = pVarB == null ? null : pVarB.a(this.f15157f);
            }
            if (kVar == null) {
                kVar = null;
            } else if (!((kVar.d() || !TypeUtilsKt.o(a0Var)) && (kVar.c() || !z2))) {
                kVar = null;
            }
            Pair<g, Boolean> pairP = p(a0Var);
            g gVarComponent1 = pairP.component1();
            boolean zBooleanValue = pairP.component2().booleanValue();
            g gVarI = i(annotations, zB, this.f15158g);
            if (gVarI == null || z2) {
                gVarI = null;
            }
            g gVarD = gVarI == null ? d(gVarComponent1, kVar, t0Var) : gVarI;
            if (gVarI == null) {
                if (!zBooleanValue) {
                    if (!(kVar != null && kVar.e())) {
                        z3 = false;
                    }
                }
                z3 = true;
            } else if (gVarI.c() == NullabilityQualifier.NOT_NULL) {
                z3 = true;
            } else {
                z3 = false;
            }
            NullabilityQualifier nullabilityQualifierC = gVarD != null ? gVarD.c() : null;
            MutabilityQualifier mutabilityQualifier = (MutabilityQualifier) m(l(s.m(), annotations, MutabilityQualifier.READ_ONLY), l(s.j(), annotations, MutabilityQualifier.MUTABLE));
            boolean z5 = z3 && TypeUtilsKt.o(a0Var);
            if (gVarD != null && gVarD.d()) {
                z4 = true;
            }
            return new e(nullabilityQualifierC, mutabilityQualifier, z5, z4);
        }

        private static final <T> T l(List<kotlin.reflect.jvm.internal.impl.name.c> list, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, T t) {
            boolean z = true;
            if ((list instanceof Collection) && list.isEmpty()) {
                z = false;
            } else {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    if (eVar.d((kotlin.reflect.jvm.internal.impl.name.c) it.next()) != null) {
                    }
                }
                z = false;
            }
            if (z) {
                return t;
            }
            return null;
        }

        private static final <T> T m(T t, T t2) {
            if (t == null || t2 == null || r.a(t, t2)) {
                return t == null ? t2 : t;
            }
            return null;
        }

        private final boolean n() {
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.a aVar = this.f15154a;
            if (!(aVar instanceof v0)) {
                aVar = null;
            }
            v0 v0Var = (v0) aVar;
            return (v0Var != null ? v0Var.t0() : null) != null;
        }

        private final g o(g gVar, g gVar2) {
            NullabilityQualifier nullabilityQualifierC = gVar.c();
            NullabilityQualifier nullabilityQualifier = NullabilityQualifier.FORCE_FLEXIBILITY;
            if (nullabilityQualifierC == nullabilityQualifier) {
                return gVar2;
            }
            if (gVar2.c() == nullabilityQualifier) {
                return gVar;
            }
            NullabilityQualifier nullabilityQualifierC2 = gVar.c();
            NullabilityQualifier nullabilityQualifier2 = NullabilityQualifier.NULLABLE;
            if (nullabilityQualifierC2 == nullabilityQualifier2) {
                return gVar2;
            }
            if (gVar2.c() == nullabilityQualifier2) {
                return gVar;
            }
            if (gVar.c() == gVar2.c()) {
                gVar.c();
                NullabilityQualifier nullabilityQualifier3 = NullabilityQualifier.NOT_NULL;
            }
            return new g(NullabilityQualifier.NOT_NULL, false, 2, null);
        }

        private final Pair<g, Boolean> p(a0 a0Var) {
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = a0Var.I0().u();
            t0 t0Var = fVarU instanceof t0 ? (t0) fVarU : null;
            g gVarB = t0Var == null ? null : b(t0Var);
            if (gVarB == null) {
                return new Pair<>(null, Boolean.FALSE);
            }
            NullabilityQualifier nullabilityQualifier = NullabilityQualifier.NOT_NULL;
            return new Pair<>(new g(nullabilityQualifier, gVarB.d()), Boolean.valueOf(gVarB.c() == nullabilityQualifier));
        }

        private final List<k> q(a0 a0Var) {
            ArrayList arrayList = new ArrayList(1);
            r(this, arrayList, a0Var, this.f15156e, null);
            return arrayList;
        }

        private static final void r(SignatureParts signatureParts, ArrayList<k> arrayList, a0 a0Var, kotlin.reflect.jvm.internal.impl.load.java.lazy.e eVar, t0 t0Var) {
            kotlin.reflect.jvm.internal.impl.load.java.lazy.e eVarH = ContextKt.h(eVar, a0Var.getAnnotations());
            p pVarB = eVarH.b();
            kotlin.reflect.jvm.internal.impl.load.java.k kVarA = pVarB == null ? null : pVarB.a(signatureParts.f15158g ? AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS : AnnotationQualifierApplicabilityType.TYPE_USE);
            arrayList.add(new k(a0Var, kVarA, t0Var, false));
            if (signatureParts.f15159h && (a0Var instanceof e0)) {
                return;
            }
            List<s0> listH0 = a0Var.H0();
            List<t0> parameters = a0Var.I0().getParameters();
            r.d(parameters, "type.constructor.parameters");
            for (Pair pair : CollectionsKt___CollectionsKt.T0(listH0, parameters)) {
                s0 s0Var = (s0) pair.component1();
                t0 t0Var2 = (t0) pair.component2();
                if (s0Var.a()) {
                    a0 type = s0Var.getType();
                    r.d(type, "arg.type");
                    arrayList.add(new k(type, kVarA, t0Var2, true));
                } else {
                    a0 type2 = s0Var.getType();
                    r.d(type2, "arg.type");
                    r(signatureParts, arrayList, type2, eVarH, t0Var2);
                }
            }
        }

        public final a f(final n nVar) {
            final Function1<Integer, e> function1C = c();
            Function1<Integer, e> function1 = nVar == null ? null : new Function1<Integer, e>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$SignatureParts$enhance$qualifiersWithPredefined$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ e invoke(Integer num) {
                    return invoke(num.intValue());
                }

                public final e invoke(int i) {
                    e eVar = nVar.a().get(Integer.valueOf(i));
                    return eVar == null ? function1C.invoke(Integer.valueOf(i)) : eVar;
                }
            };
            boolean zE = this.f15159h ? y0.e(this.b, SignatureEnhancement$SignatureParts$enhance$containsFunctionN$1.INSTANCE, new Function1<a0, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement$SignatureParts$enhance$containsFunctionN$2
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(a0 a0Var) {
                    return Boolean.valueOf(a0Var instanceof e0);
                }
            }) : y0.c(this.b, SignatureEnhancement$SignatureParts$enhance$containsFunctionN$3.INSTANCE);
            d dVar = SignatureEnhancement.this.c;
            a0 a0Var = this.b;
            if (function1 != null) {
                function1C = function1;
            }
            a0 a0VarB = dVar.b(a0Var, function1C, this.f15159h);
            a aVar = a0VarB != null ? new a(a0VarB, true, zE) : null;
            return aVar == null ? new a(this.b, false, zE) : aVar;
        }

        public /* synthetic */ SignatureParts(kotlin.reflect.jvm.internal.impl.descriptors.annotations.a aVar, a0 a0Var, Collection collection, boolean z, kotlin.reflect.jvm.internal.impl.load.java.lazy.e eVar, AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType, boolean z2, boolean z3, int i, kotlin.jvm.internal.o oVar) {
            this(SignatureEnhancement.this, aVar, a0Var, collection, z, eVar, annotationQualifierApplicabilityType, (i & 64) != 0 ? false : z2, (i & 128) != 0 ? false : z3);
        }
    }
}
