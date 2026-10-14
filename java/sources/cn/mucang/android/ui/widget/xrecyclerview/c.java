package cn.mucang.android.ui.widget.xrecyclerview;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public class c extends RecyclerView {
    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollExtent() {
        if (getLayoutManager() == null) {
            return 0;
        }
        return super.computeHorizontalScrollExtent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollOffset() {
        if (getLayoutManager() == null) {
            return 0;
        }
        return super.computeHorizontalScrollOffset();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollRange() {
        if (getLayoutManager() == null) {
            return 0;
        }
        return super.computeHorizontalScrollRange();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollExtent() {
        if (getLayoutManager() == null) {
            return 0;
        }
        return super.computeVerticalScrollExtent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollOffset() {
        if (getLayoutManager() == null) {
            return 0;
        }
        return super.computeVerticalScrollOffset();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollRange() {
        if (getLayoutManager() == null) {
            return 0;
        }
        return super.computeVerticalScrollRange();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        } catch (Exception unused) {
        }
    }

    public c(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
