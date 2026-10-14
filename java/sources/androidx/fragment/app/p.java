package androidx.fragment.app;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import androidx.viewpager.widget.PagerAdapter;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class p extends PagerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FragmentManager f1384a;
    private final int b;
    private u c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Fragment f1385d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1386e;

    public p(FragmentManager fragmentManager, int i) {
        this.f1384a = fragmentManager;
        this.b = i;
    }

    private static String c(int i, long j) {
        return "android:switcher:" + i + ":" + j;
    }

    public long b(int i) {
        return i;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.c == null) {
            this.c = this.f1384a.m();
        }
        this.c.m(fragment);
        if (fragment.equals(this.f1385d)) {
            this.f1385d = null;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(ViewGroup viewGroup) {
        u uVar = this.c;
        if (uVar != null) {
            if (!this.f1386e) {
                try {
                    this.f1386e = true;
                    uVar.l();
                    this.f1386e = false;
                } catch (Throwable th) {
                    this.f1386e = false;
                    throw th;
                }
            }
            this.c = null;
        }
    }

    public abstract Fragment getItem(int i);

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        if (this.c == null) {
            this.c = this.f1384a.m();
        }
        long jB = b(i);
        Fragment fragmentJ0 = this.f1384a.j0(c(viewGroup.getId(), jB));
        if (fragmentJ0 != null) {
            this.c.h(fragmentJ0);
        } else {
            fragmentJ0 = getItem(i);
            this.c.c(viewGroup.getId(), fragmentJ0, c(viewGroup.getId(), jB));
        }
        if (fragmentJ0 != this.f1385d) {
            fragmentJ0.setMenuVisibility(false);
            if (this.b == 1) {
                this.c.t(fragmentJ0, Lifecycle.State.STARTED);
            } else {
                fragmentJ0.setUserVisibleHint(false);
            }
        }
        return fragmentJ0;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        return null;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f1385d;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (this.b == 1) {
                    if (this.c == null) {
                        this.c = this.f1384a.m();
                    }
                    this.c.t(this.f1385d, Lifecycle.State.STARTED);
                } else {
                    this.f1385d.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (this.b == 1) {
                if (this.c == null) {
                    this.c = this.f1384a.m();
                }
                this.c.t(fragment, Lifecycle.State.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.f1385d = fragment;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }
}
