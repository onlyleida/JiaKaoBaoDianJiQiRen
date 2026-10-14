package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.u0;
import kotlin.collections.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.e;
import kotlin.reflect.jvm.internal.impl.load.java.structure.u;
import kotlin.reflect.jvm.internal.impl.load.kotlin.m;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.g;
import kotlin.reflect.jvm.internal.impl.storage.h;
import kotlin.reflect.jvm.internal.impl.storage.l;

/* JADX INFO: loaded from: classes6.dex */
public final class JvmPackageScope implements MemberScope {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f15082f = {v.i(new PropertyReference1Impl(v.b(JvmPackageScope.class), "kotlinScopes", "getKotlinScopes()[Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"))};
    private final e b;
    private final LazyJavaPackageFragment c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LazyJavaPackageScope f15083d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final h f15084e;

    public JvmPackageScope(e c, u jPackage, LazyJavaPackageFragment packageFragment) {
        r.e(c, "c");
        r.e(jPackage, "jPackage");
        r.e(packageFragment, "packageFragment");
        this.b = c;
        this.c = packageFragment;
        this.f15083d = new LazyJavaPackageScope(c, jPackage, packageFragment);
        this.f15084e = c.e().c(new Function0<MemberScope[]>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.JvmPackageScope$kotlinScopes$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final MemberScope[] invoke() {
                Collection<m> collectionValues = this.this$0.c.I0().values();
                JvmPackageScope jvmPackageScope = this.this$0;
                ArrayList arrayList = new ArrayList();
                Iterator<T> it = collectionValues.iterator();
                while (it.hasNext()) {
                    MemberScope memberScopeC = jvmPackageScope.b.a().b().c(jvmPackageScope.c, (m) it.next());
                    if (memberScopeC != null) {
                        arrayList.add(memberScopeC);
                    }
                }
                Object[] array = kotlin.reflect.jvm.internal.impl.util.k.a.b(arrayList).toArray(new MemberScope[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                return (MemberScope[]) array;
            }
        });
    }

    private final MemberScope[] k() {
        return (MemberScope[]) l.a(this.f15084e, this, f15082f[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<f> a() {
        MemberScope[] memberScopeArrK = k();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (MemberScope memberScope : memberScopeArrK) {
            z.B(linkedHashSet, memberScope.a());
        }
        linkedHashSet.addAll(j().a());
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<n0> b(f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        l(name, location);
        LazyJavaPackageScope lazyJavaPackageScope = this.f15083d;
        MemberScope[] memberScopeArrK = k();
        Collection<? extends n0> collectionB = lazyJavaPackageScope.b(name, location);
        int length = memberScopeArrK.length;
        int i = 0;
        Collection collectionA = collectionB;
        while (i < length) {
            MemberScope memberScope = memberScopeArrK[i];
            i++;
            collectionA = kotlin.reflect.jvm.internal.impl.util.k.a.a(collectionA, memberScope.b(name, location));
        }
        return collectionA == null ? u0.b() : collectionA;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<j0> c(f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        l(name, location);
        LazyJavaPackageScope lazyJavaPackageScope = this.f15083d;
        MemberScope[] memberScopeArrK = k();
        Collection<? extends j0> collectionC = lazyJavaPackageScope.c(name, location);
        int length = memberScopeArrK.length;
        int i = 0;
        Collection collectionA = collectionC;
        while (i < length) {
            MemberScope memberScope = memberScopeArrK[i];
            i++;
            collectionA = kotlin.reflect.jvm.internal.impl.util.k.a.a(collectionA, memberScope.c(name, location));
        }
        return collectionA == null ? u0.b() : collectionA;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<f> d() {
        MemberScope[] memberScopeArrK = k();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (MemberScope memberScope : memberScopeArrK) {
            z.B(linkedHashSet, memberScope.d());
        }
        linkedHashSet.addAll(j().d());
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<f> e() {
        Set<f> setA = g.a(ArraysKt___ArraysKt.n(k()));
        if (setA == null) {
            return null;
        }
        setA.addAll(j().e());
        return setA;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public kotlin.reflect.jvm.internal.impl.descriptors.f f(f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        l(name, location);
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarP = this.f15083d.f(name, location);
        if (dVarP != null) {
            return dVarP;
        }
        MemberScope[] memberScopeArrK = k();
        kotlin.reflect.jvm.internal.impl.descriptors.f fVar = null;
        int i = 0;
        int length = memberScopeArrK.length;
        while (i < length) {
            MemberScope memberScope = memberScopeArrK[i];
            i++;
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarF = memberScope.f(name, location);
            if (fVarF != null) {
                if (!(fVarF instanceof kotlin.reflect.jvm.internal.impl.descriptors.g) || !((kotlin.reflect.jvm.internal.impl.descriptors.g) fVarF).i0()) {
                    return fVarF;
                }
                if (fVar == null) {
                    fVar = fVarF;
                }
            }
        }
        return fVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public Collection<k> g(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super f, Boolean> nameFilter) {
        r.e(kindFilter, "kindFilter");
        r.e(nameFilter, "nameFilter");
        LazyJavaPackageScope lazyJavaPackageScope = this.f15083d;
        MemberScope[] memberScopeArrK = k();
        Collection<k> collectionG = lazyJavaPackageScope.g(kindFilter, nameFilter);
        int length = memberScopeArrK.length;
        int i = 0;
        while (i < length) {
            MemberScope memberScope = memberScopeArrK[i];
            i++;
            collectionG = kotlin.reflect.jvm.internal.impl.util.k.a.a(collectionG, memberScope.g(kindFilter, nameFilter));
        }
        return collectionG == null ? u0.b() : collectionG;
    }

    public final LazyJavaPackageScope j() {
        return this.f15083d;
    }

    public void l(f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        kotlin.reflect.jvm.internal.s.b.a.b(this.b.a().l(), location, this.c, name);
    }

    public String toString() {
        return r.m("scope for ", this.c);
    }
}
