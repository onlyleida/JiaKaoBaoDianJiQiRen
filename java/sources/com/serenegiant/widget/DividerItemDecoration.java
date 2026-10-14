package com.serenegiant.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public class DividerItemDecoration extends RecyclerView.n {
    private static final int[] ATTRS = {R.attr.listDivider};
    public static final int HORIZONTAL_LIST = 0;
    public static final int VERTICAL_LIST = 1;
    private Drawable mDivider;
    private int mOrientation = 1;

    public DividerItemDecoration(Context context) {
        Drawable drawable;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(ATTRS);
        try {
            drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        } catch (Exception unused) {
            drawable = null;
        }
        typedArrayObtainStyledAttributes.recycle();
        init(drawable);
    }

    private void init(Drawable drawable) {
        this.mDivider = drawable;
    }

    protected void drawHorizontal(Canvas canvas, RecyclerView recyclerView) {
        recyclerView.getLayoutManager();
        int paddingTop = recyclerView.getPaddingTop();
        int height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
        int childCount = recyclerView.getChildCount() - 1;
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            if (hasDivider(childAt)) {
                int left = childAt.getLeft();
                this.mDivider.setBounds(left, paddingTop, this.mDivider.getIntrinsicWidth() + left, height);
                this.mDivider.draw(canvas);
            }
        }
    }

    protected void drawVertical(Canvas canvas, RecyclerView recyclerView) {
        recyclerView.getLayoutManager();
        int paddingLeft = recyclerView.getPaddingLeft();
        int width = recyclerView.getWidth() - recyclerView.getPaddingRight();
        int childCount = recyclerView.getChildCount() - 1;
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            if (hasDivider(childAt)) {
                int bottom = childAt.getBottom();
                this.mDivider.setBounds(paddingLeft, bottom, width, this.mDivider.getIntrinsicHeight() + bottom);
                this.mDivider.draw(canvas);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.z zVar) {
        recyclerView.getChildAdapterPosition(view);
        if (this.mDivider == null) {
            rect.set(0, 0, 0, 0);
            return;
        }
        if (!hasDivider(view)) {
            rect.set(0, 0, 0, 0);
        } else if (this.mOrientation == 1) {
            rect.set(0, 0, 0, this.mDivider.getIntrinsicHeight());
        } else {
            rect.set(0, 0, this.mDivider.getIntrinsicWidth(), 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected boolean hasDivider(View view) {
        if (view instanceof Dividable) {
            return ((Dividable) view).hasDivider();
        }
        Boolean bool = (Boolean) view.getTag(com.serenegiant.common.R.id.has_divider);
        return bool != null && bool.booleanValue();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.z zVar) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawVertical(canvas, recyclerView);
        } else {
            drawHorizontal(canvas, recyclerView);
        }
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation");
        }
        this.mOrientation = i;
    }

    public DividerItemDecoration(Context context, int i) {
        init(context.getResources().getDrawable(i));
    }

    public DividerItemDecoration(Context context, Drawable drawable) {
        init(drawable);
    }
}
