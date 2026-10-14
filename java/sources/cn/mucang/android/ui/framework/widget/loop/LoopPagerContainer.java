package cn.mucang.android.ui.framework.widget.loop;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.viewpager.widget.PagerAdapter;
import cn.mucang.android.core.widget.CommonViewPager;
import cn.mucang.android.framework.core.R;
import cn.mucang.android.wuhan.widget.viewpagerindicator.CirclePageIndicator;

/* JADX INFO: loaded from: classes4.dex */
public class LoopPagerContainer extends RelativeLayout implements cn.mucang.android.ui.framework.mvp.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CommonViewPager f8994a;
    private CirclePageIndicator b;
    private a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Mode f8995d;

    public enum Mode {
        LOOP,
        BACK_LOOP
    }

    public LoopPagerContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8995d = null;
    }

    private void a() {
        this.c = new a(this.f8994a, this.f8995d);
    }

    private void b() {
        this.b = (CirclePageIndicator) findViewById(R.id.pager_indicator);
    }

    private void c() {
        if (this.f8995d != null) {
            return;
        }
        CommonViewPager commonViewPager = (CommonViewPager) findViewById(R.id.view_pager);
        this.f8994a = commonViewPager;
        if (commonViewPager instanceof LoopViewPager) {
            this.f8995d = Mode.LOOP;
        } else {
            this.f8995d = Mode.BACK_LOOP;
        }
    }

    public void d(PagerAdapter pagerAdapter, boolean z) {
        this.f8994a.setAdapter(pagerAdapter);
        if (!z) {
            this.b.setVisibility(8);
            return;
        }
        this.b.setSnap(true);
        this.b.c(this.f8994a, 0);
        this.b.setCurrentItem(0);
    }

    public a getLoopHelper() {
        return this.c;
    }

    public CirclePageIndicator getPageIndicator() {
        return this.b;
    }

    public CommonViewPager getPager() {
        return this.f8994a;
    }

    @Override // cn.mucang.android.ui.framework.mvp.b
    public View getView() {
        return this;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        c();
        b();
        a();
    }

    public void setAdapter(PagerAdapter pagerAdapter) {
        d(pagerAdapter, false);
    }

    public void setOffsetLimit(int i) {
        this.f8994a.setOffscreenPageLimit(i);
    }
}
