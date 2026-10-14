package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.sequences.k;

/* JADX INFO: loaded from: classes6.dex */
public final class CompositeAnnotations implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<e> f14870a;

    /* JADX WARN: Multi-variable type inference failed */
    public CompositeAnnotations(List<? extends e> delegates) {
        r.e(delegates, "delegates");
        this.f14870a = delegates;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public c d(final kotlin.reflect.jvm.internal.impl.name.c fqName) {
        r.e(fqName, "fqName");
        return (c) k.r(SequencesKt___SequencesKt.v(CollectionsKt___CollectionsKt.R(this.f14870a), new Function1<e, c>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations$findAnnotation$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final c invoke(e it) {
                r.e(it, "it");
                return it.d(fqName);
            }
        }));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public boolean h(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        r.e(fqName, "fqName");
        Iterator it = CollectionsKt___CollectionsKt.R(this.f14870a).iterator();
        while (it.hasNext()) {
            if (((e) it.next()).h(fqName)) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public boolean isEmpty() {
        List<e> list = this.f14870a;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (!((e) it.next()).isEmpty()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.Iterable
    public Iterator<c> iterator() {
        return SequencesKt___SequencesKt.s(CollectionsKt___CollectionsKt.R(this.f14870a), new Function1<e, Sequence<? extends c>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations.iterator.1
            @Override // kotlin.jvm.functions.Function1
            public final Sequence<c> invoke(e it) {
                r.e(it, "it");
                return CollectionsKt___CollectionsKt.R(it);
            }
        }).iterator();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CompositeAnnotations(e... delegates) {
        this((List<? extends e>) ArraysKt___ArraysKt.h0(delegates));
        r.e(delegates, "delegates");
    }
}
