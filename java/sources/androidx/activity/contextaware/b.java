package androidx.activity.contextaware;

import android.content.Context;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<d> f38a = new CopyOnWriteArraySet();
    private volatile Context b;

    public void a(d dVar) {
        if (this.b != null) {
            dVar.a(this.b);
        }
        this.f38a.add(dVar);
    }

    public void b() {
        this.b = null;
    }

    public void c(Context context) {
        this.b = context;
        Iterator<d> it = this.f38a.iterator();
        while (it.hasNext()) {
            it.next().a(context);
        }
    }

    public Context d() {
        return this.b;
    }

    public void e(d dVar) {
        this.f38a.remove(dVar);
    }
}
