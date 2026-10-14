package com.serenegiant.widget;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.serenegiant.common.R;
import com.serenegiant.utils.BuildCheck;

/* JADX INFO: loaded from: classes6.dex */
public class TwoPainViewGroup extends FrameLayout {
    private static final int DEFAULT_CHILD_GRAVITY = 17;
    private static final int DEFAULT_HEIGHT = 200;
    private static final float DEFAULT_SUB_WINDOW_SCALE = 0.2f;
    private static final int DEFAULT_WIDTH = 200;
    public static final int HORIZONTAL = 0;
    public static final int MODE_SELECT_1 = 1;
    public static final int MODE_SELECT_2 = 2;
    public static final int MODE_SINGLE_1 = 3;
    public static final int MODE_SINGLE_2 = 4;
    public static final int MODE_SPLIT = 0;
    private static final String TAG = TwoPainViewGroup.class.getSimpleName();
    public static final int VERTICAL = 1;
    private ObjectAnimator mAnimator;
    private final Animator.AnimatorListener mAnimatorListener;
    private View mChild1;
    private View mChild2;
    private final Rect mChildRect;
    private int mDisplayMode;
    private boolean mEnableSubWindow;
    private boolean mFlipChildPos;
    private int mOrientation;
    private float mSubWindowScale;
    private final Object mSync;

    public TwoPainViewGroup(Context context) {
        this(context, null, 0);
    }

    @SuppressLint({"NewApi"})
    private void callChildLayout(View view, boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i7 = layoutParams.gravity;
        if (i7 == -1) {
            i7 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i7, BuildCheck.isAndroid4_2() ? getLayoutDirection() : 0);
        int i8 = i7 & 112;
        int i9 = absoluteGravity & 7;
        if (i9 != 1) {
            i5 = i9 != 5 ? i + layoutParams.leftMargin : (i3 - measuredWidth) - layoutParams.rightMargin;
        } else {
            i5 = ((i + (((i3 - i) - measuredWidth) / 2)) + layoutParams.leftMargin) - layoutParams.rightMargin;
        }
        if (i8 == 16) {
            i6 = ((i2 + (((i4 - i2) - measuredHeight) / 2)) + layoutParams.topMargin) - layoutParams.bottomMargin;
        } else if (i8 == 48 || i8 != 80) {
            int i10 = layoutParams.topMargin;
            i6 = i2 + i10;
        } else {
            i6 = (i4 - measuredHeight) - layoutParams.bottomMargin;
        }
        view.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
    }

