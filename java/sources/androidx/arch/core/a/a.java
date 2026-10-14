package androidx.arch.core.a;

/* JADX INFO: loaded from: classes.dex */
public class a extends c {
    private static volatile a c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f528a;
    private c b;

    private a() {
        b bVar = new b();
        this.b = bVar;
        this.f528a = bVar;
    }

    public static a c() {
        if (c != null) {
            return c;
        }
        synchronized (a.class) {
            if (c == null) {
                c = new a();
            }
        }
        return c;
    }

    @Override // androidx.arch.core.a.c
    public boolean a() {
        return this.f528a.a();
    }

    @Override // androidx.arch.core.a.c
    public void b(Runnable runnable) {
        this.f528a.b(runnable);
    }
}
