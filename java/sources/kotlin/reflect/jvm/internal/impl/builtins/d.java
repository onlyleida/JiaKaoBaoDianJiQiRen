package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.jvm.internal.o;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

/* JADX INFO: loaded from: classes6.dex */
public final class d extends g {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f14780g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final d f14781h;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final d a() {
            return d.f14781h;
        }
    }

    static {
        o oVar = null;
        f14780g = new a(oVar);
        f14781h = new d(false, 1, oVar);
    }

    public d(boolean z) {
        super(new LockBasedStorageManager("DefaultBuiltIns"));
        if (z) {
            f(false);
        }
    }

    public static final d E0() {
        return f14780g.a();
    }

    public /* synthetic */ d(boolean z, int i, o oVar) {
        this((i & 1) != 0 ? true : z);
    }
}
