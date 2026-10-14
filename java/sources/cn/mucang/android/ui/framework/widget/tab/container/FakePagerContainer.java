package cn.mucang.android.ui.framework.widget.tab.container;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.PagerAdapter;
import cn.mucang.android.ui.framework.widget.tab.d;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class FakePagerContainer extends FrameLayout implements d<cn.mucang.android.ui.framework.widget.tab.e.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f.a.a.e.a.c.c.d.c.a f9027a;
    private final Set<cn.mucang.android.ui.framework.widget.tab.e.a> b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Fragment f9028d;

    public FakePagerContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new HashSet();
        this.c = 0;
    }

    private void b(int i) {
        Fragment fragment = this.f9028d;
        this.c = i;
        this.f9027a.startUpdate((ViewGroup) this);
        this.f9028d = this.f9027a.instantiateItem(this, i);
        if (fragment != null) {
            this.f9027a.destroyItem((ViewGroup) this, this.c, (Object) fragment);
        }
        this.f9027a.setPrimaryItem((ViewGroup) this, this.c, (Object) this.f9028d);
        this.f9027a.finishUpdate((ViewGroup) this);
    }

    public void a(cn.mucang.android.ui.framework.widget.tab.e.a aVar) {
        if (aVar == null) {
            return;
        }
        synchronized (this.b) {
            this.b.add(aVar);
        }
    }

    @Override // cn.mucang.android.ui.framework.widget.tab.d
    public int getCurrentItem() {
        return this.c;
    }

    @Override // cn.mucang.android.ui.framework.mvp.b
    public View getView() {
        return this;
    }

    public void setAdapter(PagerAdapter pagerAdapter) {
        this.f9027a = (f.a.a.e.a.c.c.d.c.a) pagerAdapter;
    }

    @Override // cn.mucang.android.ui.framework.widget.tab.d
    public void setCurrentItem(int i) {
        if (this.f9028d == null || this.c != i) {
            b(i);
            synchronized (this.b) {
                Iterator<cn.mucang.android.ui.framework.widget.tab.e.a> it = this.b.iterator();
                while (it.hasNext()) {
                    it.next().onPageSelected(i);
                }
            }
        }
    }

    @Override // cn.mucang.android.ui.framework.widget.tab.d
    public f.a.a.e.a.c.c.d.c.a getAdapter() {
        return this.f9027a;
    }
}
