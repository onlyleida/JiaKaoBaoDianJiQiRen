package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public interface z extends k {

    public static final class a {
        public static <R, D> R a(z zVar, m<R, D> visitor, D d2) {
            kotlin.jvm.internal.r.e(zVar, "this");
            kotlin.jvm.internal.r.e(visitor, "visitor");
            return visitor.k(zVar, d2);
        }

        public static k b(z zVar) {
            kotlin.jvm.internal.r.e(zVar, "this");
            return null;
        }
    }

    <T> T C0(y<T> yVar);

    boolean J(z zVar);

    f0 j0(kotlin.reflect.jvm.internal.impl.name.c cVar);

    kotlin.reflect.jvm.internal.impl.builtins.g k();

    Collection<kotlin.reflect.jvm.internal.impl.name.c> l(kotlin.reflect.jvm.internal.impl.name.c cVar, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> function1);

    List<z> w0();
}
