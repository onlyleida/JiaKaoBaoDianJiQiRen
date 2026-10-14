package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class h implements kotlin.reflect.jvm.internal.impl.descriptors.e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<kotlin.reflect.jvm.internal.impl.descriptors.c0> f14924a;
    private final String b;

    /* JADX WARN: Multi-variable type inference failed */
    public h(List<? extends kotlin.reflect.jvm.internal.impl.descriptors.c0> providers, String debugName) {
        kotlin.jvm.internal.r.e(providers, "providers");
        kotlin.jvm.internal.r.e(debugName, "debugName");
        this.f14924a = providers;
        this.b = debugName;
        providers.size();
        CollectionsKt___CollectionsKt.Q0(providers).size();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.c0
    public List<kotlin.reflect.jvm.internal.impl.descriptors.b0> a(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        ArrayList arrayList = new ArrayList();
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.c0> it = this.f14924a.iterator();
        while (it.hasNext()) {
            kotlin.reflect.jvm.internal.impl.descriptors.d0.a(it.next(), fqName, arrayList);
        }
        return CollectionsKt___CollectionsKt.M0(arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.e0
    public void b(kotlin.reflect.jvm.internal.impl.name.c fqName, Collection<kotlin.reflect.jvm.internal.impl.descriptors.b0> packageFragments) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        kotlin.jvm.internal.r.e(packageFragments, "packageFragments");
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.c0> it = this.f14924a.iterator();
        while (it.hasNext()) {
            kotlin.reflect.jvm.internal.impl.descriptors.d0.a(it.next(), fqName, packageFragments);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.e0
    public boolean c(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        List<kotlin.reflect.jvm.internal.impl.descriptors.c0> list = this.f14924a;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (!kotlin.reflect.jvm.internal.impl.descriptors.d0.b((kotlin.reflect.jvm.internal.impl.descriptors.c0) it.next(), fqName)) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.c0
    public Collection<kotlin.reflect.jvm.internal.impl.name.c> l(kotlin.reflect.jvm.internal.impl.name.c fqName, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        kotlin.jvm.internal.r.e(nameFilter, "nameFilter");
        HashSet hashSet = new HashSet();
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.c0> it = this.f14924a.iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().l(fqName, nameFilter));
        }
        return hashSet;
    }

    public String toString() {
        return this.b;
    }
}
