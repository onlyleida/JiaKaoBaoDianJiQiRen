package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.s;
import kotlin.collections.t;
import kotlin.collections.u;
import kotlin.collections.u0;
import kotlin.collections.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.e;
import kotlin.reflect.jvm.internal.impl.load.java.structure.g;
import kotlin.reflect.jvm.internal.impl.load.java.structure.q;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyJavaStaticClassScope extends c {
    private final g n;
    private final LazyJavaClassDescriptor o;

    public static final class a extends kotlin.reflect.jvm.internal.impl.utils.b.AbstractC0361b<kotlin.reflect.jvm.internal.impl.descriptors.d, v> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d f15110a;
        final /* synthetic */ Set<R> b;
        final /* synthetic */ Function1<MemberScope, Collection<R>> c;

        /* JADX WARN: Multi-variable type inference failed */
        a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, Set<R> set, Function1<? super MemberScope, ? extends Collection<? extends R>> function1) {
            this.f15110a = dVar;
            this.b = set;
            this.c = function1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.d
        public /* bridge */ /* synthetic */ Object a() {
            e();
            return v.f15822a;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // kotlin.reflect.jvm.internal.impl.utils.b.d
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean c(kotlin.reflect.jvm.internal.impl.descriptors.d current) {
            r.e(current, "current");
            if (current == this.f15110a) {
                return true;
            }
            MemberScope memberScopeK0 = current.k0();
            r.d(memberScopeK0, "current.staticScope");
            if (!(memberScopeK0 instanceof c)) {
                return true;
            }
            this.b.addAll((Collection<? extends R>) ((Collection) this.c.invoke(memberScopeK0)));
            return false;
        }

        public void e() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaStaticClassScope(e c, g jClass, LazyJavaClassDescriptor ownerDescriptor) {
        super(c);
        r.e(c, "c");
        r.e(jClass, "jClass");
        r.e(ownerDescriptor, "ownerDescriptor");
        this.n = jClass;
        this.o = ownerDescriptor;
    }

    private final <R> Set<R> N(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, Set<R> set, Function1<? super MemberScope, ? extends Collection<? extends R>> function1) {
        kotlin.reflect.jvm.internal.impl.utils.b.b(t.d(dVar), new kotlin.reflect.jvm.internal.impl.utils.b.c() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1
            @Override // kotlin.reflect.jvm.internal.impl.utils.b.c
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final Iterable<kotlin.reflect.jvm.internal.impl.descriptors.d> a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar2) {
                Collection<a0> collectionA = dVar2.i().a();
                r.d(collectionA, "it.typeConstructor.supertypes");
                return SequencesKt___SequencesKt.l(SequencesKt___SequencesKt.v(CollectionsKt___CollectionsKt.R(collectionA), new Function1<a0, kotlin.reflect.jvm.internal.impl.descriptors.d>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final kotlin.reflect.jvm.internal.impl.descriptors.d invoke(a0 a0Var) {
                        f fVarU = a0Var.I0().u();
                        if (fVarU instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                            return (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarU;
                        }
                        return null;
                    }
                }));
            }
        }, new a(dVar, set, function1));
        return set;
    }

    private final j0 P(j0 j0Var) {
        if (j0Var.g().isReal()) {
            return j0Var;
        }
        Collection<? extends j0> collectionD = j0Var.d();
        r.d(collectionD, "this.overriddenDescriptors");
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(collectionD, 10));
        for (j0 it : collectionD) {
            r.d(it, "it");
            arrayList.add(P(it));
        }
        return (j0) s.C0(CollectionsKt___CollectionsKt.T(arrayList));
    }

    private final Set<n0> Q(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        LazyJavaStaticClassScope lazyJavaStaticClassScopeB = kotlin.reflect.jvm.internal.impl.load.java.descriptors.g.b(dVar);
        return lazyJavaStaticClassScopeB == null ? u0.b() : CollectionsKt___CollectionsKt.Q0(lazyJavaStaticClassScopeB.b(fVar, NoLookupLocation.WHEN_GET_SUPER_MEMBERS));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public ClassDeclaredMemberIndex p() {
        return new ClassDeclaredMemberIndex(this.n, new Function1<q, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope$computeMemberIndex$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(q it) {
                r.e(it, "it");
                return Boolean.valueOf(it.O());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public LazyJavaClassDescriptor C() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public f f(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected Set<kotlin.reflect.jvm.internal.impl.name.f> l(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> function1) {
        r.e(kindFilter, "kindFilter");
        return u0.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected Set<kotlin.reflect.jvm.internal.impl.name.f> n(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> function1) {
        r.e(kindFilter, "kindFilter");
        Set<kotlin.reflect.jvm.internal.impl.name.f> setP0 = CollectionsKt___CollectionsKt.P0(y().invoke().a());
        LazyJavaStaticClassScope lazyJavaStaticClassScopeB = kotlin.reflect.jvm.internal.impl.load.java.descriptors.g.b(C());
        Set<kotlin.reflect.jvm.internal.impl.name.f> setA = lazyJavaStaticClassScopeB == null ? null : lazyJavaStaticClassScopeB.a();
        if (setA == null) {
            setA = u0.b();
        }
        setP0.addAll(setA);
        if (this.n.v()) {
            setP0.addAll(u.m(h.c, h.b));
        }
        setP0.addAll(w().a().w().a(C()));
        return setP0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected void o(Collection<n0> result, kotlin.reflect.jvm.internal.impl.name.f name) {
        r.e(result, "result");
        r.e(name, "name");
        w().a().w().c(C(), name, result);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected void r(Collection<n0> result, kotlin.reflect.jvm.internal.impl.name.f name) {
        r.e(result, "result");
        r.e(name, "name");
        Collection<? extends n0> collectionE = kotlin.reflect.jvm.internal.impl.load.java.components.a.e(name, Q(name, C()), result, C(), w().a().c(), w().a().k().a());
        r.d(collectionE, "resolveOverridesForStati….overridingUtil\n        )");
        result.addAll(collectionE);
        if (this.n.v()) {
            if (r.a(name, h.c)) {
                n0 n0VarD = kotlin.reflect.jvm.internal.impl.resolve.b.d(C());
                r.d(n0VarD, "createEnumValueOfMethod(ownerDescriptor)");
                result.add(n0VarD);
            } else if (r.a(name, h.b)) {
                n0 n0VarE = kotlin.reflect.jvm.internal.impl.resolve.b.e(C());
                r.d(n0VarE, "createEnumValuesMethod(ownerDescriptor)");
                result.add(n0VarE);
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.c, kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected void s(final kotlin.reflect.jvm.internal.impl.name.f name, Collection<j0> result) {
        r.e(name, "name");
        r.e(result, "result");
        LazyJavaClassDescriptor lazyJavaClassDescriptorC = C();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        N(lazyJavaClassDescriptorC, linkedHashSet, new Function1<MemberScope, Collection<? extends j0>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope$computeNonDeclaredProperties$propertiesFromSupertypes$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Collection<? extends j0> invoke(MemberScope it) {
                r.e(it, "it");
                return it.c(name, NoLookupLocation.WHEN_GET_SUPER_MEMBERS);
            }
        });
        if (!result.isEmpty()) {
            Collection<? extends j0> collectionE = kotlin.reflect.jvm.internal.impl.load.java.components.a.e(name, linkedHashSet, result, C(), w().a().c(), w().a().k().a());
            r.d(collectionE, "resolveOverridesForStati…ingUtil\n                )");
            result.addAll(collectionE);
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : linkedHashSet) {
            j0 j0VarP = P((j0) obj);
            Object arrayList = linkedHashMap.get(j0VarP);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(j0VarP, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            Collection collectionE2 = kotlin.reflect.jvm.internal.impl.load.java.components.a.e(name, (Collection) ((Map.Entry) it.next()).getValue(), result, C(), w().a().c(), w().a().k().a());
            r.d(collectionE2, "resolveOverridesForStati…ingUtil\n                )");
            z.B(arrayList2, collectionE2);
        }
        result.addAll(arrayList2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected Set<kotlin.reflect.jvm.internal.impl.name.f> t(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> function1) {
        r.e(kindFilter, "kindFilter");
        Set<kotlin.reflect.jvm.internal.impl.name.f> setP0 = CollectionsKt___CollectionsKt.P0(y().invoke().c());
        N(C(), setP0, new Function1<MemberScope, Collection<? extends kotlin.reflect.jvm.internal.impl.name.f>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope$computePropertyNames$1$1
            @Override // kotlin.jvm.functions.Function1
            public final Collection<kotlin.reflect.jvm.internal.impl.name.f> invoke(MemberScope it) {
                r.e(it, "it");
                return it.d();
            }
        });
        return setP0;
    }
}
