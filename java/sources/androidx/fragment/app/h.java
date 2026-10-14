package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.lifecycle.o0;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j<?> f1370a;

    private h(j<?> jVar) {
        this.f1370a = jVar;
    }

    public static h b(j<?> jVar) {
        androidx.core.util.h.g(jVar, "callbacks == null");
        return new h(jVar);
    }

    public void a(Fragment fragment) {
        j<?> jVar = this.f1370a;
        jVar.f1373d.k(jVar, jVar, fragment);
    }

    public void c() {
        this.f1370a.f1373d.z();
    }

    public void d(Configuration configuration) {
        this.f1370a.f1373d.B(configuration);
    }

    public boolean e(MenuItem menuItem) {
        return this.f1370a.f1373d.C(menuItem);
    }

    public void f() {
        this.f1370a.f1373d.D();
    }

    public boolean g(Menu menu, MenuInflater menuInflater) {
        return this.f1370a.f1373d.E(menu, menuInflater);
    }

    public void h() {
        this.f1370a.f1373d.F();
    }

    public void i() {
        this.f1370a.f1373d.H();
    }

    public void j(boolean z) {
        this.f1370a.f1373d.I(z);
    }

    public boolean k(MenuItem menuItem) {
        return this.f1370a.f1373d.K(menuItem);
    }

    public void l(Menu menu) {
        this.f1370a.f1373d.L(menu);
    }

    public void m() {
        this.f1370a.f1373d.N();
    }

    public void n(boolean z) {
        this.f1370a.f1373d.O(z);
    }

    public boolean o(Menu menu) {
        return this.f1370a.f1373d.P(menu);
    }

    public void p() {
        this.f1370a.f1373d.R();
    }

    public void q() {
        this.f1370a.f1373d.S();
    }

    public void r() {
        this.f1370a.f1373d.U();
    }

    public boolean s() {
        return this.f1370a.f1373d.b0(true);
    }

    public FragmentManager t() {
        return this.f1370a.f1373d;
    }

    public void u() {
        this.f1370a.f1373d.V0();
    }

    public View v(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f1370a.f1373d.w0().onCreateView(view, str, context, attributeSet);
    }

    public void w(Parcelable parcelable) {
        j<?> jVar = this.f1370a;
        if (!(jVar instanceof o0)) {
            throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
        }
        jVar.f1373d.j1(parcelable);
    }

    public Parcelable x() {
        return this.f1370a.f1373d.l1();
    }
}
