package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public interface e extends kotlin.reflect.jvm.internal.impl.load.java.structure.d {

    public static final class a {
        public static b a(e eVar, kotlin.reflect.jvm.internal.impl.name.c fqName) {
            Annotation[] declaredAnnotations;
            kotlin.jvm.internal.r.e(eVar, "this");
            kotlin.jvm.internal.r.e(fqName, "fqName");
            AnnotatedElement element = eVar.getElement();
            if (element == null || (declaredAnnotations = element.getDeclaredAnnotations()) == null) {
                return null;
            }
            return f.a(declaredAnnotations, fqName);
        }

        public static List<b> b(e eVar) {
            kotlin.jvm.internal.r.e(eVar, "this");
            AnnotatedElement element = eVar.getElement();
            Annotation[] declaredAnnotations = element == null ? null : element.getDeclaredAnnotations();
            return declaredAnnotations == null ? kotlin.collections.u.j() : f.b(declaredAnnotations);
        }

        public static boolean c(e eVar) {
            kotlin.jvm.internal.r.e(eVar, "this");
            return false;
        }
    }

    AnnotatedElement getElement();
}
