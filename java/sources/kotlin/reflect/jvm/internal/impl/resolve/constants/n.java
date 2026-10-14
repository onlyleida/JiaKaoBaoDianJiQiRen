package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.q0;

/* JADX INFO: loaded from: classes6.dex */
public final class n implements q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f15501a;
    private final z b;
    private final ArrayList<a0> c;

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public Collection<a0> a() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public q0 b(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    /* JADX INFO: renamed from: c */
    public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.f u() {
        return (kotlin.reflect.jvm.internal.impl.descriptors.f) e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public boolean d() {
        return false;
    }

    public Void e() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public List<t0> getParameters() {
        return kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public kotlin.reflect.jvm.internal.impl.builtins.g k() {
        return this.b.k();
    }

    public String toString() {
        return "IntegerValueType(" + this.f15501a + ')';
    }
}
