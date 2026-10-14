package androidx.fragment.app;

import android.util.Log;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class n extends j0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final m0.b f1378h = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f1380d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<String, Fragment> f1379a = new HashMap<>();
    private final HashMap<String, n> b = new HashMap<>();
    private final HashMap<String, n0> c = new HashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1381e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1382f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1383g = false;

    class a implements m0.b {
        a() {
        }

        @Override // androidx.lifecycle.m0.b
        public <T extends j0> T create(Class<T> cls) {
            return new n(true);
        }
    }

    n(boolean z) {
        this.f1380d = z;
    }

    static n e(n0 n0Var) {
        return (n) new m0(n0Var, f1378h).a(n.class);
    }

    void a(Fragment fragment) {
        if (this.f1383g) {
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
            }
        } else {
            if (this.f1379a.containsKey(fragment.mWho)) {
                return;
            }
            this.f1379a.put(fragment.mWho, fragment);
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
            }
        }
    }

    void b(Fragment fragment) {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + fragment);
        }
        n nVar = this.b.get(fragment.mWho);
        if (nVar != null) {
            nVar.onCleared();
            this.b.remove(fragment.mWho);
        }
        n0 n0Var = this.c.get(fragment.mWho);
        if (n0Var != null) {
            n0Var.a();
            this.c.remove(fragment.mWho);
        }
    }

    Fragment c(String str) {
        return this.f1379a.get(str);
    }

    n d(Fragment fragment) {
        n nVar = this.b.get(fragment.mWho);
        if (nVar != null) {
            return nVar;
        }
        n nVar2 = new n(this.f1380d);
        this.b.put(fragment.mWho, nVar2);
        return nVar2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n.class != obj.getClass()) {
            return false;
        }
        n nVar = (n) obj;
        return this.f1379a.equals(nVar.f1379a) && this.b.equals(nVar.b) && this.c.equals(nVar.c);
    }

    Collection<Fragment> f() {
        return new ArrayList(this.f1379a.values());
    }

    n0 g(Fragment fragment) {
        n0 n0Var = this.c.get(fragment.mWho);
        if (n0Var != null) {
            return n0Var;
        }
        n0 n0Var2 = new n0();
        this.c.put(fragment.mWho, n0Var2);
        return n0Var2;
    }

    boolean h() {
        return this.f1381e;
    }

    public int hashCode() {
        return (((this.f1379a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
    }

    void i(Fragment fragment) {
        if (this.f1383g) {
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
                return;
            }
            return;
        }
        if ((this.f1379a.remove(fragment.mWho) != null) && FragmentManager.H0(2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
        }
    }

    void j(boolean z) {
        this.f1383g = z;
    }

    boolean k(Fragment fragment) {
        if (this.f1379a.containsKey(fragment.mWho)) {
            return this.f1380d ? this.f1381e : !this.f1382f;
        }
        return true;
    }

    @Override // androidx.lifecycle.j0
    protected void onCleared() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f1381e = true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.f1379a.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.b.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.c.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
