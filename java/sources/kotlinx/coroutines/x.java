package kotlinx.coroutines;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f16125a;
    public final i b;
    public final Function1<Throwable, kotlin.v> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f16126d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Throwable f16127e;

    /* JADX WARN: Multi-variable type inference failed */
    public x(Object obj, i iVar, Function1<? super Throwable, kotlin.v> function1, Object obj2, Throwable th) {
        this.f16125a = obj;
        this.b = iVar;
        this.c = function1;
        this.f16126d = obj2;
        this.f16127e = th;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ x b(x xVar, Object obj, i iVar, Function1 function1, Object obj2, Throwable th, int i, Object obj3) {
        if ((i & 1) != 0) {
            obj = xVar.f16125a;
        }
        if ((i & 2) != 0) {
            iVar = xVar.b;
        }
        i iVar2 = iVar;
        if ((i & 4) != 0) {
            function1 = xVar.c;
        }
        Function1 function2 = function1;
        if ((i & 8) != 0) {
            obj2 = xVar.f16126d;
        }
        Object obj4 = obj2;
        if ((i & 16) != 0) {
            th = xVar.f16127e;
        }
        return xVar.a(obj, iVar2, function2, obj4, th);
    }

    public final x a(Object obj, i iVar, Function1<? super Throwable, kotlin.v> function1, Object obj2, Throwable th) {
        return new x(obj, iVar, function1, obj2, th);
    }

    public final boolean c() {
        return this.f16127e != null;
    }

    public final void d(l<?> lVar, Throwable th) {
        i iVar = this.b;
        if (iVar != null) {
            lVar.j(iVar, th);
        }
        Function1<Throwable, kotlin.v> function1 = this.c;
        if (function1 != null) {
            lVar.k(function1, th);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return kotlin.jvm.internal.r.a(this.f16125a, xVar.f16125a) && kotlin.jvm.internal.r.a(this.b, xVar.b) && kotlin.jvm.internal.r.a(this.c, xVar.c) && kotlin.jvm.internal.r.a(this.f16126d, xVar.f16126d) && kotlin.jvm.internal.r.a(this.f16127e, xVar.f16127e);
    }

    public int hashCode() {
        Object obj = this.f16125a;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * 31;
        i iVar = this.b;
        int iHashCode2 = (iHashCode + (iVar != null ? iVar.hashCode() : 0)) * 31;
        Function1<Throwable, kotlin.v> function1 = this.c;
        int iHashCode3 = (iHashCode2 + (function1 != null ? function1.hashCode() : 0)) * 31;
        Object obj2 = this.f16126d;
        int iHashCode4 = (iHashCode3 + (obj2 != null ? obj2.hashCode() : 0)) * 31;
        Throwable th = this.f16127e;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    public String toString() {
        return "CompletedContinuation(result=" + this.f16125a + ", cancelHandler=" + this.b + ", onCancellation=" + this.c + ", idempotentResume=" + this.f16126d + ", cancelCause=" + this.f16127e + ")";
    }

    public /* synthetic */ x(Object obj, i iVar, Function1 function1, Object obj2, Throwable th, int i, kotlin.jvm.internal.o oVar) {
        this(obj, (i & 2) != 0 ? null : iVar, (i & 4) != 0 ? null : function1, (i & 8) != 0 ? null : obj2, (i & 16) != 0 ? null : th);
    }
}
