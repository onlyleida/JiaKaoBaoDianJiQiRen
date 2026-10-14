package kotlin.reflect.jvm.internal.impl.load.java.structure;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public interface r extends q, z {

    public static final class a {
        public static boolean a(r rVar) {
            kotlin.jvm.internal.r.e(rVar, "this");
            return rVar.p() != null;
        }
    }

    boolean L();

    List<b0> f();

    x getReturnType();

    b p();
}
