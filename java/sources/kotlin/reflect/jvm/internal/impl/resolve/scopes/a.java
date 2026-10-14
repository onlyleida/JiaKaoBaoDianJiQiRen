package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.Collection;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a implements MemberScope {
    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> a() {
        return i().a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<n0> b(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        return i().b(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<j0> c(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        return i().c(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> d() {
        return i().d();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> e() {
        return i().e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public kotlin.reflect.jvm.internal.impl.descriptors.f f(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        return i().f(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public Collection<k> g(d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        r.e(kindFilter, "kindFilter");
        r.e(nameFilter, "nameFilter");
        return i().g(kindFilter, nameFilter);
    }

    public final MemberScope h() {
        return i() instanceof a ? ((a) i()).h() : i();
    }

    protected abstract MemberScope i();
}
