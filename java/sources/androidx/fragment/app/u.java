package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class u {
    int b;
    int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1394d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f1395e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f1396f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f1397g;
    String i;
    int j;
    CharSequence k;
    int l;
    CharSequence m;
    ArrayList<String> n;
    ArrayList<String> o;
    ArrayList<Runnable> q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList<a> f1393a = new ArrayList<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f1398h = true;
    boolean p = false;

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1399a;
        Fragment b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1400d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1401e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f1402f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        Lifecycle.State f1403g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        Lifecycle.State f1404h;

        a() {
        }

        a(int i, Fragment fragment) {
            this.f1399a = i;
            this.b = fragment;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            this.f1403g = state;
            this.f1404h = state;
        }

        a(int i, Fragment fragment, Lifecycle.State state) {
            this.f1399a = i;
            this.b = fragment;
            this.f1403g = fragment.mMaxState;
            this.f1404h = state;
        }
    }

    u(i iVar, ClassLoader classLoader) {
    }

    public u b(int i, Fragment fragment) {
        o(i, fragment, null, 1);
        return this;
    }

    public u c(int i, Fragment fragment, String str) {
        o(i, fragment, str, 1);
        return this;
    }

    u d(ViewGroup viewGroup, Fragment fragment, String str) {
        fragment.mContainer = viewGroup;
        c(viewGroup.getId(), fragment, str);
        return this;
    }

    public u e(Fragment fragment, String str) {
        o(0, fragment, str, 1);
        return this;
    }

    void f(a aVar) {
        this.f1393a.add(aVar);
        aVar.c = this.b;
        aVar.f1400d = this.c;
        aVar.f1401e = this.f1394d;
        aVar.f1402f = this.f1395e;
    }

    public u g(String str) {
        if (!this.f1398h) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.f1397g = true;
        this.i = str;
        return this;
    }

    public u h(Fragment fragment) {
        f(new a(7, fragment));
        return this;
    }

    public abstract int i();

    public abstract int j();

    public abstract void k();

    public abstract void l();

    public u m(Fragment fragment) {
        f(new a(6, fragment));
        return this;
    }

    public u n() {
        if (this.f1397g) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.f1398h = false;
        return this;
    }

    void o(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str2 = fragment.mTag;
            if (str2 != null && !str.equals(str2)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
            fragment.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i3 = fragment.mFragmentId;
            if (i3 != 0 && i3 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            }
            fragment.mFragmentId = i;
            fragment.mContainerId = i;
        }
        f(new a(i2, fragment));
    }

    public u p(Fragment fragment) {
        f(new a(4, fragment));
        return this;
    }

    public u q(Fragment fragment) {
        f(new a(3, fragment));
        return this;
    }

    public u r(int i, Fragment fragment) {
        s(i, fragment, null);
        return this;
    }

    public u s(int i, Fragment fragment, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        o(i, fragment, str, 2);
        return this;
    }

    public u t(Fragment fragment, Lifecycle.State state) {
        f(new a(10, fragment, state));
        return this;
    }

    public u u(boolean z) {
        this.p = z;
        return this;
    }

    public u v(Fragment fragment) {
        f(new a(5, fragment));
        return this;
    }
}
