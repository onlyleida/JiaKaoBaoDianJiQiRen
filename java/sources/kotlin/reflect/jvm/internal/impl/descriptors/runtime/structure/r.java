package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Modifier;
import kotlin.reflect.jvm.internal.impl.descriptors.y0;
import kotlin.reflect.jvm.internal.impl.descriptors.z0;

/* JADX INFO: loaded from: classes6.dex */
public interface r extends kotlin.reflect.jvm.internal.impl.load.java.structure.s {

    public static final class a {
        public static z0 a(r rVar) {
            kotlin.jvm.internal.r.e(rVar, "this");
            int modifiers = rVar.getModifiers();
            if (Modifier.isPublic(modifiers)) {
                return y0.h.c;
            }
            if (Modifier.isPrivate(modifiers)) {
                return y0.e.c;
            }
            if (Modifier.isProtected(modifiers)) {
                return Modifier.isStatic(modifiers) ? kotlin.reflect.jvm.internal.impl.descriptors.b1.c.c : kotlin.reflect.jvm.internal.impl.descriptors.b1.b.c;
            }
            return kotlin.reflect.jvm.internal.impl.descriptors.b1.a.c;
        }

        public static boolean b(r rVar) {
            kotlin.jvm.internal.r.e(rVar, "this");
            return Modifier.isAbstract(rVar.getModifiers());
        }

        public static boolean c(r rVar) {
            kotlin.jvm.internal.r.e(rVar, "this");
            return Modifier.isFinal(rVar.getModifiers());
        }

        public static boolean d(r rVar) {
            kotlin.jvm.internal.r.e(rVar, "this");
            return Modifier.isStatic(rVar.getModifiers());
        }
    }

    int getModifiers();
}
