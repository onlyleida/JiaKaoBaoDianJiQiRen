package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.u;

/* JADX INFO: loaded from: classes6.dex */
public interface b {

    public static final class a {
        public static String a(b bVar, u functionDescriptor) {
            r.e(bVar, "this");
            r.e(functionDescriptor, "functionDescriptor");
            if (bVar.c(functionDescriptor)) {
                return null;
            }
            return bVar.a();
        }
    }

    String a();

    String b(u uVar);

    boolean c(u uVar);
}
