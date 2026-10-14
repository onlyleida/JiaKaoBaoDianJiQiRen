package androidx.core.os;

import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f1145a;

    static {
        a(new Locale[0]);
    }

    private d(f fVar) {
        this.f1145a = fVar;
    }

    public static d a(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? e(new LocaleList(localeArr)) : new d(new e(localeArr));
    }

    static Locale b(String str) {
        if (str.contains("-")) {
            String[] strArrSplit = str.split("-", -1);
            if (strArrSplit.length > 2) {
                return new Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
            }
            if (strArrSplit.length > 1) {
                return new Locale(strArrSplit[0], strArrSplit[1]);
            }
            if (strArrSplit.length == 1) {
                return new Locale(strArrSplit[0]);
            }
        } else {
            if (!str.contains("_")) {
                return new Locale(str);
            }
            String[] strArrSplit2 = str.split("_", -1);
            if (strArrSplit2.length > 2) {
                return new Locale(strArrSplit2[0], strArrSplit2[1], strArrSplit2[2]);
            }
            if (strArrSplit2.length > 1) {
                return new Locale(strArrSplit2[0], strArrSplit2[1]);
            }
            if (strArrSplit2.length == 1) {
                return new Locale(strArrSplit2[0]);
            }
        }
        throw new IllegalArgumentException("Can not parse language tag: [" + str + "]");
    }

    public static d e(LocaleList localeList) {
        return new d(new g(localeList));
    }

    public Locale c(int i) {
        return this.f1145a.get(i);
    }

    public int d() {
        return this.f1145a.size();
    }

    public boolean equals(Object obj) {
        return (obj instanceof d) && this.f1145a.equals(((d) obj).f1145a);
    }

    public int hashCode() {
        return this.f1145a.hashCode();
    }

    public String toString() {
        return this.f1145a.toString();
    }
}
