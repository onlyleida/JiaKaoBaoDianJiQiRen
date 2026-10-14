package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.descriptors.q0;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.v0;

/* JADX INFO: loaded from: classes6.dex */
public final class SubstitutingScope implements MemberScope {
    private final MemberScope b;
    private final TypeSubstitutor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<k, k> f15521d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f15522e;

    public SubstitutingScope(MemberScope workerScope, TypeSubstitutor givenSubstitutor) {
        r.e(workerScope, "workerScope");
        r.e(givenSubstitutor, "givenSubstitutor");
        this.b = workerScope;
        v0 v0VarJ = givenSubstitutor.j();
        r.d(v0VarJ, "givenSubstitutor.substitution");
        this.c = CapturedTypeConstructorKt.f(v0VarJ, false, 1, null).c();
        this.f15522e = i.b(new Function0<Collection<? extends k>>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.SubstitutingScope$_allDescriptors$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Collection<? extends k> invoke() {
                SubstitutingScope substitutingScope = this.this$0;
                return substitutingScope.k(h.a.a(substitutingScope.b, null, null, 3, null));
            }
        });
    }

    private final Collection<k> j() {
        return (Collection) this.f15522e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final <D extends k> Collection<D> k(Collection<? extends D> collection) {
        if (this.c.k() || collection.isEmpty()) {
            return collection;
        }
        LinkedHashSet linkedHashSetG = kotlin.reflect.jvm.internal.impl.utils.a.g(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            linkedHashSetG.add(l((k) it.next()));
        }
        return linkedHashSetG;
    }

    private final <D extends k> D l(D d2) {
        if (this.c.k()) {
            return d2;
        }
        if (this.f15521d == null) {
            this.f15521d = new HashMap();
        }
        Map<k, k> map = this.f15521d;
        r.c(map);
        k kVarC = map.get(d2);
        if (kVarC == null) {
            if (!(d2 instanceof q0)) {
                throw new IllegalStateException(r.m("Unknown descriptor in scope: ", d2).toString());
            }
            kVarC = ((q0) d2).c(this.c);
            if (kVarC == null) {
                throw new AssertionError("We expect that no conflict should happen while substitution is guaranteed to generate invariant projection, but " + d2 + " substitution fails");
            }
            map.put(d2, kVarC);
        }
        return (D) kVarC;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> a() {
        return this.b.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<? extends n0> b(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        return k(this.b.b(name, location));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<? extends j0> c(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        return k(this.b.c(name, location));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> d() {
        return this.b.d();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> e() {
        return this.b.e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public kotlin.reflect.jvm.internal.impl.descriptors.f f(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarF = this.b.f(name, location);
        if (fVarF == null) {
            return null;
        }
        return (kotlin.reflect.jvm.internal.impl.descriptors.f) l(fVarF);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public Collection<k> g(d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        r.e(kindFilter, "kindFilter");
        r.e(nameFilter, "nameFilter");
        return j();
    }
}
