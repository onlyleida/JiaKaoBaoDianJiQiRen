package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.u0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public class e0 extends kotlin.reflect.jvm.internal.impl.resolve.scopes.f {
    private final kotlin.reflect.jvm.internal.impl.descriptors.z b;
    private final kotlin.reflect.jvm.internal.impl.name.c c;

    public e0(kotlin.reflect.jvm.internal.impl.descriptors.z moduleDescriptor, kotlin.reflect.jvm.internal.impl.name.c fqName) {
        kotlin.jvm.internal.r.e(moduleDescriptor, "moduleDescriptor");
        kotlin.jvm.internal.r.e(fqName, "fqName");
        this.b = moduleDescriptor;
        this.c = fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> e() {
        return u0.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> g(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        kotlin.jvm.internal.r.e(kindFilter, "kindFilter");
        kotlin.jvm.internal.r.e(nameFilter, "nameFilter");
        if (!kindFilter.a(kotlin.reflect.jvm.internal.impl.resolve.scopes.d.c.f())) {
            return kotlin.collections.u.j();
        }
        if (this.c.d() && kindFilter.l().contains(kotlin.reflect.jvm.internal.impl.resolve.scopes.c.b.f15525a)) {
            return kotlin.collections.u.j();
        }
        Collection<kotlin.reflect.jvm.internal.impl.name.c> collectionL = this.b.l(this.c, nameFilter);
        ArrayList arrayList = new ArrayList(collectionL.size());
        Iterator<kotlin.reflect.jvm.internal.impl.name.c> it = collectionL.iterator();
        while (it.hasNext()) {
            kotlin.reflect.jvm.internal.impl.name.f fVarG = it.next().g();
            kotlin.jvm.internal.r.d(fVarG, "subFqName.shortName()");
            if (nameFilter.invoke(fVarG).booleanValue()) {
                kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList, h(fVarG));
            }
        }
        return arrayList;
    }

    protected final kotlin.reflect.jvm.internal.impl.descriptors.f0 h(kotlin.reflect.jvm.internal.impl.name.f name) {
        kotlin.jvm.internal.r.e(name, "name");
        if (name.h()) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.z zVar = this.b;
        kotlin.reflect.jvm.internal.impl.name.c cVarC = this.c.c(name);
        kotlin.jvm.internal.r.d(cVarC, "fqName.child(name)");
        kotlin.reflect.jvm.internal.impl.descriptors.f0 f0VarJ0 = zVar.j0(cVarC);
        if (f0VarJ0.isEmpty()) {
            return null;
        }
        return f0VarJ0;
    }

    public String toString() {
        return "subpackages of " + this.c + " from " + this.b;
    }
}
