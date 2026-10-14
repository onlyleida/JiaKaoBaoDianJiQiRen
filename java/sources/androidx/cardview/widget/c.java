package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
class c implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final RectF f545a = new RectF();

    class a implements g.a {
        a() {
        }

        @Override // androidx.cardview.widget.g.a
        public void a(Canvas canvas, RectF rectF, float f2, Paint paint) {
            float f3 = 2.0f * f2;
            float fWidth = (rectF.width() - f3) - 1.0f;
            float fHeight = (rectF.height() - f3) - 1.0f;
            if (f2 >= 1.0f) {
                float f4 = f2 + 0.5f;
                float f5 = -f4;
                c.this.f545a.set(f5, f5, f4, f4);
                int iSave = canvas.save();
                canvas.translate(rectF.left + f4, rectF.top + f4);
                canvas.drawArc(c.this.f545a, 180.0f, 90.0f, true, paint);
                canvas.translate(fWidth, BitmapDescriptorFactory.HUE_RED);
                canvas.rotate(90.0f);
                canvas.drawArc(c.this.f545a, 180.0f, 90.0f, true, paint);
                canvas.translate(fHeight, BitmapDescriptorFactory.HUE_RED);
                canvas.rotate(90.0f);
                canvas.drawArc(c.this.f545a, 180.0f, 90.0f, true, paint);
                canvas.translate(fWidth, BitmapDescriptorFactory.HUE_RED);
                canvas.rotate(90.0f);
                canvas.drawArc(c.this.f545a, 180.0f, 90.0f, true, paint);
                canvas.restoreToCount(iSave);
                float f6 = (rectF.left + f4) - 1.0f;
                float f7 = rectF.top;
                canvas.drawRect(f6, f7, (rectF.right - f4) + 1.0f, f7 + f4, paint);
                float f8 = (rectF.left + f4) - 1.0f;
                float f9 = rectF.bottom;
                canvas.drawRect(f8, f9 - f4, (rectF.right - f4) + 1.0f, f9, paint);
            }
            canvas.drawRect(rectF.left, rectF.top + f2, rectF.right, rectF.bottom - f2, paint);
        }
    }

    c() {
    }

    private g p(Context context, ColorStateList colorStateList, float f2, float f3, float f4) {
        return new g(context.getResources(), colorStateList, f2, f3, f4);
    }

    private g q(d dVar) {
        return (g) dVar.c();
    }

    @Override // androidx.cardview.widget.e
    public void a(d dVar, float f2) {
        q(dVar).p(f2);
        k(dVar);
    }

    @Override // androidx.cardview.widget.e
    public float b(d dVar) {
        return q(dVar).g();
    }

    @Override // androidx.cardview.widget.e
    public void c(d dVar, float f2) {
        q(dVar).r(f2);
    }

    @Override // androidx.cardview.widget.e
    public float d(d dVar) {
        return q(dVar).i();
    }

    @Override // androidx.cardview.widget.e
    public ColorStateList e(d dVar) {
        return q(dVar).f();
    }

    @Override // androidx.cardview.widget.e
    public float f(d dVar) {
        return q(dVar).j();
    }

    @Override // androidx.cardview.widget.e
    public void g(d dVar) {
        q(dVar).m(dVar.e());
        k(dVar);
    }

    @Override // androidx.cardview.widget.e
    public void h(d dVar, Context context, ColorStateList colorStateList, float f2, float f3, float f4) {
        g gVarP = p(context, colorStateList, f2, f3, f4);
        gVarP.m(dVar.e());
        dVar.a(gVarP);
        k(dVar);
    }

    @Override // androidx.cardview.widget.e
    public float i(d dVar) {
        return q(dVar).l();
    }

    @Override // androidx.cardview.widget.e
    public void j(d dVar) {
    }

    @Override // androidx.cardview.widget.e
    public void k(d dVar) {
        Rect rect = new Rect();
        q(dVar).h(rect);
        dVar.d((int) Math.ceil(m(dVar)), (int) Math.ceil(f(dVar)));
        dVar.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // androidx.cardview.widget.e
    public void l() {
        g.r = new a();
    }

    @Override // androidx.cardview.widget.e
    public float m(d dVar) {
        return q(dVar).k();
    }

    @Override // androidx.cardview.widget.e
    public void n(d dVar, ColorStateList colorStateList) {
        q(dVar).o(colorStateList);
    }

    @Override // androidx.cardview.widget.e
    public void o(d dVar, float f2) {
        q(dVar).q(f2);
        k(dVar);
    }
}
