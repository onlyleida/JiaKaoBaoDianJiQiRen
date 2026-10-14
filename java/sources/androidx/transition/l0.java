package androidx.transition;

import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
class l0 implements n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IBinder f1871a;

    l0(IBinder iBinder) {
        this.f1871a = iBinder;
    }

    public boolean equals(Object obj) {
        return (obj instanceof l0) && ((l0) obj).f1871a.equals(this.f1871a);
    }

    public int hashCode() {
        return this.f1871a.hashCode();
    }
}
