package f.a.a.e.a.c.c;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.u;
import androidx.viewpager.widget.PagerAdapter;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.t;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b extends PagerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Context f14538a;
    protected final FragmentManager b;
    protected final List<a> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected u f14539d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected SparseArray<Fragment> f14540e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected SparseArray<Fragment.SavedState> f14541f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected SparseArray<Bundle> f14542g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected Fragment f14543h;
    protected boolean i;

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(ViewGroup viewGroup) {
        try {
            u uVar = this.f14539d;
            if (uVar != null) {
                uVar.j();
                this.f14539d = null;
                FragmentManager fragmentManager = this.b;
                if (fragmentManager != null) {
                    fragmentManager.f0();
                }
            }
        } catch (Exception e2) {
            t.e("WTF", "崩溃了? 什么鬼...", e2);
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.c.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        FragmentManager fragmentManager;
        if (parcelable == null || (fragmentManager = this.b) == null || g.b(fragmentManager.u0())) {
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        bundle.setClassLoader(classLoader);
        SparseArray<Fragment.SavedState> sparseParcelableArray = bundle.getSparseParcelableArray("states");
        this.f14541f.clear();
        this.f14540e.clear();
        if (sparseParcelableArray != null) {
            this.f14541f = sparseParcelableArray;
        }
        for (String str : bundle.keySet()) {
            if (str.startsWith("f")) {
                int i = Integer.parseInt(str.substring(1));
                Fragment fragmentQ0 = this.b.q0(bundle, str);
                if (fragmentQ0 != null) {
                    fragmentQ0.setMenuVisibility(false);
                    this.f14540e.put(i, fragmentQ0);
                }
            }
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        Bundle bundle;
        if (this.f14541f.size() > 0) {
            bundle = new Bundle();
            bundle.putSparseParcelableArray("state", this.f14541f);
        } else {
            bundle = null;
        }
        for (int i = 0; i < this.f14540e.size(); i++) {
            SparseArray<Fragment> sparseArray = this.f14540e;
            Fragment fragment = sparseArray.get(sparseArray.keyAt(i));
            if (fragment != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                try {
                    this.b.d1(bundle, "f" + this.f14540e.keyAt(i), fragment);
                } catch (Exception unused) {
                }
            }
        }
        return bundle;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f14543h;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                this.f14543h.setUserVisibleHint(false);
            }
            if (fragment != null) {
                fragment.setMenuVisibility(true);
                fragment.setUserVisibleHint(true);
            }
            this.f14543h = fragment;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(ViewGroup viewGroup) {
    }
}
