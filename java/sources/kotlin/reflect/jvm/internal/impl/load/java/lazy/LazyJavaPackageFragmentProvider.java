package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Collection;
import java.util.List;
import kotlin.j;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.e0;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;
import kotlin.reflect.jvm.internal.impl.load.java.structure.u;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyJavaPackageFragmentProvider implements e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f15066a;
    private final kotlin.reflect.jvm.internal.impl.storage.a<kotlin.reflect.jvm.internal.impl.name.c, LazyJavaPackageFragment> b;

    public LazyJavaPackageFragmentProvider(b components) {
        r.e(components, "components");
        e eVar = new e(components, h.a.f15117a, j.c(null));
        this.f15066a = eVar;
        this.b = eVar.e().a();
    }

    private final LazyJavaPackageFragment e(kotlin.reflect.jvm.internal.impl.name.c cVar) {
        final u uVarB = this.f15066a.a().d().b(cVar);
        if (uVarB == null) {
            return null;
        }
        return this.b.a(cVar, new Function0<LazyJavaPackageFragment>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider$getPackageFragment$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final LazyJavaPackageFragment invoke() {
                return new LazyJavaPackageFragment(this.this$0.f15066a, uVarB);
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.c0
    public List<LazyJavaPackageFragment> a(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        r.e(fqName, "fqName");
        return kotlin.collections.u.n(e(fqName));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.e0
    public void b(kotlin.reflect.jvm.internal.impl.name.c fqName, Collection<b0> packageFragments) {
        r.e(fqName, "fqName");
        r.e(packageFragments, "packageFragments");
        kotlin.reflect.jvm.internal.impl.utils.a.a(packageFragments, e(fqName));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.e0
    public boolean c(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        r.e(fqName, "fqName");
        return this.f15066a.a().d().b(fqName) == null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.c0
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public List<kotlin.reflect.jvm.internal.impl.name.c> l(kotlin.reflect.jvm.internal.impl.name.c fqName, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        r.e(fqName, "fqName");
        r.e(nameFilter, "nameFilter");
        LazyJavaPackageFragment lazyJavaPackageFragmentE = e(fqName);
        List<kotlin.reflect.jvm.internal.impl.name.c> listK0 = lazyJavaPackageFragmentE == null ? null : lazyJavaPackageFragmentE.K0();
        return listK0 != null ? listK0 : kotlin.collections.u.j();
    }

    public String toString() {
        return r.m("LazyJavaPackageFragmentProvider of module ", this.f15066a.a().m());
    }
}
