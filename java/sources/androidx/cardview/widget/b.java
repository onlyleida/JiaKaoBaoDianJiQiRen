package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class b implements e {
    b() {
    }

    private f p(d dVar) {
        return (f) dVar.c();
    }

    @Override // androidx.cardview.widget.e
    public void a(d dVar, float f2) {
        p(dVar).h(f2);
    }

    @Override // androidx.cardview.widget.e
    public float b(d dVar) {
        return p(dVar).d();
    }

    @Override // androidx.cardview.widget.e
    public void c(d dVar, float f2) {
        dVar.f().setElevation(f2);
    }

    @Override // androidx.cardview.widget.e
    public float d(d dVar) {
        return p(dVar).c();
    }

    @Override // androidx.cardview.widget.e
    public ColorStateList e(d dVar) {
        return p(dVar).b();
    }

    @Override // androidx.cardview.widget.e
    public float f(d dVar) {
        return b(dVar) * 2.0f;
    }

    @Override // androidx.cardview.widget.e
    public void g(d dVar) {
        o(dVar, d(dVar));
    }

    @Override // androidx.cardview.widget.e
    public void h(d dVar, Context context, ColorStateList colorStateList, float f2, float f3, float f4) {
        dVar.a(new f(colorStateList, f2));
        View viewF = dVar.f();
        viewF.setClipToOutline(true);
        viewF.setElevation(f3);
        o(dVar, f4);
    }

    @Override // androidx.cardview.widget.e
    public float i(d dVar) {
        return dVar.f().getElevation();
    }

    @Override // androidx.cardview.widget.e
    public void j(d dVar) {
        o(dVar, d(dVar));
    }

    @Override // androidx.cardview.widget.e
    public void k(d dVar) {
        if (!dVar.b()) {
            dVar.setShadowPadding(0, 0, 0, 0);
            return;
        }
        float fD = d(dVar);
        float fB = b(dVar);
        int iCeil = (int) Math.ceil(g.c(fD, fB, dVar.e()));
        int iCeil2 = (int) Math.ceil(g.d(fD, fB, dVar.e()));
        dVar.setShadowPadding(iCeil, iCeil2, iCeil, iCeil2);
    }

    @Override // androidx.cardview.widget.e
    public void l() {
    }

    @Override // androidx.cardview.widget.e
    public float m(d dVar) {
        return b(dVar) * 2.0f;
    }

    @Override // androidx.cardview.widget.e
    public void n(d dVar, ColorStateList colorStateList) {
        p(dVar).f(colorStateList);
    }

    @Override // androidx.cardview.widget.e
    public void o(d dVar, float f2) {
        p(dVar).g(f2, dVar.b(), dVar.e());
        k(dVar);
    }
}
