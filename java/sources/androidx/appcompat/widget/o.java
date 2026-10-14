package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;
import androidx.appcompat.R;
import androidx.core.view.TintableBackgroundView;

/* JADX INFO: loaded from: classes.dex */
public class o extends RadioButton implements androidx.core.widget.k, TintableBackgroundView {
    private final d mBackgroundTintHelper;
    private final g mCompoundButtonHelper;
    private final u mTextHelper;

    public o(Context context) {
        this(context, null);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.b();
        }
        u uVar = this.mTextHelper;
        if (uVar != null) {
            uVar.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        g gVar = this.mCompoundButtonHelper;
        return gVar != null ? gVar.b(compoundPaddingLeft) : compoundPaddingLeft;
    }

    @Override // androidx.core.view.TintableBackgroundView
    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    @Override // androidx.core.widget.k
    public ColorStateList getSupportButtonTintList() {
        g gVar = this.mCompoundButtonHelper;
        if (gVar != null) {
            return gVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        g gVar = this.mCompoundButtonHelper;
        if (gVar != null) {
            return gVar.d();
        }
        return null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.g(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        g gVar = this.mCompoundButtonHelper;
        if (gVar != null) {
            gVar.f();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    @Override // androidx.core.widget.k
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        g gVar = this.mCompoundButtonHelper;
        if (gVar != null) {
            gVar.g(colorStateList);
        }
    }

    @Override // androidx.core.widget.k
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        g gVar = this.mCompoundButtonHelper;
        if (gVar != null) {
            gVar.h(mode);
        }
    }

    public o(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.radioButtonStyle);
    }

    public o(Context context, AttributeSet attributeSet, int i) {
        super(n0.b(context), attributeSet, i);
        l0.a(this, getContext());
        g gVar = new g(this);
        this.mCompoundButtonHelper = gVar;
        gVar.e(attributeSet, i);
        d dVar = new d(this);
        this.mBackgroundTintHelper = dVar;
        dVar.e(attributeSet, i);
        u uVar = new u(this);
        this.mTextHelper = uVar;
        uVar.m(attributeSet, i);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(androidx.appcompat.a.a.a.d(getContext(), i));
    }
}
