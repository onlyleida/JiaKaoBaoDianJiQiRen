package androidx.media;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
class e implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f1607a;
    private int b;
    private int c;

    e(String str, int i, int i2) {
        this.f1607a = str;
        this.b = i;
        this.c = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (this.b < 0 || eVar.b < 0) {
            return TextUtils.equals(this.f1607a, eVar.f1607a) && this.c == eVar.c;
        }
        return TextUtils.equals(this.f1607a, eVar.f1607a) && this.b == eVar.b && this.c == eVar.c;
    }

    public int hashCode() {
        return androidx.core.util.c.b(this.f1607a, Integer.valueOf(this.c));
    }
}
