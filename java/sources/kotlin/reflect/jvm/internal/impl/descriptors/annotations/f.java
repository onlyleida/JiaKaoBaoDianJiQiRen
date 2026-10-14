package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<c> f14874a;

    /* JADX WARN: Multi-variable type inference failed */
    public f(List<? extends c> annotations) {
        r.e(annotations, "annotations");
        this.f14874a = annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public c d(kotlin.reflect.jvm.internal.impl.name.c cVar) {
        return e.b.a(this, cVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public boolean h(kotlin.reflect.jvm.internal.impl.name.c cVar) {
        return e.b.b(this, cVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public boolean isEmpty() {
        return this.f14874a.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<c> iterator() {
        return this.f14874a.iterator();
    }

    public String toString() {
        return this.f14874a.toString();
    }
}
