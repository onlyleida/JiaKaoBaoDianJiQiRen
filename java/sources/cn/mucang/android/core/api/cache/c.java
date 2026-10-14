package cn.mucang.android.core.api.cache;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final c f2337h = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f2338a;
    private g b;
    private f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f2339d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CacheMode f2340e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f2341f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f2342g = true;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f2343a;

        public a() {
            this(new c());
        }

        public c a() {
            return this.f2343a;
        }

        public a b(d dVar) {
            this.f2343a.f2338a = dVar;
            return this;
        }

        public a c(CacheMode cacheMode) {
            this.f2343a.f2340e = cacheMode;
            return this;
        }

        public a d(e eVar) {
            this.f2343a.f2339d = eVar;
            return this;
        }

        public a e(f fVar) {
            this.f2343a.c = fVar;
            return this;
        }

        public a f(g gVar) {
            this.f2343a.b = gVar;
            return this;
        }

        public a g(long j) {
            this.f2343a.f2341f = j;
            return this;
        }

        public a h(boolean z) {
            this.f2343a.f2342g = z;
            return this;
        }

        public a(c cVar) {
            this.f2343a = cVar;
            if (cVar == null) {
                throw new IllegalArgumentException("bad cache config.");
            }
        }
    }

    c() {
    }

    public static c h() {
        try {
            cn.mucang.android.core.api.cache.impl.d dVarB = h.a().b();
            if (dVarB == null) {
                return f2337h;
            }
            c cVar = new c();
            cVar.f2339d = dVarB;
            cVar.f2338a = new cn.mucang.android.core.api.cache.impl.a();
            cVar.f2340e = CacheMode.AUTO;
            cVar.c = new cn.mucang.android.core.api.cache.impl.b();
            cVar.b = new cn.mucang.android.core.api.cache.impl.c();
            cVar.f2341f = 10000L;
            cVar.f2342g = true;
            return cVar;
        } catch (IOException unused) {
            return f2337h;
        }
    }

    public cn.mucang.android.core.api.cache.a i(String str) {
        e eVar = this.f2339d;
        if (eVar == null) {
            return null;
        }
        return eVar.a(this.f2338a.a(str));
    }

    public d j() {
        return this.f2338a;
    }

    public CacheMode k() {
        return this.f2340e;
    }

    public e l() {
        return this.f2339d;
    }

    public f m() {
        return this.c;
    }

    public g n() {
        return this.b;
    }

    public long o() {
        return this.f2341f;
    }

    public boolean p() {
        return this.f2342g;
    }

    public void q(String str) {
        e eVar = this.f2339d;
        if (eVar == null) {
            return;
        }
        eVar.remove(this.f2338a.a(str));
    }

    public void r(String str, cn.mucang.android.core.api.cache.a aVar) {
        this.f2339d.b(this.f2338a.a(str), aVar);
    }
}
