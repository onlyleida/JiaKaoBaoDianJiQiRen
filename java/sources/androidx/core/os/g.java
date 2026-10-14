package androidx.core.os;

import android.os.LocaleList;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class g implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LocaleList f1147a;

    g(LocaleList localeList) {
        this.f1147a = localeList;
    }

    @Override // androidx.core.os.f
    public Object a() {
        return this.f1147a;
    }

    public boolean equals(Object obj) {
        return this.f1147a.equals(((f) obj).a());
    }

    @Override // androidx.core.os.f
    public Locale get(int i) {
        return this.f1147a.get(i);
    }

    public int hashCode() {
        return this.f1147a.hashCode();
    }

    @Override // androidx.core.os.f
    public int size() {
        return this.f1147a.size();
    }

    public String toString() {
        return this.f1147a.toString();
    }
}
