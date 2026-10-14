package cn.mucang.android.ui.framework.widget.tab.container;

import android.view.View;
import androidx.viewpager.widget.PagerAdapter;
import cn.mucang.android.core.widget.CommonViewPager;
import cn.mucang.android.ui.framework.widget.tab.d;
import cn.mucang.android.ui.framework.widget.tab.e.b;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class a implements d<b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CommonViewPager f9029a;
    private final Set<b> b;

    public void a(b bVar) {
        if (bVar == null) {
            return;
        }
        synchronized (this.b) {
            this.b.add(bVar);
        }
    }

    @Override // cn.mucang.android.ui.framework.widget.tab.d
    public PagerAdapter getAdapter() {
        return this.f9029a.getAdapter();
    }

    @Override // cn.mucang.android.ui.framework.widget.tab.d
    public int getCurrentItem() {
        return this.f9029a.getCurrentItem();
    }

    @Override // cn.mucang.android.ui.framework.mvp.b
    public View getView() {
        return this.f9029a;
    }

    @Override // cn.mucang.android.ui.framework.widget.tab.d
    public void setCurrentItem(int i) {
        this.f9029a.setCurrentItem(i);
    }
}
