package kotlin.reflect.jvm.internal.impl.descriptors;

/* JADX INFO: loaded from: classes6.dex */
public abstract class p extends s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z0 f14971a;

    public p(z0 delegate) {
        kotlin.jvm.internal.r.e(delegate, "delegate");
        this.f14971a = delegate;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
    public z0 b() {
        return this.f14971a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
    public String c() {
        return b().b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
    public s f() {
        s sVarJ = r.j(b().d());
        kotlin.jvm.internal.r.d(sVarJ, "toDescriptorVisibility(delegate.normalize())");
        return sVarJ;
    }
}
