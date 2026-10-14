package androidx.core.a;

import android.content.LocusId;
import android.os.Build;
import androidx.core.util.h;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f930a;
    private final LocusId b;

    private static class a {
        static LocusId a(String str) {
            return new LocusId(str);
        }

        static String b(LocusId locusId) {
            return locusId.getId();
        }
    }

    public c(String str) {
        h.h(str, "id cannot be empty");
        this.f930a = str;
        if (Build.VERSION.SDK_INT >= 29) {
            this.b = a.a(str);
        } else {
            this.b = null;
        }
    }

    private String a() {
        return this.f930a.length() + "_chars";
    }

    public static c c(LocusId locusId) {
        h.g(locusId, "locusId cannot be null");
        String strB = a.b(locusId);
        h.h(strB, "id cannot be empty");
        return new c(strB);
    }

    public LocusId b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        String str = this.f930a;
        if (str == null) {
            return cVar.f930a == null;
        }
        return str.equals(cVar.f930a);
    }

    public int hashCode() {
        String str = this.f930a;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "LocusIdCompat[" + a() + "]";
    }
}
