package androidx.appcompat.d;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class e extends b implements androidx.appcompat.view.menu.g.a {
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ActionBarContextView f185d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b.a f186e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WeakReference<View> f187f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f188g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private androidx.appcompat.view.menu.g f189h;

    public e(Context context, ActionBarContextView actionBarContextView, b.a aVar, boolean z) {
        this.c = context;
        this.f185d = actionBarContextView;
        this.f186e = aVar;
        androidx.appcompat.view.menu.g defaultShowAsAction = new androidx.appcompat.view.menu.g(actionBarContextView.getContext()).setDefaultShowAsAction(1);
        this.f189h = defaultShowAsAction;
        defaultShowAsAction.setCallback(this);
    }

    @Override // androidx.appcompat.d.b
    public void a() {
        if (this.f188g) {
            return;
        }
        this.f188g = true;
        this.f185d.sendAccessibilityEvent(32);
        this.f186e.a(this);
    }

    @Override // androidx.appcompat.d.b
    public View b() {
        WeakReference<View> weakReference = this.f187f;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // androidx.appcompat.d.b
    public Menu c() {
        return this.f189h;
    }

    @Override // androidx.appcompat.d.b
    public MenuInflater d() {
        return new g(this.f185d.getContext());
    }

    @Override // androidx.appcompat.d.b
    public CharSequence e() {
        return this.f185d.getSubtitle();
    }

    @Override // androidx.appcompat.d.b
    public CharSequence g() {
        return this.f185d.getTitle();
    }

    @Override // androidx.appcompat.d.b
    public void i() {
        this.f186e.d(this, this.f189h);
    }

    @Override // androidx.appcompat.d.b
    public boolean j() {
        return this.f185d.j();
    }

    @Override // androidx.appcompat.d.b
    public void k(View view) {
        this.f185d.setCustomView(view);
        this.f187f = view != null ? new WeakReference<>(view) : null;
    }

    @Override // androidx.appcompat.d.b
    public void l(int i) {
        m(this.c.getString(i));
    }

    @Override // androidx.appcompat.d.b
    public void m(CharSequence charSequence) {
        this.f185d.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.d.b
    public void o(int i) {
        p(this.c.getString(i));
    }

    @Override // androidx.appcompat.view.menu.g.a
    public boolean onMenuItemSelected(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
        return this.f186e.c(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.g.a
    public void onMenuModeChange(androidx.appcompat.view.menu.g gVar) {
        i();
        this.f185d.l();
    }

    @Override // androidx.appcompat.d.b
    public void p(CharSequence charSequence) {
        this.f185d.setTitle(charSequence);
    }

    @Override // androidx.appcompat.d.b
    public void q(boolean z) {
        super.q(z);
        this.f185d.setTitleOptional(z);
    }
}
