package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_DRAW_CONSTRAINTS = false;
    public static final int DESIGN_INFO_ID = 0;
    private static final boolean MEASURE = false;
    private static final boolean OPTIMIZE_HEIGHT_CHANGE = false;
    private static final String TAG = "ConstraintLayout";
    private static final boolean USE_CONSTRAINTS_HELPER = true;
    public static final String VERSION = "ConstraintLayout-2.1.1";
    private static g sSharedValues;
    SparseArray<View> mChildrenByIds;
    private ArrayList<androidx.constraintlayout.widget.a> mConstraintHelpers;
    protected androidx.constraintlayout.widget.b mConstraintLayoutSpec;
    private androidx.constraintlayout.widget.c mConstraintSet;
    private int mConstraintSetId;
    private e mConstraintsChangedListener;
    private HashMap<String, Integer> mDesignIds;
    protected boolean mDirtyHierarchy;
    private int mLastMeasureHeight;
    int mLastMeasureHeightMode;
    int mLastMeasureHeightSize;
    private int mLastMeasureWidth;
    int mLastMeasureWidthMode;
    int mLastMeasureWidthSize;
    protected androidx.constraintlayout.core.widgets.d mLayoutWidget;
    private int mMaxHeight;
    private int mMaxWidth;
    c mMeasurer;
    private androidx.constraintlayout.core.e mMetrics;
    private int mMinHeight;
    private int mMinWidth;
    private int mOnMeasureHeightMeasureSpec;
    private int mOnMeasureWidthMeasureSpec;
    private int mOptimizationLevel;
    private SparseArray<ConstraintWidget> mTempMapIdToWidget;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f833a;

        static {
            int[] iArr = new int[ConstraintWidget.DimensionBehaviour.values().length];
            f833a = iArr;
            try {
                iArr[ConstraintWidget.DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f833a[ConstraintWidget.DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f833a[ConstraintWidget.DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f833a[ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    class c implements androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0016b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ConstraintLayout f841a;
        int b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f842d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f843e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f844f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f845g;

        public c(ConstraintLayout constraintLayout) {
            this.f841a = constraintLayout;
        }

        private boolean d(int i, int i2, int i3) {
            if (i == i2) {
                return true;
            }
            int mode = View.MeasureSpec.getMode(i);
            View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (mode2 == 1073741824) {
                return (mode == Integer.MIN_VALUE || mode == 0) && i3 == size;
            }
            return false;
        }

        @Override // androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0016b
        public final void a() {
            int childCount = this.f841a.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.f841a.getChildAt(i);
                if (childAt instanceof f) {
                    ((f) childAt).a(this.f841a);
                }
            }
            int size = this.f841a.mConstraintHelpers.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    ((androidx.constraintlayout.widget.a) this.f841a.mConstraintHelpers.get(i2)).q(this.f841a);
                }
            }
        }

        @Override // androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0016b
        @SuppressLint({"WrongCall"})
        public final void b(ConstraintWidget constraintWidget, androidx.constraintlayout.core.widgets.analyzer.b.a aVar) {
            int iMakeMeasureSpec;
            int iMakeMeasureSpec2;
            int baseline;
            int iMax;
            int iMax2;
            int iMakeMeasureSpec3;
            int i;
            if (constraintWidget == null) {
                return;
            }
            if (constraintWidget.Q() == 8 && !constraintWidget.e0()) {
                aVar.f703e = 0;
                aVar.f704f = 0;
                aVar.f705g = 0;
                return;
            }
            if (constraintWidget.I() == null) {
                return;
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = aVar.f701a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = aVar.b;
            int i2 = aVar.c;
            int i3 = aVar.f702d;
            int i4 = this.b + this.c;
            int i5 = this.f842d;
            View view = (View) constraintWidget.q();
            int[] iArr = a.f833a;
            int i6 = iArr[dimensionBehaviour.ordinal()];
            if (i6 == 1) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
            } else if (i6 == 2) {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f844f, i5, -2);
            } else if (i6 == 3) {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f844f, i5 + constraintWidget.z(), -1);
            } else if (i6 != 4) {
                iMakeMeasureSpec = 0;
            } else {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f844f, i5, -2);
                boolean z = constraintWidget.s == 1;
                int i7 = aVar.j;
                if (i7 == androidx.constraintlayout.core.widgets.analyzer.b.a.l || i7 == androidx.constraintlayout.core.widgets.analyzer.b.a.m) {
                    if (aVar.j == androidx.constraintlayout.core.widgets.analyzer.b.a.m || !z || (z && (view.getMeasuredHeight() == constraintWidget.v())) || (view instanceof f) || constraintWidget.i0()) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(constraintWidget.R(), 1073741824);
                    }
                }
            }
            int i8 = iArr[dimensionBehaviour2.ordinal()];
            if (i8 == 1) {
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
            } else if (i8 == 2) {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f845g, i4, -2);
            } else if (i8 == 3) {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f845g, i4 + constraintWidget.P(), -1);
            } else if (i8 != 4) {
                iMakeMeasureSpec2 = 0;
            } else {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f845g, i4, -2);
                boolean z2 = constraintWidget.t == 1;
                int i9 = aVar.j;
                if (i9 == androidx.constraintlayout.core.widgets.analyzer.b.a.l || i9 == androidx.constraintlayout.core.widgets.analyzer.b.a.m) {
                    if (aVar.j == androidx.constraintlayout.core.widgets.analyzer.b.a.m || !z2 || (z2 && (view.getMeasuredWidth() == constraintWidget.R())) || (view instanceof f) || constraintWidget.j0()) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(constraintWidget.v(), 1073741824);
                    }
                }
            }
            androidx.constraintlayout.core.widgets.d dVar = (androidx.constraintlayout.core.widgets.d) constraintWidget.I();
            if (dVar != null && androidx.constraintlayout.core.widgets.h.b(ConstraintLayout.this.mOptimizationLevel, 256) && view.getMeasuredWidth() == constraintWidget.R() && view.getMeasuredWidth() < dVar.R() && view.getMeasuredHeight() == constraintWidget.v() && view.getMeasuredHeight() < dVar.v() && view.getBaseline() == constraintWidget.n() && !constraintWidget.h0()) {
                if (d(constraintWidget.A(), iMakeMeasureSpec, constraintWidget.R()) && d(constraintWidget.B(), iMakeMeasureSpec2, constraintWidget.v())) {
                    aVar.f703e = constraintWidget.R();
                    aVar.f704f = constraintWidget.v();
                    aVar.f705g = constraintWidget.n();
                    return;
                }
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            boolean z3 = dimensionBehaviour == dimensionBehaviour3;
            boolean z4 = dimensionBehaviour2 == dimensionBehaviour3;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            boolean z5 = dimensionBehaviour2 == dimensionBehaviour4 || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.FIXED;
            boolean z6 = dimensionBehaviour == dimensionBehaviour4 || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED;
            boolean z7 = z3 && constraintWidget.Z > BitmapDescriptorFactory.HUE_RED;
            boolean z8 = z4 && constraintWidget.Z > BitmapDescriptorFactory.HUE_RED;
            if (view == null) {
                return;
            }
            b bVar = (b) view.getLayoutParams();
            int i10 = aVar.j;
            if (i10 != androidx.constraintlayout.core.widgets.analyzer.b.a.l && i10 != androidx.constraintlayout.core.widgets.analyzer.b.a.m && z3 && constraintWidget.s == 0 && z4 && constraintWidget.t == 0) {
                i = -1;
                iMax2 = 0;
                baseline = 0;
                iMax = 0;
            } else {
                if ((view instanceof i) && (constraintWidget instanceof androidx.constraintlayout.core.widgets.i)) {
                    ((i) view).u((androidx.constraintlayout.core.widgets.i) constraintWidget, iMakeMeasureSpec, iMakeMeasureSpec2);
                } else {
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                }
                constraintWidget.M0(iMakeMeasureSpec, iMakeMeasureSpec2);
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                baseline = view.getBaseline();
                int i11 = constraintWidget.v;
                iMax = i11 > 0 ? Math.max(i11, measuredWidth) : measuredWidth;
                int i12 = constraintWidget.w;
                if (i12 > 0) {
                    iMax = Math.min(i12, iMax);
                }
                int i13 = constraintWidget.y;
                iMax2 = i13 > 0 ? Math.max(i13, measuredHeight) : measuredHeight;
                int i14 = constraintWidget.z;
                if (i14 > 0) {
                    iMax2 = Math.min(i14, iMax2);
                }
                if (!androidx.constraintlayout.core.widgets.h.b(ConstraintLayout.this.mOptimizationLevel, 1)) {
                    if (z7 && z5) {
                        iMax = (int) ((iMax2 * constraintWidget.Z) + 0.5f);
                    } else if (z8 && z6) {
                        iMax2 = (int) ((iMax / constraintWidget.Z) + 0.5f);
                    }
                }
                if (measuredWidth != iMax || measuredHeight != iMax2) {
                    if (measuredWidth != iMax) {
                        iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
                    }
                    if (measuredHeight != iMax2) {
                        iMakeMeasureSpec3 = iMakeMeasureSpec;
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMax2, 1073741824);
                    }
                    iMakeMeasureSpec3 = iMakeMeasureSpec;
                    view.measure(iMakeMeasureSpec3, iMakeMeasureSpec2);
                    constraintWidget.M0(iMakeMeasureSpec3, iMakeMeasureSpec2);
                    iMax = view.getMeasuredWidth();
                    iMax2 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                }
                i = -1;
            }
            boolean z9 = baseline != i;
            aVar.i = (iMax == aVar.c && iMax2 == aVar.f702d) ? false : true;
            if (bVar.d0) {
                z9 = true;
            }
            if (z9 && baseline != -1 && constraintWidget.n() != baseline) {
                aVar.i = true;
            }
            aVar.f703e = iMax;
            aVar.f704f = iMax2;
            aVar.f706h = z9;
            aVar.f705g = baseline;
        }

        public void c(int i, int i2, int i3, int i4, int i5, int i6) {
            this.b = i3;
            this.c = i4;
            this.f842d = i5;
            this.f843e = i6;
            this.f844f = i;
            this.f845g = i2;
        }
    }

    public ConstraintLayout(Context context) {
        super(context);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new androidx.constraintlayout.core.widgets.d();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        init(null, 0, 0);
    }

    private int getPaddingWidth() {
        int iMax = 0;
        int iMax2 = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
        if (Build.VERSION.SDK_INT >= 17) {
            iMax = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        }
        return iMax > 0 ? iMax : iMax2;
    }

    public static g getSharedValues() {
        if (sSharedValues == null) {
            sSharedValues = new g();
        }
        return sSharedValues;
    }

    private final ConstraintWidget getTargetWidget(int i) {
        if (i == 0) {
            return this.mLayoutWidget;
        }
        View viewFindViewById = this.mChildrenByIds.get(i);
        if (viewFindViewById == null && (viewFindViewById = findViewById(i)) != null && viewFindViewById != this && viewFindViewById.getParent() == this) {
            onViewAdded(viewFindViewById);
        }
        if (viewFindViewById == this) {
            return this.mLayoutWidget;
        }
        if (viewFindViewById == null) {
            return null;
        }
        return ((b) viewFindViewById.getLayoutParams()).s0;
    }

    private void init(AttributeSet attributeSet, int i, int i2) {
        this.mLayoutWidget.s0(this);
        this.mLayoutWidget.M1(this.mMeasurer);
        this.mChildrenByIds.put(getId(), this);
        this.mConstraintSet = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout, i, i2);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i3);
                if (index == R.styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.mMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMinWidth);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.mMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMinHeight);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxWidth);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.mMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxHeight);
                } else if (index == R.styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.mOptimizationLevel = typedArrayObtainStyledAttributes.getInt(index, this.mOptimizationLevel);
                } else if (index == R.styleable.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            parseLayoutDescription(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.mConstraintLayoutSpec = null;
                        }
                    }
                } else if (index == R.styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        androidx.constraintlayout.widget.c cVar = new androidx.constraintlayout.widget.c();
                        this.mConstraintSet = cVar;
                        cVar.t(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.mConstraintSet = null;
                    }
                    this.mConstraintSetId = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.mLayoutWidget.N1(this.mOptimizationLevel);
    }

    private void markHierarchyDirty() {
        this.mDirtyHierarchy = true;
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
    }

    private void setChildrenConstraints() {
        boolean zIsInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ConstraintWidget viewWidget = getViewWidget(getChildAt(i));
            if (viewWidget != null) {
                viewWidget.o0();
            }
        }
        if (zIsInEditMode) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    setDesignInformation(0, resourceName, Integer.valueOf(childAt.getId()));
                    int iIndexOf = resourceName.indexOf(47);
                    if (iIndexOf != -1) {
                        resourceName = resourceName.substring(iIndexOf + 1);
                    }
                    getTargetWidget(childAt.getId()).t0(resourceName);
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        if (this.mConstraintSetId != -1) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt2 = getChildAt(i3);
                if (childAt2.getId() == this.mConstraintSetId && (childAt2 instanceof d)) {
                    this.mConstraintSet = ((d) childAt2).getConstraintSet();
                }
            }
        }
        androidx.constraintlayout.widget.c cVar = this.mConstraintSet;
        if (cVar != null) {
            cVar.j(this, true);
        }
        this.mLayoutWidget.l1();
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i4 = 0; i4 < size; i4++) {
                this.mConstraintHelpers.get(i4).s(this);
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt3 = getChildAt(i5);
            if (childAt3 instanceof f) {
                ((f) childAt3).b(this);
            }
        }
        this.mTempMapIdToWidget.clear();
        this.mTempMapIdToWidget.put(0, this.mLayoutWidget);
        this.mTempMapIdToWidget.put(getId(), this.mLayoutWidget);
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt4 = getChildAt(i6);
            this.mTempMapIdToWidget.put(childAt4.getId(), getViewWidget(childAt4));
        }
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt5 = getChildAt(i7);
            ConstraintWidget viewWidget2 = getViewWidget(childAt5);
            if (viewWidget2 != null) {
                b bVar = (b) childAt5.getLayoutParams();
                this.mLayoutWidget.a(viewWidget2);
                applyConstraintsFromLayoutParams(zIsInEditMode, childAt5, viewWidget2, bVar, this.mTempMapIdToWidget);
            }
        }
    }

    private void setWidgetBaseline(ConstraintWidget constraintWidget, b bVar, SparseArray<ConstraintWidget> sparseArray, int i, ConstraintAnchor.Type type) {
        View view = this.mChildrenByIds.get(i);
        ConstraintWidget constraintWidget2 = sparseArray.get(i);
        if (constraintWidget2 == null || view == null || !(view.getLayoutParams() instanceof b)) {
            return;
        }
        bVar.d0 = true;
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.BASELINE;
        if (type == type2) {
            b bVar2 = (b) view.getLayoutParams();
            bVar2.d0 = true;
            bVar2.s0.B0(true);
        }
        constraintWidget.m(type2).a(constraintWidget2.m(type), bVar.C, bVar.B, true);
        constraintWidget.B0(true);
        constraintWidget.m(ConstraintAnchor.Type.TOP).p();
        constraintWidget.m(ConstraintAnchor.Type.BOTTOM).p();
    }

    private boolean updateHierarchy() {
        int childCount = getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            if (getChildAt(i).isLayoutRequested()) {
                z = true;
                break;
            }
        }
        if (z) {
            setChildrenConstraints();
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00ac  */
    protected void applyConstraintsFromLayoutParams(boolean z, View view, ConstraintWidget constraintWidget, b bVar, SparseArray<ConstraintWidget> sparseArray) {
        float f2;
        int i;
        int i2;
        int i3;
        int i4;
        ConstraintWidget constraintWidget2;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        ConstraintWidget constraintWidget5;
        int i5;
        int i6 = Build.VERSION.SDK_INT;
        bVar.b();
        bVar.t0 = false;
        constraintWidget.a1(view.getVisibility());
        if (bVar.g0) {
            constraintWidget.K0(true);
            constraintWidget.a1(8);
        }
        constraintWidget.s0(view);
        if (view instanceof androidx.constraintlayout.widget.a) {
            ((androidx.constraintlayout.widget.a) view).o(constraintWidget, this.mLayoutWidget.G1());
        }
        if (bVar.e0) {
            androidx.constraintlayout.core.widgets.e eVar = (androidx.constraintlayout.core.widgets.e) constraintWidget;
            int i7 = bVar.p0;
            int i8 = bVar.q0;
            float f3 = bVar.r0;
            if (i6 < 17) {
                i7 = bVar.f834a;
                i8 = bVar.b;
                f3 = bVar.c;
            }
            if (f3 != -1.0f) {
                eVar.q1(f3);
                return;
            } else if (i7 != -1) {
                eVar.o1(i7);
                return;
            } else {
                if (i8 != -1) {
                    eVar.p1(i8);
                    return;
                }
                return;
            }
        }
        int i9 = bVar.i0;
        int i10 = bVar.j0;
        int i11 = bVar.k0;
        int i12 = bVar.l0;
        int i13 = bVar.m0;
        int i14 = bVar.n0;
        float f4 = bVar.o0;
        if (i6 < 17) {
            i9 = bVar.f835d;
            int i15 = bVar.f836e;
            int i16 = bVar.f837f;
            int i17 = bVar.f838g;
            i3 = bVar.v;
            i = bVar.x;
            f2 = bVar.D;
            if (i9 == -1 && i15 == -1) {
                int i18 = bVar.s;
                if (i18 != -1) {
                    i9 = i18;
                } else {
                    int i19 = bVar.r;
                    if (i19 != -1) {
                        i15 = i19;
                    }
                }
            }
            if (i16 == -1 && i17 == -1) {
                i4 = bVar.t;
                if (i4 == -1) {
                    int i20 = bVar.u;
                    if (i20 != -1) {
                        i2 = i20;
                        i4 = i16;
                    } else {
                        i4 = i16;
                        i2 = i17;
                    }
                } else {
                    i2 = i17;
                }
            } else {
                i4 = i16;
                i2 = i17;
            }
            i10 = i15;
        } else {
            f2 = f4;
            i = i14;
            i2 = i12;
            i3 = i13;
            i4 = i11;
        }
        int i21 = bVar.o;
        if (i21 != -1) {
            ConstraintWidget constraintWidget6 = sparseArray.get(i21);
            if (constraintWidget6 != null) {
                constraintWidget.j(constraintWidget6, bVar.q, bVar.p);
            }
        } else {
            if (i9 != -1) {
                ConstraintWidget constraintWidget7 = sparseArray.get(i9);
                if (constraintWidget7 != null) {
                    ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
                    constraintWidget.Z(type, constraintWidget7, type, ((ViewGroup.MarginLayoutParams) bVar).leftMargin, i3);
                }
            } else if (i10 != -1 && (constraintWidget2 = sparseArray.get(i10)) != null) {
                constraintWidget.Z(ConstraintAnchor.Type.LEFT, constraintWidget2, ConstraintAnchor.Type.RIGHT, ((ViewGroup.MarginLayoutParams) bVar).leftMargin, i3);
            }
            if (i4 != -1) {
                ConstraintWidget constraintWidget8 = sparseArray.get(i4);
                if (constraintWidget8 != null) {
                    constraintWidget.Z(ConstraintAnchor.Type.RIGHT, constraintWidget8, ConstraintAnchor.Type.LEFT, ((ViewGroup.MarginLayoutParams) bVar).rightMargin, i);
                }
            } else if (i2 != -1 && (constraintWidget3 = sparseArray.get(i2)) != null) {
                ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
                constraintWidget.Z(type2, constraintWidget3, type2, ((ViewGroup.MarginLayoutParams) bVar).rightMargin, i);
            }
            int i22 = bVar.f839h;
            if (i22 != -1) {
                ConstraintWidget constraintWidget9 = sparseArray.get(i22);
                if (constraintWidget9 != null) {
                    ConstraintAnchor.Type type3 = ConstraintAnchor.Type.TOP;
                    constraintWidget.Z(type3, constraintWidget9, type3, ((ViewGroup.MarginLayoutParams) bVar).topMargin, bVar.w);
                }
            } else {
                int i23 = bVar.i;
                if (i23 != -1 && (constraintWidget4 = sparseArray.get(i23)) != null) {
                    constraintWidget.Z(ConstraintAnchor.Type.TOP, constraintWidget4, ConstraintAnchor.Type.BOTTOM, ((ViewGroup.MarginLayoutParams) bVar).topMargin, bVar.w);
                }
            }
            int i24 = bVar.j;
            if (i24 != -1) {
                ConstraintWidget constraintWidget10 = sparseArray.get(i24);
                if (constraintWidget10 != null) {
                    constraintWidget.Z(ConstraintAnchor.Type.BOTTOM, constraintWidget10, ConstraintAnchor.Type.TOP, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin, bVar.y);
                }
            } else {
                int i25 = bVar.k;
                if (i25 != -1 && (constraintWidget5 = sparseArray.get(i25)) != null) {
                    ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
                    constraintWidget.Z(type4, constraintWidget5, type4, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin, bVar.y);
                }
            }
            int i26 = bVar.l;
            if (i26 != -1) {
                setWidgetBaseline(constraintWidget, bVar, sparseArray, i26, ConstraintAnchor.Type.BASELINE);
            } else {
                int i27 = bVar.m;
                if (i27 != -1) {
                    setWidgetBaseline(constraintWidget, bVar, sparseArray, i27, ConstraintAnchor.Type.TOP);
                } else {
                    int i28 = bVar.n;
                    if (i28 != -1) {
                        setWidgetBaseline(constraintWidget, bVar, sparseArray, i28, ConstraintAnchor.Type.BOTTOM);
                    }
                }
            }
            if (f2 >= BitmapDescriptorFactory.HUE_RED) {
                constraintWidget.D0(f2);
            }
            float f5 = bVar.E;
            if (f5 >= BitmapDescriptorFactory.HUE_RED) {
                constraintWidget.U0(f5);
            }
        }
        if (z && ((i5 = bVar.U) != -1 || bVar.V != -1)) {
            constraintWidget.S0(i5, bVar.V);
        }
        if (bVar.b0) {
            constraintWidget.G0(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidget.b1(((ViewGroup.MarginLayoutParams) bVar).width);
            if (((ViewGroup.MarginLayoutParams) bVar).width == -2) {
                constraintWidget.G0(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) bVar).width == -1) {
            if (bVar.X) {
                constraintWidget.G0(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            } else {
                constraintWidget.G0(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
            }
            constraintWidget.m(ConstraintAnchor.Type.LEFT).f677g = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
            constraintWidget.m(ConstraintAnchor.Type.RIGHT).f677g = ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        } else {
            constraintWidget.G0(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            constraintWidget.b1(0);
        }
        if (bVar.c0) {
            constraintWidget.X0(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidget.C0(((ViewGroup.MarginLayoutParams) bVar).height);
            if (((ViewGroup.MarginLayoutParams) bVar).height == -2) {
                constraintWidget.X0(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) bVar).height == -1) {
            if (bVar.Y) {
                constraintWidget.X0(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            } else {
                constraintWidget.X0(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
            }
            constraintWidget.m(ConstraintAnchor.Type.TOP).f677g = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
            constraintWidget.m(ConstraintAnchor.Type.BOTTOM).f677g = ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        } else {
            constraintWidget.X0(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            constraintWidget.C0(0);
        }
        constraintWidget.u0(bVar.F);
        constraintWidget.I0(bVar.I);
        constraintWidget.Z0(bVar.J);
        constraintWidget.E0(bVar.K);
        constraintWidget.V0(bVar.L);
        constraintWidget.c1(bVar.a0);
        constraintWidget.H0(bVar.M, bVar.O, bVar.Q, bVar.S);
        constraintWidget.Y0(bVar.N, bVar.P, bVar.R, bVar.T);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<androidx.constraintlayout.widget.a> arrayList = this.mConstraintHelpers;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                this.mConstraintHelpers.get(i).r(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i3 = Integer.parseInt(strArrSplit[0]);
                        int i4 = Integer.parseInt(strArrSplit[1]);
                        int i5 = Integer.parseInt(strArrSplit[2]);
                        int i6 = (int) ((i3 / 1080.0f) * width);
                        int i7 = (int) ((i4 / 1920.0f) * height);
                        int i8 = (int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f2 = i6;
                        float f3 = i7;
                        float f4 = i6 + ((int) ((i5 / 1080.0f) * width));
                        canvas.drawLine(f2, f3, f4, f3, paint);
                        float f5 = i7 + i8;
                        canvas.drawLine(f4, f3, f4, f5, paint);
                        canvas.drawLine(f4, f5, f2, f5, paint);
                        canvas.drawLine(f2, f5, f2, f3, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f2, f3, f4, f5, paint);
                        canvas.drawLine(f2, f5, f4, f3, paint);
                    }
                }
            }
        }
    }

    public void fillMetrics(androidx.constraintlayout.core.e eVar) {
        this.mLayoutWidget.z1(eVar);
    }

    @Override // android.view.View
    public void forceLayout() {
        markHierarchyDirty();
        super.forceLayout();
    }

    public Object getDesignInformation(int i, Object obj) {
        if (i != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> map = this.mDesignIds;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.mDesignIds.get(str);
    }

    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public int getOptimizationLevel() {
        return this.mLayoutWidget.B1();
    }

    public View getViewById(int i) {
        return this.mChildrenByIds.get(i);
    }

    public final ConstraintWidget getViewWidget(View view) {
        if (view == this) {
            return this.mLayoutWidget;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof b) {
            return ((b) view.getLayoutParams()).s0;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof b) {
            return ((b) view.getLayoutParams()).s0;
        }
        return null;
    }

    protected boolean isRtl() {
        if (Build.VERSION.SDK_INT >= 17) {
            return ((getContext().getApplicationInfo().flags & 4194304) != 0) && 1 == getLayoutDirection();
        }
        return false;
    }

    public void loadLayoutDescription(int i) {
        if (i == 0) {
            this.mConstraintLayoutSpec = null;
            return;
        }
        try {
            this.mConstraintLayoutSpec = new androidx.constraintlayout.widget.b(getContext(), this, i);
        } catch (Resources.NotFoundException unused) {
            this.mConstraintLayoutSpec = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            b bVar = (b) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = bVar.s0;
            if ((childAt.getVisibility() != 8 || bVar.e0 || bVar.f0 || bVar.h0 || zIsInEditMode) && !bVar.g0) {
                int iS = constraintWidget.S();
                int iT = constraintWidget.T();
                int iR = constraintWidget.R() + iS;
                int iV = constraintWidget.v() + iT;
                childAt.layout(iS, iT, iR, iV);
                if ((childAt instanceof f) && (content = ((f) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(iS, iT, iR, iV);
                }
            }
        }
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.mConstraintHelpers.get(i6).p(this);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.mOnMeasureWidthMeasureSpec == i) {
            int i3 = this.mOnMeasureHeightMeasureSpec;
        }
        if (!this.mDirtyHierarchy) {
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                if (getChildAt(i4).isLayoutRequested()) {
                    this.mDirtyHierarchy = true;
                    break;
                }
            }
        }
        boolean z = this.mDirtyHierarchy;
        this.mOnMeasureWidthMeasureSpec = i;
        this.mOnMeasureHeightMeasureSpec = i2;
        this.mLayoutWidget.P1(isRtl());
        if (this.mDirtyHierarchy) {
            this.mDirtyHierarchy = false;
            if (updateHierarchy()) {
                this.mLayoutWidget.R1();
            }
        }
        resolveSystem(this.mLayoutWidget, this.mOptimizationLevel, i, i2);
        resolveMeasuredDimension(i, i2, this.mLayoutWidget.R(), this.mLayoutWidget.v(), this.mLayoutWidget.H1(), this.mLayoutWidget.F1());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        ConstraintWidget viewWidget = getViewWidget(view);
        if ((view instanceof Guideline) && !(viewWidget instanceof androidx.constraintlayout.core.widgets.e)) {
            b bVar = (b) view.getLayoutParams();
            androidx.constraintlayout.core.widgets.e eVar = new androidx.constraintlayout.core.widgets.e();
            bVar.s0 = eVar;
            bVar.e0 = true;
            eVar.r1(bVar.W);
        }
        if (view instanceof androidx.constraintlayout.widget.a) {
            androidx.constraintlayout.widget.a aVar = (androidx.constraintlayout.widget.a) view;
            aVar.t();
            ((b) view.getLayoutParams()).f0 = true;
            if (!this.mConstraintHelpers.contains(aVar)) {
                this.mConstraintHelpers.add(aVar);
            }
        }
        this.mChildrenByIds.put(view.getId(), view);
        this.mDirtyHierarchy = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.mChildrenByIds.remove(view.getId());
        this.mLayoutWidget.k1(getViewWidget(view));
        this.mConstraintHelpers.remove(view);
        this.mDirtyHierarchy = true;
    }

    protected void parseLayoutDescription(int i) {
        this.mConstraintLayoutSpec = new androidx.constraintlayout.widget.b(getContext(), this, i);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        markHierarchyDirty();
        super.requestLayout();
    }

    protected void resolveMeasuredDimension(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        c cVar = this.mMeasurer;
        int i5 = cVar.f843e;
        int iResolveSizeAndState = ViewGroup.resolveSizeAndState(i3 + cVar.f842d, i, 0);
        int iResolveSizeAndState2 = ViewGroup.resolveSizeAndState(i4 + i5, i2, 0);
        int i6 = iResolveSizeAndState & ViewCompat.MEASURED_SIZE_MASK;
        int i7 = iResolveSizeAndState2 & ViewCompat.MEASURED_SIZE_MASK;
        int iMin = Math.min(this.mMaxWidth, i6);
        int iMin2 = Math.min(this.mMaxHeight, i7);
        if (z) {
            iMin |= 16777216;
        }
        if (z2) {
            iMin2 |= 16777216;
        }
        setMeasuredDimension(iMin, iMin2);
        this.mLastMeasureWidth = iMin;
        this.mLastMeasureHeight = iMin2;
    }

    protected void resolveSystem(androidx.constraintlayout.core.widgets.d dVar, int i, int i2, int i3) {
        int iMax;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int iMax2 = Math.max(0, getPaddingTop());
        int iMax3 = Math.max(0, getPaddingBottom());
        int i4 = iMax2 + iMax3;
        int paddingWidth = getPaddingWidth();
        this.mMeasurer.c(i2, i3, iMax2, iMax3, paddingWidth, i4);
        if (Build.VERSION.SDK_INT >= 17) {
            int iMax4 = Math.max(0, getPaddingStart());
            int iMax5 = Math.max(0, getPaddingEnd());
            if (iMax4 <= 0 && iMax5 <= 0) {
                iMax4 = Math.max(0, getPaddingLeft());
            } else if (isRtl()) {
                iMax4 = iMax5;
            }
            iMax = iMax4;
        } else {
            iMax = Math.max(0, getPaddingLeft());
        }
        int i5 = size - paddingWidth;
        int i6 = size2 - i4;
        setSelfDimensionBehaviour(dVar, mode, i5, mode2, i6);
        dVar.I1(i, mode, i5, mode2, i6, this.mLastMeasureWidth, this.mLastMeasureHeight, iMax, iMax2);
    }

    public void setConstraintSet(androidx.constraintlayout.widget.c cVar) {
        this.mConstraintSet = cVar;
    }

    public void setDesignInformation(int i, Object obj, Object obj2) {
        if (i == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.mDesignIds == null) {
                this.mDesignIds = new HashMap<>();
            }
            String strSubstring = (String) obj;
            int iIndexOf = strSubstring.indexOf("/");
            if (iIndexOf != -1) {
                strSubstring = strSubstring.substring(iIndexOf + 1);
            }
            this.mDesignIds.put(strSubstring, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    @Override // android.view.View
    public void setId(int i) {
        this.mChildrenByIds.remove(getId());
        super.setId(i);
        this.mChildrenByIds.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.mMaxHeight) {
            return;
        }
        this.mMaxHeight = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.mMaxWidth) {
            return;
        }
        this.mMaxWidth = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.mMinHeight) {
            return;
        }
        this.mMinHeight = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.mMinWidth) {
            return;
        }
        this.mMinWidth = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(e eVar) {
        androidx.constraintlayout.widget.b bVar = this.mConstraintLayoutSpec;
        if (bVar != null) {
            bVar.c(eVar);
        }
    }

    public void setOptimizationLevel(int i) {
        this.mOptimizationLevel = i;
        this.mLayoutWidget.N1(i);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003e A[PHI: r2
      0x003e: PHI (r2v4 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour) = 
      (r2v3 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour)
      (r2v0 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour)
     binds: [B:21:0x004a, B:17:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    protected void setSelfDimensionBehaviour(androidx.constraintlayout.core.widgets.d dVar, int i, int i2, int i3, int i4) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        c cVar = this.mMeasurer;
        int i5 = cVar.f843e;
        int i6 = cVar.f842d;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
        int childCount = getChildCount();
        if (i == Integer.MIN_VALUE) {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                i2 = Math.max(0, this.mMinWidth);
            }
        } else if (i == 0) {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            i2 = childCount == 0 ? Math.max(0, this.mMinWidth) : 0;
        } else if (i != 1073741824) {
            dimensionBehaviour = dimensionBehaviour2;
        } else {
            i2 = Math.min(this.mMaxWidth - i6, i2);
            dimensionBehaviour = dimensionBehaviour2;
        }
        if (i3 == Integer.MIN_VALUE) {
            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                i4 = Math.max(0, this.mMinHeight);
            }
        } else if (i3 == 0) {
            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                i4 = Math.max(0, this.mMinHeight);
            } else {
                i4 = 0;
            }
        } else if (i3 != 1073741824) {
            i4 = 0;
        } else {
            i4 = Math.min(this.mMaxHeight - i5, i4);
        }
        if (i2 != dVar.R() || i4 != dVar.v()) {
            dVar.E1();
        }
        dVar.d1(0);
        dVar.e1(0);
        dVar.O0(this.mMaxWidth - i6);
        dVar.N0(this.mMaxHeight - i5);
        dVar.R0(0);
        dVar.Q0(0);
        dVar.G0(dimensionBehaviour);
        dVar.b1(i2);
        dVar.X0(dimensionBehaviour2);
        dVar.C0(i4);
        dVar.R0(this.mMinWidth - i6);
        dVar.Q0(this.mMinHeight - i5);
    }

    public void setState(int i, int i2, int i3) {
        androidx.constraintlayout.widget.b bVar = this.mConstraintLayoutSpec;
        if (bVar != null) {
            bVar.d(i, i2, i3);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public b generateDefaultLayoutParams() {
        return new b(-2, -2);
    }

    @Override // android.view.ViewGroup
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new b(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new androidx.constraintlayout.core.widgets.d();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        init(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new androidx.constraintlayout.core.widgets.d();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        init(attributeSet, i, 0);
    }

    @TargetApi(21)
    public ConstraintLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new androidx.constraintlayout.core.widgets.d();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        init(attributeSet, i, i2);
    }

    public static class b extends ViewGroup.MarginLayoutParams {
        public int A;
        public int B;
        public int C;
        public float D;
        public float E;
        public String F;
        float G;
        int H;
        public float I;
        public float J;
        public int K;
        public int L;
        public int M;
        public int N;
        public int O;
        public int P;
        public int Q;
        public int R;
        public float S;
        public float T;
        public int U;
        public int V;
        public int W;
        public boolean X;
        public boolean Y;
        public String Z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f834a;
        public int a0;
        public int b;
        boolean b0;
        public float c;
        boolean c0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f835d;
        boolean d0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f836e;
        boolean e0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f837f;
        boolean f0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f838g;
        boolean g0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f839h;
        boolean h0;
        public int i;
        int i0;
        public int j;
        int j0;
        public int k;
        int k0;
        public int l;
        int l0;
        public int m;
        int m0;
        public int n;
        int n0;
        public int o;
        float o0;
        public int p;
        int p0;
        public float q;
        int q0;
        public int r;
        float r0;
        public int s;
        ConstraintWidget s0;
        public int t;
        public boolean t0;
        public int u;
        public int v;
        public int w;
        public int x;
        public int y;
        public int z;

        private static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final SparseIntArray f840a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f840a = sparseIntArray;
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth, 64);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight, 65);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toTopOf, 52);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBottomOf, 53);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_android_orientation, 1);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginBaseline, 55);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_marginBaseline, 54);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                SparseIntArray sparseIntArray2 = f840a;
                sparseIntArray2.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                sparseIntArray2.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                sparseIntArray2.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                sparseIntArray2.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                sparseIntArray2.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                sparseIntArray2.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                sparseIntArray2.append(R.styleable.ConstraintLayout_Layout_layout_constraintTag, 51);
                sparseIntArray2.append(R.styleable.ConstraintLayout_Layout_layout_wrapBehaviorInParent, 66);
            }
        }

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f834a = -1;
            this.b = -1;
            this.c = -1.0f;
            this.f835d = -1;
            this.f836e = -1;
            this.f837f = -1;
            this.f838g = -1;
            this.f839h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = 0;
            this.q = BitmapDescriptorFactory.HUE_RED;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = Integer.MIN_VALUE;
            this.w = Integer.MIN_VALUE;
            this.x = Integer.MIN_VALUE;
            this.y = Integer.MIN_VALUE;
            this.z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = 0;
            this.D = 0.5f;
            this.E = 0.5f;
            this.F = null;
            this.I = -1.0f;
            this.J = -1.0f;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 0;
            this.S = 1.0f;
            this.T = 1.0f;
            this.U = -1;
            this.V = -1;
            this.W = -1;
            this.X = false;
            this.Y = false;
            this.Z = null;
            this.a0 = 0;
            this.b0 = true;
            this.c0 = true;
            this.d0 = false;
            this.e0 = false;
            this.f0 = false;
            this.g0 = false;
            this.h0 = false;
            this.i0 = -1;
            this.j0 = -1;
            this.k0 = -1;
            this.l0 = -1;
            this.m0 = Integer.MIN_VALUE;
            this.n0 = Integer.MIN_VALUE;
            this.o0 = 0.5f;
            this.s0 = new ConstraintWidget();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                int i2 = a.f840a.get(index);
                switch (i2) {
                    case 1:
                        this.W = typedArrayObtainStyledAttributes.getInt(index, this.W);
                        break;
                    case 2:
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.o);
                        this.o = resourceId;
                        if (resourceId == -1) {
                            this.o = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 3:
                        this.p = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.p);
                        break;
                    case 4:
                        float f2 = typedArrayObtainStyledAttributes.getFloat(index, this.q) % 360.0f;
                        this.q = f2;
                        if (f2 < BitmapDescriptorFactory.HUE_RED) {
                            this.q = (360.0f - f2) % 360.0f;
                        }
                        break;
                    case 5:
                        this.f834a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f834a);
                        break;
                    case 6:
                        this.b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.b);
                        break;
                    case 7:
                        this.c = typedArrayObtainStyledAttributes.getFloat(index, this.c);
                        break;
                    case 8:
                        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.f835d);
                        this.f835d = resourceId2;
                        if (resourceId2 == -1) {
                            this.f835d = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 9:
                        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.f836e);
                        this.f836e = resourceId3;
                        if (resourceId3 == -1) {
                            this.f836e = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 10:
                        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.f837f);
                        this.f837f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f837f = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 11:
                        int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.f838g);
                        this.f838g = resourceId5;
                        if (resourceId5 == -1) {
                            this.f838g = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 12:
                        int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.f839h);
                        this.f839h = resourceId6;
                        if (resourceId6 == -1) {
                            this.f839h = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 13:
                        int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.i);
                        this.i = resourceId7;
                        if (resourceId7 == -1) {
                            this.i = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 14:
                        int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.j);
                        this.j = resourceId8;
                        if (resourceId8 == -1) {
                            this.j = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 15:
                        int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.k);
                        this.k = resourceId9;
                        if (resourceId9 == -1) {
                            this.k = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 16:
                        int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.l);
                        this.l = resourceId10;
                        if (resourceId10 == -1) {
                            this.l = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 17:
                        int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.r);
                        this.r = resourceId11;
                        if (resourceId11 == -1) {
                            this.r = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 18:
                        int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.s);
                        this.s = resourceId12;
                        if (resourceId12 == -1) {
                            this.s = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 19:
                        int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.t);
                        this.t = resourceId13;
                        if (resourceId13 == -1) {
                            this.t = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 20:
                        int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, this.u);
                        this.u = resourceId14;
                        if (resourceId14 == -1) {
                            this.u = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 21:
                        this.v = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.v);
                        break;
                    case 22:
                        this.w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.w);
                        break;
                    case 23:
                        this.x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.x);
                        break;
                    case 24:
                        this.y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.y);
                        break;
                    case 25:
                        this.z = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.z);
                        break;
                    case 26:
                        this.A = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.A);
                        break;
                    case 27:
                        this.X = typedArrayObtainStyledAttributes.getBoolean(index, this.X);
                        break;
                    case 28:
                        this.Y = typedArrayObtainStyledAttributes.getBoolean(index, this.Y);
                        break;
                    case 29:
                        this.D = typedArrayObtainStyledAttributes.getFloat(index, this.D);
                        break;
                    case 30:
                        this.E = typedArrayObtainStyledAttributes.getFloat(index, this.E);
                        break;
                    case 31:
                        int i3 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.M = i3;
                        if (i3 == 1) {
                            Log.e(ConstraintLayout.TAG, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                        }
                        break;
                    case 32:
                        int i4 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.N = i4;
                        if (i4 == 1) {
                            Log.e(ConstraintLayout.TAG, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                        }
                        break;
                    case 33:
                        try {
                            this.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.O);
                        } catch (Exception unused) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.O) == -2) {
                                this.O = -2;
                            }
                        }
                        break;
                    case 34:
                        try {
                            this.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.Q);
                        } catch (Exception unused2) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.Q) == -2) {
                                this.Q = -2;
                            }
                        }
                        break;
                    case 35:
                        this.S = Math.max(BitmapDescriptorFactory.HUE_RED, typedArrayObtainStyledAttributes.getFloat(index, this.S));
                        this.M = 2;
                        break;
                    case 36:
                        try {
                            this.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.P);
                        } catch (Exception unused3) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.P) == -2) {
                                this.P = -2;
                            }
                        }
                        break;
                    case 37:
                        try {
                            this.R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.R);
                        } catch (Exception unused4) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.R) == -2) {
                                this.R = -2;
                            }
                        }
                        break;
                    case 38:
                        this.T = Math.max(BitmapDescriptorFactory.HUE_RED, typedArrayObtainStyledAttributes.getFloat(index, this.T));
                        this.N = 2;
                        break;
                    default:
                        switch (i2) {
                            case 44:
                                androidx.constraintlayout.widget.c.y(this, typedArrayObtainStyledAttributes.getString(index));
                                break;
                            case 45:
                                this.I = typedArrayObtainStyledAttributes.getFloat(index, this.I);
                                break;
                            case 46:
                                this.J = typedArrayObtainStyledAttributes.getFloat(index, this.J);
                                break;
                            case 47:
                                this.K = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 48:
                                this.L = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 49:
                                this.U = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.U);
                                break;
                            case 50:
                                this.V = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.V);
                                break;
                            case 51:
                                this.Z = typedArrayObtainStyledAttributes.getString(index);
                                break;
                            case 52:
                                int resourceId15 = typedArrayObtainStyledAttributes.getResourceId(index, this.m);
                                this.m = resourceId15;
                                if (resourceId15 == -1) {
                                    this.m = typedArrayObtainStyledAttributes.getInt(index, -1);
                                }
                                break;
                            case 53:
                                int resourceId16 = typedArrayObtainStyledAttributes.getResourceId(index, this.n);
                                this.n = resourceId16;
                                if (resourceId16 == -1) {
                                    this.n = typedArrayObtainStyledAttributes.getInt(index, -1);
                                }
                                break;
                            case 54:
                                this.C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.C);
                                break;
                            case 55:
                                this.B = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.B);
                                break;
                            default:
                                switch (i2) {
                                    case 64:
                                        androidx.constraintlayout.widget.c.w(this, typedArrayObtainStyledAttributes, index, 0);
                                        break;
                                    case 65:
                                        androidx.constraintlayout.widget.c.w(this, typedArrayObtainStyledAttributes, index, 1);
                                        break;
                                    case 66:
                                        this.a0 = typedArrayObtainStyledAttributes.getInt(index, this.a0);
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            b();
        }

        public String a() {
            return this.Z;
        }

        public void b() {
            this.e0 = false;
            this.b0 = true;
            this.c0 = true;
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == -2 && this.X) {
                this.b0 = false;
                if (this.M == 0) {
                    this.M = 1;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == -2 && this.Y) {
                this.c0 = false;
                if (this.N == 0) {
                    this.N = 1;
                }
            }
            if (i == 0 || i == -1) {
                this.b0 = false;
                if (i == 0 && this.M == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.X = true;
                }
            }
            if (i2 == 0 || i2 == -1) {
                this.c0 = false;
                if (i2 == 0 && this.N == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.Y = true;
                }
            }
            if (this.c == -1.0f && this.f834a == -1 && this.b == -1) {
                return;
            }
            this.e0 = true;
            this.b0 = true;
            this.c0 = true;
            if (!(this.s0 instanceof androidx.constraintlayout.core.widgets.e)) {
                this.s0 = new androidx.constraintlayout.core.widgets.e();
            }
            ((androidx.constraintlayout.core.widgets.e) this.s0).r1(this.W);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x0054  */
        /* JADX WARN: Code duplicated, block: B:22:0x005b  */
        /* JADX WARN: Code duplicated, block: B:25:0x0062  */
        /* JADX WARN: Code duplicated, block: B:28:0x0068  */
        /* JADX WARN: Code duplicated, block: B:31:0x006e  */
        /* JADX WARN: Code duplicated, block: B:38:0x0080  */
        /* JADX WARN: Code duplicated, block: B:39:0x0088 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:40:0x008a  */
        /* JADX WARN: Code duplicated, block: B:41:0x0091 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:42:0x0093  */
        /* JADX WARN: Code duplicated, block: B:7:0x0017  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @TargetApi(17)
        public void resolveLayoutDirection(int i) {
            boolean z;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6 = ((ViewGroup.MarginLayoutParams) this).leftMargin;
            int i7 = ((ViewGroup.MarginLayoutParams) this).rightMargin;
            boolean z2 = false;
            if (Build.VERSION.SDK_INT >= 17) {
                super.resolveLayoutDirection(i);
                if (1 == getLayoutDirection()) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            this.k0 = -1;
            this.l0 = -1;
            this.i0 = -1;
            this.j0 = -1;
            this.m0 = -1;
            this.n0 = -1;
            this.m0 = this.v;
            this.n0 = this.x;
            float f2 = this.D;
            this.o0 = f2;
            int i8 = this.f834a;
            this.p0 = i8;
            int i9 = this.b;
            this.q0 = i9;
            float f3 = this.c;
            this.r0 = f3;
            if (z) {
                int i10 = this.r;
                if (i10 != -1) {
                    this.k0 = i10;
                } else {
                    int i11 = this.s;
                    if (i11 != -1) {
                        this.l0 = i11;
                    } else {
                        i2 = this.t;
                        if (i2 != -1) {
                            this.j0 = i2;
                            z2 = true;
                        }
                        i3 = this.u;
                        if (i3 != -1) {
                            this.i0 = i3;
                            z2 = true;
                        }
                        i4 = this.z;
                        if (i4 != Integer.MIN_VALUE) {
                            this.n0 = i4;
                        }
                        i5 = this.A;
                        if (i5 != Integer.MIN_VALUE) {
                            this.m0 = i5;
                        }
                        if (z2) {
                            this.o0 = 1.0f - f2;
                        }
                        if (this.e0 && this.W == 1) {
                            if (f3 != -1.0f) {
                                this.r0 = 1.0f - f3;
                                this.p0 = -1;
                                this.q0 = -1;
                            } else if (i8 != -1) {
                                this.q0 = i8;
                                this.p0 = -1;
                                this.r0 = -1.0f;
                            } else if (i9 != -1) {
                                this.p0 = i9;
                                this.q0 = -1;
                                this.r0 = -1.0f;
                            }
                        }
                    }
                }
                z2 = true;
                i2 = this.t;
                if (i2 != -1) {
                    this.j0 = i2;
                    z2 = true;
                }
                i3 = this.u;
                if (i3 != -1) {
                    this.i0 = i3;
                    z2 = true;
                }
                i4 = this.z;
                if (i4 != Integer.MIN_VALUE) {
                    this.n0 = i4;
                }
                i5 = this.A;
                if (i5 != Integer.MIN_VALUE) {
                    this.m0 = i5;
                }
                if (z2) {
                    this.o0 = 1.0f - f2;
                }
                if (this.e0) {
                    if (f3 != -1.0f) {
                        this.r0 = 1.0f - f3;
                        this.p0 = -1;
                        this.q0 = -1;
                    } else if (i8 != -1) {
                        this.q0 = i8;
                        this.p0 = -1;
                        this.r0 = -1.0f;
                    } else if (i9 != -1) {
                        this.p0 = i9;
                        this.q0 = -1;
                        this.r0 = -1.0f;
                    }
                }
            } else {
                int i12 = this.r;
                if (i12 != -1) {
                    this.j0 = i12;
                }
                int i13 = this.s;
                if (i13 != -1) {
                    this.i0 = i13;
                }
                int i14 = this.t;
                if (i14 != -1) {
                    this.k0 = i14;
                }
                int i15 = this.u;
                if (i15 != -1) {
                    this.l0 = i15;
                }
                int i16 = this.z;
                if (i16 != Integer.MIN_VALUE) {
                    this.m0 = i16;
                }
                int i17 = this.A;
                if (i17 != Integer.MIN_VALUE) {
                    this.n0 = i17;
                }
            }
            if (this.t == -1 && this.u == -1 && this.s == -1 && this.r == -1) {
                int i18 = this.f837f;
                if (i18 != -1) {
                    this.k0 = i18;
                    if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i7 > 0) {
                        ((ViewGroup.MarginLayoutParams) this).rightMargin = i7;
                    }
                } else {
                    int i19 = this.f838g;
                    if (i19 != -1) {
                        this.l0 = i19;
                        if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i7 > 0) {
                            ((ViewGroup.MarginLayoutParams) this).rightMargin = i7;
                        }
                    }
                }
                int i20 = this.f835d;
                if (i20 != -1) {
                    this.i0 = i20;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i6 <= 0) {
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) this).leftMargin = i6;
                    return;
                }
                int i21 = this.f836e;
                if (i21 != -1) {
                    this.j0 = i21;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i6 <= 0) {
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) this).leftMargin = i6;
                }
            }
        }

        public b(int i, int i2) {
            super(i, i2);
            this.f834a = -1;
            this.b = -1;
            this.c = -1.0f;
            this.f835d = -1;
            this.f836e = -1;
            this.f837f = -1;
            this.f838g = -1;
            this.f839h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = 0;
            this.q = BitmapDescriptorFactory.HUE_RED;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = Integer.MIN_VALUE;
            this.w = Integer.MIN_VALUE;
            this.x = Integer.MIN_VALUE;
            this.y = Integer.MIN_VALUE;
            this.z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = 0;
            this.D = 0.5f;
            this.E = 0.5f;
            this.F = null;
            this.I = -1.0f;
            this.J = -1.0f;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 0;
            this.S = 1.0f;
            this.T = 1.0f;
            this.U = -1;
            this.V = -1;
            this.W = -1;
            this.X = false;
            this.Y = false;
            this.Z = null;
            this.a0 = 0;
            this.b0 = true;
            this.c0 = true;
            this.d0 = false;
            this.e0 = false;
            this.f0 = false;
            this.g0 = false;
            this.h0 = false;
            this.i0 = -1;
            this.j0 = -1;
            this.k0 = -1;
            this.l0 = -1;
            this.m0 = Integer.MIN_VALUE;
            this.n0 = Integer.MIN_VALUE;
            this.o0 = 0.5f;
            this.s0 = new ConstraintWidget();
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f834a = -1;
            this.b = -1;
            this.c = -1.0f;
            this.f835d = -1;
            this.f836e = -1;
            this.f837f = -1;
            this.f838g = -1;
            this.f839h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = 0;
            this.q = BitmapDescriptorFactory.HUE_RED;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = Integer.MIN_VALUE;
            this.w = Integer.MIN_VALUE;
            this.x = Integer.MIN_VALUE;
            this.y = Integer.MIN_VALUE;
            this.z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = 0;
            this.D = 0.5f;
            this.E = 0.5f;
            this.F = null;
            this.I = -1.0f;
            this.J = -1.0f;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 0;
            this.S = 1.0f;
            this.T = 1.0f;
            this.U = -1;
            this.V = -1;
            this.W = -1;
            this.X = false;
            this.Y = false;
            this.Z = null;
            this.a0 = 0;
            this.b0 = true;
            this.c0 = true;
            this.d0 = false;
            this.e0 = false;
            this.f0 = false;
            this.g0 = false;
            this.h0 = false;
            this.i0 = -1;
            this.j0 = -1;
            this.k0 = -1;
            this.l0 = -1;
            this.m0 = Integer.MIN_VALUE;
            this.n0 = Integer.MIN_VALUE;
            this.o0 = 0.5f;
            this.s0 = new ConstraintWidget();
        }
    }
}
