package kotlin.reflect.jvm.internal.impl.load.java.structure;

import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public interface d0 extends d {

    public static final class a {
        public static kotlin.reflect.jvm.internal.impl.load.java.structure.a a(d0 d0Var, kotlin.reflect.jvm.internal.impl.name.c fqName) {
            Object obj;
            Object next;
            kotlin.reflect.jvm.internal.impl.name.b bVarG;
            kotlin.jvm.internal.r.e(d0Var, "this");
            kotlin.jvm.internal.r.e(fqName, "fqName");
            Iterator<T> it = d0Var.getAnnotations().iterator();
            do {
                obj = null;
                if (it.hasNext()) {
                    next = it.next();
                    bVarG = ((kotlin.reflect.jvm.internal.impl.load.java.structure.a) next).g();
                }
                return (kotlin.reflect.jvm.internal.impl.load.java.structure.a) obj;
            } while (!kotlin.jvm.internal.r.a(bVarG != null ? bVarG.b() : null, fqName));
            obj = next;
            return (kotlin.reflect.jvm.internal.impl.load.java.structure.a) obj;
        }
    }
}
