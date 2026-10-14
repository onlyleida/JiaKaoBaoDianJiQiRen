package cn.mucang.android.wuhan.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes4.dex */
public class PinnedHeaderListView extends ListView implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AbsListView.OnScrollListener f9085a;
    private c b;
    private View c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9086d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f9087e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9088f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9089g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f9090h;

    public static abstract class a implements AdapterView.OnItemClickListener {
    }

    public static abstract class b implements AdapterView.OnItemLongClickListener {
    }

    public interface c {
        boolean a(int i);

        View b(int i, View view, ViewGroup viewGroup);

        int c(int i);

        int d(int i);

        int getCount();
    }

    public PinnedHeaderListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9086d = 0;
        this.f9088f = true;
        this.f9089g = 0;
        super.setOnScrollListener(this);
    }

    private void a(View view) {
        int i;
        if (view.isLayoutRequested()) {
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), this.f9090h);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            view.measure(iMakeMeasureSpec, (layoutParams == null || (i = layoutParams.height) <= 0) ? View.MeasureSpec.makeMeasureSpec(0, 0) : View.MeasureSpec.makeMeasureSpec(i, 1073741824));
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    private View b(int i, View view) {
        boolean z = i != this.f9089g || view == null;
        View viewB = this.b.b(i, view, this);
        if (z) {
            a(viewB);
            this.f9089g = i;
        }
        return viewB;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.b == null || !this.f9088f || this.c == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(BitmapDescriptorFactory.HUE_RED, this.f9087e);
        canvas.clipRect(0, 0, getWidth(), this.c.getMeasuredHeight());
        this.c.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f9090h = View.MeasureSpec.getMode(i);
        View.MeasureSpec.getMode(i2);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        AbsListView.OnScrollListener onScrollListener = this.f9085a;
        if (onScrollListener != null) {
            onScrollListener.onScroll(absListView, i, i2, i3);
        }
        c cVar = this.b;
        if (cVar == null || cVar.getCount() == 0 || !this.f9088f || i < getHeaderViewsCount()) {
            this.c = null;
            this.f9087e = BitmapDescriptorFactory.HUE_RED;
            for (int i4 = i; i4 < i + i2; i4++) {
                View childAt = getChildAt(i4);
                if (childAt != null) {
                    childAt.setVisibility(0);
                }
            }
            return;
        }
        int headerViewsCount = i - getHeaderViewsCount();
        int iD = this.b.d(headerViewsCount);
        if (iD == -1) {
            return;
        }
        int iC = this.b.c(iD);
        View viewB = b(iD, this.f9086d == iC ? this.c : null);
        this.c = viewB;
        a(viewB);
        this.f9086d = iC;
        this.f9087e = BitmapDescriptorFactory.HUE_RED;
        for (int i5 = headerViewsCount; i5 < headerViewsCount + i2; i5++) {
            if (this.b.a(i5)) {
                View childAt2 = getChildAt(i5 - headerViewsCount);
                float top = childAt2.getTop();
                float measuredHeight = this.c.getMeasuredHeight();
                childAt2.setVisibility(0);
                if (measuredHeight >= top && top > BitmapDescriptorFactory.HUE_RED) {
                    this.f9087e = top - childAt2.getHeight();
                } else if (top <= BitmapDescriptorFactory.HUE_RED) {
                    childAt2.setVisibility(4);
                }
            }
        }
        invalidate();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        AbsListView.OnScrollListener onScrollListener = this.f9085a;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(absListView, i);
        }
    }

    public void setOnItemClickListener(a aVar) {
        super.setOnItemClickListener((AdapterView.OnItemClickListener) aVar);
    }

    public void setOnItemLongClickListener(b bVar) {
        super.setOnItemLongClickListener((AdapterView.OnItemLongClickListener) bVar);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.f9085a = onScrollListener;
    }

    public void setPinHeaders(boolean z) {
        this.f9088f = z;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        this.c = null;
        this.b = (c) listAdapter;
        super.setAdapter(listAdapter);
    }
}
