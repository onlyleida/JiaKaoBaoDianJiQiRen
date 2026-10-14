package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.R;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.c0;
import androidx.appcompat.widget.s0;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements n.a, View.OnClickListener, ActionMenuView.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    i f210a;
    private CharSequence b;
    private Drawable c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    g.b f211d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c0 f212e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    b f213f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f214g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f215h;
    private int i;
    private int j;
    private int k;

    private class a extends c0 {
        public a() {
            super(ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.c0
        public p b() {
            b bVar = ActionMenuItemView.this.f213f;
            if (bVar != null) {
                return bVar.a();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.c0
        protected boolean c() {
            p pVarB;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            g.b bVar = actionMenuItemView.f211d;
            return bVar != null && bVar.b(actionMenuItemView.f210a) && (pVarB = b()) != null && pVarB.a();
        }
    }

    public static abstract class b {
        public abstract p a();
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private boolean d() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    private void e() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.b);
        if (this.c != null && (!this.f210a.B() || (!this.f214g && !this.f215h))) {
            z = false;
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.b : null);
        CharSequence contentDescription = this.f210a.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z3 ? null : this.f210a.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f210a.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            s0.a(this, z3 ? null : this.f210a.getTitle());
        } else {
            s0.a(this, tooltipText);
        }
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean a() {
        return c();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean b() {
        return c() && this.f210a.getIcon() == null;
    }

    public boolean c() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // androidx.appcompat.view.menu.n.a
    public i getItemData() {
        return this.f210a;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public void initialize(i iVar, int i) {
        this.f210a = iVar;
        setIcon(iVar.getIcon());
        setTitle(iVar.i(this));
        setId(iVar.getItemId());
        setVisibility(iVar.isVisible() ? 0 : 8);
        setEnabled(iVar.isEnabled());
        if (iVar.hasSubMenu() && this.f212e == null) {
            this.f212e = new a();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        g.b bVar = this.f211d;
        if (bVar != null) {
            bVar.b(this.f210a);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f214g = d();
        e();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        boolean zC = c();
        if (zC && (i3 = this.j) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, this.i) : this.i;
        if (mode != 1073741824 && this.i > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i2);
        }
        if (zC || this.c == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.c.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        c0 c0Var;
        if (this.f210a.hasSubMenu() && (c0Var = this.f212e) != null && c0Var.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.view.menu.n.a
    public boolean prefersCondensedTitle() {
        return true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.f215h != z) {
            this.f215h = z;
            i iVar = this.f210a;
            if (iVar != null) {
                iVar.c();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.c = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.k;
            if (intrinsicWidth > i) {
                intrinsicHeight = (int) (intrinsicHeight * (i / intrinsicWidth));
                intrinsicWidth = i;
            }
            if (intrinsicHeight > i) {
                intrinsicWidth = (int) (intrinsicWidth * (i / intrinsicHeight));
            } else {
                i = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i);
        }
        setCompoundDrawables(drawable, null, null, null);
        e();
    }

    public void setItemInvoker(g.b bVar) {
        this.f211d = bVar;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.j = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(b bVar) {
        this.f213f = bVar;
    }

    public void setTitle(CharSequence charSequence) {
        this.b = charSequence;
        e();
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.f214g = d();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionMenuItemView, i, 0);
        this.i = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionMenuItemView_android_minWidth, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.k = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.j = -1;
        setSaveEnabled(false);
    }
}
