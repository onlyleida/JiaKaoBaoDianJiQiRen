package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ToggleButton;
import androidx.core.view.TintableBackgroundView;

/* JADX INFO: loaded from: classes.dex */
public class w extends ToggleButton implements TintableBackgroundView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f524a;
    private final u b;

    public w(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyleToggle);
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.f524a;
        if (dVar != null) {
            dVar.b();
        }
        u uVar = this.b;
        if (uVar != null) {
            uVar.b();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.f524a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.f524a;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    @Override // android.widget.ToggleButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.f524a;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        d dVar = this.f524a;
        if (dVar != null) {
            dVar.g(i);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        d dVar = this.f524a;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        d dVar = this.f524a;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    public w(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        l0.a(this, getContext());
        d dVar = new d(this);
        this.f524a = dVar;
        dVar.e(attributeSet, i);
        u uVar = new u(this);
        this.b = uVar;
        uVar.m(attributeSet, i);
    }
}
