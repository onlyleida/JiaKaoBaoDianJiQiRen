package kotlin.reflect.jvm.internal.impl.descriptors.c1.a;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.p0;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements o0 {
    private final Annotation b;

    public b(Annotation annotation) {
        r.e(annotation, "annotation");
        this.b = annotation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o0
    public p0 b() {
        p0 NO_SOURCE_FILE = p0.f14972a;
        r.d(NO_SOURCE_FILE, "NO_SOURCE_FILE");
        return NO_SOURCE_FILE;
    }

    public final Annotation d() {
        return this.b;
    }
}
