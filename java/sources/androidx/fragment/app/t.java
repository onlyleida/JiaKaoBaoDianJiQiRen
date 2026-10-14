package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.mobile.auth.BuildConfig;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<Fragment> f1392a = new ArrayList<>();
    private final HashMap<String, r> b = new HashMap<>();
    private n c;

    t() {
    }

    void a(Fragment fragment) {
        if (this.f1392a.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f1392a) {
            this.f1392a.add(fragment);
        }
        fragment.mAdded = true;
    }

    void b() {
        this.b.values().removeAll(Collections.singleton(null));
    }

    boolean c(String str) {
        return this.b.get(str) != null;
    }

    void d(int i) {
        for (r rVar : this.b.values()) {
            if (rVar != null) {
                rVar.u(i);
            }
        }
    }

    void e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.b.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (r rVar : this.b.values()) {
                printWriter.print(str);
                if (rVar != null) {
                    Fragment fragmentK = rVar.k();
                    printWriter.println(fragmentK);
                    fragmentK.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println(BuildConfig.COMMON_MODULE_COMMIT_ID);
                }
            }
        }
        int size = this.f1392a.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size; i++) {
                Fragment fragment = this.f1392a.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
    }

    Fragment f(String str) {
        r rVar = this.b.get(str);
        if (rVar != null) {
            return rVar.k();
        }
        return null;
    }

    Fragment g(int i) {
        for (int size = this.f1392a.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f1392a.get(size);
            if (fragment != null && fragment.mFragmentId == i) {
                return fragment;
            }
        }
        for (r rVar : this.b.values()) {
            if (rVar != null) {
                Fragment fragmentK = rVar.k();
                if (fragmentK.mFragmentId == i) {
                    return fragmentK;
                }
            }
        }
        return null;
    }

    Fragment h(String str) {
        if (str != null) {
            for (int size = this.f1392a.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f1392a.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (r rVar : this.b.values()) {
            if (rVar != null) {
                Fragment fragmentK = rVar.k();
                if (str.equals(fragmentK.mTag)) {
                    return fragmentK;
                }
            }
        }
        return null;
    }

    Fragment i(String str) {
        Fragment fragmentFindFragmentByWho;
        for (r rVar : this.b.values()) {
            if (rVar != null && (fragmentFindFragmentByWho = rVar.k().findFragmentByWho(str)) != null) {
                return fragmentFindFragmentByWho;
            }
        }
        return null;
    }

    int j(Fragment fragment) {
        View view;
        View view2;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup == null) {
            return -1;
        }
        int iIndexOf = this.f1392a.indexOf(fragment);
        for (int i = iIndexOf - 1; i >= 0; i--) {
            Fragment fragment2 = this.f1392a.get(i);
            if (fragment2.mContainer == viewGroup && (view2 = fragment2.mView) != null) {
                return viewGroup.indexOfChild(view2) + 1;
            }
        }
        while (true) {
            iIndexOf++;
            if (iIndexOf >= this.f1392a.size()) {
                return -1;
            }
            Fragment fragment3 = this.f1392a.get(iIndexOf);
            if (fragment3.mContainer == viewGroup && (view = fragment3.mView) != null) {
                return viewGroup.indexOfChild(view);
            }
        }
    }

    List<r> k() {
        ArrayList arrayList = new ArrayList();
        for (r rVar : this.b.values()) {
            if (rVar != null) {
                arrayList.add(rVar);
            }
        }
        return arrayList;
    }

    List<Fragment> l() {
        ArrayList arrayList = new ArrayList();
        for (r rVar : this.b.values()) {
            if (rVar != null) {
                arrayList.add(rVar.k());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    r m(String str) {
        return this.b.get(str);
    }

    List<Fragment> n() {
        ArrayList arrayList;
        if (this.f1392a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f1392a) {
            arrayList = new ArrayList(this.f1392a);
        }
        return arrayList;
    }

    n o() {
        return this.c;
    }

    void p(r rVar) {
        Fragment fragmentK = rVar.k();
        if (c(fragmentK.mWho)) {
            return;
        }
        this.b.put(fragmentK.mWho, rVar);
        if (fragmentK.mRetainInstanceChangedWhileDetached) {
            if (fragmentK.mRetainInstance) {
                this.c.a(fragmentK);
            } else {
                this.c.i(fragmentK);
            }
            fragmentK.mRetainInstanceChangedWhileDetached = false;
        }
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + fragmentK);
        }
    }

    void q(r rVar) {
        Fragment fragmentK = rVar.k();
        if (fragmentK.mRetainInstance) {
            this.c.i(fragmentK);
        }
        if (this.b.put(fragmentK.mWho, null) != null && FragmentManager.H0(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + fragmentK);
        }
    }

    void r() {
        Iterator<Fragment> it = this.f1392a.iterator();
        while (it.hasNext()) {
            r rVar = this.b.get(it.next().mWho);
            if (rVar != null) {
                rVar.m();
            }
        }
        for (r rVar2 : this.b.values()) {
            if (rVar2 != null) {
                rVar2.m();
                Fragment fragmentK = rVar2.k();
                if (fragmentK.mRemoving && !fragmentK.isInBackStack()) {
                    q(rVar2);
                }
            }
        }
    }

    void s(Fragment fragment) {
        synchronized (this.f1392a) {
            this.f1392a.remove(fragment);
        }
        fragment.mAdded = false;
    }

    void t() {
        this.b.clear();
    }

    void u(List<String> list) {
        this.f1392a.clear();
        if (list != null) {
            for (String str : list) {
                Fragment fragmentF = f(str);
                if (fragmentF == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (FragmentManager.H0(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + fragmentF);
                }
                a(fragmentF);
            }
        }
    }

    ArrayList<FragmentState> v() {
        ArrayList<FragmentState> arrayList = new ArrayList<>(this.b.size());
        for (r rVar : this.b.values()) {
            if (rVar != null) {
                Fragment fragmentK = rVar.k();
                FragmentState fragmentStateS = rVar.s();
                arrayList.add(fragmentStateS);
                if (FragmentManager.H0(2)) {
                    Log.v("FragmentManager", "Saved state of " + fragmentK + ": " + fragmentStateS.m);
                }
            }
        }
        return arrayList;
    }

    ArrayList<String> w() {
        synchronized (this.f1392a) {
            if (this.f1392a.isEmpty()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(this.f1392a.size());
            for (Fragment fragment : this.f1392a) {
                arrayList.add(fragment.mWho);
                if (FragmentManager.H0(2)) {
                    Log.v("FragmentManager", "saveAllState: adding fragment (" + fragment.mWho + "): " + fragment);
                }
            }
            return arrayList;
        }
    }

    void x(n nVar) {
        this.c = nVar;
    }
}
