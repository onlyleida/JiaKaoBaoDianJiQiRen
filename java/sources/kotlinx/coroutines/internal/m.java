package kotlinx.coroutines.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f16023a = new y("CONDITION_FALSE");
    private static final Object b = new y("LIST_EMPTY");

    public static final Object a() {
        return f16023a;
    }

    public static final Object b() {
        return b;
    }

    public static final n c(Object obj) {
        n nVar;
        v vVar = (v) (!(obj instanceof v) ? null : obj);
        if (vVar != null && (nVar = vVar.f16038a) != null) {
            return nVar;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        return (n) obj;
    }
}
