package cn.mucang.android.core.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.text.Spannable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import cn.mucang.android.framework.core.R;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class StateLayout extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected View f2908a;
    protected View b;
    protected View c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected View f2909d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected View f2910e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CharSequence f2911f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Drawable f2912g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f2913h;
    private CharSequence i;
    private Drawable j;
    private int k;
    private CharSequence l;
    private Drawable m;
    private int n;
    private CharSequence o;
    private Drawable p;
    private int q;
    private int r;
    protected c s;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c cVar = StateLayout.this.s;
            if (cVar != null) {
                cVar.a();
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c cVar = StateLayout.this.s;
            if (cVar != null) {
                cVar.a();
            }
        }
    }

    public interface c {
        void a();
    }

    public StateLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.coreStateLayoutStyle);
    }

    private void b(int i) {
        this.r = i;
        j(i == 1, this.f2908a);
        j(this.r == 3, this.b);
        j(this.r == 4, this.c);
        j(this.r == 5, this.f2909d);
        j(this.r == 2, this.f2910e);
    }

    @SuppressLint({"ResourceType"})
    private void h(View view, Drawable drawable, int i) {
        if (view != null) {
            View viewFindViewById = view.findViewById(android.R.id.icon);
            View viewFindViewById2 = view.findViewById(android.R.id.progress);
            if (viewFindViewById instanceof ImageView) {
                ImageView imageView = (ImageView) viewFindViewById;
                if (drawable != null) {
                    imageView.setImageDrawable(drawable);
                    imageView.setVisibility(0);
                    if (viewFindViewById2 != null) {
                        viewFindViewById2.setVisibility(8);
                    }
                } else if (i > 0) {
                    imageView.setImageResource(i);
                    imageView.setVisibility(0);
                    if (viewFindViewById2 != null) {
                        viewFindViewById2.setVisibility(8);
                    }
                } else {
                    imageView.setImageDrawable(null);
                    imageView.setVisibility(8);
                    if (viewFindViewById2 != null) {
                        viewFindViewById2.setVisibility(0);
                    }
                }
                if (imageView.getDrawable() instanceof AnimationDrawable) {
                    ((AnimationDrawable) imageView.getDrawable()).start();
                }
            }
        }
    }

    @SuppressLint({"ResourceType"})
    protected View a(int i, int i2) {
        if (i <= 0) {
            return null;
        }
        View viewInflate = LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this, false);
        if (i2 != 0) {
            viewInflate.setId(i2);
        }
        addView(viewInflate, generateDefaultLayoutParams());
        return viewInflate;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        int id = view.getId();
        if (id == R.id.loading_layout) {
            if (this.f2908a != null) {
                throw new IllegalStateException("已经有LoadingLayout了");
            }
            this.f2908a = view;
        } else if (id == R.id.error_layout) {
            if (this.b != null) {
                throw new IllegalStateException("已经有ErrorLayout了");
            }
            this.b = view;
        } else if (id == R.id.net_error_layout) {
            if (this.c != null) {
                throw new IllegalStateException("已经有NetErrorLayout了");
            }
            this.c = view;
        } else if (id == R.id.empty_layout) {
            if (this.f2909d != null) {
                throw new IllegalStateException("已经有EmptyLayout了");
            }
            this.f2909d = view;
        } else {
            if (this.f2910e != null) {
                throw new IllegalStateException("已经有ContentLayout了");
            }
            this.f2910e = view;
        }
        setState(this.r);
    }

    public void c() {
        b(2);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i) {
        View view;
        return (getState() != 2 || (view = this.f2910e) == null) ? super.canScrollVertically(i) : view.canScrollVertically(i);
    }

    public void d() {
        b(5);
        i(this.f2909d, this.o);
        h(this.f2909d, this.p, this.q);
    }

    public void e() {
        b(3);
        i(this.b, this.i);
        h(this.b, this.j, this.k);
        View view = this.b;
        if (view != null) {
            view.setOnClickListener(new a());
        }
    }

    public void f() {
        b(1);
        i(this.f2908a, this.f2911f);
        h(this.f2908a, this.f2912g, this.f2913h);
    }

    public void g() {
        b(4);
        i(this.c, this.l);
        h(this.c, this.m, this.n);
        View view = this.c;
        if (view != null) {
            view.setOnClickListener(new b());
        }
    }

    public View getEmptyView() {
        return this.f2909d;
    }

    public View getErrorView() {
        return this.b;
    }

    public View getLoadView() {
        return this.f2908a;
    }

    public View getNetErrorView() {
        return this.c;
    }

    public int getState() {
        return this.r;
    }

    protected void i(View view, CharSequence charSequence) {
        if (view != null) {
            View viewFindViewById = view.findViewById(android.R.id.text1);
            if (viewFindViewById instanceof TextView) {
                if (charSequence instanceof Spannable) {
                    ((TextView) viewFindViewById).setText(charSequence);
                } else if (charSequence != null) {
                    ((TextView) viewFindViewById).setText(Html.fromHtml(charSequence.toString()));
                } else {
                    ((TextView) viewFindViewById).setText((CharSequence) null);
                }
            }
        }
    }

    @SuppressLint({"ResourceType"})
    protected void j(boolean z, View view) {
        if (z) {
            if (view == null || view.getVisibility() == 0) {
                return;
            }
            view.setVisibility(0);
            return;
        }
        if (view == null || view.getVisibility() == 8) {
            return;
        }
        view.setVisibility(8);
    }

    public void setContentView(View view) {
        View view2 = this.f2910e;
        if (view2 != null) {
            removeView(view2);
            this.f2910e = null;
        }
        addView(view);
        if (getState() == 2) {
            c();
        }
    }

    public void setEmptyIcon(int i) {
        this.p = null;
        this.q = i;
        h(this.f2909d, null, i);
    }

    public void setEmptyText(int i) {
        String string = getResources().getString(i);
        this.o = string;
        i(this.f2909d, string);
    }

    public void setEmptyView(View view) {
        view.setId(R.id.empty_layout);
        View view2 = this.f2909d;
        if (view2 != null) {
            removeView(view2);
            this.f2909d = null;
        }
        addView(view);
        if (getState() == 5) {
            d();
        }
    }

    public void setErrorIcon(int i) {
        this.j = null;
        this.k = i;
        h(this.b, null, i);
    }

    public void setErrorText(int i) {
        String string = getResources().getString(i);
        this.i = string;
        i(this.b, string);
    }

    public void setErrorView(View view) {
        view.setId(R.id.error_layout);
        View view2 = this.b;
        if (view2 != null) {
            removeView(view2);
            this.b = null;
        }
        addView(view);
        if (getState() == 3) {
            e();
        }
    }

    public void setLoadView(View view) {
        view.setId(R.id.loading_layout);
        View view2 = this.f2908a;
        if (view2 != null) {
            removeView(view2);
            this.f2908a = null;
        }
        addView(view);
        if (getState() == 1) {
            f();
        }
    }

    public void setLoadingIcon(int i) {
        this.f2912g = null;
        this.f2913h = i;
        h(this.f2908a, null, i);
    }

    public void setLoadingText(int i) {
        String string = getResources().getString(i);
        this.f2911f = string;
        i(this.f2908a, string);
    }

    public void setNetErrorIcon(int i) {
        this.m = null;
        this.n = i;
        h(this.c, null, i);
    }

    public void setNetErrorText(int i) {
        String string = getResources().getString(i);
        this.l = string;
        i(this.c, string);
    }

    public void setNetErrorView(View view) {
        view.setId(R.id.net_error_layout);
        View view2 = this.c;
        if (view2 != null) {
            removeView(view2);
            this.c = null;
        }
        addView(view);
        if (getState() == 4) {
            g();
        }
    }

    public void setOnRefreshListener(c cVar) {
        this.s = cVar;
    }

    public void setState(int i) {
        if (i == 1) {
            f();
            return;
        }
        if (i == 2) {
            c();
            return;
        }
        if (i == 3) {
            e();
        } else if (i == 4) {
            g();
        } else {
            if (i != 5) {
                return;
            }
            d();
        }
    }

    public StateLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2908a = null;
        this.b = null;
        this.c = null;
        this.f2909d = null;
        this.f2910e = null;
        this.r = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.core__state_layout, i, 0);
        int i2 = R.styleable.core__state_layout_csl__loading_layout;
        int i3 = R.layout.core__state_layout_common;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(i2, i3);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.core__state_layout_csl__error_layout, i3);
        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.core__state_layout_csl__net_error_layout, i3);
        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.core__state_layout_csl__empty_layout, i3);
        int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.core__state_layout_csl__loading_text_list, 0);
        if (resourceId5 > 0) {
            String[] stringArray = context.getResources().getStringArray(resourceId5);
            if (stringArray.length > 0) {
                this.f2911f = stringArray[new Random().nextInt(stringArray.length)];
            }
        }
        if (this.f2911f == null) {
            this.f2911f = typedArrayObtainStyledAttributes.getText(R.styleable.core__state_layout_csl__loading_text);
        }
        this.f2913h = typedArrayObtainStyledAttributes.getResourceId(R.styleable.core__state_layout_csl__loading_icon, this.f2913h);
        this.i = typedArrayObtainStyledAttributes.getString(R.styleable.core__state_layout_csl__error_text);
        this.k = typedArrayObtainStyledAttributes.getResourceId(R.styleable.core__state_layout_csl__error_icon, this.k);
        this.l = typedArrayObtainStyledAttributes.getString(R.styleable.core__state_layout_csl__net_error_text);
        this.n = typedArrayObtainStyledAttributes.getResourceId(R.styleable.core__state_layout_csl__net_error_icon, this.n);
        this.o = typedArrayObtainStyledAttributes.getString(R.styleable.core__state_layout_csl__empty_text);
        this.q = typedArrayObtainStyledAttributes.getResourceId(R.styleable.core__state_layout_csl__empty_icon, this.q);
        setState(typedArrayObtainStyledAttributes.getInt(R.styleable.core__state_layout_csl__state, this.r));
        typedArrayObtainStyledAttributes.recycle();
        a(resourceId, R.id.loading_layout);
        a(resourceId2, R.id.error_layout);
        a(resourceId3, R.id.net_error_layout);
        a(resourceId4, R.id.empty_layout);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateDefaultLayoutParams() {
        return new FrameLayout.LayoutParams(-1, -1);
    }

    public void setEmptyText(CharSequence charSequence) {
        this.o = charSequence;
        i(this.f2909d, charSequence);
    }

    public void setErrorText(CharSequence charSequence) {
        this.i = charSequence;
        i(this.b, charSequence);
    }

    public void setLoadingText(CharSequence charSequence) {
        this.f2911f = charSequence;
        i(this.f2908a, charSequence);
    }

    public void setNetErrorText(CharSequence charSequence) {
        this.l = charSequence;
        i(this.c, charSequence);
    }

    public void setEmptyIcon(Drawable drawable) {
        this.p = drawable;
        this.q = -1;
        h(this.c, drawable, -1);
    }

    public void setErrorIcon(Drawable drawable) {
        this.j = drawable;
        this.k = -1;
        h(this.b, drawable, -1);
    }

    public void setLoadingIcon(Drawable drawable) {
        this.f2912g = drawable;
        this.f2913h = -1;
        h(this.f2908a, drawable, -1);
    }

    public void setNetErrorIcon(Drawable drawable) {
        this.m = drawable;
        this.n = -1;
        h(this.c, drawable, -1);
    }
}
