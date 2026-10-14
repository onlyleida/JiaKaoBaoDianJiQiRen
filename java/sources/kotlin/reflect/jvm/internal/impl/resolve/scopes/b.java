package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.u;
import kotlin.collections.u0;
import kotlin.collections.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements MemberScope {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f15523d = new a(null);
    private final String b;
    private final MemberScope[] c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final MemberScope a(String debugName, Iterable<? extends MemberScope> scopes) {
            r.e(debugName, "debugName");
            r.e(scopes, "scopes");
            kotlin.reflect.jvm.internal.impl.utils.d dVar = new kotlin.reflect.jvm.internal.impl.utils.d();
            for (MemberScope memberScope : scopes) {
                if (memberScope != MemberScope.a.b) {
                    if (memberScope instanceof b) {
                        z.C(dVar, ((b) memberScope).c);
                    } else {
                        dVar.add(memberScope);
                    }
                }
            }
            return b(debugName, dVar);
        }

        public final MemberScope b(String debugName, List<? extends MemberScope> scopes) {
            r.e(debugName, "debugName");
            r.e(scopes, "scopes");
            int size = scopes.size();
            if (size == 0) {
                return MemberScope.a.b;
            }
            if (size == 1) {
                return scopes.get(0);
            }
            Object[] array = scopes.toArray(new MemberScope[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            return new b(debugName, (MemberScope[]) array, null);
        }
    }

    private b(String str, MemberScope[] memberScopeArr) {
        this.b = str;
        this.c = memberScopeArr;
    }

    public /* synthetic */ b(String str, MemberScope[] memberScopeArr, o oVar) {
        this(str, memberScopeArr);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> a() {
        MemberScope[] memberScopeArr = this.c;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (MemberScope memberScope : memberScopeArr) {
            z.B(linkedHashSet, memberScope.a());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<n0> b(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        MemberScope[] memberScopeArr = this.c;
        int length = memberScopeArr.length;
        if (length == 0) {
            return u.j();
        }
        int i = 0;
        if (length == 1) {
            return memberScopeArr[0].b(name, location);
        }
        Collection<n0> collectionA = null;
        int length2 = memberScopeArr.length;
        while (i < length2) {
            MemberScope memberScope = memberScopeArr[i];
            i++;
            collectionA = kotlin.reflect.jvm.internal.impl.util.k.a.a(collectionA, memberScope.b(name, location));
        }
        return collectionA == null ? u0.b() : collectionA;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<j0> c(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        MemberScope[] memberScopeArr = this.c;
        int length = memberScopeArr.length;
        if (length == 0) {
            return u.j();
        }
        int i = 0;
        if (length == 1) {
            return memberScopeArr[0].c(name, location);
        }
        Collection<j0> collectionA = null;
        int length2 = memberScopeArr.length;
        while (i < length2) {
            MemberScope memberScope = memberScopeArr[i];
            i++;
            collectionA = kotlin.reflect.jvm.internal.impl.util.k.a.a(collectionA, memberScope.c(name, location));
        }
        return collectionA == null ? u0.b() : collectionA;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> d() {
        MemberScope[] memberScopeArr = this.c;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (MemberScope memberScope : memberScopeArr) {
            z.B(linkedHashSet, memberScope.d());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> e() {
        return g.a(ArraysKt___ArraysKt.n(this.c));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public kotlin.reflect.jvm.internal.impl.descriptors.f f(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        MemberScope[] memberScopeArr = this.c;
        int length = memberScopeArr.length;
        kotlin.reflect.jvm.internal.impl.descriptors.f fVar = null;
        int i = 0;
        while (i < length) {
            MemberScope memberScope = memberScopeArr[i];
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
    public Collection<k> g(d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        r.e(kindFilter, "kindFilter");
        r.e(nameFilter, "nameFilter");
        MemberScope[] memberScopeArr = this.c;
        int length = memberScopeArr.length;
        if (length == 0) {
            return u.j();
        }
        int i = 0;
        if (length == 1) {
            return memberScopeArr[0].g(kindFilter, nameFilter);
        }
        Collection<k> collectionA = null;
        int length2 = memberScopeArr.length;
        while (i < length2) {
            MemberScope memberScope = memberScopeArr[i];
            i++;
            collectionA = kotlin.reflect.jvm.internal.impl.util.k.a.a(collectionA, memberScope.g(kindFilter, nameFilter));
        }
        return collectionA == null ? u0.b() : collectionA;
    }

    public String toString() {
        return this.b;
    }
}
