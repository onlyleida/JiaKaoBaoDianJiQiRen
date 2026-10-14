package cn.mucang.android.ui.framework.widget.loop;

import android.content.Context;
import android.util.AttributeSet;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.widget.CommonViewPager;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class LoopViewPager extends CommonViewPager {
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<ViewPager.OnPageChangeListener> f8996d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f8997e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8998f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ViewPager.OnPageChangeListener f8999g;

    class a implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private float f9000a = -1.0f;
        private float b = -1.0f;

        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            if (LoopViewPager.this.f8997e != null) {
                int currentItem = LoopViewPager.super.getCurrentItem();
                int iH = LoopViewPager.this.f8997e.h(currentItem);
                if (i == 0 && (currentItem == 0 || currentItem == LoopViewPager.this.f8997e.getCount() - 1)) {
                    LoopViewPager.this.setCurrentItem(iH, false);
                }
            }
            if (!g.b(LoopViewPager.this.f8996d)) {
                Iterator it = LoopViewPager.this.f8996d.iterator();
                while (it.hasNext()) {
                    ((ViewPager.OnPageChangeListener) it.next()).onPageScrollStateChanged(i);
                }
            }
            if (i == 1) {
                LoopViewPager.this.c = true;
            } else {
                LoopViewPager.this.c = false;
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f2, int i2) {
            if (LoopViewPager.this.f8997e == null || LoopViewPager.this.f8997e.getCount() > 1) {
                if (LoopViewPager.this.f8997e != null) {
                    int iH = LoopViewPager.this.f8997e.h(i);
                    if (f2 == BitmapDescriptorFactory.HUE_RED && this.f9000a == BitmapDescriptorFactory.HUE_RED && (i == 0 || i == LoopViewPager.this.f8997e.getCount() - 1)) {
                        LoopViewPager.this.setCurrentItem(iH, false);
                    }
                    i = iH;
                }
                this.f9000a = f2;
                if (!g.b(LoopViewPager.this.f8996d)) {
                    if (LoopViewPager.this.f8997e != null && i != LoopViewPager.this.f8997e.c() - 1) {
                        Iterator it = LoopViewPager.this.f8996d.iterator();
                        while (it.hasNext()) {
                            ((ViewPager.OnPageChangeListener) it.next()).onPageScrolled(i, f2, i2);
                        }
                    } else if (f2 > 0.5d) {
                        Iterator it2 = LoopViewPager.this.f8996d.iterator();
                        while (it2.hasNext()) {
                            ((ViewPager.OnPageChangeListener) it2.next()).onPageScrolled(0, BitmapDescriptorFactory.HUE_RED, 0);
                        }
                    } else {
                        Iterator it3 = LoopViewPager.this.f8996d.iterator();
                        while (it3.hasNext()) {
                            ((ViewPager.OnPageChangeListener) it3.next()).onPageScrolled(i, BitmapDescriptorFactory.HUE_RED, 0);
                        }
                    }
                }
                if (f2 == BitmapDescriptorFactory.HUE_RED && i2 == 0) {
                    return;
                }
                LoopViewPager.this.c = true;
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            if (LoopViewPager.this.f8997e == null) {
                return;
            }
            int iH = LoopViewPager.this.f8997e.h(i);
            float f2 = iH;
            if (this.b != f2) {
                this.b = f2;
                if (g.b(LoopViewPager.this.f8996d)) {
                    return;
                }
                Iterator it = LoopViewPager.this.f8996d.iterator();
                while (it.hasNext()) {
                    ((ViewPager.OnPageChangeListener) it.next()).onPageSelected(iH);
                }
            }
        }
    }

    public LoopViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8996d = new HashSet();
        this.f8998f = false;
        this.f8999g = new a();
        e();
    }

    private void e() {
        super.addOnPageChangeListener(this.f8999g);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void addOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        synchronized (this.f8996d) {
            this.f8996d.add(onPageChangeListener);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager
    public PagerAdapter getAdapter() {
        b bVar = this.f8997e;
        return bVar != null ? bVar.b() : bVar;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public int getCurrentItem() {
        b bVar = this.f8997e;
        if (bVar == null || bVar.getCount() <= 0) {
            return 0;
        }
        return this.f8997e.h(super.getCurrentItem());
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setAdapter(PagerAdapter pagerAdapter) {
        b bVar = new b(pagerAdapter);
        this.f8997e = bVar;
        bVar.f(this.f8998f);
        super.setAdapter(this.f8997e);
        if (pagerAdapter != null && pagerAdapter.getCount() > 0) {
            setCurrentItem(0, false);
            if (pagerAdapter.getCount() == 1) {
                super.setOnPageChangeListener(null);
            }
        }
    }

    public void setBoundaryCaching(boolean z) {
        this.f8998f = z;
        b bVar = this.f8997e;
        if (bVar != null) {
            bVar.f(z);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int i, boolean z) {
        b bVar = this.f8997e;
        if (bVar == null) {
            return;
        }
        super.setCurrentItem(bVar.g(i), z);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        synchronized (this.f8996d) {
            this.f8996d.add(onPageChangeListener);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int i) {
        if (getCurrentItem() != i) {
            setCurrentItem(i, true);
        }
    }
}
