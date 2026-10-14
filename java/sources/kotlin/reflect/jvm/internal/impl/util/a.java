package kotlin.reflect.jvm.internal.impl.util;

import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.u;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a {
    public final c a(u functionDescriptor) {
        r.e(functionDescriptor, "functionDescriptor");
        for (Checks checks : b()) {
            if (checks.b(functionDescriptor)) {
                return checks.a(functionDescriptor);
            }
        }
        return c.a.b;
    }

    public abstract List<Checks> b();
}
