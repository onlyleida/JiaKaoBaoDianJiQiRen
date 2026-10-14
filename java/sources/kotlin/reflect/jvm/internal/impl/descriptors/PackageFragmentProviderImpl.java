package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class PackageFragmentProviderImpl implements e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Collection<b0> f14855a;

    /* JADX WARN: Multi-variable type inference failed */
    public PackageFragmentProviderImpl(Collection<? extends b0> packageFragments) {
        kotlin.jvm.internal.r.e(packageFragments, "packageFragments");
        this.f14855a = packageFragments;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.c0
    public List<b0> a(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        Collection<b0> collection = this.f14855a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (kotlin.jvm.internal.r.a(((b0) obj).e(), fqName)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.e0
    public void b(kotlin.reflect.jvm.internal.impl.name.c fqName, Collection<b0> packageFragments) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        kotlin.jvm.internal.r.e(packageFragments, "packageFragments");
        for (Object obj : this.f14855a) {
            if (kotlin.jvm.internal.r.a(((b0) obj).e(), fqName)) {
                packageFragments.add(obj);
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.e0
    public boolean c(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        Collection<b0> collection = this.f14855a;
        if ((collection instanceof Collection) && collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (kotlin.jvm.internal.r.a(((b0) it.next()).e(), fqName)) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.c0
    public Collection<kotlin.reflect.jvm.internal.impl.name.c> l(final kotlin.reflect.jvm.internal.impl.name.c fqName, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        kotlin.jvm.internal.r.e(nameFilter, "nameFilter");
        return SequencesKt___SequencesKt.A(SequencesKt___SequencesKt.o(SequencesKt___SequencesKt.u(CollectionsKt___CollectionsKt.R(this.f14855a), new Function1<b0, kotlin.reflect.jvm.internal.impl.name.c>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderImpl$getSubPackagesOf$1
            @Override // kotlin.jvm.functions.Function1
            public final kotlin.reflect.jvm.internal.impl.name.c invoke(b0 it) {
                kotlin.jvm.internal.r.e(it, "it");
                return it.e();
            }
        }), new Function1<kotlin.reflect.jvm.internal.impl.name.c, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderImpl$getSubPackagesOf$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(kotlin.reflect.jvm.internal.impl.name.c it) {
                kotlin.jvm.internal.r.e(it, "it");
                return Boolean.valueOf(!it.d() && kotlin.jvm.internal.r.a(it.e(), fqName));
            }
        }));
    }
}
