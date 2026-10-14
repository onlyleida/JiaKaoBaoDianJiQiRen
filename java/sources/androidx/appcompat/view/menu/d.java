package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.widget.e0;
import androidx.appcompat.widget.f0;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class d extends k implements m, View.OnKeyListener, PopupWindow.OnDismissListener {
    private static final int B = R.layout.abc_cascading_menu_item_layout;
    boolean A;
    private final Context b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f236d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f237e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f238f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final Handler f239g;
    private View o;
    View p;
    private boolean r;
    private boolean s;
    private int t;
    private int u;
    private boolean w;
    private m.a x;
    ViewTreeObserver y;
    private PopupWindow.OnDismissListener z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List<g> f240h = new ArrayList();
    final List<C0010d> i = new ArrayList();
    final ViewTreeObserver.OnGlobalLayoutListener j = new a();
    private final View.OnAttachStateChangeListener k = new b();
    private final e0 l = new c();
    private int m = 0;
    private int n = 0;
    private boolean v = false;
    private int q = u();

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!d.this.a() || d.this.i.size() <= 0 || d.this.i.get(0).f246a.z()) {
                return;
            }
            View view = d.this.p;
            if (view == null || !view.isShown()) {
                d.this.dismiss();
                return;
            }
            Iterator<C0010d> it = d.this.i.iterator();
            while (it.hasNext()) {
                it.next().f246a.show();
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
            ViewTreeObserver viewTreeObserver = d.this.y;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    d.this.y = view.getViewTreeObserver();
                }
                d dVar = d.this;
                dVar.y.removeGlobalOnLayoutListener(dVar.j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    class c implements e0 {

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ C0010d f244a;
            final /* synthetic */ MenuItem b;
            final /* synthetic */ g c;

            a(C0010d c0010d, MenuItem menuItem, g gVar) {
                this.f244a = c0010d;
                this.b = menuItem;
                this.c = gVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0010d c0010d = this.f244a;
                if (c0010d != null) {
                    d.this.A = true;
                    c0010d.b.close(false);
                    d.this.A = false;
                }
                if (this.b.isEnabled() && this.b.hasSubMenu()) {
                    this.c.performItemAction(this.b, 4);
                }
            }
        }

        c() {
        }

        @Override // androidx.appcompat.widget.e0
        public void c(g gVar, MenuItem menuItem) {
            d.this.f239g.removeCallbacksAndMessages(null);
            int size = d.this.i.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (gVar == d.this.i.get(i).b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            d.this.f239g.postAtTime(new a(i2 < d.this.i.size() ? d.this.i.get(i2) : null, menuItem, gVar), gVar, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.e0
        public void m(g gVar, MenuItem menuItem) {
            d.this.f239g.removeCallbacksAndMessages(gVar);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.d$d, reason: collision with other inner class name */
    private static class C0010d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final f0 f246a;
        public final g b;
        public final int c;

        public C0010d(f0 f0Var, g gVar, int i) {
            this.f246a = f0Var;
            this.b = gVar;
            this.c = i;
        }

        public ListView a() {
            return this.f246a.n();
        }
    }

    public d(Context context, View view, int i, int i2, boolean z) {
        this.b = context;
        this.o = view;
        this.f236d = i;
        this.f237e = i2;
        this.f238f = z;
        Resources resources = context.getResources();
        this.c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f239g = new Handler();
    }

    private f0 q() {
        f0 f0Var = new f0(this.b, null, this.f236d, this.f237e);
        f0Var.S(this.l);
        f0Var.K(this);
        f0Var.J(this);
        f0Var.B(this.o);
        f0Var.E(this.n);
        f0Var.I(true);
        f0Var.H(2);
        return f0Var;
    }

    private int r(g gVar) {
        int size = this.i.size();
        for (int i = 0; i < size; i++) {
            if (gVar == this.i.get(i).b) {
                return i;
            }
        }
        return -1;
    }

    private MenuItem s(g gVar, g gVar2) {
        int size = gVar.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = gVar.getItem(i);
            if (item.hasSubMenu() && gVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    private View t(C0010d c0010d, g gVar) {
        f fVar;
        int headersCount;
        int firstVisiblePosition;
        MenuItem menuItemS = s(c0010d.b, gVar);
        if (menuItemS == null) {
            return null;
        }
        ListView listViewA = c0010d.a();
        ListAdapter adapter = listViewA.getAdapter();
        int i = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            headersCount = headerViewListAdapter.getHeadersCount();
            fVar = (f) headerViewListAdapter.getWrappedAdapter();
        } else {
            fVar = (f) adapter;
            headersCount = 0;
        }
        int count = fVar.getCount();
        while (true) {
            if (i >= count) {
                i = -1;
                break;
            }
            if (menuItemS == fVar.getItem(i)) {
                break;
            }
            i++;
        }
        if (i != -1 && (firstVisiblePosition = (i + headersCount) - listViewA.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < listViewA.getChildCount()) {
            return listViewA.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    private int u() {
        return ViewCompat.getLayoutDirection(this.o) == 1 ? 0 : 1;
    }

    private int v(int i) {
        List<C0010d> list = this.i;
        ListView listViewA = list.get(list.size() - 1).a();
        int[] iArr = new int[2];
        listViewA.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.p.getWindowVisibleDisplayFrame(rect);
        if (this.q == 1) {
            return (iArr[0] + listViewA.getWidth()) + i > rect.right ? 0 : 1;
        }
        return iArr[0] - i < 0 ? 1 : 0;
    }

    private void w(g gVar) {
        C0010d c0010d;
        View viewT;
        int i;
        int i2;
        int i3;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.b);
        f fVar = new f(gVar, layoutInflaterFrom, this.f238f, B);
        if (!a() && this.v) {
            fVar.d(true);
        } else if (a()) {
            fVar.d(k.o(gVar));
        }
        int iE = k.e(fVar, null, this.b, this.c);
        f0 f0VarQ = q();
        f0VarQ.l(fVar);
        f0VarQ.D(iE);
        f0VarQ.E(this.n);
        if (this.i.size() > 0) {
            List<C0010d> list = this.i;
            c0010d = list.get(list.size() - 1);
            viewT = t(c0010d, gVar);
        } else {
            c0010d = null;
            viewT = null;
        }
        if (viewT != null) {
            f0VarQ.T(false);
            f0VarQ.Q(null);
            int iV = v(iE);
            boolean z = iV == 1;
            this.q = iV;
            if (Build.VERSION.SDK_INT >= 26) {
                f0VarQ.B(viewT);
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.o.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                viewT.getLocationOnScreen(iArr2);
                if ((this.n & 7) == 5) {
                    iArr[0] = iArr[0] + this.o.getWidth();
                    iArr2[0] = iArr2[0] + viewT.getWidth();
                }
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            if ((this.n & 5) == 5) {
                if (z) {
                    i3 = i + iE;
                } else {
                    iE = viewT.getWidth();
                    i3 = i - iE;
                }
            } else if (z) {
                iE = viewT.getWidth();
                i3 = i + iE;
            } else {
                i3 = i - iE;
            }
            f0VarQ.d(i3);
            f0VarQ.L(true);
            f0VarQ.h(i2);
        } else {
            if (this.r) {
                f0VarQ.d(this.t);
            }
            if (this.s) {
                f0VarQ.h(this.u);
            }
            f0VarQ.F(d());
        }
        this.i.add(new C0010d(f0VarQ, gVar, this.q));
        f0VarQ.show();
        ListView listViewN = f0VarQ.n();
        listViewN.setOnKeyListener(this);
        if (c0010d == null && this.w && gVar.getHeaderTitle() != null) {
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) listViewN, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(gVar.getHeaderTitle());
            listViewN.addHeaderView(frameLayout, null, false);
            f0VarQ.show();
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean a() {
        return this.i.size() > 0 && this.i.get(0).f246a.a();
    }

    @Override // androidx.appcompat.view.menu.k
    public void b(g gVar) {
        gVar.addMenuPresenter(this, this.b);
        if (a()) {
            w(gVar);
        } else {
            this.f240h.add(gVar);
        }
    }

    @Override // androidx.appcompat.view.menu.k
    protected boolean c() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        int size = this.i.size();
        if (size > 0) {
            C0010d[] c0010dArr = (C0010d[]) this.i.toArray(new C0010d[size]);
            for (int i = size - 1; i >= 0; i--) {
                C0010d c0010d = c0010dArr[i];
                if (c0010d.f246a.a()) {
                    c0010d.f246a.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void f(View view) {
        if (this.o != view) {
            this.o = view;
            this.n = GravityCompat.getAbsoluteGravity(this.m, ViewCompat.getLayoutDirection(view));
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.k
    public void h(boolean z) {
        this.v = z;
    }

    @Override // androidx.appcompat.view.menu.k
    public void i(int i) {
        if (this.m != i) {
            this.m = i;
            this.n = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this.o));
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void j(int i) {
        this.r = true;
        this.t = i;
    }

    @Override // androidx.appcompat.view.menu.k
    public void k(PopupWindow.OnDismissListener onDismissListener) {
        this.z = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.k
    public void l(boolean z) {
        this.w = z;
    }

    @Override // androidx.appcompat.view.menu.k
    public void m(int i) {
        this.s = true;
        this.u = i;
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView n() {
        if (this.i.isEmpty()) {
            return null;
        }
        List<C0010d> list = this.i;
        return list.get(list.size() - 1).a();
    }

    @Override // androidx.appcompat.view.menu.m
    public void onCloseMenu(g gVar, boolean z) {
        int iR = r(gVar);
        if (iR < 0) {
            return;
        }
        int i = iR + 1;
        if (i < this.i.size()) {
            this.i.get(i).b.close(false);
        }
        C0010d c0010dRemove = this.i.remove(iR);
        c0010dRemove.b.removeMenuPresenter(this);
        if (this.A) {
            c0010dRemove.f246a.R(null);
            c0010dRemove.f246a.C(0);
        }
        c0010dRemove.f246a.dismiss();
        int size = this.i.size();
        if (size > 0) {
            this.q = this.i.get(size - 1).c;
        } else {
            this.q = u();
        }
        if (size != 0) {
            if (z) {
                this.i.get(0).b.close(false);
                return;
            }
            return;
        }
        dismiss();
        m.a aVar = this.x;
        if (aVar != null) {
            aVar.onCloseMenu(gVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.y;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.y.removeGlobalOnLayoutListener(this.j);
            }
            this.y = null;
        }
        this.p.removeOnAttachStateChangeListener(this.k);
        this.z.onDismiss();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        C0010d c0010d;
        int size = this.i.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c0010d = null;
                break;
            }
            c0010d = this.i.get(i);
            if (!c0010d.f246a.a()) {
                break;
            } else {
                i++;
            }
        }
        if (c0010d != null) {
            c0010d.b.close(false);
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
        for (C0010d c0010d : this.i) {
            if (rVar == c0010d.b) {
                c0010d.a().requestFocus();
                return true;
            }
        }
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        b(rVar);
        m.a aVar = this.x;
        if (aVar != null) {
            aVar.a(rVar);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public void setCallback(m.a aVar) {
        this.x = aVar;
    }

    @Override // androidx.appcompat.view.menu.p
    public void show() {
        if (a()) {
            return;
        }
        Iterator<g> it = this.f240h.iterator();
        while (it.hasNext()) {
            w(it.next());
        }
        this.f240h.clear();
        View view = this.o;
        this.p = view;
        if (view != null) {
            boolean z = this.y == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.y = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.j);
            }
            this.p.addOnAttachStateChangeListener(this.k);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void updateMenuView(boolean z) {
        Iterator<C0010d> it = this.i.iterator();
        while (it.hasNext()) {
            k.p(it.next().a().getAdapter()).notifyDataSetChanged();
        }
    }
}
