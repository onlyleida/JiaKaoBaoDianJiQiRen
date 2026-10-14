package androidx.coordinatorlayout.widget;

import androidx.collection.g;
import androidx.core.util.e;
import androidx.core.util.f;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e<ArrayList<T>> f922a = new f(10);
    private final g<T, ArrayList<T>> b = new g<>();
    private final ArrayList<T> c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet<T> f923d = new HashSet<>();

    private void e(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        ArrayList<T> arrayList2 = this.b.get(t);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                e(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }

    private ArrayList<T> f() {
        ArrayList<T> arrayListAcquire = this.f922a.acquire();
        return arrayListAcquire == null ? new ArrayList<>() : arrayListAcquire;
    }

    private void k(ArrayList<T> arrayList) {
        arrayList.clear();
        this.f922a.release(arrayList);
    }

    public void a(T t, T t2) {
        if (!this.b.containsKey(t) || !this.b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayListF = this.b.get(t);
        if (arrayListF == null) {
            arrayListF = f();
            this.b.put(t, arrayListF);
        }
        arrayListF.add(t2);
    }

    public void b(T t) {
        if (this.b.containsKey(t)) {
            return;
        }
        this.b.put(t, null);
    }

    public void c() {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListValueAt = this.b.valueAt(i);
            if (arrayListValueAt != null) {
                k(arrayListValueAt);
            }
        }
        this.b.clear();
    }

    public boolean d(T t) {
        return this.b.containsKey(t);
    }

    public List g(T t) {
        return this.b.get(t);
    }

    public List<T> h(T t) {
        int size = this.b.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListValueAt = this.b.valueAt(i);
            if (arrayListValueAt != null && arrayListValueAt.contains(t)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.b.keyAt(i));
            }
        }
        return arrayList;
    }

    public ArrayList<T> i() {
        this.c.clear();
        this.f923d.clear();
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            e(this.b.keyAt(i), this.c, this.f923d);
        }
        return this.c;
    }

    public boolean j(T t) {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListValueAt = this.b.valueAt(i);
            if (arrayListValueAt != null && arrayListValueAt.contains(t)) {
                return true;
            }
        }
        return false;
    }
}
