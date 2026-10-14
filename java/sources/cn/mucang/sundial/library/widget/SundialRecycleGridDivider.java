package cn.mucang.sundial.library.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public class SundialRecycleGridDivider extends RecyclerView.n {
    private int color;
    private Paint mPaint;
    private int space;

    public SundialRecycleGridDivider() {
        this(1);
    }

    private int getSpanCount(RecyclerView recyclerView) {
        return ((GridLayoutManager) recyclerView.getLayoutManager()).k();
    }

    private void initPaint() {
        Paint paint = new Paint(1);
        this.mPaint = paint;
        paint.setColor(this.color);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setStrokeWidth(this.space);
    }

    public void drawHorizontalDivider(Canvas canvas, RecyclerView recyclerView) {
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            RecyclerView.p pVar = (RecyclerView.p) childAt.getLayoutParams();
            int left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) pVar).leftMargin;
            int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) pVar).rightMargin + this.space;
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) pVar).bottomMargin;
            float f2 = left;
            float f3 = right;
            canvas.drawRect(f2, bottom, f3, this.space + bottom, this.mPaint);
            if (i < getSpanCount(recyclerView)) {
                int top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) pVar).topMargin;
                int i2 = this.space;
                int i3 = top - i2;
                canvas.drawRect(f2, i3, f3, i2 + i3, this.mPaint);
            }
        }
    }

    public void drawVerticalDivider(Canvas canvas, RecyclerView recyclerView) {
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            RecyclerView.p pVar = (RecyclerView.p) childAt.getLayoutParams();
            int top = (childAt.getTop() - ((ViewGroup.MarginLayoutParams) pVar).topMargin) - this.space;
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) pVar).bottomMargin;
            int left = childAt.getLeft() + ((ViewGroup.MarginLayoutParams) pVar).leftMargin;
            int i2 = this.space;
            int i3 = left - i2;
            float f2 = top;
            canvas.drawRect(i3, f2, i2 + i3, bottom, this.mPaint);
            int spanCount = getSpanCount(recyclerView);
            if (i % spanCount == spanCount - 1 || i == childCount - 1) {
                int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) pVar).rightMargin;
                int i4 = this.space;
                canvas.drawRect(right, f2, right + i4, bottom + i4, this.mPaint);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.z zVar) {
        int spanCount = getSpanCount(recyclerView);
        int i = this.space / 2;
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view) % spanCount;
        if (childAdapterPosition == 0) {
            int i2 = this.space;
            rect.set(i2, i2, i, 0);
        } else if (childAdapterPosition != spanCount - 1) {
            rect.set(i, this.space, i, 0);
        } else {
            int i3 = this.space;
            rect.set(i, i3, i3, 0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.z zVar) {
        super.onDraw(canvas, recyclerView, zVar);
        drawHorizontalDivider(canvas, recyclerView);
        drawVerticalDivider(canvas, recyclerView);
    }

    public SundialRecycleGridDivider(int i) {
        this(i, 0);
    }

    public SundialRecycleGridDivider(int i, int i2) {
        this.space = i;
        this.color = i2;
        initPaint();
    }
}
