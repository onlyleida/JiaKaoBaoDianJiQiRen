package kotlinx.coroutines.channels;

import kotlinx.coroutines.internal.y;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.m0;

/* JADX INFO: loaded from: classes6.dex */
public final class j<E> extends s implements q<E> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Throwable f15885d;

    public j(Throwable th) {
        this.f15885d = th;
    }

    @Override // kotlinx.coroutines.channels.s
    public void R() {
    }

    @Override // kotlinx.coroutines.channels.s
    public /* bridge */ /* synthetic */ Object S() {
        X();
        return this;
    }

    @Override // kotlinx.coroutines.channels.s
    public void T(j<?> jVar) {
        if (l0.a()) {
            throw new AssertionError();
        }
    }

    @Override // kotlinx.coroutines.channels.s
    public y U(kotlinx.coroutines.internal.n.c cVar) {
        y yVar = kotlinx.coroutines.m.f16053a;
        if (cVar != null) {
            cVar.d();
        }
        return yVar;
    }

    public j<E> W() {
        return this;
    }

    public j<E> X() {
        return this;
    }

    public final Throwable Y() {
        Throwable th = this.f15885d;
        return th != null ? th : new ClosedReceiveChannelException("Channel was closed");
    }

    public final Throwable Z() {
        Throwable th = this.f15885d;
        return th != null ? th : new ClosedSendChannelException("Channel was closed");
    }

    @Override // kotlinx.coroutines.channels.q
    public /* bridge */ /* synthetic */ Object a() {
        W();
        return this;
    }

    @Override // kotlinx.coroutines.channels.q
    public void g(E e2) {
    }

    @Override // kotlinx.coroutines.channels.q
    public y s(E e2, kotlinx.coroutines.internal.n.c cVar) {
        y yVar = kotlinx.coroutines.m.f16053a;
        if (cVar != null) {
            cVar.d();
        }
        return yVar;
    }

    @Override // kotlinx.coroutines.internal.n
    public String toString() {
        return "Closed@" + m0.b(this) + '[' + this.f15885d + ']';
    }
}
