package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public final class TypeIntersectionScope extends kotlin.reflect.jvm.internal.impl.resolve.scopes.a {
    public static final a c = new a(null);
    private final MemberScope b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final MemberScope a(String message, Collection<? extends a0> types) {
            r.e(message, "message");
            r.e(types, "types");
            ArrayList arrayList = new ArrayList(v.u(types, 10));
            Iterator<T> it = types.iterator();
            while (it.hasNext()) {
                arrayList.add(((a0) it.next()).m());
            }
            kotlin.reflect.jvm.internal.impl.utils.d<MemberScope> dVarB = kotlin.reflect.jvm.internal.impl.util.k.a.b(arrayList);
            MemberScope memberScopeB = b.f15523d.b(message, dVarB);
            return dVarB.size() <= 1 ? memberScopeB : new TypeIntersectionScope(message, memberScopeB, null);
        }
    }

    private TypeIntersectionScope(String str, MemberScope memberScope) {
        this.b = memberScope;
    }

    public /* synthetic */ TypeIntersectionScope(String str, MemberScope memberScope, o oVar) {
        this(str, memberScope);
    }

    public static final MemberScope j(String str, Collection<? extends a0> collection) {
        return c.a(str, collection);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.a, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<n0> b(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        return OverridingUtilsKt.a(super.b(name, location), new Function1<n0, kotlin.reflect.jvm.internal.impl.descriptors.a>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope$getContributedFunctions$1
            @Override // kotlin.jvm.functions.Function1
            public final kotlin.reflect.jvm.internal.impl.descriptors.a invoke(n0 selectMostSpecificInEachOverridableGroup) {
                r.e(selectMostSpecificInEachOverridableGroup, "$this$selectMostSpecificInEachOverridableGroup");
                return selectMostSpecificInEachOverridableGroup;
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.a, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<j0> c(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        return OverridingUtilsKt.a(super.c(name, location), new Function1<j0, kotlin.reflect.jvm.internal.impl.descriptors.a>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope$getContributedVariables$1
            @Override // kotlin.jvm.functions.Function1
            public final kotlin.reflect.jvm.internal.impl.descriptors.a invoke(j0 selectMostSpecificInEachOverridableGroup) {
                r.e(selectMostSpecificInEachOverridableGroup, "$this$selectMostSpecificInEachOverridableGroup");
                return selectMostSpecificInEachOverridableGroup;
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.a, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public Collection<k> g(d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        r.e(kindFilter, "kindFilter");
        r.e(nameFilter, "nameFilter");
        Collection<k> collectionG = super.g(kindFilter, nameFilter);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : collectionG) {
            if (((k) obj) instanceof kotlin.reflect.jvm.internal.impl.descriptors.a) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        Pair pair = new Pair(arrayList, arrayList2);
        List list = (List) pair.component1();
        return CollectionsKt___CollectionsKt.x0(OverridingUtilsKt.a(list, new Function1<kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.a>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope$getContributedDescriptors$2
            @Override // kotlin.jvm.functions.Function1
            public final kotlin.reflect.jvm.internal.impl.descriptors.a invoke(kotlin.reflect.jvm.internal.impl.descriptors.a selectMostSpecificInEachOverridableGroup) {
                r.e(selectMostSpecificInEachOverridableGroup, "$this$selectMostSpecificInEachOverridableGroup");
                return selectMostSpecificInEachOverridableGroup;
            }
        }), (List) pair.component2());
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.a
    protected MemberScope i() {
        return this.b;
    }
}
