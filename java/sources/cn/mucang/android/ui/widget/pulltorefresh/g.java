package cn.mucang.android.ui.widget.pulltorefresh;

import android.annotation.TargetApi;
import android.util.Log;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
@TargetApi(9)
public final class g {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f9061a;

        static {
            int[] iArr = new int[PullToRefreshBase.Orientation.values().length];
            f9061a = iArr;
            try {
                iArr[PullToRefreshBase.Orientation.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9061a[PullToRefreshBase.Orientation.VERTICAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static boolean a(View view) {
        return view.getOverScrollMode() != 2;
    }

    public static void b(PullToRefreshBase<?> pullToRefreshBase, int i, int i2, int i3, int i4, int i5, int i6, float f2, boolean z) {
        int scrollX;
        int i7;
        int i8;
        if (a.f9061a[pullToRefreshBase.getPullToRefreshScrollDirection().ordinal()] != 1) {
            scrollX = pullToRefreshBase.getScrollY();
            i7 = i3;
            i8 = i4;
        } else {
            scrollX = pullToRefreshBase.getScrollX();
            i7 = i;
            i8 = i2;
        }
        if (!pullToRefreshBase.o() || pullToRefreshBase.s()) {
            return;
        }
        PullToRefreshBase.Mode mode = pullToRefreshBase.getMode();
        if (!mode.permitsPullToRefresh() || z || i7 == 0) {
            if (z && PullToRefreshBase.State.OVERSCROLLING == pullToRefreshBase.getState()) {
                pullToRefreshBase.D(PullToRefreshBase.State.RESET, new boolean[0]);
                return;
            }
            return;
        }
        int i9 = i7 + i8;
        Log.d("OverscrollHelper", "OverScroll. DeltaX: " + i + ", ScrollX: " + i2 + ", DeltaY: " + i3 + ", ScrollY: " + i4 + ", NewY: " + i9 + ", ScrollRange: " + i5 + ", CurrentScroll: " + scrollX);
        if (i9 < 0 - i6) {
            if (mode.showHeaderLoadingLayout()) {
                if (scrollX == 0) {
                    pullToRefreshBase.D(PullToRefreshBase.State.OVERSCROLLING, new boolean[0]);
                }
                pullToRefreshBase.setHeaderScroll((int) (f2 * (scrollX + i9)));
                return;
            }
            return;
        }
        if (i9 <= i5 + i6) {
            if (Math.abs(i9) <= i6 || Math.abs(i9 - i5) <= i6) {
                pullToRefreshBase.D(PullToRefreshBase.State.RESET, new boolean[0]);
                return;
            }
            return;
        }
        if (mode.showFooterLoadingLayout()) {
            if (scrollX == 0) {
                pullToRefreshBase.D(PullToRefreshBase.State.OVERSCROLLING, new boolean[0]);
            }
            pullToRefreshBase.setHeaderScroll((int) (f2 * ((scrollX + i9) - i5)));
        }
    }

    public static void c(PullToRefreshBase<?> pullToRefreshBase, int i, int i2, int i3, int i4, int i5, boolean z) {
        b(pullToRefreshBase, i, i2, i3, i4, i5, 0, 1.0f, z);
    }

    public static void d(PullToRefreshBase<?> pullToRefreshBase, int i, int i2, int i3, int i4, boolean z) {
        c(pullToRefreshBase, i, i2, i3, i4, 0, z);
    }
}
