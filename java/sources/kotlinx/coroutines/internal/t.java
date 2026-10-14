package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.r0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
final class t extends d2 implements r0 {
    private final Throwable b;
    private final String c;

    public t(Throwable th, String str) {
        this.b = th;
        this.c = str;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0026  */
    private final Void E() {
        String str;
        if (this.b == null) {
            s.c();
            throw null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Module with the Main dispatcher had failed to initialize");
        String str2 = this.c;
        if (str2 != null) {
            str = ". " + str2;
            if (str == null) {
                str = "";
            }
        } else {
            str = "";
        }
        sb.append(str);
        throw new IllegalStateException(sb.toString(), this.b);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public boolean A(CoroutineContext coroutineContext) {
        E();
        throw null;
    }

    @Override // kotlinx.coroutines.d2
    public d2 B() {
        return this;
    }

    public Void D(CoroutineContext coroutineContext, Runnable runnable) {
        E();
        throw null;
    }

    public Void F(long j, kotlinx.coroutines.k<? super kotlin.v> kVar) {
        E();
        throw null;
    }

    @Override // kotlinx.coroutines.r0
    public /* bridge */ /* synthetic */ void c(long j, kotlinx.coroutines.k kVar) {
        F(j, kVar);
        throw null;
    }

    @Override // kotlinx.coroutines.r0
    public y0 g(long j, Runnable runnable, CoroutineContext coroutineContext) {
        E();
        throw null;
    }

    @Override // kotlinx.coroutines.d2, kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Dispatchers.Main[missing");
        if (this.b != null) {
            str = ", cause=" + this.b;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(']');
        return sb.toString();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public /* bridge */ /* synthetic */ void y(CoroutineContext coroutineContext, Runnable runnable) {
        D(coroutineContext, runnable);
        throw null;
    }
}
