package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.collections.u;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.s0;

/* JADX INFO: loaded from: classes6.dex */
public final class e extends f {
    private final MemberScope b;

    public e(MemberScope workerScope) {
        r.e(workerScope, "workerScope");
        this.b = workerScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> a() {
        return this.b.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> d() {
        return this.b.d();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> e() {
        return this.b.e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public kotlin.reflect.jvm.internal.impl.descriptors.f f(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarF = this.b.f(name, location);
        if (fVarF == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = fVarF instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarF : null;
        if (dVar != null) {
            return dVar;
        }
        if (fVarF instanceof s0) {
            return (s0) fVarF;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public List<kotlin.reflect.jvm.internal.impl.descriptors.f> g(d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        r.e(kindFilter, "kindFilter");
        r.e(nameFilter, "nameFilter");
        d dVarN = kindFilter.n(d.c.c());
        if (dVarN == null) {
            return u.j();
        }
        Collection<k> collectionG = this.b.g(dVarN, nameFilter);
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionG) {
            if (obj instanceof kotlin.reflect.jvm.internal.impl.descriptors.g) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public String toString() {
        return r.m("Classes from ", this.b);
    }
}
