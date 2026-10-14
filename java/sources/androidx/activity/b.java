package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f37a;
    private CopyOnWriteArrayList<a> b = new CopyOnWriteArrayList<>();

    public b(boolean z) {
        this.f37a = z;
    }

    void a(a aVar) {
        this.b.add(aVar);
    }

    public abstract void b();

    public final boolean c() {
        return this.f37a;
    }

    public final void d() {
        Iterator<a> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }

    void e(a aVar) {
        this.b.remove(aVar);
    }

    public final void f(boolean z) {
        this.f37a = z;
    }
}
