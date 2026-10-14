package androidx.appcompat.d;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f181a;
    private boolean b;

    public interface a {
        void a(b bVar);

        boolean b(b bVar, Menu menu);

        boolean c(b bVar, MenuItem menuItem);

        boolean d(b bVar, Menu menu);
    }

    public abstract void a();

    public abstract View b();

    public abstract Menu c();

    public abstract MenuInflater d();

    public abstract CharSequence e();

    public Object f() {
        return this.f181a;
    }

    public abstract CharSequence g();

    public boolean h() {
        return this.b;
    }

    public abstract void i();

    public abstract boolean j();

    public abstract void k(View view);

    public abstract void l(int i);

    public abstract void m(CharSequence charSequence);

    public void n(Object obj) {
        this.f181a = obj;
    }

    public abstract void o(int i);

    public abstract void p(CharSequence charSequence);

    public void q(boolean z) {
        this.b = z;
    }
}
