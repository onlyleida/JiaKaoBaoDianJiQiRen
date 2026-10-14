package kotlinx.coroutines.selects;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.b0;
import kotlinx.coroutines.f0;
import kotlinx.coroutines.internal.l;
import kotlinx.coroutines.internal.n;
import kotlinx.coroutines.internal.u;
import kotlinx.coroutines.internal.x;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.m;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.u1;
import kotlinx.coroutines.y;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class b<R> extends l implements kotlinx.coroutines.selects.a<R>, f<R>, Continuation<R>, CoroutineStackFrame {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final AtomicReferenceFieldUpdater f16101e = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_state");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final AtomicReferenceFieldUpdater f16102f = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_result");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Continuation<R> f16103d;
    volatile Object _state = g.e();
    volatile Object _result = g.c;
    private volatile Object _parentHandle = null;

    private static final class a extends kotlinx.coroutines.internal.d<Object> {
        private final long b = g.f16111e.a();
        public final b<?> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final kotlinx.coroutines.internal.b f16104d;

        public a(b<?> bVar, kotlinx.coroutines.internal.b bVar2) {
            this.c = bVar;
            this.f16104d = bVar2;
            bVar2.d(this);
        }

        private final void j(Object obj) {
            boolean z = obj == null;
            if (b.f16101e.compareAndSet(this.c, this, z ? null : g.e()) && z) {
                this.c.S();
            }
        }

        private final Object k() {
            b<?> bVar = this.c;
            while (true) {
                Object obj = bVar._state;
                if (obj == this) {
                    return null;
                }
                if (obj instanceof u) {
                    ((u) obj).c(this.c);
                } else {
                    if (obj != g.e()) {
                        return g.d();
                    }
                    if (b.f16101e.compareAndSet(this.c, g.e(), this)) {
                        return null;
                    }
                }
            }
        }

        private final void l() {
            b.f16101e.compareAndSet(this.c, this, g.e());
        }

        @Override // kotlinx.coroutines.internal.d
        public void d(Object obj, Object obj2) {
            j(obj2);
            this.f16104d.a(this, obj2);
        }

        @Override // kotlinx.coroutines.internal.d
        public long g() {
            return this.b;
        }

        @Override // kotlinx.coroutines.internal.d
        public Object i(Object obj) {
            Object objK;
            if (obj == null && (objK = k()) != null) {
                return objK;
            }
            try {
                return this.f16104d.c(this);
            } catch (Throwable th) {
                if (obj == null) {
                    l();
                }
                throw th;
            }
        }

        @Override // kotlinx.coroutines.internal.u
        public String toString() {
            return "AtomicSelectOp(sequence=" + g() + ')';
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.selects.b$b, reason: collision with other inner class name */
    private static final class C0367b extends n {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final y0 f16105d;

        public C0367b(y0 y0Var) {
            this.f16105d = y0Var;
        }
    }

    private static final class c extends u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final n.c f16106a;

        public c(n.c cVar) {
            this.f16106a = cVar;
        }

        @Override // kotlinx.coroutines.internal.u
        public kotlinx.coroutines.internal.d<?> a() {
            return this.f16106a.a();
        }

        @Override // kotlinx.coroutines.internal.u
        public Object c(Object obj) {
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectBuilderImpl<*>");
            b bVar = (b) obj;
            this.f16106a.d();
            Object objE = this.f16106a.a().e(null);
            b.f16101e.compareAndSet(bVar, this, objE == null ? this.f16106a.c : g.e());
            return objE;
        }
    }

    private final class d extends u1<t1> {
        public d(t1 t1Var) {
            super(t1Var);
        }

        @Override // kotlinx.coroutines.a0
        public void R(Throwable th) {
            if (b.this.j()) {
                b.this.p(this.f16133d.i());
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Throwable th) {
            R(th);
            return v.f15822a;
        }

        @Override // kotlinx.coroutines.internal.n
        public String toString() {
            return "SelectOnCancelling[" + b.this + ']';
        }
    }

    public static final class e implements Runnable {
        final /* synthetic */ Function1 b;

        public e(Function1 function1) {
            this.b = function1;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (b.this.j()) {
                Function1 function1 = this.b;
                b bVar = b.this;
                bVar.o();
                kotlinx.coroutines.a3.a.b(function1, bVar);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(Continuation<? super R> continuation) {
        this.f16103d = continuation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S() {
        y0 y0VarT = T();
        if (y0VarT != null) {
            y0VarT.dispose();
        }
        Object objG = G();
        Objects.requireNonNull(objG, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        for (n nVarH = (n) objG; !r.a(nVarH, this); nVarH = nVarH.H()) {
            if (nVarH instanceof C0367b) {
                ((C0367b) nVarH).f16105d.dispose();
            }
        }
    }

    private final y0 T() {
        return (y0) this._parentHandle;
    }

    private final void W() {
        t1 t1Var = (t1) getContext().get(t1.R);
        if (t1Var != null) {
            y0 y0VarD = t1.a.d(t1Var, true, false, new d(t1Var), 2, null);
            X(y0VarD);
            if (e()) {
                y0VarD.dispose();
            }
        }
    }

    private final void X(y0 y0Var) {
        this._parentHandle = y0Var;
    }

    public final Object U() throws Throwable {
        if (!e()) {
            W();
        }
        Object obj = this._result;
        if (obj == g.c) {
            if (f16102f.compareAndSet(this, g.c, kotlin.coroutines.intrinsics.b.d())) {
                return kotlin.coroutines.intrinsics.b.d();
            }
            obj = this._result;
        }
        if (obj == g.f16110d) {
            throw new IllegalStateException("Already resumed");
        }
        if (obj instanceof y) {
            throw ((y) obj).f16129a;
        }
        return obj;
    }

    public final void V(Throwable th) throws Throwable {
        if (j()) {
            Result.Companion companion = Result.INSTANCE;
            resumeWith(Result.m139constructorimpl(k.a(th)));
        } else {
            if (th instanceof CancellationException) {
                return;
            }
            Object objU = U();
            if (objU instanceof y) {
                Throwable thM = ((y) objU).f16129a;
                if (l0.d()) {
                    thM = x.m(thM);
                }
                if (thM == (!l0.d() ? th : x.m(th))) {
                    return;
                }
            }
            f0.a(getContext(), th);
        }
    }

    @Override // kotlinx.coroutines.selects.f
    public boolean e() {
        while (true) {
            Object obj = this._state;
            if (obj == g.e()) {
                return false;
            }
            if (!(obj instanceof u)) {
                return true;
            }
            ((u) obj).c(this);
        }
    }

    @Override // kotlinx.coroutines.selects.a
    public void f(long j, Function1<? super Continuation<? super R>, ? extends Object> function1) {
        if (j > 0) {
            h(s0.b(getContext()).g(j, new e(function1), getContext()));
        } else if (j()) {
            o();
            kotlinx.coroutines.a3.b.c(function1, this);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public CoroutineStackFrame getCallerFrame() {
        Continuation<R> continuation = this.f16103d;
        if (!(continuation instanceof CoroutineStackFrame)) {
            continuation = null;
        }
        return (CoroutineStackFrame) continuation;
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return this.f16103d.getContext();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlinx.coroutines.selects.f
    public void h(y0 y0Var) {
        C0367b c0367b = new C0367b(y0Var);
        if (!e()) {
            y(c0367b);
            if (!e()) {
                return;
            }
        }
        y0Var.dispose();
    }

    @Override // kotlinx.coroutines.selects.f
    public Object i(n.c cVar) {
        while (true) {
            Object obj = this._state;
            if (obj == g.e()) {
                if (cVar != null) {
                    c cVar2 = new c(cVar);
                    if (f16101e.compareAndSet(this, g.e(), cVar2)) {
                        Object objC = cVar2.c(this);
                        if (objC == null) {
                            break;
                        }
                        return objC;
                    }
                } else if (f16101e.compareAndSet(this, g.e(), null)) {
                    break;
                }
            } else {
                if (!(obj instanceof u)) {
                    if (cVar != null && obj == cVar.c) {
                        return m.f16053a;
                    }
                    return null;
                }
                if (cVar != null) {
                    kotlinx.coroutines.internal.d<?> dVarA = cVar.a();
                    if ((dVarA instanceof a) && ((a) dVarA).c == this) {
                        throw new IllegalStateException("Cannot use matching select clauses on the same object".toString());
                    }
                    if (dVarA.b((u) obj)) {
                        return kotlinx.coroutines.internal.c.b;
                    }
                }
                ((u) obj).c(this);
            }
        }
        S();
        return m.f16053a;
    }

    @Override // kotlinx.coroutines.selects.f
    public boolean j() {
        Object objI = i(null);
        if (objI == m.f16053a) {
            return true;
        }
        if (objI == null) {
            return false;
        }
        throw new IllegalStateException(("Unexpected trySelectIdempotent result " + objI).toString());
    }

    @Override // kotlinx.coroutines.selects.f
    public Continuation<R> o() {
        return this;
    }

    @Override // kotlinx.coroutines.selects.f
    public void p(Throwable th) {
        if (l0.a() && !e()) {
            throw new AssertionError();
        }
        while (true) {
            Object obj = this._result;
            if (obj == g.c) {
                Continuation<R> continuation = this.f16103d;
                if (f16102f.compareAndSet(this, g.c, new y((l0.d() && (continuation instanceof CoroutineStackFrame)) ? x.j(th, (CoroutineStackFrame) continuation) : th, false, 2, null))) {
                    return;
                }
            } else {
                if (obj != kotlin.coroutines.intrinsics.b.d()) {
                    throw new IllegalStateException("Already resumed");
                }
                if (f16102f.compareAndSet(this, kotlin.coroutines.intrinsics.b.d(), g.f16110d)) {
                    Continuation continuationC = IntrinsicsKt__IntrinsicsJvmKt.c(this.f16103d);
                    Result.Companion companion = Result.INSTANCE;
                    continuationC.resumeWith(Result.m139constructorimpl(k.a(th)));
                    return;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.selects.f
    public Object q(kotlinx.coroutines.internal.b bVar) {
        return new a(this, bVar).c(null);
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object obj) {
        if (l0.a() && !e()) {
            throw new AssertionError();
        }
        while (true) {
            Object obj2 = this._result;
            if (obj2 == g.c) {
                if (f16102f.compareAndSet(this, g.c, b0.d(obj, null, 1, null))) {
                    return;
                }
            } else {
                if (obj2 != kotlin.coroutines.intrinsics.b.d()) {
                    throw new IllegalStateException("Already resumed");
                }
                if (f16102f.compareAndSet(this, kotlin.coroutines.intrinsics.b.d(), g.f16110d)) {
                    if (!Result.m145isFailureimpl(obj)) {
                        this.f16103d.resumeWith(obj);
                        return;
                    }
                    Continuation<R> continuation = this.f16103d;
                    Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(obj);
                    r.c(thM142exceptionOrNullimpl);
                    Result.Companion companion = Result.INSTANCE;
                    if (l0.d() && (continuation instanceof CoroutineStackFrame)) {
                        thM142exceptionOrNullimpl = x.j(thM142exceptionOrNullimpl, (CoroutineStackFrame) continuation);
                    }
                    continuation.resumeWith(Result.m139constructorimpl(k.a(thM142exceptionOrNullimpl)));
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.selects.a
    public <Q> void t(kotlinx.coroutines.selects.d<? extends Q> dVar, Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        dVar.f(this, function2);
    }

    @Override // kotlinx.coroutines.internal.n
    public String toString() {
        return "SelectInstance(state=" + this._state + ", result=" + this._result + ')';
    }
}
