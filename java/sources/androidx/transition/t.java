package androidx.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class t {
    public View b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, Object> f1887a = new HashMap();
    final ArrayList<m> c = new ArrayList<>();

    @Deprecated
    public t() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return this.b == tVar.b && this.f1887a.equals(tVar.f1887a);
    }

    public int hashCode() {
        return (this.b.hashCode() * 31) + this.f1887a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.b + "\n") + "    values:";
        for (String str2 : this.f1887a.keySet()) {
            str = str + "    " + str2 + ": " + this.f1887a.get(str2) + "\n";
        }
        return str;
    }

    public t(View view) {
        this.b = view;
    }
}
