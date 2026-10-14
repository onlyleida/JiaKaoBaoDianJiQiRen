package f.a.a.e.a.c.c.d.c;

import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import f.a.a.e.a.c.c.d.b;

/* JADX INFO: loaded from: classes4.dex */
public class a extends b {
    /* JADX WARN: Multi-variable type inference failed */
    private void d(boolean z, Fragment fragment) {
        if (fragment instanceof f.a.a.e.a.c.a) {
            ((f.a.a.e.a.c.a) fragment).I(z);
        }
        if (fragment instanceof f.a.a.e.a.c.c.c.a) {
            ((f.a.a.e.a.c.c.c.a) fragment).a(fragment, z);
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Fragment instantiateItem(ViewGroup viewGroup, int i) {
        Fragment fragmentC = this.f14540e.get(i);
        if (this.f14539d == null) {
            this.f14539d = this.b.m();
        }
        boolean z = false;
        if (fragmentC == null) {
            fragmentC = c(i);
            this.f14540e.put(i, fragmentC);
            z = true;
        }
        if (!this.i) {
            this.f14539d.r(viewGroup.getId(), fragmentC);
        } else if (z) {
            this.f14539d.b(viewGroup.getId(), fragmentC);
        } else {
            this.f14539d.v(fragmentC);
        }
        d(true, fragmentC);
        return fragmentC;
    }

    protected Fragment c(int i) {
        return Fragment.instantiate(this.f14538a, this.c.get(i).a().getName(), this.f14542g.get(i));
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        d(false, fragment);
        if (!this.i) {
            this.f14540e.remove(i);
            return;
        }
        if (this.f14539d == null) {
            this.f14539d = this.b.m();
        }
        this.f14539d.p(fragment);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void notifyDataSetChanged() {
        this.f14540e.clear();
    }
}
