package cn.mucang.android.core.webview;

import android.R;
import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.o0;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f2689a;
    private int b;
    private FrameLayout.LayoutParams c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ViewTreeObserver.OnGlobalLayoutListener f2690d = new a();

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            b.this.c();
        }
    }

    public b(Activity activity) {
        View childAt = ((FrameLayout) activity.findViewById(R.id.content)).getChildAt(0);
        this.f2689a = childAt;
        childAt.getViewTreeObserver().addOnGlobalLayoutListener(this.f2690d);
        this.c = (FrameLayout.LayoutParams) this.f2689a.getLayoutParams();
    }

    private int b(int i) {
        Rect rect = new Rect();
        this.f2689a.getWindowVisibleDisplayFrame(rect);
        return (rect.bottom - rect.top) + o0.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        int iO;
        int iB;
        Activity activityI = MucangConfig.i();
        if (activityI == null || (iB = b((iO = o0.o(activityI.getWindowManager())))) == this.b) {
            return;
        }
        int height = this.f2689a.getRootView().getHeight() - iO;
        int i = height - iB;
        if (i > height / 4) {
            this.c.height = height - i;
        } else {
            this.c.height = -1;
        }
        this.f2689a.requestLayout();
        this.b = iB;
    }

    public void d() {
        View view = this.f2689a;
        if (view != null) {
            view.getViewTreeObserver().removeOnGlobalLayoutListener(this.f2690d);
        }
        this.f2690d = null;
    }
}
