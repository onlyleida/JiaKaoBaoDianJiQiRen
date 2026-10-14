package cn.mucang.jiakaoyi.uilib.message.dialog;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.o;
import androidx.lifecycle.r;
import cn.mucang.android.core.config.n;
import cn.mucang.android.core.utils.t;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class DialogChainOwner implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f9435a;
    private Set<String> b;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Lifecycle.Event f9436d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private n f9437e;

    public DialogChainOwner(n nVar) {
        this.f9437e = nVar;
        nVar.getLifecycle().a(this);
    }

    @Override // androidx.lifecycle.o
    public void b(r rVar, Lifecycle.Event event) {
        this.f9436d = event;
        t.a("DialogChainOwner", "source " + rVar + " ; event " + event);
        if (event == Lifecycle.Event.ON_DESTROY) {
            j();
        }
    }

    public DialogChainOwner f(f fVar) {
        if (this.f9435a == null) {
            this.f9435a = new e(this);
        }
        this.f9435a.a(fVar);
        return this;
    }

    public boolean i() {
        Lifecycle.Event event;
        return (this.c || (event = this.f9436d) == null || event == Lifecycle.Event.ON_DESTROY || event == Lifecycle.Event.ON_STOP) ? false : true;
    }

    public void j() {
        this.c = true;
        this.f9437e = null;
        this.f9435a.b();
        Set<String> set = this.b;
        if (set != null) {
            set.clear();
        }
    }

    public n k() {
        return this.f9437e;
    }

    boolean l(String str) {
        Set<String> set = this.b;
        return set != null && set.contains(str);
    }

    public boolean m() {
        return this.c;
    }

    public void n() {
        if (this.f9435a == null) {
            this.f9435a = new e(this);
        }
        this.f9435a.c();
    }
}
