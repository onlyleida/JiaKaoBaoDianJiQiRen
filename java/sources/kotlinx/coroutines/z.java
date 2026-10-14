package kotlinx.coroutines;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f16131a;
    public final Function1<Throwable, kotlin.v> b;

    /* JADX WARN: Multi-variable type inference failed */
    public z(Object obj, Function1<? super Throwable, kotlin.v> function1) {
        this.f16131a = obj;
        this.b = function1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return kotlin.jvm.internal.r.a(this.f16131a, zVar.f16131a) && kotlin.jvm.internal.r.a(this.b, zVar.b);
    }

    public int hashCode() {
        Object obj = this.f16131a;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * 31;
        Function1<Throwable, kotlin.v> function1 = this.b;
        return iHashCode + (function1 != null ? function1.hashCode() : 0);
    }

    public String toString() {
        return "CompletedWithCancellation(result=" + this.f16131a + ", onCancellation=" + this.b + ")";
    }
}
