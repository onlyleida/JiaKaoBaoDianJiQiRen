package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class f {
    /* JADX WARN: Code duplicated, block: B:12:0x002f  */
    /* JADX WARN: Code duplicated, block: B:16:? A[RETURN, SYNTHETIC] */
    public static final b a(Annotation[] annotationArr, kotlin.reflect.jvm.internal.impl.name.c fqName) {
        kotlin.jvm.internal.r.e(annotationArr, "<this>");
        kotlin.jvm.internal.r.e(fqName, "fqName");
        for (Annotation annotation : annotationArr) {
            if (kotlin.jvm.internal.r.a(ReflectClassUtilKt.a(kotlin.jvm.a.b(kotlin.jvm.a.a(annotation))).b(), fqName)) {
                if (annotation == null) {
                    return null;
                }
                return new b(annotation);
            }
        }
        annotation = null;
        if (annotation == null) {
            return null;
        }
        return new b(annotation);
    }

    public static final List<b> b(Annotation[] annotationArr) {
        kotlin.jvm.internal.r.e(annotationArr, "<this>");
        ArrayList arrayList = new ArrayList(annotationArr.length);
        for (Annotation annotation : annotationArr) {
            arrayList.add(new b(annotation));
        }
        return arrayList;
    }
}
