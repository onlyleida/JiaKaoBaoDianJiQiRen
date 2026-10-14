package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
public class l extends s {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private n f1786d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private n f1787e;

    private float m(RecyclerView.o oVar, n nVar) {
        int childCount = oVar.getChildCount();
        if (childCount == 0) {
            return 1.0f;
        }
        View view = null;
        View view2 = null;
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = oVar.getChildAt(i3);
            int position = oVar.getPosition(childAt);
            if (position != -1) {
                if (position < i) {
                    view = childAt;
                    i = position;
                }
                if (position > i2) {
                    view2 = childAt;
                    i2 = position;
                }
            }
        }
        if (view == null || view2 == null) {
            return 1.0f;
        }
        int iMax = Math.max(nVar.d(view), nVar.d(view2)) - Math.min(nVar.g(view), nVar.g(view2));
        if (iMax == 0) {
            return 1.0f;
        }
        return (iMax * 1.0f) / ((i2 - i) + 1);
    }

    private int n(View view, n nVar) {
        return (nVar.g(view) + (nVar.e(view) / 2)) - (nVar.m() + (nVar.n() / 2));
    }

    private int o(RecyclerView.o oVar, n nVar, int i, int i2) {
        int[] iArrD = d(i, i2);
        float fM = m(oVar, nVar);
        if (fM <= BitmapDescriptorFactory.HUE_RED) {
            return 0;
        }
        return Math.round((Math.abs(iArrD[0]) > Math.abs(iArrD[1]) ? iArrD[0] : iArrD[1]) / fM);
    }

    private View p(RecyclerView.o oVar, n nVar) {
        int childCount = oVar.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int iM = nVar.m() + (nVar.n() / 2);
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = oVar.getChildAt(i2);
            int iAbs = Math.abs((nVar.g(childAt) + (nVar.e(childAt) / 2)) - iM);
            if (iAbs < i) {
                view = childAt;
                i = iAbs;
            }
        }
        return view;
    }

    private n q(RecyclerView.o oVar) {
        n nVar = this.f1787e;
        if (nVar == null || nVar.f1789a != oVar) {
            this.f1787e = n.a(oVar);
        }
        return this.f1787e;
    }

    private n r(RecyclerView.o oVar) {
        n nVar = this.f1786d;
        if (nVar == null || nVar.f1789a != oVar) {
            this.f1786d = n.c(oVar);
        }
        return this.f1786d;
    }

    @Override // androidx.recyclerview.widget.s
    public int[] c(RecyclerView.o oVar, View view) {
        int[] iArr = new int[2];
        if (oVar.canScrollHorizontally()) {
            iArr[0] = n(view, q(oVar));
        } else {
            iArr[0] = 0;
        }
        if (oVar.canScrollVertically()) {
            iArr[1] = n(view, r(oVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.s
    public View h(RecyclerView.o oVar) {
        if (oVar.canScrollVertically()) {
            return p(oVar, r(oVar));
        }
        if (oVar.canScrollHorizontally()) {
            return p(oVar, q(oVar));
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.s
    public int i(RecyclerView.o oVar, int i, int i2) {
        int itemCount;
        View viewH;
        int position;
        int i3;
        PointF pointFComputeScrollVectorForPosition;
        int iO;
        int iO2;
        if (!(oVar instanceof RecyclerView.y.b) || (itemCount = oVar.getItemCount()) == 0 || (viewH = h(oVar)) == null || (position = oVar.getPosition(viewH)) == -1 || (pointFComputeScrollVectorForPosition = ((RecyclerView.y.b) oVar).computeScrollVectorForPosition((i3 = itemCount - 1))) == null) {
            return -1;
        }
        if (oVar.canScrollHorizontally()) {
            iO = o(oVar, q(oVar), i, 0);
            if (pointFComputeScrollVectorForPosition.x < BitmapDescriptorFactory.HUE_RED) {
                iO = -iO;
            }
        } else {
            iO = 0;
        }
        if (oVar.canScrollVertically()) {
            iO2 = o(oVar, r(oVar), 0, i2);
            if (pointFComputeScrollVectorForPosition.y < BitmapDescriptorFactory.HUE_RED) {
                iO2 = -iO2;
            }
        } else {
            iO2 = 0;
        }
        if (oVar.canScrollVertically()) {
            iO = iO2;
        }
        if (iO == 0) {
            return -1;
        }
        int i4 = position + iO;
        int i5 = i4 >= 0 ? i4 : 0;
        return i5 >= itemCount ? i3 : i5;
    }
}
