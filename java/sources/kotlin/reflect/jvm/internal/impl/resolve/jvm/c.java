package kotlin.reflect.jvm.internal.impl.resolve.jvm;

import kotlin.collections.s;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;
import kotlin.reflect.jvm.internal.impl.load.java.structure.LightClassOriginKind;
import kotlin.reflect.jvm.internal.impl.load.java.structure.g;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LazyJavaPackageFragmentProvider f15510a;
    private final kotlin.reflect.jvm.internal.impl.load.java.components.d b;

    public c(LazyJavaPackageFragmentProvider packageFragmentProvider, kotlin.reflect.jvm.internal.impl.load.java.components.d javaResolverCache) {
        r.e(packageFragmentProvider, "packageFragmentProvider");
        r.e(javaResolverCache, "javaResolverCache");
        this.f15510a = packageFragmentProvider;
        this.b = javaResolverCache;
    }

    public final LazyJavaPackageFragmentProvider a() {
        return this.f15510a;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d b(g javaClass) {
        r.e(javaClass, "javaClass");
        kotlin.reflect.jvm.internal.impl.name.c cVarE = javaClass.e();
        if (cVarE != null && javaClass.J() == LightClassOriginKind.SOURCE) {
            return this.b.d(cVarE);
        }
        g gVarL = javaClass.l();
        if (gVarL != null) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarB = b(gVarL);
            MemberScope memberScopeS = dVarB == null ? null : dVarB.S();
            f fVarF = memberScopeS == null ? null : memberScopeS.f(javaClass.getName(), NoLookupLocation.FROM_JAVA_LOADER);
            if (fVarF instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                return (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarF;
            }
            return null;
        }
        if (cVarE == null) {
            return null;
        }
        LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProvider = this.f15510a;
        kotlin.reflect.jvm.internal.impl.name.c cVarE2 = cVarE.e();
        r.d(cVarE2, "fqName.parent()");
        LazyJavaPackageFragment lazyJavaPackageFragment = (LazyJavaPackageFragment) s.e0(lazyJavaPackageFragmentProvider.a(cVarE2));
        if (lazyJavaPackageFragment == null) {
            return null;
        }
        return lazyJavaPackageFragment.H0(javaClass);
    }
}
