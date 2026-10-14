package androidx.lifecycle;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<String, j0> f1519a = new HashMap<>();

    public final void a() {
        Iterator<j0> it = this.f1519a.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.f1519a.clear();
    }

    final j0 b(String str) {
        return this.f1519a.get(str);
    }

    Set<String> c() {
        return new HashSet(this.f1519a.keySet());
    }

    final void d(String str, j0 j0Var) {
        j0 j0VarPut = this.f1519a.put(str, j0Var);
        if (j0VarPut != null) {
            j0VarPut.onCleared();
        }
    }
}
