package androidx.fragment.app;

import android.util.Log;
import androidx.lifecycle.Lifecycle;
import java.io.PrintWriter;
import java.util.ArrayList;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes.dex */
final class a extends u implements FragmentManager.n {
    final FragmentManager r;
    boolean s;
    int t;

    a(FragmentManager fragmentManager) {
        super(fragmentManager.s0(), fragmentManager.v0() != null ? fragmentManager.v0().f().getClassLoader() : null);
        this.t = -1;
        this.r = fragmentManager;
    }

    private static boolean G(u.a aVar) {
        Fragment fragment = aVar.b;
        return (fragment == null || !fragment.mAdded || fragment.mView == null || fragment.mDetached || fragment.mHidden || !fragment.isPostponed()) ? false : true;
    }

    void A() {
        int size = this.f1393a.size();
        for (int i = 0; i < size; i++) {
            u.a aVar = this.f1393a.get(i);
            Fragment fragment = aVar.b;
            if (fragment != null) {
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.f1396f);
                fragment.setSharedElementNames(this.n, this.o);
            }
            switch (aVar.f1399a) {
                case 1:
                    fragment.setAnimations(aVar.c, aVar.f1400d, aVar.f1401e, aVar.f1402f);
                    this.r.o1(fragment, false);
                    this.r.g(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f1399a);
                case 3:
                    fragment.setAnimations(aVar.c, aVar.f1400d, aVar.f1401e, aVar.f1402f);
                    this.r.f1(fragment);
                    break;
                case 4:
                    fragment.setAnimations(aVar.c, aVar.f1400d, aVar.f1401e, aVar.f1402f);
                    this.r.E0(fragment);
                    break;
                case 5:
                    fragment.setAnimations(aVar.c, aVar.f1400d, aVar.f1401e, aVar.f1402f);
                    this.r.o1(fragment, false);
                    this.r.s1(fragment);
                    break;
                case 6:
                    fragment.setAnimations(aVar.c, aVar.f1400d, aVar.f1401e, aVar.f1402f);
                    this.r.y(fragment);
                    break;
                case 7:
                    fragment.setAnimations(aVar.c, aVar.f1400d, aVar.f1401e, aVar.f1402f);
                    this.r.o1(fragment, false);
                    this.r.l(fragment);
                    break;
                case 8:
                    this.r.q1(fragment);
                    break;
                case 9:
                    this.r.q1(null);
                    break;
                case 10:
                    this.r.p1(fragment, aVar.f1404h);
                    break;
            }
            if (!this.p && aVar.f1399a != 1 && fragment != null && !FragmentManager.P) {
                this.r.R0(fragment);
            }
        }
        if (this.p || FragmentManager.P) {
            return;
        }
        FragmentManager fragmentManager = this.r;
        fragmentManager.S0(fragmentManager.q, true);
    }

    void B(boolean z) {
        for (int size = this.f1393a.size() - 1; size >= 0; size--) {
            u.a aVar = this.f1393a.get(size);
            Fragment fragment = aVar.b;
            if (fragment != null) {
                fragment.setPopDirection(true);
                fragment.setNextTransition(FragmentManager.k1(this.f1396f));
                fragment.setSharedElementNames(this.o, this.n);
            }
            switch (aVar.f1399a) {
                case 1:
                    fragment.setAnimations(aVar.c, aVar.f1400d, aVar.f1401e, aVar.f1402f);
                    this.r.o1(fragment, true);
                    this.r.f1(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f1399a);
                case 3:
                    fragment.setAnimations(aVar.c, aVar.f1400d, aVar.f1401e, aVar.f1402f);
                    this.r.g(fragment);
                    break;
                case 4:
                    fragment.setAnimations(aVar.c, aVar.f1400d, aVar.f1401e, aVar.f1402f);
                    this.r.s1(fragment);
                    break;
                case 5:
                    fragment.setAnimations(aVar.c, aVar.f1400d, aVar.f1401e, aVar.f1402f);
                    this.r.o1(fragment, true);
                    this.r.E0(fragment);
                    break;
                case 6:
                    fragment.setAnimations(aVar.c, aVar.f1400d, aVar.f1401e, aVar.f1402f);
                    this.r.l(fragment);
                    break;
                case 7:
                    fragment.setAnimations(aVar.c, aVar.f1400d, aVar.f1401e, aVar.f1402f);
                    this.r.o1(fragment, true);
                    this.r.y(fragment);
                    break;
                case 8:
                    this.r.q1(null);
                    break;
                case 9:
                    this.r.q1(fragment);
                    break;
                case 10:
                    this.r.p1(fragment, aVar.f1403g);
                    break;
            }
            if (!this.p && aVar.f1399a != 3 && fragment != null && !FragmentManager.P) {
                this.r.R0(fragment);
            }
        }
        if (this.p || !z || FragmentManager.P) {
            return;
        }
        FragmentManager fragmentManager = this.r;
        fragmentManager.S0(fragmentManager.q, true);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00b2  */
    Fragment C(ArrayList<Fragment> arrayList, Fragment fragment) {
        Fragment fragment2 = fragment;
        int i = 0;
        while (i < this.f1393a.size()) {
            u.a aVar = this.f1393a.get(i);
            int i2 = aVar.f1399a;
            if (i2 == 1) {
                arrayList.add(aVar.b);
            } else if (i2 == 2) {
                Fragment fragment3 = aVar.b;
                int i3 = fragment3.mContainerId;
                boolean z = false;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    Fragment fragment4 = arrayList.get(size);
                    if (fragment4.mContainerId == i3) {
                        if (fragment4 == fragment3) {
                            z = true;
                        } else {
                            if (fragment4 == fragment2) {
                                this.f1393a.add(i, new u.a(9, fragment4));
                                i++;
                                fragment2 = null;
                            }
                            u.a aVar2 = new u.a(3, fragment4);
                            aVar2.c = aVar.c;
                            aVar2.f1401e = aVar.f1401e;
                            aVar2.f1400d = aVar.f1400d;
                            aVar2.f1402f = aVar.f1402f;
                            this.f1393a.add(i, aVar2);
                            arrayList.remove(fragment4);
                            i++;
                        }
                    }
                }
                if (z) {
                    this.f1393a.remove(i);
                    i--;
                } else {
                    aVar.f1399a = 1;
                    arrayList.add(fragment3);
                }
            } else if (i2 == 3 || i2 == 6) {
                arrayList.remove(aVar.b);
                Fragment fragment5 = aVar.b;
                if (fragment5 == fragment2) {
                    this.f1393a.add(i, new u.a(9, fragment5));
                    i++;
                    fragment2 = null;
                }
            } else if (i2 == 7) {
                arrayList.add(aVar.b);
            } else if (i2 == 8) {
                this.f1393a.add(i, new u.a(9, fragment2));
                i++;
                fragment2 = aVar.b;
            }
            i++;
        }
        return fragment2;
    }

    public String D() {
        return this.i;
    }

    boolean E(int i) {
        int size = this.f1393a.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.f1393a.get(i2).b;
            int i3 = fragment != null ? fragment.mContainerId : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    boolean F(ArrayList<a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.f1393a.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            Fragment fragment = this.f1393a.get(i4).b;
            int i5 = fragment != null ? fragment.mContainerId : 0;
            if (i5 != 0 && i5 != i3) {
                for (int i6 = i; i6 < i2; i6++) {
                    a aVar = arrayList.get(i6);
                    int size2 = aVar.f1393a.size();
                    for (int i7 = 0; i7 < size2; i7++) {
                        Fragment fragment2 = aVar.f1393a.get(i7).b;
                        if ((fragment2 != null ? fragment2.mContainerId : 0) == i5) {
                            return true;
                        }
                    }
                }
                i3 = i5;
            }
        }
        return false;
    }

    boolean H() {
        for (int i = 0; i < this.f1393a.size(); i++) {
            if (G(this.f1393a.get(i))) {
                return true;
            }
        }
        return false;
    }

    public void I() {
        if (this.q != null) {
            for (int i = 0; i < this.q.size(); i++) {
                this.q.get(i).run();
            }
            this.q = null;
        }
    }

    void J(Fragment.k kVar) {
        for (int i = 0; i < this.f1393a.size(); i++) {
            u.a aVar = this.f1393a.get(i);
            if (G(aVar)) {
                aVar.b.setOnStartEnterTransitionListener(kVar);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    /* JADX WARN: Code duplicated, block: B:14:0x002d  */
    Fragment K(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.f1393a.size() - 1; size >= 0; size--) {
            u.a aVar = this.f1393a.get(size);
            int i = aVar.f1399a;
            if (i == 1) {
                arrayList.remove(aVar.b);
            } else if (i != 3) {
                switch (i) {
                    case 6:
                        arrayList.add(aVar.b);
                        break;
                    case 7:
                        arrayList.remove(aVar.b);
                        break;
                    case 8:
                        fragment = null;
                        break;
                    case 9:
                        fragment = aVar.b;
                        break;
                    case 10:
                        aVar.f1404h = aVar.f1403g;
                        break;
                }
            } else {
                arrayList.add(aVar.b);
            }
        }
        return fragment;
    }

    @Override // androidx.fragment.app.FragmentManager.n
    public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f1397g) {
            return true;
        }
        this.r.e(this);
        return true;
    }

    @Override // androidx.fragment.app.u
    public int i() {
        return x(false);
    }

    @Override // androidx.fragment.app.u
    public int j() {
        return x(true);
    }

    @Override // androidx.fragment.app.u
    public void k() {
        n();
        this.r.c0(this, false);
    }

    @Override // androidx.fragment.app.u
    public void l() {
        n();
        this.r.c0(this, true);
    }

    @Override // androidx.fragment.app.u
    public u m(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.r) {
            super.m(fragment);
            return this;
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.u
    void o(int i, Fragment fragment, String str, int i2) {
        super.o(i, fragment, str, i2);
        fragment.mFragmentManager = this.r;
    }

    @Override // androidx.fragment.app.u
    public u p(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.r) {
            super.p(fragment);
            return this;
        }
        throw new IllegalStateException("Cannot hide Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.u
    public u q(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.r) {
            super.q(fragment);
            return this;
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.u
    public u t(Fragment fragment, Lifecycle.State state) {
        if (fragment.mFragmentManager != this.r) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.r);
        }
        if (state == Lifecycle.State.INITIALIZED && fragment.mState > -1) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + " after the Fragment has been created");
        }
        if (state != Lifecycle.State.DESTROYED) {
            super.t(fragment, state);
            return this;
        }
        throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.t >= 0) {
            sb.append(" #");
            sb.append(this.t);
        }
        if (this.i != null) {
            sb.append(" ");
            sb.append(this.i);
        }
        sb.append(VectorFormat.DEFAULT_SUFFIX);
        return sb.toString();
    }

    @Override // androidx.fragment.app.u
    public u v(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.r) {
            super.v(fragment);
            return this;
        }
        throw new IllegalStateException("Cannot show Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    void w(int i) {
        if (this.f1397g) {
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            int size = this.f1393a.size();
            for (int i2 = 0; i2 < size; i2++) {
                u.a aVar = this.f1393a.get(i2);
                Fragment fragment = aVar.b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i;
                    if (FragmentManager.H0(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + aVar.b + " to " + aVar.b.mBackStackNesting);
                    }
                }
            }
        }
    }

    int x(boolean z) {
        if (this.s) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new z("FragmentManager"));
            y("  ", printWriter);
            printWriter.close();
        }
        this.s = true;
        if (this.f1397g) {
            this.t = this.r.j();
        } else {
            this.t = -1;
        }
        this.r.Z(this, z);
        return this.t;
    }

    public void y(String str, PrintWriter printWriter) {
        z(str, printWriter, true);
    }

    public void z(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.i);
            printWriter.print(" mIndex=");
            printWriter.print(this.t);
            printWriter.print(" mCommitted=");
            printWriter.println(this.s);
            if (this.f1396f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f1396f));
            }
            if (this.b != 0 || this.c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.c));
            }
            if (this.f1394d != 0 || this.f1395e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f1394d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f1395e));
            }
            if (this.j != 0 || this.k != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.j));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.k);
            }
            if (this.l != 0 || this.m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.l));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.m);
            }
        }
        if (this.f1393a.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.f1393a.size();
        for (int i = 0; i < size; i++) {
            u.a aVar = this.f1393a.get(i);
            switch (aVar.f1399a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + aVar.f1399a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(aVar.b);
            if (z) {
                if (aVar.c != 0 || aVar.f1400d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f1400d));
                }
                if (aVar.f1401e != 0 || aVar.f1402f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f1401e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f1402f));
                }
            }
        }
    }
}
