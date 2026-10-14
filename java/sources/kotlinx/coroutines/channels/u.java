package kotlinx.coroutines.channels;

import kotlin.Result;
import kotlinx.coroutines.internal.y;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.m0;

/* JADX INFO: loaded from: classes6.dex */
public class u<E> extends s {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final E f15888d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final kotlinx.coroutines.k<kotlin.v> f15889e;

    /* JADX WARN: Multi-variable type inference failed */
    public u(E e2, kotlinx.coroutines.k<? super kotlin.v> kVar) {
        this.f15888d = e2;
        this.f15889e = kVar;
    }

    @Override // kotlinx.coroutines.channels.s
    public void R() {
        this.f15889e.J(kotlinx.coroutines.m.f16053a);
    }

    @Override // kotlinx.coroutines.channels.s
    public E S() {
        return this.f15888d;
    }

    @Override // kotlinx.coroutines.channels.s
    public void T(j<?> jVar) {
        kotlinx.coroutines.k<kotlin.v> kVar = this.f15889e;
        Throwable thZ = jVar.Z();
        Result.Companion companion = Result.INSTANCE;
        kVar.resumeWith(Result.m139constructorimpl(kotlin.k.a(thZ)));
    }

    @Override // kotlinx.coroutines.channels.s
    public y U(kotlinx.coroutines.internal.n.c cVar) {
        Object objC = this.f15889e.c(kotlin.v.f15822a, cVar != null ? cVar.c : null);
        if (objC == null) {
            return null;
        }
        if (l0.a()) {
            if (!(objC == kotlinx.coroutines.m.f16053a)) {
                throw new AssertionError();
            }
        }
        if (cVar != null) {
            cVar.d();
        }
        return kotlinx.coroutines.m.f16053a;
    }

    @Override // kotlinx.coroutines.internal.n
    public String toString() {
        return m0.a(this) + '@' + m0.b(this) + '(' + S() + ')';
    }
}
