package androidx.core.graphics;

import android.graphics.Insets;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final d f1112e = new d(0, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1113a;
    public final int b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1114d;

    private d(int i, int i2, int i3, int i4) {
        this.f1113a = i;
        this.b = i2;
        this.c = i3;
        this.f1114d = i4;
    }

    public static d a(d dVar, d dVar2) {
        return b(Math.max(dVar.f1113a, dVar2.f1113a), Math.max(dVar.b, dVar2.b), Math.max(dVar.c, dVar2.c), Math.max(dVar.f1114d, dVar2.f1114d));
    }

    public static d b(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? f1112e : new d(i, i2, i3, i4);
    }

    public static d c(Rect rect) {
        return b(rect.left, rect.top, rect.right, rect.bottom);
    }

    public static d d(Insets insets) {
        return b(insets.left, insets.top, insets.right, insets.bottom);
    }

    public Insets e() {
        return Insets.of(this.f1113a, this.b, this.c, this.f1114d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f1114d == dVar.f1114d && this.f1113a == dVar.f1113a && this.c == dVar.c && this.b == dVar.b;
    }

    public int hashCode() {
        return (((((this.f1113a * 31) + this.b) * 31) + this.c) * 31) + this.f1114d;
    }

    public String toString() {
        return "Insets{left=" + this.f1113a + ", top=" + this.b + ", right=" + this.c + ", bottom=" + this.f1114d + '}';
    }
}
