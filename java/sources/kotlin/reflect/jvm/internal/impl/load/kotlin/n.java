package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.p0;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;

/* JADX INFO: loaded from: classes6.dex */
public final class n implements o0 {
    private final LazyJavaPackageFragment b;

    public n(LazyJavaPackageFragment packageFragment) {
        kotlin.jvm.internal.r.e(packageFragment, "packageFragment");
        this.b = packageFragment;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o0
    public p0 b() {
        p0 NO_SOURCE_FILE = p0.f14972a;
        kotlin.jvm.internal.r.d(NO_SOURCE_FILE, "NO_SOURCE_FILE");
        return NO_SOURCE_FILE;
    }

    public String toString() {
        return this.b + ": " + this.b.I0().keySet();
    }
}
