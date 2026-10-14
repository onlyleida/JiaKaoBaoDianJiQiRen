package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CopyOnWriteArrayList<a> f1376a = new CopyOnWriteArrayList<>();
    private final FragmentManager b;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final FragmentManager.l f1377a;
        final boolean b;
    }

    l(FragmentManager fragmentManager) {
        this.b = fragmentManager;
    }

    void a(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragmentY0 = this.b.y0();
        if (fragmentY0 != null) {
            fragmentY0.getParentFragmentManager().x0().a(fragment, bundle, true);
        }
        for (a aVar : this.f1376a) {
            if (!z || aVar.b) {
                aVar.f1377a.a(this.b, fragment, bundle);
            }
        }
    }

    void b(Fragment fragment, boolean z) {
        Context contextF = this.b.v0().f();
        Fragment fragmentY0 = this.b.y0();
        if (fragmentY0 != null) {
            fragmentY0.getParentFragmentManager().x0().b(fragment, true);
        }
        for (a aVar : this.f1376a) {
            if (!z || aVar.b) {
                aVar.f1377a.b(this.b, fragment, contextF);
            }
        }
    }

    void c(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragmentY0 = this.b.y0();
        if (fragmentY0 != null) {
            fragmentY0.getParentFragmentManager().x0().c(fragment, bundle, true);
        }
        for (a aVar : this.f1376a) {
            if (!z || aVar.b) {
                aVar.f1377a.c(this.b, fragment, bundle);
            }
        }
    }

    void d(Fragment fragment, boolean z) {
        Fragment fragmentY0 = this.b.y0();
        if (fragmentY0 != null) {
            fragmentY0.getParentFragmentManager().x0().d(fragment, true);
        }
        for (a aVar : this.f1376a) {
            if (!z || aVar.b) {
                aVar.f1377a.d(this.b, fragment);
            }
        }
    }

    void e(Fragment fragment, boolean z) {
        Fragment fragmentY0 = this.b.y0();
        if (fragmentY0 != null) {
            fragmentY0.getParentFragmentManager().x0().e(fragment, true);
        }
        for (a aVar : this.f1376a) {
            if (!z || aVar.b) {
                aVar.f1377a.e(this.b, fragment);
            }
        }
    }

    void f(Fragment fragment, boolean z) {
        Fragment fragmentY0 = this.b.y0();
        if (fragmentY0 != null) {
            fragmentY0.getParentFragmentManager().x0().f(fragment, true);
        }
        for (a aVar : this.f1376a) {
            if (!z || aVar.b) {
                aVar.f1377a.f(this.b, fragment);
            }
        }
    }

    void g(Fragment fragment, boolean z) {
        Context contextF = this.b.v0().f();
        Fragment fragmentY0 = this.b.y0();
        if (fragmentY0 != null) {
            fragmentY0.getParentFragmentManager().x0().g(fragment, true);
        }
        for (a aVar : this.f1376a) {
            if (!z || aVar.b) {
                aVar.f1377a.g(this.b, fragment, contextF);
            }
        }
    }

    void h(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragmentY0 = this.b.y0();
        if (fragmentY0 != null) {
            fragmentY0.getParentFragmentManager().x0().h(fragment, bundle, true);
        }
        for (a aVar : this.f1376a) {
            if (!z || aVar.b) {
                aVar.f1377a.h(this.b, fragment, bundle);
            }
        }
    }

    void i(Fragment fragment, boolean z) {
        Fragment fragmentY0 = this.b.y0();
        if (fragmentY0 != null) {
            fragmentY0.getParentFragmentManager().x0().i(fragment, true);
        }
        for (a aVar : this.f1376a) {
            if (!z || aVar.b) {
                aVar.f1377a.i(this.b, fragment);
            }
        }
    }

    void j(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragmentY0 = this.b.y0();
        if (fragmentY0 != null) {
            fragmentY0.getParentFragmentManager().x0().j(fragment, bundle, true);
        }
        for (a aVar : this.f1376a) {
            if (!z || aVar.b) {
                aVar.f1377a.j(this.b, fragment, bundle);
            }
        }
    }

    void k(Fragment fragment, boolean z) {
        Fragment fragmentY0 = this.b.y0();
        if (fragmentY0 != null) {
            fragmentY0.getParentFragmentManager().x0().k(fragment, true);
        }
        for (a aVar : this.f1376a) {
            if (!z || aVar.b) {
                aVar.f1377a.k(this.b, fragment);
            }
        }
    }

    void l(Fragment fragment, boolean z) {
        Fragment fragmentY0 = this.b.y0();
        if (fragmentY0 != null) {
            fragmentY0.getParentFragmentManager().x0().l(fragment, true);
        }
        for (a aVar : this.f1376a) {
            if (!z || aVar.b) {
                aVar.f1377a.l(this.b, fragment);
            }
        }
    }

    void m(Fragment fragment, View view, Bundle bundle, boolean z) {
        Fragment fragmentY0 = this.b.y0();
        if (fragmentY0 != null) {
            fragmentY0.getParentFragmentManager().x0().m(fragment, view, bundle, true);
        }
        for (a aVar : this.f1376a) {
            if (!z || aVar.b) {
                aVar.f1377a.m(this.b, fragment, view, bundle);
            }
        }
    }

    void n(Fragment fragment, boolean z) {
        Fragment fragmentY0 = this.b.y0();
        if (fragmentY0 != null) {
            fragmentY0.getParentFragmentManager().x0().n(fragment, true);
        }
        for (a aVar : this.f1376a) {
            if (!z || aVar.b) {
                aVar.f1377a.n(this.b, fragment);
            }
        }
    }
}
