package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.o0;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.z;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.e;
import kotlin.reflect.jvm.internal.impl.load.java.structure.b0;
import kotlin.reflect.jvm.internal.impl.load.java.structure.n;
import kotlin.reflect.jvm.internal.impl.load.java.structure.x;
import kotlin.reflect.jvm.internal.impl.load.java.structure.y;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.f;
import kotlin.reflect.jvm.internal.impl.storage.g;
import kotlin.reflect.jvm.internal.impl.storage.h;
import kotlin.reflect.jvm.internal.impl.storage.l;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class LazyJavaScope extends f {
    static final /* synthetic */ KProperty<Object>[] m = {v.i(new PropertyReference1Impl(v.b(LazyJavaScope.class), "functionNamesLazy", "getFunctionNamesLazy()Ljava/util/Set;")), v.i(new PropertyReference1Impl(v.b(LazyJavaScope.class), "propertyNamesLazy", "getPropertyNamesLazy()Ljava/util/Set;")), v.i(new PropertyReference1Impl(v.b(LazyJavaScope.class), "classNamesLazy", "getClassNamesLazy()Ljava/util/Set;"))};
    private final e b;
    private final LazyJavaScope c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h<Collection<k>> f15100d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final h<kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a> f15101e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.name.f, Collection<n0>> f15102f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final g<kotlin.reflect.jvm.internal.impl.name.f, j0> f15103g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.name.f, Collection<n0>> f15104h;
    private final h i;
    private final h j;
    private final h k;
    private final kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.name.f, List<j0>> l;

    protected static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a0 f15105a;
        private final a0 b;
        private final List<v0> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<t0> f15106d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f15107e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final List<String> f15108f;

        /* JADX WARN: Multi-variable type inference failed */
        public a(a0 returnType, a0 a0Var, List<? extends v0> valueParameters, List<? extends t0> typeParameters, boolean z, List<String> errors) {
            r.e(returnType, "returnType");
            r.e(valueParameters, "valueParameters");
            r.e(typeParameters, "typeParameters");
            r.e(errors, "errors");
            this.f15105a = returnType;
            this.b = a0Var;
            this.c = valueParameters;
            this.f15106d = typeParameters;
            this.f15107e = z;
            this.f15108f = errors;
        }

        public final List<String> a() {
            return this.f15108f;
        }

        public final boolean b() {
            return this.f15107e;
        }

        public final a0 c() {
            return this.b;
        }

        public final a0 d() {
            return this.f15105a;
        }

        public final List<t0> e() {
            return this.f15106d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return r.a(this.f15105a, aVar.f15105a) && r.a(this.b, aVar.b) && r.a(this.c, aVar.c) && r.a(this.f15106d, aVar.f15106d) && this.f15107e == aVar.f15107e && r.a(this.f15108f, aVar.f15108f);
        }

        public final List<v0> f() {
            return this.c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v9, types: [int] */
        /* JADX WARN: Type inference failed for: r1v11 */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v8, types: [int] */
        public int hashCode() {
            int iHashCode = this.f15105a.hashCode() * 31;
            a0 a0Var = this.b;
            int iHashCode2 = (((((iHashCode + (a0Var == null ? 0 : a0Var.hashCode())) * 31) + this.c.hashCode()) * 31) + this.f15106d.hashCode()) * 31;
            boolean z = this.f15107e;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            return ((iHashCode2 + r1) * 31) + this.f15108f.hashCode();
        }

        public String toString() {
            return "MethodSignatureData(returnType=" + this.f15105a + ", receiverType=" + this.b + ", valueParameters=" + this.c + ", typeParameters=" + this.f15106d + ", hasStableParameterNames=" + this.f15107e + ", errors=" + this.f15108f + ')';
        }
    }

    protected static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<v0> f15109a;
        private final boolean b;

        /* JADX WARN: Multi-variable type inference failed */
        public b(List<? extends v0> descriptors, boolean z) {
            r.e(descriptors, "descriptors");
            this.f15109a = descriptors;
            this.b = z;
        }

        public final List<v0> a() {
            return this.f15109a;
        }

        public final boolean b() {
            return this.b;
        }
    }

    public /* synthetic */ LazyJavaScope(e eVar, LazyJavaScope lazyJavaScope, int i, o oVar) {
        this(eVar, (i & 2) != 0 ? null : lazyJavaScope);
    }

    private final Set<kotlin.reflect.jvm.internal.impl.name.f> A() {
        return (Set) l.a(this.i, this, m[0]);
    }

    private final Set<kotlin.reflect.jvm.internal.impl.name.f> D() {
        return (Set) l.a(this.j, this, m[1]);
    }

    private final a0 E(n nVar) {
        boolean z = false;
        a0 a0VarO = this.b.g().o(nVar.getType(), kotlin.reflect.jvm.internal.impl.load.java.lazy.types.b.d(TypeUsage.COMMON, false, null, 3, null));
        if ((kotlin.reflect.jvm.internal.impl.builtins.g.q0(a0VarO) || kotlin.reflect.jvm.internal.impl.builtins.g.t0(a0VarO)) && F(nVar) && nVar.M()) {
            z = true;
        }
        if (!z) {
            return a0VarO;
        }
        a0 a0VarO2 = y0.o(a0VarO);
        r.d(a0VarO2, "makeNotNullable(propertyType)");
        return a0VarO2;
    }

    private final boolean F(n nVar) {
        return nVar.isFinal() && nVar.O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j0 J(final n nVar) {
        final z zVarU = u(nVar);
        zVarU.Q0(null, null, null, null);
        zVarU.V0(E(nVar), u.j(), z(), null);
        if (kotlin.reflect.jvm.internal.impl.resolve.c.K(zVarU, zVarU.getType())) {
            zVarU.G0(this.b.e().e(new Function0<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$resolveProperty$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> invoke() {
                    return this.this$0.w().a().g().a(nVar, zVarU);
                }
            }));
        }
        this.b.a().h().b(nVar, zVarU);
        return zVarU;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(Set<n0> set) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : set) {
            String strC = kotlin.reflect.jvm.internal.impl.load.kotlin.r.c((n0) obj, false, false, 2, null);
            Object arrayList = linkedHashMap.get(strC);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(strC, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        for (List list : linkedHashMap.values()) {
            if (list.size() != 1) {
                Collection<? extends n0> collectionA = OverridingUtilsKt.a(list, new Function1<n0, kotlin.reflect.jvm.internal.impl.descriptors.a>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$retainMostSpecificMethods$mostSpecificMethods$1
                    @Override // kotlin.jvm.functions.Function1
                    public final kotlin.reflect.jvm.internal.impl.descriptors.a invoke(n0 selectMostSpecificInEachOverridableGroup) {
                        r.e(selectMostSpecificInEachOverridableGroup, "$this$selectMostSpecificInEachOverridableGroup");
                        return selectMostSpecificInEachOverridableGroup;
                    }
                });
                set.removeAll(list);
                set.addAll(collectionA);
            }
        }
    }

    private final z u(n nVar) {
        kotlin.reflect.jvm.internal.impl.load.java.descriptors.e eVarX0 = kotlin.reflect.jvm.internal.impl.load.java.descriptors.e.X0(C(), kotlin.reflect.jvm.internal.impl.load.java.lazy.d.a(this.b, nVar), Modality.FINAL, kotlin.reflect.jvm.internal.impl.load.java.v.a(nVar.getVisibility()), !nVar.isFinal(), nVar.getName(), this.b.a().t().a(nVar), F(nVar));
        r.d(eVarX0, "create(\n            owne…d.isFinalStatic\n        )");
        return eVarX0;
    }

    private final Set<kotlin.reflect.jvm.internal.impl.name.f> x() {
        return (Set) l.a(this.k, this, m[2]);
    }

    protected final LazyJavaScope B() {
        return this.c;
    }

    protected abstract k C();

    protected boolean G(JavaMethodDescriptor javaMethodDescriptor) {
        r.e(javaMethodDescriptor, "<this>");
        return true;
    }

    protected abstract a H(kotlin.reflect.jvm.internal.impl.load.java.structure.r rVar, List<? extends t0> list, a0 a0Var, List<? extends v0> list2);

    protected final JavaMethodDescriptor I(kotlin.reflect.jvm.internal.impl.load.java.structure.r method) {
        r.e(method, "method");
        JavaMethodDescriptor javaMethodDescriptorL1 = JavaMethodDescriptor.l1(C(), kotlin.reflect.jvm.internal.impl.load.java.lazy.d.a(this.b, method), method.getName(), this.b.a().t().a(method), this.f15101e.invoke().e(method.getName()) != null && method.f().isEmpty());
        r.d(javaMethodDescriptorL1, "createJavaMethod(\n      …eters.isEmpty()\n        )");
        e eVarF = ContextKt.f(this.b, javaMethodDescriptorL1, method, 0, 4, null);
        List<y> typeParameters = method.getTypeParameters();
        List<? extends t0> arrayList = new ArrayList<>(kotlin.collections.v.u(typeParameters, 10));
        Iterator<T> it = typeParameters.iterator();
        while (it.hasNext()) {
            t0 t0VarA = eVarF.f().a((y) it.next());
            r.c(t0VarA);
            arrayList.add(t0VarA);
        }
        b bVarK = K(eVarF, javaMethodDescriptorL1, method.f());
        a aVarH = H(method, arrayList, q(method, eVarF), bVarK.a());
        a0 a0VarC = aVarH.c();
        javaMethodDescriptorL1.k1(a0VarC == null ? null : kotlin.reflect.jvm.internal.impl.resolve.b.f(javaMethodDescriptorL1, a0VarC, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b()), z(), aVarH.e(), aVarH.f(), aVarH.d(), Modality.Companion.a(false, method.isAbstract(), !method.isFinal()), kotlin.reflect.jvm.internal.impl.load.java.v.a(method.getVisibility()), aVarH.c() != null ? kotlin.collections.n0.e(kotlin.l.a(JavaMethodDescriptor.F, s.c0(bVarK.a()))) : o0.h());
        javaMethodDescriptorL1.o1(aVarH.b(), bVarK.b());
        if (!(!aVarH.a().isEmpty())) {
            return javaMethodDescriptorL1;
        }
        eVarF.a().s().b(javaMethodDescriptorL1, aVarH.a());
        throw null;
    }

    protected final b K(e eVar, kotlin.reflect.jvm.internal.impl.descriptors.u function, List<? extends b0> jValueParameters) {
        Pair pairA;
        kotlin.reflect.jvm.internal.impl.name.f name;
        e c = eVar;
        r.e(c, "c");
        r.e(function, "function");
        r.e(jValueParameters, "jValueParameters");
        Iterable<IndexedValue> iterableS0 = CollectionsKt___CollectionsKt.S0(jValueParameters);
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(iterableS0, 10));
        boolean z = false;
        boolean z2 = false;
        for (IndexedValue indexedValue : iterableS0) {
            int index = indexedValue.getIndex();
            b0 b0Var = (b0) indexedValue.b();
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarA = kotlin.reflect.jvm.internal.impl.load.java.lazy.d.a(c, b0Var);
            kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a aVarD = kotlin.reflect.jvm.internal.impl.load.java.lazy.types.b.d(TypeUsage.COMMON, z, null, 3, null);
            if (b0Var.h()) {
                x type = b0Var.getType();
                kotlin.reflect.jvm.internal.impl.load.java.structure.f fVar = type instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.f ? (kotlin.reflect.jvm.internal.impl.load.java.structure.f) type : null;
                if (fVar == null) {
                    throw new AssertionError(r.m("Vararg parameter should be an array: ", b0Var));
                }
                a0 a0VarK = eVar.g().k(fVar, aVarD, true);
                pairA = kotlin.l.a(a0VarK, eVar.d().k().k(a0VarK));
            } else {
                pairA = kotlin.l.a(eVar.g().o(b0Var.getType(), aVarD), null);
            }
            a0 a0Var = (a0) pairA.component1();
            a0 a0Var2 = (a0) pairA.component2();
            if (r.a(function.getName().b(), "equals") && jValueParameters.size() == 1 && r.a(eVar.d().k().I(), a0Var)) {
                name = kotlin.reflect.jvm.internal.impl.name.f.g("other");
            } else {
                name = b0Var.getName();
                if (name == null) {
                    z2 = true;
                }
                if (name == null) {
                    name = kotlin.reflect.jvm.internal.impl.name.f.g(r.m(TtmlNode.TAG_P, Integer.valueOf(index)));
                    r.d(name, "identifier(\"p$index\")");
                }
            }
            kotlin.reflect.jvm.internal.impl.name.f fVar2 = name;
            r.d(fVar2, "if (function.name.asStri…(\"p$index\")\n            }");
            ArrayList arrayList2 = arrayList;
            arrayList2.add(new ValueParameterDescriptorImpl(function, null, index, eVarA, fVar2, a0Var, false, false, false, a0Var2, eVar.a().t().a(b0Var)));
            arrayList = arrayList2;
            z2 = z2;
            z = false;
            c = eVar;
        }
        return new b(CollectionsKt___CollectionsKt.M0(arrayList), z2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> a() {
        return A();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<n0> b(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        return !a().contains(name) ? u.j() : this.f15104h.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<j0> c(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        return !d().contains(name) ? u.j() : this.l.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> d() {
        return D();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> e() {
        return x();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public Collection<k> g(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        r.e(kindFilter, "kindFilter");
        r.e(nameFilter, "nameFilter");
        return this.f15100d.invoke();
    }

    protected abstract Set<kotlin.reflect.jvm.internal.impl.name.f> l(kotlin.reflect.jvm.internal.impl.resolve.scopes.d dVar, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> function1);

    protected final List<k> m(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        r.e(kindFilter, "kindFilter");
        r.e(nameFilter, "nameFilter");
        NoLookupLocation noLookupLocation = NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (kindFilter.a(kotlin.reflect.jvm.internal.impl.resolve.scopes.d.c.c())) {
            for (kotlin.reflect.jvm.internal.impl.name.f fVar : l(kindFilter, nameFilter)) {
                if (nameFilter.invoke(fVar).booleanValue()) {
                    kotlin.reflect.jvm.internal.impl.utils.a.a(linkedHashSet, f(fVar, noLookupLocation));
                }
            }
        }
        if (kindFilter.a(kotlin.reflect.jvm.internal.impl.resolve.scopes.d.c.d()) && !kindFilter.l().contains(kotlin.reflect.jvm.internal.impl.resolve.scopes.c.a.f15524a)) {
            for (kotlin.reflect.jvm.internal.impl.name.f fVar2 : n(kindFilter, nameFilter)) {
                if (nameFilter.invoke(fVar2).booleanValue()) {
                    linkedHashSet.addAll(b(fVar2, noLookupLocation));
                }
            }
        }
        if (kindFilter.a(kotlin.reflect.jvm.internal.impl.resolve.scopes.d.c.i()) && !kindFilter.l().contains(kotlin.reflect.jvm.internal.impl.resolve.scopes.c.a.f15524a)) {
            for (kotlin.reflect.jvm.internal.impl.name.f fVar3 : t(kindFilter, nameFilter)) {
                if (nameFilter.invoke(fVar3).booleanValue()) {
                    linkedHashSet.addAll(c(fVar3, noLookupLocation));
                }
            }
        }
        return CollectionsKt___CollectionsKt.M0(linkedHashSet);
    }

    protected abstract Set<kotlin.reflect.jvm.internal.impl.name.f> n(kotlin.reflect.jvm.internal.impl.resolve.scopes.d dVar, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> function1);

    protected void o(Collection<n0> result, kotlin.reflect.jvm.internal.impl.name.f name) {
        r.e(result, "result");
        r.e(name, "name");
    }

    protected abstract kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a p();

    protected final a0 q(kotlin.reflect.jvm.internal.impl.load.java.structure.r method, e c) {
        r.e(method, "method");
        r.e(c, "c");
        return c.g().o(method.getReturnType(), kotlin.reflect.jvm.internal.impl.load.java.lazy.types.b.d(TypeUsage.COMMON, method.N().o(), null, 2, null));
    }

    protected abstract void r(Collection<n0> collection, kotlin.reflect.jvm.internal.impl.name.f fVar);

    protected abstract void s(kotlin.reflect.jvm.internal.impl.name.f fVar, Collection<j0> collection);

    protected abstract Set<kotlin.reflect.jvm.internal.impl.name.f> t(kotlin.reflect.jvm.internal.impl.resolve.scopes.d dVar, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> function1);

    public String toString() {
        return r.m("Lazy scope for ", C());
    }

    protected final h<Collection<k>> v() {
        return this.f15100d;
    }

    protected final e w() {
        return this.b;
    }

    protected final h<kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a> y() {
        return this.f15101e;
    }

    protected abstract m0 z();

    public LazyJavaScope(e c, LazyJavaScope lazyJavaScope) {
        r.e(c, "c");
        this.b = c;
        this.c = lazyJavaScope;
        this.f15100d = c.e().b(new Function0<Collection<? extends k>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$allDescriptors$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Collection<? extends k> invoke() {
                return this.this$0.m(kotlin.reflect.jvm.internal.impl.resolve.scopes.d.o, MemberScope.f15518a.a());
            }
        }, u.j());
        this.f15101e = c.e().c(new Function0<kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$declaredMemberIndex$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final a invoke() {
                return this.this$0.p();
            }
        });
        this.f15102f = c.e().i(new Function1<kotlin.reflect.jvm.internal.impl.name.f, Collection<? extends n0>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$declaredFunctions$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Collection<n0> invoke(kotlin.reflect.jvm.internal.impl.name.f name) {
                r.e(name, "name");
                if (this.this$0.B() != null) {
                    return (Collection) this.this$0.B().f15102f.invoke(name);
                }
                ArrayList arrayList = new ArrayList();
                for (kotlin.reflect.jvm.internal.impl.load.java.structure.r rVar : this.this$0.y().invoke().d(name)) {
                    JavaMethodDescriptor javaMethodDescriptorI = this.this$0.I(rVar);
                    if (this.this$0.G(javaMethodDescriptorI)) {
                        this.this$0.w().a().h().c(rVar, javaMethodDescriptorI);
                        arrayList.add(javaMethodDescriptorI);
                    }
                }
                this.this$0.o(arrayList, name);
                return arrayList;
            }
        });
        this.f15103g = c.e().g(new Function1<kotlin.reflect.jvm.internal.impl.name.f, j0>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$declaredField$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final j0 invoke(kotlin.reflect.jvm.internal.impl.name.f name) {
                r.e(name, "name");
                if (this.this$0.B() != null) {
                    return (j0) this.this$0.B().f15103g.invoke(name);
                }
                n nVarF = this.this$0.y().invoke().f(name);
                if (nVarF == null || nVarF.H()) {
                    return null;
                }
                return this.this$0.J(nVarF);
            }
        });
        this.f15104h = c.e().i(new Function1<kotlin.reflect.jvm.internal.impl.name.f, Collection<? extends n0>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$functions$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Collection<n0> invoke(kotlin.reflect.jvm.internal.impl.name.f name) {
                r.e(name, "name");
                LinkedHashSet linkedHashSet = new LinkedHashSet((Collection) this.this$0.f15102f.invoke(name));
                this.this$0.L(linkedHashSet);
                this.this$0.r(linkedHashSet, name);
                return CollectionsKt___CollectionsKt.M0(this.this$0.w().a().r().e(this.this$0.w(), linkedHashSet));
            }
        });
        this.i = c.e().c(new Function0<Set<? extends kotlin.reflect.jvm.internal.impl.name.f>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$functionNamesLazy$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Set<? extends kotlin.reflect.jvm.internal.impl.name.f> invoke() {
                return this.this$0.n(kotlin.reflect.jvm.internal.impl.resolve.scopes.d.r, null);
            }
        });
        this.j = c.e().c(new Function0<Set<? extends kotlin.reflect.jvm.internal.impl.name.f>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$propertyNamesLazy$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Set<? extends kotlin.reflect.jvm.internal.impl.name.f> invoke() {
                return this.this$0.t(kotlin.reflect.jvm.internal.impl.resolve.scopes.d.s, null);
            }
        });
        this.k = c.e().c(new Function0<Set<? extends kotlin.reflect.jvm.internal.impl.name.f>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$classNamesLazy$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Set<? extends kotlin.reflect.jvm.internal.impl.name.f> invoke() {
                return this.this$0.l(kotlin.reflect.jvm.internal.impl.resolve.scopes.d.q, null);
            }
        });
        this.l = c.e().i(new Function1<kotlin.reflect.jvm.internal.impl.name.f, List<? extends j0>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$properties$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final List<j0> invoke(kotlin.reflect.jvm.internal.impl.name.f name) {
                r.e(name, "name");
                ArrayList arrayList = new ArrayList();
                kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList, this.this$0.f15103g.invoke(name));
                this.this$0.s(name, arrayList);
                return kotlin.reflect.jvm.internal.impl.resolve.c.t(this.this$0.C()) ? CollectionsKt___CollectionsKt.M0(arrayList) : CollectionsKt___CollectionsKt.M0(this.this$0.w().a().r().e(this.this$0.w(), arrayList));
            }
        });
    }
}
