package cn.mucang.sundial.library.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.utils.t;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.y.c;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 .2\u00020\u0001:\u0001.B\u001f\u0012\u0006\u0010'\u001a\u00020&\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010#\u001a\u00020\u0002¢\u0006\u0004\b,\u0010-J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u000fJ\u001f\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0010\u0010\rJ\u001f\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0015\u0010\u0014J'\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ/\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001f\u001a\u0004\b \u0010!R\u0016\u0010\"\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010\u001fR\u0016\u0010#\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010\u001fR\u0016\u0010$\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010'\u001a\u00020&8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006/"}, d2 = {"Lcn/mucang/sundial/library/widget/GridDividerItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$n;", "", Constant.PROTOCOL_WEBVIEW_ORIENTATION, "Lkotlin/v;", "setOrientation", "(I)V", "Landroid/view/View;", "view", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "", "isFirstRow", "(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z", "itemPosition", "(ILandroidx/recyclerview/widget/RecyclerView;)Z", "isFirstColumn", "Landroid/graphics/Canvas;", "canvas", "drawVertical", "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V", "drawHorizontal", "c", "Landroidx/recyclerview/widget/RecyclerView$z;", "state", "onDraw", "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V", "Landroid/graphics/Rect;", "outRect", "getItemOffsets", "(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V", "I", "getOrientation", "()I", "mOrientation", "spanCount", "mBounds", "Landroid/graphics/Rect;", "Landroid/content/Context;", "context", "Landroid/content/Context;", "Landroid/graphics/drawable/Drawable;", "mDivider", "Landroid/graphics/drawable/Drawable;", "<init>", "(Landroid/content/Context;II)V", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public final class GridDividerItemDecoration extends RecyclerView.n {
    public static final String TAG = "MyDividerItemDecoration";
    private final Context context;
    private final Rect mBounds;
    private Drawable mDivider;
    private int mOrientation;
    private final int orientation;
    private final int spanCount;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int[] ATTRS = {R.attr.listDivider};

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcn/mucang/sundial/library/widget/GridDividerItemDecoration$Companion;", "", "", "ATTRS", "[I", "getATTRS", "()[I", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class Companion {
        private Companion() {
        }

        public final int[] getATTRS() {
            return GridDividerItemDecoration.ATTRS;
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }
    }

    public GridDividerItemDecoration(Context context, int i, int i2) {
        r.e(context, "context");
        this.context = context;
        this.orientation = i;
        this.spanCount = i2;
        this.mBounds = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(ATTRS);
        r.d(typedArrayObtainStyledAttributes, "context.obtainStyledAttributes(ATTRS)");
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        this.mDivider = drawable;
        if (drawable == null) {
            t.m(TAG, "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()");
        }
        typedArrayObtainStyledAttributes.recycle();
        setOrientation(i);
        Drawable drawable2 = this.mDivider;
        if (drawable2 != null) {
            drawable2.setColorFilter(Color.parseColor("#6E6E6E"), PorterDuff.Mode.SRC);
        }
    }

    private final void drawHorizontal(Canvas canvas, RecyclerView parent) {
        int height;
        int paddingTop;
        canvas.save();
        if (parent.getClipToPadding()) {
            paddingTop = parent.getPaddingTop();
            height = parent.getHeight() - parent.getPaddingBottom();
            canvas.clipRect(parent.getPaddingLeft(), paddingTop, parent.getWidth() - parent.getPaddingRight(), height);
        } else {
            height = parent.getHeight();
            paddingTop = 0;
        }
        int childCount = parent.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = parent.getChildAt(i);
            RecyclerView.o layoutManager = parent.getLayoutManager();
            r.c(layoutManager);
            layoutManager.getDecoratedBoundsWithMargins(child, this.mBounds);
            int i2 = this.mBounds.right;
            r.d(child, "child");
            int iB = i2 + c.b(child.getTranslationX());
            Drawable drawable = this.mDivider;
            int intrinsicWidth = iB - (drawable != null ? drawable.getIntrinsicWidth() : 0);
            if (isFirstColumn(i, parent)) {
                Drawable drawable2 = this.mDivider;
                if (drawable2 != null) {
                    int iB2 = c.b(child.getTranslationX()) + 0;
                    int iB3 = c.b(child.getTranslationX()) + 0;
                    Drawable drawable3 = this.mDivider;
                    drawable2.setBounds(iB2, paddingTop, iB3 + (drawable3 != null ? drawable3.getIntrinsicWidth() : 0), height);
                }
                Drawable drawable4 = this.mDivider;
                if (drawable4 != null) {
                    drawable4.draw(canvas);
                }
            }
            Drawable drawable5 = this.mDivider;
            if (drawable5 != null) {
                drawable5.setBounds(intrinsicWidth, paddingTop, iB, height);
            }
            Drawable drawable6 = this.mDivider;
            if (drawable6 != null) {
                drawable6.draw(canvas);
            }
        }
        canvas.restore();
    }

    private final void drawVertical(Canvas canvas, RecyclerView parent) {
        int width;
        int paddingLeft;
        canvas.save();
        if (parent.getClipToPadding()) {
            paddingLeft = parent.getPaddingLeft();
            width = parent.getWidth() - parent.getPaddingRight();
            canvas.clipRect(paddingLeft, parent.getPaddingTop(), width, parent.getHeight() - parent.getPaddingBottom());
        } else {
            width = parent.getWidth();
            paddingLeft = 0;
        }
        int childCount = parent.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = parent.getChildAt(i);
            parent.getDecoratedBoundsWithMargins(child, this.mBounds);
            int i2 = this.mBounds.bottom;
            r.d(child, "child");
            int iB = i2 + c.b(child.getTranslationY());
            Drawable drawable = this.mDivider;
            int intrinsicHeight = iB - (drawable != null ? drawable.getIntrinsicHeight() : 0);
            if (isFirstRow(i, parent)) {
                Drawable drawable2 = this.mDivider;
                if (drawable2 != null) {
                    int iB2 = c.b(child.getTranslationY()) + 0;
                    int iB3 = c.b(child.getTranslationY()) + 0;
                    Drawable drawable3 = this.mDivider;
                    drawable2.setBounds(paddingLeft, iB2, width, iB3 + (drawable3 != null ? drawable3.getIntrinsicHeight() : 0));
                }
                Drawable drawable4 = this.mDivider;
                if (drawable4 != null) {
                    drawable4.draw(canvas);
                }
            }
            Drawable drawable5 = this.mDivider;
            if (drawable5 != null) {
                drawable5.setBounds(paddingLeft, intrinsicHeight, width, iB);
            }
            Drawable drawable6 = this.mDivider;
            if (drawable6 != null) {
                drawable6.draw(canvas);
            }
        }
        canvas.restore();
    }

    private final boolean isFirstColumn(View view, RecyclerView parent) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof RecyclerView.p)) {
            layoutParams = null;
        }
        RecyclerView.p pVar = (RecyclerView.p) layoutParams;
        return isFirstColumn(pVar != null ? pVar.a() : -1, parent);
    }

    private final boolean isFirstRow(View view, RecyclerView parent) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof RecyclerView.p)) {
            layoutParams = null;
        }
        RecyclerView.p pVar = (RecyclerView.p) layoutParams;
        return isFirstRow(pVar != null ? pVar.a() : -1, parent);
    }

    private final void setOrientation(int orientation) {
        boolean z = true;
        if (orientation != 0 && orientation != 1) {
            z = false;
        }
        if (!z) {
            throw new IllegalArgumentException("Invalid orientation. It should be either HORIZONTAL or VERTICAL".toString());
        }
        this.mOrientation = orientation;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.z state) {
        r.e(outRect, "outRect");
        r.e(view, "view");
        r.e(parent, "parent");
        r.e(state, "state");
        if (this.mDivider == null) {
            outRect.set(0, 0, 0, 0);
            return;
        }
        if (this.orientation == 1) {
            if (!isFirstColumn(view, parent)) {
                Drawable drawable = this.mDivider;
                r.c(drawable);
                outRect.set(0, 0, drawable.getIntrinsicHeight(), 0);
                return;
            } else {
                Drawable drawable2 = this.mDivider;
                r.c(drawable2);
                int intrinsicHeight = drawable2.getIntrinsicHeight();
                Drawable drawable3 = this.mDivider;
                r.c(drawable3);
                outRect.set(intrinsicHeight, 0, drawable3.getIntrinsicHeight(), 0);
                return;
            }
        }
        if (!isFirstRow(view, parent)) {
            Drawable drawable4 = this.mDivider;
            r.c(drawable4);
            outRect.set(0, 0, 0, drawable4.getIntrinsicWidth());
        } else {
            Drawable drawable5 = this.mDivider;
            r.c(drawable5);
            int intrinsicWidth = drawable5.getIntrinsicWidth();
            Drawable drawable6 = this.mDivider;
            r.c(drawable6);
            outRect.set(0, intrinsicWidth, 0, drawable6.getIntrinsicWidth());
        }
    }

    public final int getOrientation() {
        return this.orientation;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void onDraw(Canvas c, RecyclerView parent, RecyclerView.z state) {
        r.e(c, "c");
        r.e(parent, "parent");
        r.e(state, "state");
        if (parent.getLayoutManager() == null || this.mDivider == null) {
            return;
        }
        if (this.orientation == 1) {
            drawVertical(c, parent);
        } else {
            drawHorizontal(c, parent);
        }
    }

    private final boolean isFirstColumn(int itemPosition, RecyclerView parent) {
        return (parent.getLayoutManager() instanceof GridLayoutManager) && itemPosition > -1 && itemPosition % this.spanCount == 0;
    }

    private final boolean isFirstRow(int itemPosition, RecyclerView parent) {
        return (parent.getLayoutManager() instanceof GridLayoutManager) && itemPosition > -1 && itemPosition < this.spanCount;
    }
}
