package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public interface t<T> {

    public static final class a {
        public static <T> String a(t<? extends T> tVar, kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
            kotlin.jvm.internal.r.e(tVar, "this");
            kotlin.jvm.internal.r.e(classDescriptor, "classDescriptor");
            return null;
        }

        public static <T> a0 b(t<? extends T> tVar, a0 kotlinType) {
            kotlin.jvm.internal.r.e(tVar, "this");
            kotlin.jvm.internal.r.e(kotlinType, "kotlinType");
            return null;
        }

        public static <T> boolean c(t<? extends T> tVar) {
            kotlin.jvm.internal.r.e(tVar, "this");
            return true;
        }
    }

    T a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar);

    String b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar);

    String c(kotlin.reflect.jvm.internal.impl.descriptors.d dVar);

    a0 d(a0 a0Var);

    boolean e();

    void f(a0 a0Var, kotlin.reflect.jvm.internal.impl.descriptors.d dVar);

    a0 g(Collection<a0> collection);
}
