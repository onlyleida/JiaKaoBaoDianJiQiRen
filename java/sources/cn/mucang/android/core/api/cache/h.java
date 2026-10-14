package cn.mucang.android.core.api.cache;

import cn.mucang.android.core.config.MucangConfig;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile cn.mucang.android.core.api.cache.impl.d f2344a;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final h f2345a = new h();
    }

    public static h a() {
        return b.f2345a;
    }

    public cn.mucang.android.core.api.cache.impl.d b() throws IOException {
        if (this.f2344a == null) {
            synchronized (h.class) {
                if (this.f2344a == null) {
                    File fileA = i.a(MucangConfig.getContext());
                    if (fileA == null) {
                        return null;
                    }
                    cn.mucang.android.core.api.cache.impl.d.b bVar = new cn.mucang.android.core.api.cache.impl.d.b();
                    bVar.b(fileA.getAbsolutePath());
                    this.f2344a = bVar.a();
                }
            }
        }
        return this.f2344a;
    }

    private h() {
    }
}
