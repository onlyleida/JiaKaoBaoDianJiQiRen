package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Iterator;
import kotlin.collections.u;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
final class b implements kotlin.reflect.jvm.internal.impl.descriptors.annotations.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.name.c f15162a;

    public b(kotlin.reflect.jvm.internal.impl.name.c fqNameToMatch) {
        r.e(fqNameToMatch, "fqNameToMatch");
        this.f15162a = fqNameToMatch;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a d(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        r.e(fqName, "fqName");
        if (r.a(fqName, this.f15162a)) {
            return a.f15161a;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public boolean h(kotlin.reflect.jvm.internal.impl.name.c cVar) {
        return kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.b.b(this, cVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public boolean isEmpty() {
        return false;
    }

    @Override // java.lang.Iterable
    public Iterator<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> iterator() {
        return u.j().iterator();
    }
}
