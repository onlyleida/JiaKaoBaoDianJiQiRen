package cn.mucang.android.core.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;
import cn.mucang.android.core.utils.t;

/* JADX INFO: loaded from: classes.dex */
public class CommonViewPager extends ViewPager {
    private static final String b = CommonViewPager.class.getSimpleName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2907a;

    public CommonViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2907a = true;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        try {
            return this.f2907a && super.onInterceptTouchEvent(motionEvent);
        } catch (IllegalArgumentException e2) {
            t.e(b, "Exception in onInterceptTouchEvent", e2);
            return false;
        }
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            return this.f2907a && super.onTouchEvent(motionEvent);
        } catch (Exception unused) {
            t.d(b, "Exception in onTouchEvent");
            return false;
        }
    }

    public void setScrollable(boolean z) {
        this.f2907a = z;
    }
}
