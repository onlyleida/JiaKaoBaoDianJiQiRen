package cn.mucang.android.ui.framework.widget.loop;

import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.p;
import androidx.fragment.app.s;
import androidx.viewpager.widget.PagerAdapter;

/* JADX INFO: loaded from: classes4.dex */
public class b extends PagerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private PagerAdapter f9007a;
    private SparseArray<a> b = new SparseArray<>();
    private boolean c;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object f9008a;

        public a(ViewGroup viewGroup, int i, Object obj) {
            this.f9008a = obj;
        }
    }

    b(PagerAdapter pagerAdapter) {
        this.f9007a = pagerAdapter;
    }

    private int d() {
        return 1;
    }

    private int e() {
        return (d() + c()) - 1;
    }

    public PagerAdapter b() {
        return this.f9007a;
    }

    public int c() {
        PagerAdapter pagerAdapter = this.f9007a;
        if (pagerAdapter == null) {
            return 0;
        }
        return pagerAdapter.getCount();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        int iD = d();
        int iE = e();
        PagerAdapter pagerAdapter = this.f9007a;
        int iH = ((pagerAdapter instanceof p) || (pagerAdapter instanceof s)) ? i : h(i);
        if (this.c && (i == iD || i == iE)) {
            this.b.put(i, new a(viewGroup, iH, obj));
        } else {
            this.f9007a.destroyItem(viewGroup, iH, obj);
        }
    }

    void f(boolean z) {
        this.c = z;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(ViewGroup viewGroup) {
        PagerAdapter pagerAdapter = this.f9007a;
        if (pagerAdapter == null) {
            return;
        }
        pagerAdapter.finishUpdate(viewGroup);
    }

    public int g(int i) {
        return i + 1;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        PagerAdapter pagerAdapter = this.f9007a;
        if (pagerAdapter == null) {
            return 0;
        }
        return pagerAdapter.getCount() == 1 ? this.f9007a.getCount() : this.f9007a.getCount() + 2;
    }

    int h(int i) {
        int iC = c();
        if (iC == 0) {
            return 0;
        }
        int i2 = (i - 1) % iC;
        return i2 < 0 ? i2 + iC : i2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        a aVar;
        PagerAdapter pagerAdapter = this.f9007a;
        int iH = ((pagerAdapter instanceof p) || (pagerAdapter instanceof s)) ? i : h(i);
        if (!this.c || (aVar = this.b.get(i)) == null) {
            return this.f9007a.instantiateItem(viewGroup, iH);
        }
        this.b.remove(i);
        return aVar.f9008a;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        PagerAdapter pagerAdapter = this.f9007a;
        if (pagerAdapter == null) {
            return false;
        }
        return pagerAdapter.isViewFromObject(view, obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void notifyDataSetChanged() {
        this.b = new SparseArray<>();
        super.notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        PagerAdapter pagerAdapter = this.f9007a;
        if (pagerAdapter == null) {
            return;
        }
        pagerAdapter.restoreState(parcelable, classLoader);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        PagerAdapter pagerAdapter = this.f9007a;
        if (pagerAdapter == null) {
            return null;
        }
        return pagerAdapter.saveState();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        PagerAdapter pagerAdapter = this.f9007a;
        if (pagerAdapter == null) {
            return;
        }
        pagerAdapter.setPrimaryItem(viewGroup, i, obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(ViewGroup viewGroup) {
        PagerAdapter pagerAdapter = this.f9007a;
        if (pagerAdapter == null) {
            return;
        }
        pagerAdapter.startUpdate(viewGroup);
    }
}
