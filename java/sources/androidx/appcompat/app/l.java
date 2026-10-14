package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.r0;
import androidx.appcompat.widget.y;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class l extends androidx.appcompat.app.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    y f130a;
    boolean b;
    Window.Callback c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f131d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f132e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<androidx.appcompat.app.a.b> f133f = new ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Runnable f134g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Toolbar.f f135h;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l.this.x();
        }
    }

    class b implements Toolbar.f {
        b() {
        }

        @Override // androidx.appcompat.widget.Toolbar.f
        public boolean onMenuItemClick(MenuItem menuItem) {
            return l.this.c.onMenuItemSelected(0, menuItem);
        }
    }

    private final class c implements androidx.appcompat.view.menu.m.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f138a;

        c() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean a(androidx.appcompat.view.menu.g gVar) {
            Window.Callback callback = l.this.c;
            if (callback == null) {
                return false;
            }
            callback.onMenuOpened(108, gVar);
            return true;
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void onCloseMenu(androidx.appcompat.view.menu.g gVar, boolean z) {
            if (this.f138a) {
                return;
            }
            this.f138a = true;
            l.this.f130a.q();
            Window.Callback callback = l.this.c;
            if (callback != null) {
                callback.onPanelClosed(108, gVar);
            }
            this.f138a = false;
        }
    }

    private final class d implements androidx.appcompat.view.menu.g.a {
        d() {
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean onMenuItemSelected(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void onMenuModeChange(androidx.appcompat.view.menu.g gVar) {
            l lVar = l.this;
            if (lVar.c != null) {
                if (lVar.f130a.e()) {
                    l.this.c.onPanelClosed(108, gVar);
                } else if (l.this.c.onPreparePanel(0, null, gVar)) {
                    l.this.c.onMenuOpened(108, gVar);
                }
            }
        }
    }

    private class e extends androidx.appcompat.d.i {
        public e(Window.Callback callback) {
            super(callback);
        }

        @Override // androidx.appcompat.d.i, android.view.Window.Callback
        public View onCreatePanelView(int i) {
            return i == 0 ? new View(l.this.f130a.getContext()) : super.onCreatePanelView(i);
        }

        @Override // androidx.appcompat.d.i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            boolean zOnPreparePanel = super.onPreparePanel(i, view, menu);
            if (zOnPreparePanel) {
                l lVar = l.this;
                if (!lVar.b) {
                    lVar.f130a.f();
                    l.this.b = true;
                }
            }
            return zOnPreparePanel;
        }
    }

    l(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        b bVar = new b();
        this.f135h = bVar;
        this.f130a = new r0(toolbar, false);
        e eVar = new e(callback);
        this.c = eVar;
        this.f130a.setWindowCallback(eVar);
        toolbar.setOnMenuItemClickListener(bVar);
        this.f130a.setWindowTitle(charSequence);
    }

    private Menu v() {
        if (!this.f131d) {
            this.f130a.t(new c(), new d());
            this.f131d = true;
        }
        return this.f130a.j();
    }

    @Override // androidx.appcompat.app.a
    public boolean g() {
        return this.f130a.b();
    }

    @Override // androidx.appcompat.app.a
    public boolean h() {
        if (!this.f130a.h()) {
            return false;
        }
        this.f130a.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void i(boolean z) {
        if (z == this.f132e) {
            return;
        }
        this.f132e = z;
        int size = this.f133f.size();
        for (int i = 0; i < size; i++) {
            this.f133f.get(i).a(z);
        }
    }

    @Override // androidx.appcompat.app.a
    public int j() {
        return this.f130a.u();
    }

    @Override // androidx.appcompat.app.a
    public Context k() {
        return this.f130a.getContext();
    }

    @Override // androidx.appcompat.app.a
    public boolean l() {
        this.f130a.m().removeCallbacks(this.f134g);
        ViewCompat.postOnAnimation(this.f130a.m(), this.f134g);
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void m(Configuration configuration) {
        super.m(configuration);
    }

    @Override // androidx.appcompat.app.a
    void n() {
        this.f130a.m().removeCallbacks(this.f134g);
    }

    @Override // androidx.appcompat.app.a
    public boolean o(int i, KeyEvent keyEvent) {
        Menu menuV = v();
        if (menuV == null) {
            return false;
        }
        menuV.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuV.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.a
    public boolean p(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            q();
        }
        return true;
    }

    @Override // androidx.appcompat.app.a
    public boolean q() {
        return this.f130a.c();
    }

    @Override // androidx.appcompat.app.a
    public void r(boolean z) {
    }

    @Override // androidx.appcompat.app.a
    public void s(boolean z) {
    }

    @Override // androidx.appcompat.app.a
    public void t(CharSequence charSequence) {
        this.f130a.setWindowTitle(charSequence);
    }

    public Window.Callback w() {
        return this.c;
    }

    void x() {
        Menu menuV = v();
        androidx.appcompat.view.menu.g gVar = menuV instanceof androidx.appcompat.view.menu.g ? (androidx.appcompat.view.menu.g) menuV : null;
        if (gVar != null) {
            gVar.stopDispatchingItemsChanged();
        }
        try {
            menuV.clear();
            if (!this.c.onCreatePanelMenu(0, menuV) || !this.c.onPreparePanel(0, null, menuV)) {
                menuV.clear();
            }
        } finally {
            if (gVar != null) {
                gVar.startDispatchingItemsChanged();
            }
        }
    }
}