    private void callChildMeasure(View view, int i, int i2, int i3, int i4) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        if (marginLayoutParams.width == -1) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(i, (((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin), 1073741824);
        } else {
            int childMeasureSpec = FrameLayout.getChildMeasureSpec(i3, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, marginLayoutParams.width);
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(childMeasureSpec), i), View.MeasureSpec.getMode(childMeasureSpec));
        }
        if (marginLayoutParams.height == -1) {
            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.min(i2, (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - marginLayoutParams.topMargin) - marginLayoutParams.bottomMargin), 1073741824);
        } else {
            int childMeasureSpec2 = FrameLayout.getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i2), View.MeasureSpec.getMode(childMeasureSpec2));
        }
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
    }

    private void cancelAnimation() {
        synchronized (this.mSync) {
            ObjectAnimator objectAnimator = this.mAnimator;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                this.mAnimator = null;
            }
        }
    }

    private void onLayoutHorizontal(boolean z, int i, int i2, int i3, int i4) {
        boolean z2 = this.mFlipChildPos;
        View view = z2 ? this.mChild2 : this.mChild1;
        View view2 = z2 ? this.mChild1 : this.mChild2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i5 = i - paddingLeft;
        int i6 = i2 - paddingTop;
        int i7 = i5 + ((i3 - i) >>> 1);
        int i8 = i4 - paddingTop;
        callChildLayout(view, z, i5, i6, i7, i8);
        callChildLayout(view2, z, i7, i6, i3 - paddingLeft, i8);
    }

    private void onLayoutSelect1(boolean z, int i, int i2, int i3, int i4) {
        boolean z2 = this.mFlipChildPos;
        View view = z2 ? this.mChild2 : this.mChild1;
        View view2 = z2 ? this.mChild1 : this.mChild2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        callChildLayout(view, z, i - paddingLeft, i2 - paddingTop, i3 - paddingLeft, i4 - paddingTop);
        if (this.mEnableSubWindow) {
            int bottom = view.getBottom();
            int right = view.getRight();
            int measuredWidth = view2.getMeasuredWidth();
            int measuredHeight = view2.getMeasuredHeight();
            if (this.mOrientation != 1) {
                callChildLayout(view2, z, right - measuredWidth, bottom - measuredHeight, right, bottom);
            } else {
                callChildLayout(view2, z, right - measuredWidth, bottom - measuredHeight, right, bottom);
            }
        }
    }

    private void onLayoutSelect2(boolean z, int i, int i2, int i3, int i4) {
        boolean z2 = this.mFlipChildPos;
        View view = z2 ? this.mChild2 : this.mChild1;
        View view2 = z2 ? this.mChild1 : this.mChild2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        callChildLayout(view2, z, i - paddingLeft, i2 - paddingTop, i3 - paddingLeft, i4 - paddingTop);
        if (this.mEnableSubWindow) {
            int left = view2.getLeft();
            int top = view2.getTop();
            int right = view2.getRight();
            int bottom = view2.getBottom();
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            if (this.mOrientation != 1) {
                callChildLayout(view, z, left, bottom - measuredHeight, left + measuredWidth, bottom);
            } else {
                callChildLayout(view, z, right - measuredWidth, top, right, top + measuredHeight);
            }
        }
    }

    private void onLayoutSplit(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation != 1) {
            onLayoutHorizontal(z, i, i2, i3, i4);
        } else {
            onLayoutVertical(z, i, i2, i3, i4);
        }
    }

    private void onLayoutVertical(boolean z, int i, int i2, int i3, int i4) {
        boolean z2 = this.mFlipChildPos;
        View view = z2 ? this.mChild2 : this.mChild1;
        View view2 = z2 ? this.mChild1 : this.mChild2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i5 = i - paddingLeft;
        int i6 = i2 - paddingTop;
        int i7 = i3 - paddingLeft;
        int i8 = i6 + ((i4 - i2) >>> 1);
        callChildLayout(view, z, i5, i6, i7, i8);
        callChildLayout(view2, z, i5, i8, i7, i4 - paddingTop);
    }

    private void onMeasureHorizontal(int i, int i2, int i3, int i4) {
        boolean z = this.mFlipChildPos;
        View view = z ? this.mChild2 : this.mChild1;
        View view2 = z ? this.mChild1 : this.mChild2;
        int i5 = i >>> 1;
        callChildMeasure(view, i5, i2, i3, i4);
        callChildMeasure(view2, i5, i2, i3, i4);
    }

    private void onMeasureSelect1(int i, int i2, int i3, int i4) {
        boolean z = this.mFlipChildPos;
        View view = z ? this.mChild2 : this.mChild1;
        View view2 = z ? this.mChild1 : this.mChild2;
        callChildMeasure(view, i, i2, i3, i4);
        if (this.mEnableSubWindow) {
            float f2 = this.mSubWindowScale;
            callChildMeasure(view2, (int) (i * f2), (int) (i2 * f2), i3, i4);
        }
    }

    private void onMeasureSelect2(int i, int i2, int i3, int i4) {
        boolean z = this.mFlipChildPos;
        View view = z ? this.mChild2 : this.mChild1;
        callChildMeasure(z ? this.mChild1 : this.mChild2, i, i2, i3, i4);
        if (this.mEnableSubWindow) {
            float f2 = this.mSubWindowScale;
            callChildMeasure(view, (int) (i * f2), (int) (i2 * f2), i3, i4);
        }
    }

    private void onMeasureSplit(int i, int i2, int i3, int i4) {
        if (this.mOrientation != 1) {
            onMeasureHorizontal(i, i2, i3, i4);
        } else {
            onMeasureVertical(i, i2, i3, i4);
        }
    }

    private void onMeasureVertical(int i, int i2, int i3, int i4) {
        boolean z = this.mFlipChildPos;
        View view = z ? this.mChild2 : this.mChild1;
        View view2 = z ? this.mChild1 : this.mChild2;
        int i5 = i2 >>> 1;
        callChildMeasure(view, i, i5, i3, i4);
        callChildMeasure(view2, i, i5, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:18:0x0022 A[Catch: all -> 0x0068, TryCatch #0 {all -> 0x0068, blocks: (B:9:0x0010, B:18:0x0022, B:20:0x002c, B:23:0x0031, B:24:0x0038, B:26:0x0045, B:30:0x004b, B:31:0x004f), top: B:53:0x0010 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0038 A[Catch: all -> 0x0068, TryCatch #0 {all -> 0x0068, blocks: (B:9:0x0010, B:18:0x0022, B:20:0x002c, B:23:0x0031, B:24:0x0038, B:26:0x0045, B:30:0x004b, B:31:0x004f), top: B:53:0x0010 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x004a  */
    public void startLayoutOnUI() {
        boolean z = this.mFlipChildPos;
        View view = z ? this.mChild2 : this.mChild1;
        View view2 = z ? this.mChild1 : this.mChild2;
        try {
            int i = this.mDisplayMode;
            int i2 = 0;
            if (i != 0) {
                int i3 = 4;
                if (i == 1) {
                    removeView(view);
                    addView(view, 0);
                    view.setVisibility(0);
                    if (this.mEnableSubWindow || this.mDisplayMode == 3) {
                        i2 = 4;
                    }
                    view2.setVisibility(i2);
                } else if (i == 2) {
                    removeView(view2);
                    addView(view2, 0);
                    if (this.mEnableSubWindow && this.mDisplayMode != 4) {
                        i3 = 0;
                    }
                    view.setVisibility(i3);
                    view2.setVisibility(0);
                } else if (i == 3) {
                    removeView(view);
                    addView(view, 0);
                    view.setVisibility(0);
                    if (this.mEnableSubWindow) {
                        i2 = 4;
                    } else {
                        i2 = 4;
                    }
                    view2.setVisibility(i2);
                } else if (i == 4) {
                    removeView(view2);
                    addView(view2, 0);
                    if (this.mEnableSubWindow) {
                        i3 = 0;
                    }
                    view.setVisibility(i3);
                    view2.setVisibility(0);
                }
            } else {
                view.setVisibility(0);
                view2.setVisibility(0);
            }
            boolean z2 = this.mFlipChildPos;
            this.mChild1 = z2 ? view2 : view;
            if (!z2) {
                view = view2;
            }
            this.mChild2 = view;
            requestLayout();
        } catch (Throwable th) {
            boolean z3 = this.mFlipChildPos;
            this.mChild1 = z3 ? view2 : view;
            if (!z3) {
                view = view2;
            }
            this.mChild2 = view;
            throw th;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() >= 2) {
            throw new IllegalStateException("Can't add more than 2 views to a ViewSwitcher");
        }
        super.addView(view, i, layoutParams);
        int childCount = getChildCount();
        if (childCount > 0 && this.mChild1 == null) {
            this.mChild1 = getChildAt(0);
        }
        if (childCount <= 1 || this.mChild2 != null) {
            return;
        }
        this.mChild2 = getChildAt(1);
    }

    public int getDisplayMode() {
        int i;
        synchronized (this.mSync) {
            i = this.mDisplayMode;
        }
        return i;
    }

    public boolean getEnableSubWindow() {
        boolean z;
        synchronized (this.mSync) {
            z = this.mEnableSubWindow;
        }
        return z;
    }

    public boolean getFlipChildPos() {
        boolean z;
        synchronized (this.mSync) {
            z = this.mFlipChildPos;
        }
        return z;
    }

    public int getOrientation() {
        int i;
        synchronized (this.mSync) {
            i = this.mOrientation;
        }
        return i;
    }

    public float getSubWindowScale() {
        float f2;
        synchronized (this.mSync) {
            f2 = this.mSubWindowScale;
        }
        return f2;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(TwoPainViewGroup.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(TwoPainViewGroup.class.getName());
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int paddingLeft = getPaddingLeft() + i;
        int paddingTop = i2 + getPaddingTop();
        int paddingRight = i3 - getPaddingRight();
        int paddingBottom = i4 - getPaddingBottom();
        int childCount = getChildCount();
        if (childCount == 1) {
            callChildLayout(this.mChild1, z, paddingLeft, paddingTop, paddingRight, paddingBottom);
            return;
        }
        if (childCount <= 0) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int i5 = this.mDisplayMode;
        if (i5 != 1) {
            if (i5 != 2) {
                if (i5 != 3) {
                    if (i5 != 4) {
                        onLayoutSplit(z, paddingLeft, paddingTop, paddingRight, paddingBottom);
                        return;
                    }
                }
            }
            onLayoutSelect2(z, paddingLeft, paddingTop, paddingRight, paddingBottom);
            return;
        }
        onLayoutSelect1(z, paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        View view;
        if (View.MeasureSpec.getMode(i) == 1073741824) {
            View.MeasureSpec.getMode(i2);
        }
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.mDisplayMode == 0) {
            if (this.mOrientation == 1) {
                size2 >>>= 1;
            } else {
                size >>>= 1;
            }
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, View.MeasureSpec.getMode(i));
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2, View.MeasureSpec.getMode(i2));
        int childCount = getChildCount();
        int iCombineMeasuredStates = 0;
        int iMax = 0;
        int iMax2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                int i4 = iCombineMeasuredStates;
                measureChildWithMargins(childAt, iMakeMeasureSpec, 0, iMakeMeasureSpec2, 0);
                int i5 = this.mDisplayMode;
                if (i5 != 0) {
                    if (i5 == 1 || i5 == 3) {
                        view = childAt;
                        if (view != this.mChild1) {
                        }
                        iCombineMeasuredStates = FrameLayout.combineMeasuredStates(i4, view.getMeasuredState());
                    } else {
                        view = childAt;
                    }
                    if ((i5 == 2 || i5 == 3) && view == this.mChild2) {
                    }
                    iCombineMeasuredStates = FrameLayout.combineMeasuredStates(i4, view.getMeasuredState());
                } else {
                    view = childAt;
                }
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                iMax = Math.max(iMax, view.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
                iMax2 = Math.max(iMax2, view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin);
                iCombineMeasuredStates = FrameLayout.combineMeasuredStates(i4, view.getMeasuredState());
            }
        }
        int i6 = iCombineMeasuredStates;
        if (this.mDisplayMode == 0) {
            if (this.mOrientation == 1) {
                iMax2 <<= 1;
            } else {
                iMax <<= 1;
            }
        }
        int paddingLeft = iMax + getPaddingLeft() + getPaddingRight();
        int iMax3 = Math.max(iMax2 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight());
        int iMax4 = Math.max(paddingLeft, getSuggestedMinimumWidth());
        Drawable foreground = getForeground();
        if (foreground != null) {
            iMax3 = Math.max(iMax3, foreground.getMinimumHeight());
            iMax4 = Math.max(iMax4, foreground.getMinimumWidth());
        }
        setMeasuredDimension(FrameLayout.resolveSizeAndState(iMax4, i, i6), FrameLayout.resolveSizeAndState(iMax3, i2, i6 << 16));
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount2 = getChildCount();
        if (childCount2 == 1) {
            callChildMeasure(this.mChild1, measuredWidth, measuredHeight, i, i2);
            return;
        }
        if (childCount2 <= 0) {
            super.onMeasure(i, i2);
            return;
        }
        int i7 = this.mDisplayMode;
        if (i7 != 1) {
            if (i7 != 2) {
                if (i7 != 3) {
                    if (i7 != 4) {
                        onMeasureSplit(measuredWidth, measuredHeight, i, i2);
                        return;
                    }
                }
            }
            onMeasureSelect2(measuredWidth, measuredHeight, i, i2);
            return;
        }
        onMeasureSelect1(measuredWidth, measuredHeight, i, i2);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view == this.mChild1) {
            this.mChild1 = null;
        } else if (view == this.mChild2) {
            this.mChild2 = null;
        }
    }

    public void setDisplayMode(int i) {
        synchronized (this.mSync) {
            if (this.mDisplayMode != i) {
                this.mDisplayMode = i;
                startLayout();
            }
        }
    }

    public void setEnableSubWindow(boolean z) {
        synchronized (this.mSync) {
            if (this.mEnableSubWindow != z) {
                this.mEnableSubWindow = z;
                startLayout();
            }
        }
    }

    public void setFlipChildPos(boolean z) {
        synchronized (this.mSync) {
            if (z != this.mFlipChildPos) {
                this.mFlipChildPos = z;
                startLayout();
            }
        }
    }

    public void setOrientation(int i) {
        synchronized (this.mSync) {
            if (this.mOrientation != i % 2) {
                this.mOrientation = i % 2;
                startLayout();
            }
        }
    }

    public void setSubWindowScale(float f2) {
        if (f2 <= BitmapDescriptorFactory.HUE_RED || f2 >= 1.0f) {
            f2 = DEFAULT_SUB_WINDOW_SCALE;
        }
        synchronized (this.mSync) {
            if (f2 != this.mSubWindowScale) {
                this.mSubWindowScale = f2;
                startLayout();
            }
        }
    }

    public void startLayout() {
        if (isInEditMode() || getChildCount() < 2) {
            requestLayout();
        }
        post(new Runnable() { // from class: com.serenegiant.widget.TwoPainViewGroup.1
            @Override // java.lang.Runnable
            public void run() {
                TwoPainViewGroup.this.startLayoutOnUI();
            }
        });
    }

    public TwoPainViewGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TwoPainViewGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSync = new Object();
        this.mChildRect = new Rect();
        this.mAnimatorListener = new Animator.AnimatorListener() { // from class: com.serenegiant.widget.TwoPainViewGroup.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                synchronized (TwoPainViewGroup.this.mSync) {
                    TwoPainViewGroup.this.mAnimator = null;
                }
                TwoPainViewGroup.this.requestLayout();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                synchronized (TwoPainViewGroup.this.mSync) {
                    TwoPainViewGroup.this.mAnimator = null;
                }
                TwoPainViewGroup.this.requestLayout();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TwoPainViewGroup, i, 0);
        this.mOrientation = typedArrayObtainStyledAttributes.getInt(R.styleable.TwoPainViewGroup_orientation, 0);
        this.mDisplayMode = typedArrayObtainStyledAttributes.getInt(R.styleable.TwoPainViewGroup_displayMode, 0);
        this.mEnableSubWindow = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TwoPainViewGroup_enableSubWindow, true);
        this.mFlipChildPos = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TwoPainViewGroup_flipChildPos, false);
        float f2 = typedArrayObtainStyledAttributes.getFloat(R.styleable.TwoPainViewGroup_subWindowScale, DEFAULT_SUB_WINDOW_SCALE);
        this.mSubWindowScale = f2;
        if (f2 <= BitmapDescriptorFactory.HUE_RED || f2 >= 1.0f) {
            this.mSubWindowScale = DEFAULT_SUB_WINDOW_SCALE;
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
