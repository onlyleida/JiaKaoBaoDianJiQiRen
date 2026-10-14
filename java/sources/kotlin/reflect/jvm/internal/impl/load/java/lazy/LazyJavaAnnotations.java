package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Iterator;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyJavaAnnotations implements kotlin.reflect.jvm.internal.impl.descriptors.annotations.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f15064a;
    private final kotlin.reflect.jvm.internal.impl.load.java.structure.d b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.g<kotlin.reflect.jvm.internal.impl.load.java.structure.a, kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> f15065d;

    public LazyJavaAnnotations(e c, kotlin.reflect.jvm.internal.impl.load.java.structure.d annotationOwner, boolean z) {
        r.e(c, "c");
        r.e(annotationOwner, "annotationOwner");
        this.f15064a = c;
        this.b = annotationOwner;
        this.c = z;
        this.f15065d = c.a().u().g(new Function1<kotlin.reflect.jvm.internal.impl.load.java.structure.a, kotlin.reflect.jvm.internal.impl.descriptors.annotations.c>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations$annotationDescriptors$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final kotlin.reflect.jvm.internal.impl.descriptors.annotations.c invoke(kotlin.reflect.jvm.internal.impl.load.java.structure.a annotation) {
                r.e(annotation, "annotation");
                return kotlin.reflect.jvm.internal.impl.load.java.components.b.f15044a.e(annotation, this.this$0.f15064a, this.this$0.c);
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.c d(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        r.e(fqName, "fqName");
        kotlin.reflect.jvm.internal.impl.load.java.structure.a aVarD = this.b.d(fqName);
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVarInvoke = aVarD == null ? null : this.f15065d.invoke(aVarD);
        return cVarInvoke == null ? kotlin.reflect.jvm.internal.impl.load.java.components.b.f15044a.a(fqName, this.b, this.f15064a) : cVarInvoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public boolean h(kotlin.reflect.jvm.internal.impl.name.c cVar) {
        return kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.b.b(this, cVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public boolean isEmpty() {
        return this.b.getAnnotations().isEmpty() && !this.b.C();
    }

    @Override // java.lang.Iterable
    public Iterator<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> iterator() {
        return SequencesKt___SequencesKt.q(SequencesKt___SequencesKt.x(SequencesKt___SequencesKt.u(CollectionsKt___CollectionsKt.R(this.b.getAnnotations()), this.f15065d), kotlin.reflect.jvm.internal.impl.load.java.components.b.f15044a.a(kotlin.reflect.jvm.internal.impl.builtins.h.a.n, this.b, this.f15064a))).iterator();
    }

    public /* synthetic */ LazyJavaAnnotations(e eVar, kotlin.reflect.jvm.internal.impl.load.java.structure.d dVar, boolean z, int i, o oVar) {
        this(eVar, dVar, (i & 4) != 0 ? false : z);
    }
}
