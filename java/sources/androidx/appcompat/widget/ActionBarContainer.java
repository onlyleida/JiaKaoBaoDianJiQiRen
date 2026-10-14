package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f290a;
    private View b;
    private View c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f291d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Drawable f292e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Drawable f293f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Drawable f294g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f295h;
    boolean i;
    private int j;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ViewCompat.setBackground(this, new b(this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBar);
        this.f292e = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ActionBar_background);
        this.f293f = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ActionBar_backgroundStacked);
        this.j = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionBar_height, -1);
        boolean z = true;
        if (getId() == R.id.split_action_bar) {
            this.f295h = true;
            this.f294g = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ActionBar_backgroundSplit);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!this.f295h ? this.f292e != null || this.f293f != null : this.f294g != null) {
            z = false;
        }
        setWillNotDraw(z);
    }

    private int a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    private boolean b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f292e;
        if (drawable != null && drawable.isStateful()) {
            this.f292e.setState(getDrawableState());
        }
        Drawable drawable2 = this.f293f;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f293f.setState(getDrawableState());
        }
        Drawable drawable3 = this.f294g;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f294g.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f292e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f293f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f294g;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.c = findViewById(R.id.action_bar);
        this.f291d = findViewById(R.id.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f290a || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        View view = this.b;
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int measuredHeight2 = measuredHeight - view.getMeasuredHeight();
            int i5 = layoutParams.bottomMargin;
            view.layout(i, measuredHeight2 - i5, i3, measuredHeight - i5);
        }
        if (this.f295h) {
            Drawable drawable2 = this.f294g;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z2 = false;
            }
        } else {
            if (this.f292e != null) {
                if (this.c.getVisibility() == 0) {
                    this.f292e.setBounds(this.c.getLeft(), this.c.getTop(), this.c.getRight(), this.c.getBottom());
                } else {
                    View view2 = this.f291d;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f292e.setBounds(0, 0, 0, 0);
                    } else {
                        this.f292e.setBounds(this.f291d.getLeft(), this.f291d.getTop(), this.f291d.getRight(), this.f291d.getBottom());
                    }
                }
                z3 = true;
            }
            this.i = z4;
            if (!z4 || (drawable = this.f293f) == null) {
                z2 = z3;
            } else {
                drawable.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int iA;
        int i3;
        if (this.c == null && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && (i3 = this.j) >= 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(i3, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
        if (this.c == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        View view = this.b;
        if (view == null || view.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        if (b(this.c)) {
            iA = !b(this.f291d) ? a(this.f291d) : 0;
        } else {
            iA = a(this.c);
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min(iA + a(this.b), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i2) : Integer.MAX_VALUE));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f292e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f292e);
        }
        this.f292e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.c;
            if (view != null) {
                this.f292e.setBounds(view.getLeft(), this.c.getTop(), this.c.getRight(), this.c.getBottom());
            }
        }
        boolean z = true;
        if (!this.f295h ? this.f292e != null || this.f293f != null : this.f294g != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f294g;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f294g);
        }
        this.f294g = drawable;
        boolean z = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f295h && (drawable2 = this.f294g) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.f295h ? !(this.f292e != null || this.f293f != null) : this.f294g == null) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f293f;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f293f);
        }
        this.f293f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.i && (drawable2 = this.f293f) != null) {
                drawable2.setBounds(this.b.getLeft(), this.b.getTop(), this.b.getRight(), this.b.getBottom());
            }
        }
        boolean z = true;
        if (!this.f295h ? this.f292e != null || this.f293f != null : this.f294g != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(j0 j0Var) {
        View view = this.b;
        if (view != null) {
            removeView(view);
        }
        this.b = j0Var;
        if (j0Var != null) {
            addView(j0Var);
            ViewGroup.LayoutParams layoutParams = j0Var.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            j0Var.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f290a = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f292e;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f293f;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f294g;
        if (drawable3 != null) {
            drawable3.setVisible(z, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        if (i != 0) {
            return super.startActionModeForChild(view, callback, i);
        }
        return null;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f292e && !this.f295h) || (drawable == this.f293f && this.i) || ((drawable == this.f294g && this.f295h) || super.verifyDrawable(drawable));
    }
}
