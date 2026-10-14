package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;

/* JADX INFO: loaded from: classes6.dex */
public final class d extends c implements kotlin.reflect.jvm.internal.impl.load.java.structure.c {
    private final Annotation c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(kotlin.reflect.jvm.internal.impl.name.f fVar, Annotation annotation) {
        super(fVar, null);
        kotlin.jvm.internal.r.e(annotation, "annotation");
        this.c = annotation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    public kotlin.reflect.jvm.internal.impl.load.java.structure.a a() {
        return new b(this.c);
    }
}
