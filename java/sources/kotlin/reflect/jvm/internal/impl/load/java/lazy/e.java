package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.Lazy;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver;
import kotlin.reflect.jvm.internal.impl.load.java.p;
import kotlin.reflect.jvm.internal.impl.storage.m;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f15113a;
    private final h b;
    private final Lazy<p> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f15114d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final JavaTypeResolver f15115e;

    public e(b components, h typeParameterResolver, Lazy<p> delegateForDefaultTypeQualifiers) {
        r.e(components, "components");
        r.e(typeParameterResolver, "typeParameterResolver");
        r.e(delegateForDefaultTypeQualifiers, "delegateForDefaultTypeQualifiers");
        this.f15113a = components;
        this.b = typeParameterResolver;
        this.c = delegateForDefaultTypeQualifiers;
        this.f15114d = delegateForDefaultTypeQualifiers;
        this.f15115e = new JavaTypeResolver(this, typeParameterResolver);
    }

    public final b a() {
        return this.f15113a;
    }

    public final p b() {
        return (p) this.f15114d.getValue();
    }

    public final Lazy<p> c() {
        return this.c;
    }

    public final z d() {
        return this.f15113a.m();
    }

    public final m e() {
        return this.f15113a.u();
    }

    public final h f() {
        return this.b;
    }

    public final JavaTypeResolver g() {
        return this.f15115e;
    }
}
