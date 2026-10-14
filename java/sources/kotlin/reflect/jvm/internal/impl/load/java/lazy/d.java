package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class d {
    public static final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e a(e eVar, kotlin.reflect.jvm.internal.impl.load.java.structure.d annotationsOwner) {
        r.e(eVar, "<this>");
        r.e(annotationsOwner, "annotationsOwner");
        return new LazyJavaAnnotations(eVar, annotationsOwner, false, 4, null);
    }
}
