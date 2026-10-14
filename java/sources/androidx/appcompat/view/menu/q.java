package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.widget.f0;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
final class q extends k implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, m, View.OnKeyListener {
    private static final int v = R.layout.abc_popup_menu_item_layout;
    private final Context b;
    private final g c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f282d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f283e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f284f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f285g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f286h;
    final f0 i;
    private PopupWindow.OnDismissListener l;
    private View m;
    View n;
    private m.a o;
    ViewTreeObserver p;
    private boolean q;
    private boolean r;
    private int s;
    private boolean u;
    final ViewTreeObserver.OnGlobalLayoutListener j = new a();
    private final View.OnAttachStateChangeListener k = new b();
    private int t = 0;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!q.this.a() || q.this.i.z()) {
                return;
            }
            View view = q.this.n;
            if (view == null || !view.isShown()) {
                q.this.dismiss();
            } else {
                q.this.i.show();
            }
        }
    }

    class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = q.this.p;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    q.this.p = view.getViewTreeObserver();
                }
                q qVar = q.this;
                qVar.p.removeGlobalOnLayoutListener(qVar.j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public q(Context context, g gVar, View view, int i, int i2, boolean z) {
        this.b = context;
        this.c = gVar;
        this.f283e = z;
        this.f282d = new f(gVar, LayoutInflater.from(context), z, v);
        this.f285g = i;
        this.f286h = i2;
        Resources resources = context.getResources();
        this.f284f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.m = view;
        this.i = new f0(context, null, i, i2);
        gVar.addMenuPresenter(this, context);
    }

    private boolean q() {
        View view;
        if (a()) {
            return true;
        }
        if (this.q || (view = this.m) == null) {
            return false;
        }
        this.n = view;
        this.i.J(this);
        this.i.K(this);
        this.i.I(true);
        View view2 = this.n;
        boolean z = this.p == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.p = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.j);
        }
        view2.addOnAttachStateChangeListener(this.k);
        this.i.B(view2);
        this.i.E(this.t);
        if (!this.r) {
            this.s = k.e(this.f282d, null, this.b, this.f284f);
            this.r = true;
        }
        this.i.D(this.s);
        this.i.H(2);
        this.i.F(d());
        this.i.show();
        ListView listViewN = this.i.n();
        listViewN.setOnKeyListener(this);
        if (this.u && this.c.getHeaderTitle() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.b).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) listViewN, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            if (textView != null) {
                textView.setText(this.c.getHeaderTitle());
            }
            frameLayout.setEnabled(false);
            listViewN.addHeaderView(frameLayout, null, false);
        }
        this.i.l(this.f282d);
        this.i.show();
        return true;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean a() {
        return !this.q && this.i.a();
    }

    @Override // androidx.appcompat.view.menu.k
    public void b(g gVar) {
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        if (a()) {
            this.i.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void f(View view) {
        this.m = view;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.k
    public void h(boolean z) {
        this.f282d.d(z);
    }

    @Override // androidx.appcompat.view.menu.k
    public void i(int i) {
        this.t = i;
    }

    @Override // androidx.appcompat.view.menu.k
    public void j(int i) {
        this.i.d(i);
    }

    @Override // androidx.appcompat.view.menu.k
    public void k(PopupWindow.OnDismissListener onDismissListener) {
        this.l = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.k
    public void l(boolean z) {
        this.u = z;
    }

    @Override // androidx.appcompat.view.menu.k
    public void m(int i) {
        this.i.h(i);
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView n() {
        return this.i.n();
    }

    @Override // androidx.appcompat.view.menu.m
    public void onCloseMenu(g gVar, boolean z) {
        if (gVar != this.c) {
            return;
        }
        dismiss();
        m.a aVar = this.o;
        if (aVar != null) {
            aVar.onCloseMenu(gVar, z);
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.q = true;
        this.c.close();
        ViewTreeObserver viewTreeObserver = this.p;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.p = this.n.getViewTreeObserver();
            }
            this.p.removeGlobalOnLayoutListener(this.j);
            this.p = null;
        }
        this.n.removeOnAttachStateChangeListener(this.k);
        PopupWindow.OnDismissListener onDismissListener = this.l;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.m
    public Parcelable onSaveInstanceState() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean onSubMenuSelected(r rVar) {
        if (rVar.hasVisibleItems()) {
            l lVar = new l(this.b, rVar, this.n, this.f283e, this.f285g, this.f286h);
            lVar.j(this.o);
            lVar.g(k.o(rVar));
            lVar.i(this.l);
            this.l = null;
            this.c.close(false);
            int iB = this.i.b();
            int iK = this.i.k();
            if ((Gravity.getAbsoluteGravity(this.t, ViewCompat.getLayoutDirection(this.m)) & 7) == 5) {
                iB += this.m.getWidth();
            }
            if (lVar.n(iB, iK)) {
                m.a aVar = this.o;
                if (aVar == null) {
                    return true;
                }
                aVar.a(rVar);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public void setCallback(m.a aVar) {
        this.o = aVar;
    }

    @Override // androidx.appcompat.view.menu.p
    public void show() {
        if (!q()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void updateMenuView(boolean z) {
        this.r = false;
        f fVar = this.f282d;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }
}
