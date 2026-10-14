package cn.mucang.android.ui.framework.widget.loop;

import android.os.Handler;
import android.os.Message;
import androidx.viewpager.widget.ViewPager;
import cn.mucang.android.core.widget.CommonViewPager;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f9001a;
    private b b;
    private CommonViewPager c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LoopPagerContainer.Mode f9002d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9003e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ViewPager.OnPageChangeListener f9004f;

    /* JADX INFO: renamed from: cn.mucang.android.ui.framework.widget.loop.a$a, reason: collision with other inner class name */
    class C0153a implements ViewPager.OnPageChangeListener {
        C0153a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            a.this.g();
            if (i == 0) {
                a.this.f();
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f2, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
        }
    }

    private static class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference<a> f9006a;

        public b(a aVar) {
            this.f9006a = new WeakReference<>(aVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            a aVar = this.f9006a.get();
            if (aVar == null || !aVar.f9003e) {
                return;
            }
            aVar.e();
        }
    }

    public a(CommonViewPager commonViewPager, LoopPagerContainer.Mode mode) {
        this(commonViewPager, mode, 3000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        int currentItem = this.c.getCurrentItem();
        if (this.f9002d != LoopPagerContainer.Mode.LOOP && currentItem >= this.c.getAdapter().getCount() - 1) {
            this.c.setCurrentItem(0);
        } else {
            this.c.setCurrentItem(currentItem + 1);
        }
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void f() {
        if (this.f9003e) {
            return;
        }
        this.f9003e = true;
        this.b.sendMessageDelayed(this.b.obtainMessage(0), this.f9001a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void g() {
        this.f9003e = false;
        this.b.removeMessages(0);
    }

    public a(CommonViewPager commonViewPager, LoopPagerContainer.Mode mode, int i) {
        this.f9001a = 3000;
        this.f9003e = false;
        this.f9004f = new C0153a();
        this.c = commonViewPager;
        this.f9002d = mode;
        this.f9001a = i;
        this.b = new b(this);
        this.c.addOnPageChangeListener(this.f9004f);
    }
}
