package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.s;
import kotlin.collections.t;
import kotlin.collections.v;
import kotlin.collections.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.reflect.jvm.internal.impl.builtins.i;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.j;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithDifferentJvmName;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature;
import kotlin.reflect.jvm.internal.impl.load.java.ClassicBuiltinSpecialProperties;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.l;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.e;
import kotlin.reflect.jvm.internal.impl.load.java.m;
import kotlin.reflect.jvm.internal.impl.load.java.q;
import kotlin.reflect.jvm.internal.impl.load.java.structure.g;
import kotlin.reflect.jvm.internal.impl.load.java.structure.k;
import kotlin.reflect.jvm.internal.impl.load.java.structure.n;
import kotlin.reflect.jvm.internal.impl.load.java.structure.w;
import kotlin.reflect.jvm.internal.impl.load.java.structure.x;
import kotlin.reflect.jvm.internal.impl.load.java.structure.y;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.r;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.storage.h;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyJavaClassMemberScope extends LazyJavaScope {
    private final kotlin.reflect.jvm.internal.impl.descriptors.d n;
    private final g o;
    private final boolean p;
    private final h<List<kotlin.reflect.jvm.internal.impl.descriptors.c>> q;
    private final h<Set<f>> r;
    private final h<Map<f, n>> s;
    private final kotlin.reflect.jvm.internal.impl.storage.g<f, kotlin.reflect.jvm.internal.impl.descriptors.impl.f> t;

    public /* synthetic */ LazyJavaClassMemberScope(e eVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, g gVar, boolean z, LazyJavaClassMemberScope lazyJavaClassMemberScope, int i, o oVar) {
        this(eVar, dVar, gVar, z, (i & 16) != 0 ? null : lazyJavaClassMemberScope);
    }

    private final boolean A0(n0 n0Var, u uVar) {
        String strC = r.c(n0Var, false, false, 2, null);
        u uVarA = uVar.a();
        kotlin.jvm.internal.r.d(uVarA, "builtinWithErasedParameters.original");
        return kotlin.jvm.internal.r.a(strC, r.c(uVarA, false, false, 2, null)) && !o0(n0Var, uVar);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0071  */
    private final boolean B0(final n0 n0Var) {
        boolean z;
        boolean z2;
        boolean z3;
        f name = n0Var.getName();
        kotlin.jvm.internal.r.d(name, "function.name");
        List<f> listA = kotlin.reflect.jvm.internal.impl.load.java.u.a(name);
        if (!(listA instanceof Collection) || !listA.isEmpty()) {
            Iterator<T> it = listA.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z3 = false;
                    break;
                }
                Set<j0> setZ0 = z0((f) it.next());
                if (!(setZ0 instanceof Collection) || !setZ0.isEmpty()) {
                    Iterator<T> it2 = setZ0.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            z2 = false;
                            break;
                        }
                        j0 j0Var = (j0) it2.next();
                        if (n0(j0Var, new Function1<f, Collection<? extends n0>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$isVisibleAsFunctionInCurrentClass$1$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Collection<n0> invoke(f accessorName) {
                                kotlin.jvm.internal.r.e(accessorName, "accessorName");
                                return kotlin.jvm.internal.r.a(n0Var.getName(), accessorName) ? t.d(n0Var) : CollectionsKt___CollectionsKt.x0(this.I0(accessorName), this.J0(accessorName));
                            }
                        })) {
                            if (!j0Var.M()) {
                                String strB = n0Var.getName().b();
                                kotlin.jvm.internal.r.d(strB, "function.name.asString()");
                                if (q.c(strB)) {
                                    z = false;
                                }
                            }
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            z2 = true;
                            break;
                        }
                    }
                } else {
                    z2 = false;
                    break;
                    break;
                }
                if (z2) {
                    z3 = true;
                    break;
                }
            }
        } else {
            z3 = false;
            break;
        }
        return (z3 || p0(n0Var) || K0(n0Var) || r0(n0Var)) ? false : true;
    }

    private final n0 C0(n0 n0Var, Function1<? super f, ? extends Collection<? extends n0>> function1, Collection<? extends n0> collection) {
        n0 n0VarG0;
        u uVarK = BuiltinMethodsWithSpecialGenericSignature.k(n0Var);
        if (uVarK == null || (n0VarG0 = g0(uVarK, function1)) == null) {
            return null;
        }
        if (!B0(n0VarG0)) {
            n0VarG0 = null;
        }
        if (n0VarG0 == null) {
            return null;
        }
        return f0(n0VarG0, uVarK, collection);
    }

    private final n0 D0(n0 n0Var, Function1<? super f, ? extends Collection<? extends n0>> function1, f fVar, Collection<? extends n0> collection) {
        n0 n0Var2 = (n0) SpecialBuiltinMembers.d(n0Var);
        if (n0Var2 == null) {
            return null;
        }
        String strB = SpecialBuiltinMembers.b(n0Var2);
        kotlin.jvm.internal.r.c(strB);
        f fVarG = f.g(strB);
        kotlin.jvm.internal.r.d(fVarG, "identifier(nameInJava)");
        Iterator<? extends n0> it = function1.invoke(fVarG).iterator();
        while (it.hasNext()) {
            n0 n0VarL0 = l0(it.next(), fVar);
            if (q0(n0Var2, n0VarL0)) {
                return f0(n0VarL0, n0Var2, collection);
            }
        }
        return null;
    }

    private final n0 E0(n0 n0Var, Function1<? super f, ? extends Collection<? extends n0>> function1) {
        if (!n0Var.isSuspend()) {
            return null;
        }
        f name = n0Var.getName();
        kotlin.jvm.internal.r.d(name, "descriptor.name");
        Iterator<T> it = function1.invoke(name).iterator();
        while (it.hasNext()) {
            n0 n0VarM0 = m0((n0) it.next());
            if (n0VarM0 == null || !o0(n0VarM0, n0Var)) {
                n0VarM0 = null;
            }
            if (n0VarM0 != null) {
                return n0VarM0;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.load.java.descriptors.b G0(k kVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarC = C();
        kotlin.reflect.jvm.internal.impl.load.java.descriptors.b bVarO1 = kotlin.reflect.jvm.internal.impl.load.java.descriptors.b.o1(dVarC, kotlin.reflect.jvm.internal.impl.load.java.lazy.d.a(w(), kVar), false, w().a().t().a(kVar));
        kotlin.jvm.internal.r.d(bVarO1, "createJavaConstructor(\n …ce(constructor)\n        )");
        e eVarE = ContextKt.e(w(), bVarO1, kVar, dVarC.p().size());
        LazyJavaScope.b bVarK = K(eVarE, bVarO1, kVar.f());
        List<t0> listP = dVarC.p();
        kotlin.jvm.internal.r.d(listP, "classDescriptor.declaredTypeParameters");
        List<y> typeParameters = kVar.getTypeParameters();
        ArrayList arrayList = new ArrayList(v.u(typeParameters, 10));
        Iterator<T> it = typeParameters.iterator();
        while (it.hasNext()) {
            t0 t0VarA = eVarE.f().a((y) it.next());
            kotlin.jvm.internal.r.c(t0VarA);
            arrayList.add(t0VarA);
        }
        bVarO1.m1(bVarK.a(), kotlin.reflect.jvm.internal.impl.load.java.v.a(kVar.getVisibility()), CollectionsKt___CollectionsKt.x0(listP, arrayList));
        bVarO1.U0(false);
        bVarO1.V0(bVarK.b());
        bVarO1.c1(dVarC.n());
        eVarE.a().h().a(kVar, bVarO1);
        return bVarO1;
    }

    private final JavaMethodDescriptor H0(w wVar) {
        JavaMethodDescriptor javaMethodDescriptorL1 = JavaMethodDescriptor.l1(C(), kotlin.reflect.jvm.internal.impl.load.java.lazy.d.a(w(), wVar), wVar.getName(), w().a().t().a(wVar), true);
        kotlin.jvm.internal.r.d(javaMethodDescriptorL1, "createJavaMethod(\n      …omponent), true\n        )");
        javaMethodDescriptorL1.k1(null, z(), kotlin.collections.u.j(), kotlin.collections.u.j(), w().g().o(wVar.getType(), kotlin.reflect.jvm.internal.impl.load.java.lazy.types.b.d(TypeUsage.COMMON, false, null, 2, null)), Modality.Companion.a(false, false, true), kotlin.reflect.jvm.internal.impl.descriptors.r.f14975e, null);
        javaMethodDescriptorL1.o1(false, false);
        w().a().h().c(wVar, javaMethodDescriptorL1);
        return javaMethodDescriptorL1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Collection<n0> I0(f fVar) {
        Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.r> collectionD = y().invoke().d(fVar);
        ArrayList arrayList = new ArrayList(v.u(collectionD, 10));
        Iterator<T> it = collectionD.iterator();
        while (it.hasNext()) {
            arrayList.add(I((kotlin.reflect.jvm.internal.impl.load.java.structure.r) it.next()));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Collection<n0> J0(f fVar) {
        Set<n0> setX0 = x0(fVar);
        ArrayList arrayList = new ArrayList();
        for (Object obj : setX0) {
            n0 n0Var = (n0) obj;
            if (!(SpecialBuiltinMembers.a(n0Var) || BuiltinMethodsWithSpecialGenericSignature.k(n0Var) != null)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    private final boolean K0(n0 n0Var) {
        BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature = BuiltinMethodsWithSpecialGenericSignature.m;
        f name = n0Var.getName();
        kotlin.jvm.internal.r.d(name, "name");
        if (!builtinMethodsWithSpecialGenericSignature.l(name)) {
            return false;
        }
        f name2 = n0Var.getName();
        kotlin.jvm.internal.r.d(name2, "name");
        Set<n0> setX0 = x0(name2);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = setX0.iterator();
        while (it.hasNext()) {
            u uVarK = BuiltinMethodsWithSpecialGenericSignature.k((n0) it.next());
            if (uVarK != null) {
                arrayList.add(uVarK);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (A0(n0Var, (u) it2.next())) {
                return true;
            }
        }
        return false;
    }

    private final void U(List<v0> list, j jVar, int i, kotlin.reflect.jvm.internal.impl.load.java.structure.r rVar, a0 a0Var, a0 a0Var2) {
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarB = kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b();
        f name = rVar.getName();
        a0 a0VarO = y0.o(a0Var);
        kotlin.jvm.internal.r.d(a0VarO, "makeNotNullable(returnType)");
        list.add(new ValueParameterDescriptorImpl(jVar, null, i, eVarB, name, a0VarO, rVar.L(), false, false, a0Var2 == null ? null : y0.o(a0Var2), w().a().t().a(rVar)));
    }

    private final void V(Collection<n0> collection, f fVar, Collection<? extends n0> collection2, boolean z) {
        Collection<? extends n0> collectionD = kotlin.reflect.jvm.internal.impl.load.java.components.a.d(fVar, collection2, collection, C(), w().a().c(), w().a().k().a());
        kotlin.jvm.internal.r.d(collectionD, "resolveOverridesForNonSt….overridingUtil\n        )");
        if (!z) {
            collection.addAll(collectionD);
            return;
        }
        List listX0 = CollectionsKt___CollectionsKt.x0(collection, collectionD);
        ArrayList arrayList = new ArrayList(v.u(collectionD, 10));
        for (n0 resolvedOverride : collectionD) {
            n0 n0Var = (n0) SpecialBuiltinMembers.e(resolvedOverride);
            if (n0Var == null) {
                kotlin.jvm.internal.r.d(resolvedOverride, "resolvedOverride");
            } else {
                kotlin.jvm.internal.r.d(resolvedOverride, "resolvedOverride");
                resolvedOverride = f0(resolvedOverride, n0Var, listX0);
            }
            arrayList.add(resolvedOverride);
        }
        collection.addAll(arrayList);
    }

    private final void W(f fVar, Collection<? extends n0> collection, Collection<? extends n0> collection2, Collection<n0> collection3, Function1<? super f, ? extends Collection<? extends n0>> function1) {
        for (n0 n0Var : collection2) {
            kotlin.reflect.jvm.internal.impl.utils.a.a(collection3, D0(n0Var, function1, fVar, collection));
            kotlin.reflect.jvm.internal.impl.utils.a.a(collection3, C0(n0Var, function1, collection));
            kotlin.reflect.jvm.internal.impl.utils.a.a(collection3, E0(n0Var, function1));
        }
    }

    private final void X(Set<? extends j0> set, Collection<j0> collection, Set<j0> set2, Function1<? super f, ? extends Collection<? extends n0>> function1) {
        for (j0 j0Var : set) {
            kotlin.reflect.jvm.internal.impl.load.java.descriptors.e eVarH0 = h0(j0Var, function1);
            if (eVarH0 != null) {
                collection.add(eVarH0);
                if (set2 == null) {
                    return;
                }
                set2.add(j0Var);
                return;
            }
        }
    }

    private final void Y(f fVar, Collection<j0> collection) {
        kotlin.reflect.jvm.internal.impl.load.java.structure.r rVar = (kotlin.reflect.jvm.internal.impl.load.java.structure.r) s.D0(y().invoke().d(fVar));
        if (rVar == null) {
            return;
        }
        collection.add(j0(this, rVar, null, Modality.FINAL, 2, null));
    }

    private final Collection<a0> b0() {
        if (!this.p) {
            return w().a().k().c().f(C());
        }
        Collection<a0> collectionA = C().i().a();
        kotlin.jvm.internal.r.d(collectionA, "ownerDescriptor.typeConstructor.supertypes");
        return collectionA;
    }

    private final List<v0> c0(kotlin.reflect.jvm.internal.impl.descriptors.impl.e eVar) {
        Pair pair;
        Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.r> collectionA = this.o.A();
        ArrayList arrayList = new ArrayList(collectionA.size());
        kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a aVarD = kotlin.reflect.jvm.internal.impl.load.java.lazy.types.b.d(TypeUsage.COMMON, true, null, 2, null);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : collectionA) {
            if (kotlin.jvm.internal.r.a(((kotlin.reflect.jvm.internal.impl.load.java.structure.r) obj).getName(), kotlin.reflect.jvm.internal.impl.load.java.r.b)) {
                arrayList2.add(obj);
            } else {
                arrayList3.add(obj);
            }
        }
        Pair pair2 = new Pair(arrayList2, arrayList3);
        List list = (List) pair2.component1();
        List<kotlin.reflect.jvm.internal.impl.load.java.structure.r> list2 = (List) pair2.component2();
        list.size();
        kotlin.reflect.jvm.internal.impl.load.java.structure.r rVar = (kotlin.reflect.jvm.internal.impl.load.java.structure.r) s.e0(list);
        if (rVar != null) {
            x returnType = rVar.getReturnType();
            if (returnType instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.f) {
                kotlin.reflect.jvm.internal.impl.load.java.structure.f fVar = (kotlin.reflect.jvm.internal.impl.load.java.structure.f) returnType;
                pair = new Pair(w().g().k(fVar, aVarD, true), w().g().o(fVar.n(), aVarD));
            } else {
                pair = new Pair(w().g().o(returnType, aVarD), null);
            }
            U(arrayList, eVar, 0, rVar, (a0) pair.component1(), (a0) pair.component2());
        }
        int i = 0;
        int i2 = rVar == null ? 0 : 1;
        for (kotlin.reflect.jvm.internal.impl.load.java.structure.r rVar2 : list2) {
            U(arrayList, eVar, i + i2, rVar2, w().g().o(rVar2.getReturnType(), aVarD), null);
            i++;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.c d0() {
        boolean zO = this.o.o();
        if ((this.o.I() || !this.o.r()) && !zO) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarC = C();
        kotlin.reflect.jvm.internal.impl.load.java.descriptors.b bVarO1 = kotlin.reflect.jvm.internal.impl.load.java.descriptors.b.o1(dVarC, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), true, w().a().t().a(this.o));
        kotlin.jvm.internal.r.d(bVarO1, "createJavaConstructor(\n ….source(jClass)\n        )");
        List<v0> listC0 = zO ? c0(bVarO1) : Collections.emptyList();
        bVarO1.V0(false);
        bVarO1.l1(listC0, v0(dVarC));
        bVarO1.U0(true);
        bVarO1.c1(dVarC.n());
        w().a().h().a(this.o, bVarO1);
        return bVarO1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.c e0() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarC = C();
        kotlin.reflect.jvm.internal.impl.load.java.descriptors.b bVarO1 = kotlin.reflect.jvm.internal.impl.load.java.descriptors.b.o1(dVarC, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), true, w().a().t().a(this.o));
        kotlin.jvm.internal.r.d(bVarO1, "createJavaConstructor(\n ….source(jClass)\n        )");
        List<v0> listK0 = k0(bVarO1);
        bVarO1.V0(false);
        bVarO1.l1(listK0, v0(dVarC));
        bVarO1.U0(false);
        bVarO1.c1(dVarC.n());
        return bVarO1;
    }

    private final n0 f0(n0 n0Var, kotlin.reflect.jvm.internal.impl.descriptors.a aVar, Collection<? extends n0> collection) {
        n0 n0Var2;
        boolean z = false;
        if (!(collection instanceof Collection) || !collection.isEmpty()) {
            Iterator<T> it = collection.iterator();
            do {
                if (!it.hasNext()) {
                    z = true;
                    break;
                }
                n0Var2 = (n0) it.next();
            } while (!(!kotlin.jvm.internal.r.a(n0Var, n0Var2) && n0Var2.q0() == null && o0(n0Var2, aVar)));
        } else {
            z = true;
            break;
        }
        if (z) {
            return n0Var;
        }
        u uVarBuild = n0Var.s().h().build();
        kotlin.jvm.internal.r.c(uVarBuild);
        return (n0) uVarBuild;
    }

    private final n0 g0(u uVar, Function1<? super f, ? extends Collection<? extends n0>> function1) {
        Object next;
        f name = uVar.getName();
        kotlin.jvm.internal.r.d(name, "overridden.name");
        Iterator<T> it = function1.invoke(name).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!A0((n0) next, uVar));
        n0 n0Var = (n0) next;
        if (n0Var == null) {
            return null;
        }
        u.a<? extends n0> aVarS = n0Var.s();
        List<v0> listF = uVar.f();
        kotlin.jvm.internal.r.d(listF, "overridden.valueParameters");
        ArrayList arrayList = new ArrayList(v.u(listF, 10));
        for (v0 v0Var : listF) {
            a0 type = v0Var.getType();
            kotlin.jvm.internal.r.d(type, "it.type");
            arrayList.add(new kotlin.reflect.jvm.internal.impl.load.java.descriptors.h(type, v0Var.x0()));
        }
        List<v0> listF2 = n0Var.f();
        kotlin.jvm.internal.r.d(listF2, "override.valueParameters");
        aVarS.b(kotlin.reflect.jvm.internal.impl.load.java.descriptors.g.a(arrayList, listF2, uVar));
        aVarS.s();
        aVarS.k();
        return (n0) aVarS.build();
    }

    private final kotlin.reflect.jvm.internal.impl.load.java.descriptors.e h0(j0 j0Var, Function1<? super f, ? extends Collection<? extends n0>> function1) {
        n0 n0VarU0;
        b0 b0VarJ = null;
        if (!n0(j0Var, function1)) {
            return null;
        }
        n0 n0VarT0 = t0(j0Var, function1);
        kotlin.jvm.internal.r.c(n0VarT0);
        if (j0Var.M()) {
            n0VarU0 = u0(j0Var, function1);
            kotlin.jvm.internal.r.c(n0VarU0);
        } else {
            n0VarU0 = null;
        }
        if (n0VarU0 != null) {
            n0VarU0.q();
            n0VarT0.q();
        }
        kotlin.reflect.jvm.internal.impl.load.java.descriptors.d dVar = new kotlin.reflect.jvm.internal.impl.load.java.descriptors.d(C(), n0VarT0, n0VarU0, j0Var);
        a0 returnType = n0VarT0.getReturnType();
        kotlin.jvm.internal.r.c(returnType);
        dVar.V0(returnType, kotlin.collections.u.j(), z(), null);
        kotlin.reflect.jvm.internal.impl.descriptors.impl.a0 a0VarH = kotlin.reflect.jvm.internal.impl.resolve.b.h(dVar, n0VarT0.getAnnotations(), false, false, false, n0VarT0.o());
        a0VarH.J0(n0VarT0);
        a0VarH.M0(dVar.getType());
        kotlin.jvm.internal.r.d(a0VarH, "createGetter(\n          …escriptor.type)\n        }");
        if (n0VarU0 != null) {
            List<v0> listF = n0VarU0.f();
            kotlin.jvm.internal.r.d(listF, "setterMethod.valueParameters");
            v0 v0Var = (v0) s.e0(listF);
            if (v0Var == null) {
                throw new AssertionError(kotlin.jvm.internal.r.m("No parameter found for ", n0VarU0));
            }
            b0VarJ = kotlin.reflect.jvm.internal.impl.resolve.b.j(dVar, n0VarU0.getAnnotations(), v0Var.getAnnotations(), false, false, false, n0VarU0.getVisibility(), n0VarU0.o());
            b0VarJ.J0(n0VarU0);
        }
        dVar.P0(a0VarH, b0VarJ);
        return dVar;
    }

    private final kotlin.reflect.jvm.internal.impl.load.java.descriptors.e i0(kotlin.reflect.jvm.internal.impl.load.java.structure.r rVar, a0 a0Var, Modality modality) {
        kotlin.reflect.jvm.internal.impl.load.java.descriptors.e eVarX0 = kotlin.reflect.jvm.internal.impl.load.java.descriptors.e.X0(C(), kotlin.reflect.jvm.internal.impl.load.java.lazy.d.a(w(), rVar), modality, kotlin.reflect.jvm.internal.impl.load.java.v.a(rVar.getVisibility()), false, rVar.getName(), w().a().t().a(rVar), false);
        kotlin.jvm.internal.r.d(eVarX0, "create(\n            owne…inal = */ false\n        )");
        kotlin.reflect.jvm.internal.impl.descriptors.impl.a0 a0VarB = kotlin.reflect.jvm.internal.impl.resolve.b.b(eVarX0, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b());
        kotlin.jvm.internal.r.d(a0VarB, "createDefaultGetter(prop…iptor, Annotations.EMPTY)");
        eVarX0.P0(a0VarB, null);
        a0 a0VarQ = a0Var == null ? q(rVar, ContextKt.f(w(), eVarX0, rVar, 0, 4, null)) : a0Var;
        eVarX0.V0(a0VarQ, kotlin.collections.u.j(), z(), null);
        a0VarB.M0(a0VarQ);
        return eVarX0;
    }

    static /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.descriptors.e j0(LazyJavaClassMemberScope lazyJavaClassMemberScope, kotlin.reflect.jvm.internal.impl.load.java.structure.r rVar, a0 a0Var, Modality modality, int i, Object obj) {
        if ((i & 2) != 0) {
            a0Var = null;
        }
        return lazyJavaClassMemberScope.i0(rVar, a0Var, modality);
    }

    private final List<v0> k0(kotlin.reflect.jvm.internal.impl.descriptors.impl.e eVar) {
        Collection<w> collectionM = this.o.m();
        ArrayList arrayList = new ArrayList(collectionM.size());
        a0 a0Var = null;
        kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a aVarD = kotlin.reflect.jvm.internal.impl.load.java.lazy.types.b.d(TypeUsage.COMMON, false, null, 2, null);
        int i = 0;
        for (w wVar : collectionM) {
            int i2 = i + 1;
            a0 a0VarO = w().g().o(wVar.getType(), aVarD);
            arrayList.add(new ValueParameterDescriptorImpl(eVar, null, i, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), wVar.getName(), a0VarO, false, false, false, wVar.h() ? w().a().m().k().k(a0VarO) : a0Var, w().a().t().a(wVar)));
            i = i2;
            a0Var = null;
        }
        return arrayList;
    }

    private final n0 l0(n0 n0Var, f fVar) {
        u.a<? extends n0> aVarS = n0Var.s();
        aVarS.i(fVar);
        aVarS.s();
        aVarS.k();
        u uVarBuild = aVarS.build();
        kotlin.jvm.internal.r.c(uVarBuild);
        return (n0) uVarBuild;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0012  */
    /* JADX WARN: Code duplicated, block: B:7:0x0022  */
    private final n0 m0(n0 n0Var) {
        kotlin.reflect.jvm.internal.impl.name.d dVarJ;
        kotlin.reflect.jvm.internal.impl.name.c cVarL;
        List<v0> valueParameters = n0Var.f();
        kotlin.jvm.internal.r.d(valueParameters, "valueParameters");
        v0 v0Var = (v0) s.q0(valueParameters);
        if (v0Var != null) {
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = v0Var.getType().I0().u();
            if (fVarU == null || (dVarJ = DescriptorUtilsKt.j(fVarU)) == null) {
                cVarL = null;
            } else {
                if (!dVarJ.f()) {
                    dVarJ = null;
                }
                if (dVarJ == null) {
                    cVarL = null;
                } else {
                    cVarL = dVarJ.l();
                }
            }
            if (!i.a(cVarL, w().a().q().c())) {
                v0Var = null;
            }
        } else {
            v0Var = null;
        }
        if (v0Var == null) {
            return null;
        }
        u.a<? extends n0> aVarS = n0Var.s();
        List<v0> valueParameters2 = n0Var.f();
        kotlin.jvm.internal.r.d(valueParameters2, "valueParameters");
        n0 n0Var2 = (n0) aVarS.b(CollectionsKt___CollectionsKt.V(valueParameters2, 1)).l(v0Var.getType().H0().get(0).getType()).build();
        d0 d0Var = (d0) n0Var2;
        if (d0Var != null) {
            d0Var.d1(true);
        }
        return n0Var2;
    }

    private final boolean n0(j0 j0Var, Function1<? super f, ? extends Collection<? extends n0>> function1) {
        if (b.a(j0Var)) {
            return false;
        }
        n0 n0VarT0 = t0(j0Var, function1);
        n0 n0VarU0 = u0(j0Var, function1);
        if (n0VarT0 == null) {
            return false;
        }
        if (j0Var.M()) {
            return n0VarU0 != null && n0VarU0.q() == n0VarT0.q();
        }
        return true;
    }

    private final boolean o0(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        OverridingUtil.OverrideCompatibilityInfo.Result resultC = OverridingUtil.f15481d.G(aVar2, aVar, true).c();
        kotlin.jvm.internal.r.d(resultC, "DEFAULT.isOverridableByW…iptor, this, true).result");
        return resultC == OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE && !m.f15129a.a(aVar2, aVar);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0057  */
    private final boolean p0(n0 n0Var) {
        boolean z;
        SpecialGenericSignatures.a aVar = SpecialGenericSignatures.f15015a;
        f name = n0Var.getName();
        kotlin.jvm.internal.r.d(name, "name");
        List<f> listB = aVar.b(name);
        if (!(listB instanceof Collection) || !listB.isEmpty()) {
            for (f fVar : listB) {
                Set<n0> setX0 = x0(fVar);
                ArrayList arrayList = new ArrayList();
                for (Object obj : setX0) {
                    if (SpecialBuiltinMembers.a((n0) obj)) {
                        arrayList.add(obj);
                    }
                }
                if (arrayList.isEmpty()) {
                    z = false;
                    break;
                }
                n0 n0VarL0 = l0(n0Var, fVar);
                if (arrayList.isEmpty()) {
                    z = false;
                    break;
                    break;
                }
                Iterator it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                        break;
                    }
                    if (q0((n0) it.next(), n0VarL0)) {
                        z = true;
                        break;
                    }
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    private final boolean q0(n0 n0Var, u uVar) {
        if (BuiltinMethodsWithDifferentJvmName.m.k(n0Var)) {
            uVar = uVar.a();
        }
        kotlin.jvm.internal.r.d(uVar, "if (superDescriptor.isRe…iginal else subDescriptor");
        return o0(uVar, n0Var);
    }

    private final boolean r0(n0 n0Var) {
        n0 n0VarM0 = m0(n0Var);
        if (n0VarM0 == null) {
            return false;
        }
        f name = n0Var.getName();
        kotlin.jvm.internal.r.d(name, "name");
        Set<n0> setX0 = x0(name);
        if ((setX0 instanceof Collection) && setX0.isEmpty()) {
            return false;
        }
        for (n0 n0Var2 : setX0) {
            if (n0Var2.isSuspend() && o0(n0VarM0, n0Var2)) {
                return true;
            }
        }
        return false;
    }

    private final n0 s0(j0 j0Var, String str, Function1<? super f, ? extends Collection<? extends n0>> function1) {
        n0 n0Var;
        f fVarG = f.g(str);
        kotlin.jvm.internal.r.d(fVarG, "identifier(getterName)");
        Iterator<T> it = function1.invoke(fVarG).iterator();
        do {
            n0Var = null;
            if (!it.hasNext()) {
                break;
            }
            n0 n0Var2 = (n0) it.next();
            if (n0Var2.f().size() == 0) {
                kotlin.reflect.jvm.internal.impl.types.checker.f fVar = kotlin.reflect.jvm.internal.impl.types.checker.f.f15664a;
                a0 returnType = n0Var2.getReturnType();
                if (returnType == null ? false : fVar.d(returnType, j0Var.getType())) {
                    n0Var = n0Var2;
                }
            }
        } while (n0Var == null);
        return n0Var;
    }

    private final n0 t0(j0 j0Var, Function1<? super f, ? extends Collection<? extends n0>> function1) {
        k0 getter = j0Var.getGetter();
        k0 k0Var = getter == null ? null : (k0) SpecialBuiltinMembers.d(getter);
        String strA = k0Var != null ? ClassicBuiltinSpecialProperties.f15006a.a(k0Var) : null;
        if (strA != null && !SpecialBuiltinMembers.f(C(), k0Var)) {
            return s0(j0Var, strA, function1);
        }
        String strB = j0Var.getName().b();
        kotlin.jvm.internal.r.d(strB, "name.asString()");
        return s0(j0Var, q.a(strB), function1);
    }

    private final n0 u0(j0 j0Var, Function1<? super f, ? extends Collection<? extends n0>> function1) {
        n0 n0Var;
        a0 returnType;
        String strB = j0Var.getName().b();
        kotlin.jvm.internal.r.d(strB, "name.asString()");
        f fVarG = f.g(q.d(strB));
        kotlin.jvm.internal.r.d(fVarG, "identifier(JvmAbi.setterName(name.asString()))");
        Iterator<T> it = function1.invoke(fVarG).iterator();
        do {
            n0Var = null;
            if (!it.hasNext()) {
                break;
            }
            n0 n0Var2 = (n0) it.next();
            if (n0Var2.f().size() == 1 && (returnType = n0Var2.getReturnType()) != null && kotlin.reflect.jvm.internal.impl.builtins.g.A0(returnType)) {
                kotlin.reflect.jvm.internal.impl.types.checker.f fVar = kotlin.reflect.jvm.internal.impl.types.checker.f.f15664a;
                List<v0> listF = n0Var2.f();
                kotlin.jvm.internal.r.d(listF, "descriptor.valueParameters");
                if (fVar.b(((v0) s.C0(listF)).getType(), j0Var.getType())) {
                    n0Var = n0Var2;
                }
            }
        } while (n0Var == null);
        return n0Var;
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.s v0(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.s visibility = dVar.getVisibility();
        kotlin.jvm.internal.r.d(visibility, "classDescriptor.visibility");
        if (!kotlin.jvm.internal.r.a(visibility, l.b)) {
            return visibility;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.s PROTECTED_AND_PACKAGE = l.c;
        kotlin.jvm.internal.r.d(PROTECTED_AND_PACKAGE, "PROTECTED_AND_PACKAGE");
        return PROTECTED_AND_PACKAGE;
    }

    private final Set<n0> x0(f fVar) {
        Collection<a0> collectionB0 = b0();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = collectionB0.iterator();
        while (it.hasNext()) {
            z.B(linkedHashSet, ((a0) it.next()).m().b(fVar, NoLookupLocation.WHEN_GET_SUPER_MEMBERS));
        }
        return linkedHashSet;
    }

    private final Set<j0> z0(f fVar) {
        Collection<a0> collectionB0 = b0();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = collectionB0.iterator();
        while (it.hasNext()) {
            Collection<? extends j0> collectionC = ((a0) it.next()).m().c(fVar, NoLookupLocation.WHEN_GET_SUPER_MEMBERS);
            ArrayList arrayList2 = new ArrayList(v.u(collectionC, 10));
            Iterator<T> it2 = collectionC.iterator();
            while (it2.hasNext()) {
                arrayList2.add((j0) it2.next());
            }
            z.B(arrayList, arrayList2);
        }
        return CollectionsKt___CollectionsKt.Q0(arrayList);
    }

    public void F0(f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(location, "location");
        kotlin.reflect.jvm.internal.s.b.a.a(w().a().l(), location, C(), name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected boolean G(JavaMethodDescriptor javaMethodDescriptor) {
        kotlin.jvm.internal.r.e(javaMethodDescriptor, "<this>");
        if (this.o.o()) {
            return false;
        }
        return B0(javaMethodDescriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected LazyJavaScope.a H(kotlin.reflect.jvm.internal.impl.load.java.structure.r method, List<? extends t0> methodTypeParameters, a0 returnType, List<? extends v0> valueParameters) {
        kotlin.jvm.internal.r.e(method, "method");
        kotlin.jvm.internal.r.e(methodTypeParameters, "methodTypeParameters");
        kotlin.jvm.internal.r.e(returnType, "returnType");
        kotlin.jvm.internal.r.e(valueParameters, "valueParameters");
        kotlin.reflect.jvm.internal.impl.load.java.components.e.b bVarA = w().a().s().a(method, C(), returnType, null, valueParameters, methodTypeParameters);
        kotlin.jvm.internal.r.d(bVarA, "c.components.signaturePr…dTypeParameters\n        )");
        a0 a0VarD = bVarA.d();
        kotlin.jvm.internal.r.d(a0VarD, "propagated.returnType");
        a0 a0VarC = bVarA.c();
        List<v0> listF = bVarA.f();
        kotlin.jvm.internal.r.d(listF, "propagated.valueParameters");
        List<t0> listE = bVarA.e();
        kotlin.jvm.internal.r.d(listE, "propagated.typeParameters");
        boolean zG = bVarA.g();
        List<String> listB = bVarA.b();
        kotlin.jvm.internal.r.d(listB, "propagated.errors");
        return new LazyJavaScope.a(a0VarD, a0VarC, listF, listE, zG, listB);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
    public LinkedHashSet<f> n(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super f, Boolean> function1) {
        kotlin.jvm.internal.r.e(kindFilter, "kindFilter");
        Collection<a0> collectionA = C().i().a();
        kotlin.jvm.internal.r.d(collectionA, "ownerDescriptor.typeConstructor.supertypes");
        LinkedHashSet<f> linkedHashSet = new LinkedHashSet<>();
        Iterator<T> it = collectionA.iterator();
        while (it.hasNext()) {
            z.B(linkedHashSet, ((a0) it.next()).m().a());
        }
        linkedHashSet.addAll(y().invoke().a());
        linkedHashSet.addAll(y().invoke().b());
        linkedHashSet.addAll(l(kindFilter, function1));
        linkedHashSet.addAll(w().a().w().e(C()));
        return linkedHashSet;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] */
    public ClassDeclaredMemberIndex p() {
        return new ClassDeclaredMemberIndex(this.o, new Function1<kotlin.reflect.jvm.internal.impl.load.java.structure.q, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$computeMemberIndex$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(kotlin.reflect.jvm.internal.impl.load.java.structure.q it) {
                kotlin.jvm.internal.r.e(it, "it");
                return Boolean.valueOf(!it.O());
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<n0> b(f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(location, "location");
        F0(name, location);
        return super.b(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<j0> c(f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(location, "location");
        F0(name, location);
        return super.c(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public kotlin.reflect.jvm.internal.impl.descriptors.f f(f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(location, "location");
        F0(name, location);
        LazyJavaClassMemberScope lazyJavaClassMemberScope = (LazyJavaClassMemberScope) B();
        kotlin.reflect.jvm.internal.impl.descriptors.impl.f fVarInvoke = lazyJavaClassMemberScope == null ? null : lazyJavaClassMemberScope.t.invoke(name);
        return fVarInvoke == null ? this.t.invoke(name) : fVarInvoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected Set<f> l(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super f, Boolean> function1) {
        kotlin.jvm.internal.r.e(kindFilter, "kindFilter");
        return kotlin.collections.v0.h(this.r.invoke(), this.s.invoke().keySet());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected void o(Collection<n0> result, f name) {
        kotlin.jvm.internal.r.e(result, "result");
        kotlin.jvm.internal.r.e(name, "name");
        if (this.o.q() && y().invoke().e(name) != null) {
            boolean z = true;
            if (!result.isEmpty()) {
                Iterator<T> it = result.iterator();
                while (it.hasNext()) {
                    if (((n0) it.next()).f().isEmpty()) {
                        z = false;
                        break;
                    }
                }
            }
            if (z) {
                w wVarE = y().invoke().e(name);
                kotlin.jvm.internal.r.c(wVarE);
                result.add(H0(wVarE));
            }
        }
        w().a().w().d(C(), name, result);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected void r(Collection<n0> result, f name) {
        boolean z;
        kotlin.jvm.internal.r.e(result, "result");
        kotlin.jvm.internal.r.e(name, "name");
        Set<n0> setX0 = x0(name);
        if (!SpecialGenericSignatures.f15015a.k(name) && !BuiltinMethodsWithSpecialGenericSignature.m.l(name)) {
            if (!(setX0 instanceof Collection) || !setX0.isEmpty()) {
                Iterator<T> it = setX0.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((u) it.next()).isSuspend()) {
                            z = false;
                            break;
                        }
                    } else {
                        z = true;
                        break;
                    }
                }
            } else {
                z = true;
                break;
            }
            if (z) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : setX0) {
                    if (B0((n0) obj)) {
                        arrayList.add(obj);
                    }
                }
                V(result, name, arrayList, false);
                return;
            }
        }
        kotlin.reflect.jvm.internal.impl.utils.e eVarA = kotlin.reflect.jvm.internal.impl.utils.e.c.a();
        Collection<? extends n0> collectionD = kotlin.reflect.jvm.internal.impl.load.java.components.a.d(name, setX0, kotlin.collections.u.j(), C(), kotlin.reflect.jvm.internal.impl.serialization.deserialization.l.f15601a, w().a().k().a());
        kotlin.jvm.internal.r.d(collectionD, "resolveOverridesForNonSt….overridingUtil\n        )");
        W(name, result, collectionD, result, new LazyJavaClassMemberScope$computeNonDeclaredFunctions$3(this));
        W(name, result, collectionD, eVarA, new LazyJavaClassMemberScope$computeNonDeclaredFunctions$4(this));
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : setX0) {
            if (B0((n0) obj2)) {
                arrayList2.add(obj2);
            }
        }
        V(result, name, CollectionsKt___CollectionsKt.x0(arrayList2, eVarA), true);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected void s(f name, Collection<j0> result) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(result, "result");
        if (this.o.o()) {
            Y(name, result);
        }
        Set<j0> setZ0 = z0(name);
        if (setZ0.isEmpty()) {
            return;
        }
        kotlin.reflect.jvm.internal.impl.utils.e.b bVar = kotlin.reflect.jvm.internal.impl.utils.e.c;
        kotlin.reflect.jvm.internal.impl.utils.e eVarA = bVar.a();
        kotlin.reflect.jvm.internal.impl.utils.e eVarA2 = bVar.a();
        X(setZ0, result, eVarA, new Function1<f, Collection<? extends n0>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$computeNonDeclaredProperties$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Collection<n0> invoke(f it) {
                kotlin.jvm.internal.r.e(it, "it");
                return this.this$0.I0(it);
            }
        });
        X(kotlin.collections.v0.g(setZ0, eVarA), eVarA2, null, new Function1<f, Collection<? extends n0>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$computeNonDeclaredProperties$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Collection<n0> invoke(f it) {
                kotlin.jvm.internal.r.e(it, "it");
                return this.this$0.J0(it);
            }
        });
        Collection<? extends j0> collectionD = kotlin.reflect.jvm.internal.impl.load.java.components.a.d(name, kotlin.collections.v0.h(setZ0, eVarA2), result, C(), w().a().c(), w().a().k().a());
        kotlin.jvm.internal.r.d(collectionD, "resolveOverridesForNonSt…rridingUtil\n            )");
        result.addAll(collectionD);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected Set<f> t(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super f, Boolean> function1) {
        kotlin.jvm.internal.r.e(kindFilter, "kindFilter");
        if (this.o.o()) {
            return a();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(y().invoke().c());
        Collection<a0> collectionA = C().i().a();
        kotlin.jvm.internal.r.d(collectionA, "ownerDescriptor.typeConstructor.supertypes");
        Iterator<T> it = collectionA.iterator();
        while (it.hasNext()) {
            z.B(linkedHashSet, ((a0) it.next()).m().d());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public String toString() {
        return kotlin.jvm.internal.r.m("Lazy Java member scope for ", this.o.e());
    }

    public final h<List<kotlin.reflect.jvm.internal.impl.descriptors.c>> w0() {
        return this.q;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    /* JADX INFO: renamed from: y0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.d C() {
        return this.n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected m0 z() {
        return kotlin.reflect.jvm.internal.impl.resolve.c.l(C());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassMemberScope(final e c, kotlin.reflect.jvm.internal.impl.descriptors.d ownerDescriptor, g jClass, boolean z, LazyJavaClassMemberScope lazyJavaClassMemberScope) {
        super(c, lazyJavaClassMemberScope);
        kotlin.jvm.internal.r.e(c, "c");
        kotlin.jvm.internal.r.e(ownerDescriptor, "ownerDescriptor");
        kotlin.jvm.internal.r.e(jClass, "jClass");
        this.n = ownerDescriptor;
        this.o = jClass;
        this.p = z;
        this.q = c.e().c(new Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.c>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$constructors$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends kotlin.reflect.jvm.internal.impl.descriptors.c> invoke() {
                Collection<k> collectionJ = this.this$0.o.j();
                ArrayList arrayList = new ArrayList(collectionJ.size());
                Iterator<k> it = collectionJ.iterator();
                while (it.hasNext()) {
                    arrayList.add(this.this$0.G0(it.next()));
                }
                if (this.this$0.o.q()) {
                    kotlin.reflect.jvm.internal.impl.descriptors.c cVarE0 = this.this$0.e0();
                    boolean z2 = false;
                    String strC = r.c(cVarE0, false, false, 2, null);
                    if (!arrayList.isEmpty()) {
                        Iterator it2 = arrayList.iterator();
                        do {
                            if (!it2.hasNext()) {
                                z2 = true;
                                break;
                            }
                        } while (!kotlin.jvm.internal.r.a(r.c((kotlin.reflect.jvm.internal.impl.descriptors.c) it2.next(), false, false, 2, null), strC));
                    } else {
                        z2 = true;
                        break;
                    }
                    if (z2) {
                        arrayList.add(cVarE0);
                        c.a().h().a(this.this$0.o, cVarE0);
                    }
                }
                c.a().w().b(this.this$0.C(), arrayList);
                SignatureEnhancement signatureEnhancementR = c.a().r();
                e eVar = c;
                LazyJavaClassMemberScope lazyJavaClassMemberScope2 = this.this$0;
                boolean zIsEmpty = arrayList.isEmpty();
                List listN = arrayList;
                if (zIsEmpty) {
                    listN = kotlin.collections.u.n(lazyJavaClassMemberScope2.d0());
                }
                return CollectionsKt___CollectionsKt.M0(signatureEnhancementR.e(eVar, listN));
            }
        });
        this.r = c.e().c(new Function0<Set<? extends f>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$nestedClassIndex$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Set<? extends f> invoke() {
                return CollectionsKt___CollectionsKt.Q0(this.this$0.o.z());
            }
        });
        this.s = c.e().c(new Function0<Map<f, ? extends n>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$enumEntryIndex$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Map<f, ? extends n> invoke() {
                Collection<n> collectionW = this.this$0.o.w();
                ArrayList arrayList = new ArrayList();
                for (Object obj : collectionW) {
                    if (((n) obj).H()) {
                        arrayList.add(obj);
                    }
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.f.b(kotlin.collections.n0.d(v.u(arrayList, 10)), 16));
                for (Object obj2 : arrayList) {
                    linkedHashMap.put(((n) obj2).getName(), obj2);
                }
                return linkedHashMap;
            }
        });
        this.t = c.e().g(new Function1<f, kotlin.reflect.jvm.internal.impl.descriptors.impl.f>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$nestedClasses$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final kotlin.reflect.jvm.internal.impl.descriptors.impl.f invoke(f name) {
                kotlin.jvm.internal.r.e(name, "name");
                if (!((Set) this.this$0.r.invoke()).contains(name)) {
                    n nVar = (n) ((Map) this.this$0.s.invoke()).get(name);
                    if (nVar == null) {
                        return null;
                    }
                    kotlin.reflect.jvm.internal.impl.storage.m mVarE = c.e();
                    final LazyJavaClassMemberScope lazyJavaClassMemberScope2 = this.this$0;
                    return kotlin.reflect.jvm.internal.impl.descriptors.impl.m.H0(c.e(), this.this$0.C(), name, mVarE.c(new Function0<Set<? extends f>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope$nestedClasses$1$enumMemberNames$1
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Set<? extends f> invoke() {
                            return kotlin.collections.v0.h(lazyJavaClassMemberScope2.a(), lazyJavaClassMemberScope2.d());
                        }
                    }), kotlin.reflect.jvm.internal.impl.load.java.lazy.d.a(c, nVar), c.a().t().a(nVar));
                }
                kotlin.reflect.jvm.internal.impl.load.java.i iVarD = c.a().d();
                kotlin.reflect.jvm.internal.impl.name.b bVarH = DescriptorUtilsKt.h(this.this$0.C());
                kotlin.jvm.internal.r.c(bVarH);
                kotlin.reflect.jvm.internal.impl.name.b bVarD = bVarH.d(name);
                kotlin.jvm.internal.r.d(bVarD, "ownerDescriptor.classId!…createNestedClassId(name)");
                g gVarA = iVarD.a(new kotlin.reflect.jvm.internal.impl.load.java.i.a(bVarD, null, this.this$0.o, 2, null));
                if (gVarA == null) {
                    return null;
                }
                e eVar = c;
                LazyJavaClassDescriptor lazyJavaClassDescriptor = new LazyJavaClassDescriptor(eVar, this.this$0.C(), gVarA, null, 8, null);
                eVar.a().e().a(lazyJavaClassDescriptor);
                return lazyJavaClassDescriptor;
            }
        });
    }
}
