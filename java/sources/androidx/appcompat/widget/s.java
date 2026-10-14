package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
class s extends n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SeekBar f489d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f490e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ColorStateList f491f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private PorterDuff.Mode f492g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f493h;
    private boolean i;

    s(SeekBar seekBar) {
        super(seekBar);
        this.f491f = null;
        this.f492g = null;
        this.f493h = false;
        this.i = false;
        this.f489d = seekBar;
    }

    private void f() {
        Drawable drawable = this.f490e;
        if (drawable != null) {
            if (this.f493h || this.i) {
                Drawable drawableR = androidx.core.graphics.drawable.a.r(drawable.mutate());
                this.f490e = drawableR;
                if (this.f493h) {
                    androidx.core.graphics.drawable.a.o(drawableR, this.f491f);
                }
                if (this.i) {
                    androidx.core.graphics.drawable.a.p(this.f490e, this.f492g);
                }
                if (this.f490e.isStateful()) {
                    this.f490e.setState(this.f489d.getDrawableState());
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.n
    void c(AttributeSet attributeSet, int i) {
        super.c(attributeSet, i);
        Context context = this.f489d.getContext();
        int[] iArr = R.styleable.AppCompatSeekBar;
        q0 q0VarV = q0.v(context, attributeSet, iArr, i, 0);
        SeekBar seekBar = this.f489d;
        ViewCompat.saveAttributeDataForStyleable(seekBar, seekBar.getContext(), iArr, attributeSet, q0VarV.r(), i, 0);
        Drawable drawableH = q0VarV.h(R.styleable.AppCompatSeekBar_android_thumb);
        if (drawableH != null) {
            this.f489d.setThumb(drawableH);
        }
        j(q0VarV.g(R.styleable.AppCompatSeekBar_tickMark));
        int i2 = R.styleable.AppCompatSeekBar_tickMarkTintMode;
        if (q0VarV.s(i2)) {
            this.f492g = z.e(q0VarV.k(i2, -1), this.f492g);
            this.i = true;
        }
        int i3 = R.styleable.AppCompatSeekBar_tickMarkTint;
        if (q0VarV.s(i3)) {
            this.f491f = q0VarV.c(i3);
            this.f493h = true;
        }
        q0VarV.w();
        f();
    }

    void g(Canvas canvas) {
        if (this.f490e != null) {
            int max = this.f489d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f490e.getIntrinsicWidth();
                int intrinsicHeight = this.f490e.getIntrinsicHeight();
                int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f490e.setBounds(-i, -i2, i, i2);
                float width = ((this.f489d.getWidth() - this.f489d.getPaddingLeft()) - this.f489d.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(this.f489d.getPaddingLeft(), this.f489d.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.f490e.draw(canvas);
                    canvas.translate(width, BitmapDescriptorFactory.HUE_RED);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }

    void h() {
        Drawable drawable = this.f490e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f489d.getDrawableState())) {
            this.f489d.invalidateDrawable(drawable);
        }
    }

    void i() {
        Drawable drawable = this.f490e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    void j(Drawable drawable) {
        Drawable drawable2 = this.f490e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f490e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f489d);
            androidx.core.graphics.drawable.a.m(drawable, ViewCompat.getLayoutDirection(this.f489d));
            if (drawable.isStateful()) {
                drawable.setState(this.f489d.getDrawableState());
            }
            f();
        }
        this.f489d.invalidate();
    }
}
