package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.R;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f274a;
    private final g b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f275d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f276e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f277f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f278g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f279h;
    private m.a i;
    private k j;
    private PopupWindow.OnDismissListener k;
    private final PopupWindow.OnDismissListener l;

    class a implements PopupWindow.OnDismissListener {
        a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            l.this.e();
        }
    }

    public l(Context context, g gVar, View view, boolean z, int i) {
        this(context, gVar, view, z, i, 0);
    }

    private k a() {
        Display defaultDisplay = ((WindowManager) this.f274a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        k dVar = Math.min(point.x, point.y) >= this.f274a.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width) ? new d(this.f274a, this.f277f, this.f275d, this.f276e, this.c) : new q(this.f274a, this.b, this.f277f, this.f275d, this.f276e, this.c);
        dVar.b(this.b);
        dVar.k(this.l);
        dVar.f(this.f277f);
        dVar.setCallback(this.i);
        dVar.h(this.f279h);
        dVar.i(this.f278g);
        return dVar;
    }

    private void l(int i, int i2, boolean z, boolean z2) {
        k kVarC = c();
        kVarC.l(z2);
        if (z) {
            if ((GravityCompat.getAbsoluteGravity(this.f278g, ViewCompat.getLayoutDirection(this.f277f)) & 7) == 5) {
                i -= this.f277f.getWidth();
            }
            kVarC.j(i);
            kVarC.m(i2);
            int i3 = (int) ((this.f274a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            kVarC.g(new Rect(i - i3, i2 - i3, i + i3, i2 + i3));
        }
        kVarC.show();
    }

    public void b() {
        if (d()) {
            this.j.dismiss();
        }
    }

    public k c() {
        if (this.j == null) {
            this.j = a();
        }
        return this.j;
    }

    public boolean d() {
        k kVar = this.j;
        return kVar != null && kVar.a();
    }

    protected void e() {
        this.j = null;
        PopupWindow.OnDismissListener onDismissListener = this.k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void f(View view) {
        this.f277f = view;
    }

    public void g(boolean z) {
        this.f279h = z;
        k kVar = this.j;
        if (kVar != null) {
            kVar.h(z);
        }
    }

    public void h(int i) {
        this.f278g = i;
    }

    public void i(PopupWindow.OnDismissListener onDismissListener) {
        this.k = onDismissListener;
    }

    public void j(m.a aVar) {
        this.i = aVar;
        k kVar = this.j;
        if (kVar != null) {
            kVar.setCallback(aVar);
        }
    }

    public void k() {
        if (!m()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public boolean m() {
        if (d()) {
            return true;
        }
        if (this.f277f == null) {
            return false;
        }
        l(0, 0, false, false);
        return true;
    }

    public boolean n(int i, int i2) {
        if (d()) {
            return true;
        }
        if (this.f277f == null) {
            return false;
        }
        l(i, i2, true, true);
        return true;
    }

    public l(Context context, g gVar, View view, boolean z, int i, int i2) {
        this.f278g = GravityCompat.START;
        this.l = new a();
        this.f274a = context;
        this.b = gVar;
        this.f277f = view;
        this.c = z;
        this.f275d = i;
        this.f276e = i2;
    }
}
