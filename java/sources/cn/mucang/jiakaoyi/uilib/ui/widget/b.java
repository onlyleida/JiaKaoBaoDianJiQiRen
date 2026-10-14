package cn.mucang.jiakaoyi.uilib.ui.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public class b extends RecyclerView.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Drawable f10306a;
    private final int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f10307d;

    public b(int i, Drawable drawable, int i2, int i3) {
        this.f10307d = i;
        this.f10306a = drawable;
        this.b = i2;
        this.c = i3;
    }

    private void f(Canvas canvas, RecyclerView recyclerView, RecyclerView.z zVar) {
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount - 1; i++) {
            View childAt = recyclerView.getChildAt(i);
            int left = childAt.getLeft() + this.b;
            int bottom = childAt.getBottom();
            this.f10306a.setBounds(left, bottom, childAt.getRight() - this.c, this.f10306a.getIntrinsicHeight() + bottom);
            this.f10306a.draw(canvas);
        }
    }

    private void g(Canvas canvas, RecyclerView recyclerView, RecyclerView.z zVar) {
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount - 1; i++) {
            View childAt = recyclerView.getChildAt(i);
            int right = childAt.getRight();
            this.f10306a.setBounds(right, childAt.getTop() - this.b, this.f10306a.getIntrinsicWidth() + right, childAt.getBottom() + this.c);
            this.f10306a.draw(canvas);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.z zVar) {
        super.getItemOffsets(rect, view, recyclerView, zVar);
        int i = this.f10307d;
        if (i == 0) {
            rect.set(0, 0, this.f10306a.getIntrinsicWidth(), 0);
        } else if (i == 1) {
            rect.set(0, 0, 0, this.f10306a.getIntrinsicHeight());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.z zVar) {
        super.onDraw(canvas, recyclerView, zVar);
        int i = this.f10307d;
        if (i == 0) {
            g(canvas, recyclerView, zVar);
        } else if (i == 1) {
            f(canvas, recyclerView, zVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.z zVar) {
        super.onDrawOver(canvas, recyclerView, zVar);
    }

    public b(int i, Drawable drawable) {
        this(i, drawable, 0, 0);
    }
}
