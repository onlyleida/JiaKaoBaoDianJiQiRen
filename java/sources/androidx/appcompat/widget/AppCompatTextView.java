package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.core.view.TintableBackgroundView;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatTextView extends TextView implements TintableBackgroundView, androidx.core.widget.l, androidx.core.widget.b {
    private final d mBackgroundTintHelper;
    private boolean mIsSetTypefaceProcessing;
    private Future<androidx.core.e.c> mPrecomputedTextFuture;
    private final t mTextClassifierHelper;
    private final u mTextHelper;

    public AppCompatTextView(Context context) {
        this(context, null);
    }

    private void consumeTextFutureAndSetBlocking() {
        Future<androidx.core.e.c> future = this.mPrecomputedTextFuture;
        if (future != null) {
            try {
                this.mPrecomputedTextFuture = null;
                androidx.core.widget.i.p(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
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

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (androidx.core.widget.b.J) {
            return super.getAutoSizeMaxTextSize();
        }
        u uVar = this.mTextHelper;
        if (uVar != null) {
            return uVar.e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (androidx.core.widget.b.J) {
            return super.getAutoSizeMinTextSize();
        }
        u uVar = this.mTextHelper;
        if (uVar != null) {
            return uVar.f();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (androidx.core.widget.b.J) {
            return super.getAutoSizeStepGranularity();
        }
        u uVar = this.mTextHelper;
        if (uVar != null) {
            return uVar.g();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (androidx.core.widget.b.J) {
            return super.getAutoSizeTextAvailableSizes();
        }
        u uVar = this.mTextHelper;
        return uVar != null ? uVar.h() : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (androidx.core.widget.b.J) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        u uVar = this.mTextHelper;
        if (uVar != null) {
            return uVar.i();
        }
        return 0;
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return androidx.core.widget.i.b(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return androidx.core.widget.i.c(this);
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

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.mTextHelper.j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.mTextHelper.k();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        consumeTextFutureAndSetBlocking();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        t tVar;
        return (Build.VERSION.SDK_INT >= 28 || (tVar = this.mTextClassifierHelper) == null) ? super.getTextClassifier() : tVar.a();
    }

    public androidx.core.e.c.a getTextMetricsParamsCompat() {
        return androidx.core.widget.i.g(this);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.mTextHelper.r(this, inputConnectionOnCreateInputConnection, editorInfo);
        i.a(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        u uVar = this.mTextHelper;
        if (uVar != null) {
            uVar.o(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        consumeTextFutureAndSetBlocking();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        u uVar = this.mTextHelper;
        if (uVar == null || androidx.core.widget.b.J || !uVar.l()) {
            return;
        }
        this.mTextHelper.c();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (androidx.core.widget.b.J) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        u uVar = this.mTextHelper;
        if (uVar != null) {
            uVar.t(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) throws IllegalArgumentException {
        if (androidx.core.widget.b.J) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        u uVar = this.mTextHelper;
        if (uVar != null) {
            uVar.u(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (androidx.core.widget.b.J) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        u uVar = this.mTextHelper;
        if (uVar != null) {
            uVar.v(i);
        }
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

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        u uVar = this.mTextHelper;
        if (uVar != null) {
            uVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        u uVar = this.mTextHelper;
        if (uVar != null) {
            uVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        u uVar = this.mTextHelper;
        if (uVar != null) {
            uVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        u uVar = this.mTextHelper;
        if (uVar != null) {
            uVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.i.s(this, callback));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            androidx.core.widget.i.m(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            androidx.core.widget.i.n(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        androidx.core.widget.i.o(this, i);
    }

    public void setPrecomputedText(androidx.core.e.c cVar) {
        androidx.core.widget.i.p(this, cVar);
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

    @Override // androidx.core.widget.l
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.mTextHelper.w(colorStateList);
        this.mTextHelper.b();
    }

    @Override // androidx.core.widget.l
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.mTextHelper.x(mode);
        this.mTextHelper.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        u uVar = this.mTextHelper;
        if (uVar != null) {
            uVar.q(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        t tVar;
        if (Build.VERSION.SDK_INT >= 28 || (tVar = this.mTextClassifierHelper) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            tVar.b(textClassifier);
        }
    }

    public void setTextFuture(Future<androidx.core.e.c> future) {
        this.mPrecomputedTextFuture = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(androidx.core.e.c.a aVar) {
        androidx.core.widget.i.r(this, aVar);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f2) {
        if (androidx.core.widget.b.J) {
            super.setTextSize(i, f2);
            return;
        }
        u uVar = this.mTextHelper;
        if (uVar != null) {
            uVar.A(i, f2);
        }
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        if (this.mIsSetTypefaceProcessing) {
            return;
        }
        Typeface typefaceA = null;
        if (typeface != null && i > 0) {
            typefaceA = androidx.core.graphics.f.a(getContext(), typeface, i);
        }
        this.mIsSetTypefaceProcessing = true;
        if (typefaceA != null) {
            typeface = typefaceA;
        }
        try {
            super.setTypeface(typeface, i);
        } finally {
            this.mIsSetTypefaceProcessing = false;
        }
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) {
        super(n0.b(context), attributeSet, i);
        this.mIsSetTypefaceProcessing = false;
        l0.a(this, getContext());
        d dVar = new d(this);
        this.mBackgroundTintHelper = dVar;
        dVar.e(attributeSet, i);
        u uVar = new u(this);
        this.mTextHelper = uVar;
        uVar.m(attributeSet, i);
        uVar.b();
        this.mTextClassifierHelper = new t(this);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i != 0 ? androidx.appcompat.a.a.a.d(context, i) : null, i2 != 0 ? androidx.appcompat.a.a.a.d(context, i2) : null, i3 != 0 ? androidx.appcompat.a.a.a.d(context, i3) : null, i4 != 0 ? androidx.appcompat.a.a.a.d(context, i4) : null);
        u uVar = this.mTextHelper;
        if (uVar != null) {
            uVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i != 0 ? androidx.appcompat.a.a.a.d(context, i) : null, i2 != 0 ? androidx.appcompat.a.a.a.d(context, i2) : null, i3 != 0 ? androidx.appcompat.a.a.a.d(context, i3) : null, i4 != 0 ? androidx.appcompat.a.a.a.d(context, i4) : null);
        u uVar = this.mTextHelper;
        if (uVar != null) {
            uVar.p();
        }
    }
}
