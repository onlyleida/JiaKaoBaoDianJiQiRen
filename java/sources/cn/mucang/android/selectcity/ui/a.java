package cn.mucang.android.selectcity.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import cn.mucang.android.framework.select.city.R;

/* JADX INFO: loaded from: classes4.dex */
public class a extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SparseIntArray f8953a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: cn.mucang.android.selectcity.ui.a$a, reason: collision with other inner class name */
    private static class C0149a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f8954a;
        int b;

        public C0149a(int i, int i2) {
            this.f8954a = i;
            this.b = i2;
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8953a = new SparseIntArray();
        this.b = 10;
        this.c = 10;
    }

    @Override // android.view.View
    public boolean isInEditMode() {
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        SparseIntArray sparseIntArray = this.f8953a;
        if (sparseIntArray == null || sparseIntArray.size() == 0) {
            return;
        }
        int i7 = this.f8953a.get(0);
        int i8 = 0;
        int i9 = 0;
        int iMax = 0;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            C0149a c0149a = (C0149a) childAt.getTag(R.string.select_city__flow_layout_tag_id);
            if (c0149a != null && childAt.getVisibility() != 8) {
                int i11 = c0149a.f8954a;
                if (i11 > i8) {
                    i9 += i7;
                    i7 = this.f8953a.get(i11);
                    i8 = i11;
                    iMax = 0;
                }
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i6 = marginLayoutParams.leftMargin;
                    i5 = marginLayoutParams.topMargin;
                } else {
                    i5 = 0;
                    i6 = 0;
                }
                if (c0149a.b != 0) {
                    iMax += Math.max(i6, this.c);
                }
                int measuredWidth = childAt.getMeasuredWidth() + iMax;
                int iMax2 = i7 - this.b > childAt.getMeasuredHeight() ? Math.max(((i7 - this.b) - childAt.getMeasuredHeight()) / 2, i5) + i9 : i9;
                childAt.layout(iMax, iMax2, measuredWidth, childAt.getMeasuredHeight() + iMax2);
                iMax = measuredWidth;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int iMax;
        int i4;
        this.f8953a.clear();
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i5 = 0;
        int iMax2 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i5 < getChildCount()) {
            View childAt = getChildAt(i5);
            measureChild(childAt, i, i2);
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            int i11 = size2;
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                i4 = marginLayoutParams.leftMargin;
                measuredHeight += marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            } else {
                i3 = 0;
            }
            if (i6 != 0) {
                i3 = i4;
                measuredWidth += Math.max(i3, this.c);
            }
            i3 = i4;
            int iMax3 = measuredWidth;
            int i12 = measuredHeight + this.b;
            if (childAt.getVisibility() == 8 || iMax3 > size) {
                childAt.setVisibility(8);
                iMax = 0;
                iMax3 = 0;
            } else {
                iMax = i12;
            }
            int i13 = i8 + iMax3;
            if (i13 > size) {
                this.f8953a.put(i10, i9);
                i7 += i9;
                iMax2 = Math.max(iMax2, i8);
                if (i6 != 0) {
                    iMax3 -= Math.max(i3, this.c);
                }
                i10++;
                i8 = iMax3;
                i6 = 0;
            } else {
                iMax = Math.max(i9, iMax);
                i8 = i13;
            }
            if (i5 == getChildCount() - 1) {
                int i14 = iMax - this.b;
                i7 += i14;
                int iMax4 = Math.max(iMax2, i8);
                this.f8953a.put(i10, i14);
                i9 = i14;
                iMax2 = iMax4;
            } else {
                i9 = iMax;
            }
            int i15 = R.string.select_city__flow_layout_tag_id;
            C0149a c0149a = (C0149a) childAt.getTag(i15);
            if (c0149a == null) {
                childAt.setTag(i15, new C0149a(i10, i6));
                i6++;
            } else {
                c0149a.b = i6;
                c0149a.f8954a = i10;
                i6++;
            }
            i5++;
            size2 = i11;
        }
        int i16 = size2;
        if (mode != 1073741824) {
            size = iMax2;
        }
        setMeasuredDimension(ViewGroup.resolveSize(size, i), ViewGroup.resolveSize(mode2 == 1073741824 ? i16 : i7, i2));
    }

    public void setColumnSpacing(int i) {
        this.c = i;
    }

    public void setLineSpacing(int i) {
        this.b = i;
    }
}
