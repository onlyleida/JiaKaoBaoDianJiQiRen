package net.lucode.hackware.magicindicator;

import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes6.dex */
public class c {

    static class a implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MagicIndicator f16147a;

        a(MagicIndicator magicIndicator) {
            this.f16147a = magicIndicator;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            this.f16147a.a(i);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f2, int i2) {
            this.f16147a.b(i, f2, i2);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            this.f16147a.c(i);
        }
    }

    public static void a(MagicIndicator magicIndicator, ViewPager viewPager) {
        viewPager.addOnPageChangeListener(new a(magicIndicator));
    }
}
