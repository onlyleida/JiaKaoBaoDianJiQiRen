package androidx.constraintlayout.widget;

import android.util.SparseIntArray;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<Integer, HashSet<WeakReference<a>>> f905a;

    public interface a {
    }

    public g() {
        new SparseIntArray();
        this.f905a = new HashMap<>();
    }

    public void a(int i, a aVar) {
        HashSet<WeakReference<a>> hashSet = this.f905a.get(Integer.valueOf(i));
        if (hashSet == null) {
            hashSet = new HashSet<>();
            this.f905a.put(Integer.valueOf(i), hashSet);
        }
        hashSet.add(new WeakReference<>(aVar));
    }
}
