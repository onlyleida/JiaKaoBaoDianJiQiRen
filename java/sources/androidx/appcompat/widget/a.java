package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final C0011a f379a;
    protected final Context b;
    protected ActionMenuView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected ActionMenuPresenter f380d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f381e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected ViewPropertyAnimatorCompat f382f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f383g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f384h;

    /* JADX INFO: renamed from: androidx.appcompat.widget.a$a, reason: collision with other inner class name */
    protected class C0011a implements ViewPropertyAnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f385a = false;
        int b;

        protected C0011a() {
        }

        public C0011a a(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, int i) {
            a.this.f382f = viewPropertyAnimatorCompat;
            this.b = i;
            return this;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(View view) {
            this.f385a = true;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            if (this.f385a) {
                return;
            }
            a aVar = a.this;
            aVar.f382f = null;
            a.super.setVisibility(this.b);
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            a.super.setVisibility(0);
            this.f385a = false;
        }
    }

    a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    protected static int d(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    protected int c(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    protected int e(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = i2 + ((i3 - measuredHeight) / 2);
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public ViewPropertyAnimatorCompat f(int i, long j) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f382f;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
        if (i != 0) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha = ViewCompat.animate(this).alpha(BitmapDescriptorFactory.HUE_RED);
            viewPropertyAnimatorCompatAlpha.setDuration(j);
            C0011a c0011a = this.f379a;
            c0011a.a(viewPropertyAnimatorCompatAlpha, i);
            viewPropertyAnimatorCompatAlpha.setListener(c0011a);
            return viewPropertyAnimatorCompatAlpha;
        }
        if (getVisibility() != 0) {
            setAlpha(BitmapDescriptorFactory.HUE_RED);
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha2 = ViewCompat.animate(this).alpha(1.0f);
        viewPropertyAnimatorCompatAlpha2.setDuration(j);
        C0011a c0011a2 = this.f379a;
        c0011a2.a(viewPropertyAnimatorCompatAlpha2, i);
        viewPropertyAnimatorCompatAlpha2.setListener(c0011a2);
        return viewPropertyAnimatorCompatAlpha2;
    }

    public int getAnimatedVisibility() {
        return this.f382f != null ? this.f379a.b : getVisibility();
    }

    public int getContentHeight() {
        return this.f381e;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(R.styleable.ActionBar_height, 0));
        typedArrayObtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f380d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.x(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f384h = false;
        }
        if (!this.f384h) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f384h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f384h = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f383g = false;
        }
        if (!this.f383g) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f383g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f383g = false;
        }
        return true;
    }

    public abstract void setContentHeight(int i);

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f382f;
            if (viewPropertyAnimatorCompat != null) {
                viewPropertyAnimatorCompat.cancel();
            }
            super.setVisibility(i);
        }
    }

    a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f379a = new C0011a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.b = context;
        } else {
            this.b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }
}
