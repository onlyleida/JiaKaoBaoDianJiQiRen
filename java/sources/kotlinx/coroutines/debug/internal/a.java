package kotlinx.coroutines.debug.internal;

import kotlin.jvm.internal.r;
import kotlinx.coroutines.internal.y;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final y f15912a = new y("REHASH");
    private static final f b = new f(null);
    private static final f c = new f(Boolean.TRUE);

    public static final /* synthetic */ Void c() {
        e();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final f d(Object obj) {
        if (obj == null) {
            return b;
        }
        return r.a(obj, Boolean.TRUE) ? c : new f(obj);
    }

    private static final Void e() {
        throw new UnsupportedOperationException("not implemented");
    }
}
