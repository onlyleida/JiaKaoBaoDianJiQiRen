package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public class l<T> extends u0<T> implements k<T>, CoroutineStackFrame {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater f16045f = AtomicIntegerFieldUpdater.newUpdater(l.class, "_decision");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater f16046g = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_state");
    private volatile int _decision;
    private volatile Object _parentHandle;
    private volatile Object _state;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CoroutineContext f16047d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Continuation<T> f16048e;

    /* JADX WARN: Multi-variable type inference failed */
    public l(Continuation<? super T> continuation, int i) {
        super(i);
        this.f16048e = continuation;
        if (l0.a()) {
            if (!(i != -1)) {
                throw new AssertionError();
            }
        }
        this.f16047d = continuation.getContext();
        this._decision = 0;
        this._state = b.f15842a;
        this._parentHandle = null;
    }

    private final boolean A() {
        Continuation<T> continuation = this.f16048e;
        return (continuation instanceof kotlinx.coroutines.internal.g) && ((kotlinx.coroutines.internal.g) continuation).n(this);
    }

    private final i D(Function1<? super Throwable, kotlin.v> function1) {
        return function1 instanceof i ? (i) function1 : new q1(function1);
    }

    private final void E(Function1<? super Throwable, kotlin.v> function1, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + function1 + ", already has " + obj).toString());
    }

    private final void I(Object obj, int i, Function1<? super Throwable, kotlin.v> function1) {
        Object obj2;
        do {
            obj2 = this._state;
            if (!(obj2 instanceof g2)) {
                if (obj2 instanceof o) {
                    o oVar = (o) obj2;
                    if (oVar.c()) {
                        if (function1 != null) {
                            k(function1, oVar.f16129a);
                            return;
                        }
                        return;
                    }
                }
                h(obj);
                throw null;
            }
        } while (!f16046g.compareAndSet(this, obj2, L((g2) obj2, obj, i, function1, null)));
        s();
        t(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void K(l lVar, Object obj, int i, Function1 function1, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i2 & 4) != 0) {
            function1 = null;
        }
        lVar.I(obj, i, function1);
    }

    private final Object L(g2 g2Var, Object obj, int i, Function1<? super Throwable, kotlin.v> function1, Object obj2) {
        if (obj instanceof y) {
            if (l0.a()) {
                if (!(obj2 == null)) {
                    throw new AssertionError();
                }
            }
            if (!l0.a()) {
                return obj;
            }
            if (function1 == null) {
                return obj;
            }
            throw new AssertionError();
        }
        if (!v0.b(i) && obj2 == null) {
            return obj;
        }
        if (function1 == null && ((!(g2Var instanceof i) || (g2Var instanceof d)) && obj2 == null)) {
            return obj;
        }
        if (!(g2Var instanceof i)) {
            g2Var = null;
        }
        return new x(obj, (i) g2Var, function1, obj2, null, 16, null);
    }

    private final void M(y0 y0Var) {
        this._parentHandle = y0Var;
    }

    private final void N() {
        t1 t1Var;
        if (p() || v() != null || (t1Var = (t1) this.f16048e.getContext().get(t1.R)) == null) {
            return;
        }
        y0 y0VarD = t1.a.d(t1Var, true, false, new p(t1Var, this), 2, null);
        M(y0VarD);
        if (!w() || A()) {
            return;
        }
        y0VarD.dispose();
        M(f2.f15920a);
    }

    private final boolean O() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f16045f.compareAndSet(this, 0, 2));
        return true;
    }

    private final kotlinx.coroutines.internal.y P(Object obj, Object obj2, Function1<? super Throwable, kotlin.v> function1) {
        Object obj3;
        do {
            obj3 = this._state;
            if (!(obj3 instanceof g2)) {
                if (!(obj3 instanceof x) || obj2 == null) {
                    return null;
                }
                x xVar = (x) obj3;
                if (xVar.f16126d != obj2) {
                    return null;
                }
                if (!l0.a() || kotlin.jvm.internal.r.a(xVar.f16125a, obj)) {
                    return m.f16053a;
                }
                throw new AssertionError();
            }
        } while (!f16046g.compareAndSet(this, obj3, L((g2) obj3, obj, this.c, function1, obj2)));
        s();
        return m.f16053a;
    }

    private final boolean Q() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f16045f.compareAndSet(this, 0, 1));
        return true;
    }

    private final Void h(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    private final void i(Function1<? super Throwable, kotlin.v> function1, Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            f0.a(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    private final boolean o(Throwable th) {
        if (!v0.c(this.c)) {
            return false;
        }
        Continuation<T> continuation = this.f16048e;
        if (!(continuation instanceof kotlinx.coroutines.internal.g)) {
            continuation = null;
        }
        kotlinx.coroutines.internal.g gVar = (kotlinx.coroutines.internal.g) continuation;
        if (gVar != null) {
            return gVar.o(th);
        }
        return false;
    }

    private final boolean p() {
        Throwable thH;
        boolean zW = w();
        if (!v0.c(this.c)) {
            return zW;
        }
        Continuation<T> continuation = this.f16048e;
        if (!(continuation instanceof kotlinx.coroutines.internal.g)) {
            continuation = null;
        }
        kotlinx.coroutines.internal.g gVar = (kotlinx.coroutines.internal.g) continuation;
        if (gVar == null || (thH = gVar.h(this)) == null) {
            return zW;
        }
        if (!zW) {
            n(thH);
        }
        return true;
    }

    private final void s() {
        if (A()) {
            return;
        }
        q();
    }

    private final void t(int i) {
        if (O()) {
            return;
        }
        v0.a(this, i);
    }

    private final y0 v() {
        return (y0) this._parentHandle;
    }

    @Override // kotlinx.coroutines.k
    public Object B(T t, Object obj, Function1<? super Throwable, kotlin.v> function1) {
        return P(t, obj, function1);
    }

    @Override // kotlinx.coroutines.k
    public void C(CoroutineDispatcher coroutineDispatcher, T t) {
        Continuation<T> continuation = this.f16048e;
        if (!(continuation instanceof kotlinx.coroutines.internal.g)) {
            continuation = null;
        }
        kotlinx.coroutines.internal.g gVar = (kotlinx.coroutines.internal.g) continuation;
        K(this, t, (gVar != null ? gVar.f16018g : null) == coroutineDispatcher ? 4 : this.c, null, 4, null);
    }

    protected String F() {
        return "CancellableContinuation";
    }

    public final void G(Throwable th) {
        if (o(th)) {
            return;
        }
        n(th);
        s();
    }

    public final boolean H() {
        if (l0.a()) {
            if (!(this.c == 2)) {
                throw new AssertionError();
            }
        }
        if (l0.a()) {
            if (!(v() != f2.f15920a)) {
                throw new AssertionError();
            }
        }
        Object obj = this._state;
        if (l0.a() && !(!(obj instanceof g2))) {
            throw new AssertionError();
        }
        if ((obj instanceof x) && ((x) obj).f16126d != null) {
            q();
            return false;
        }
        this._decision = 0;
        this._state = b.f15842a;
        return true;
    }

    @Override // kotlinx.coroutines.k
    public void J(Object obj) {
        if (l0.a()) {
            if (!(obj == m.f16053a)) {
                throw new AssertionError();
            }
        }
        t(this.c);
    }

    @Override // kotlinx.coroutines.u0
    public void a(Object obj, Throwable th) {
        while (true) {
            Object obj2 = this._state;
            if (obj2 instanceof g2) {
                throw new IllegalStateException("Not completed".toString());
            }
            if (obj2 instanceof y) {
                return;
            }
            if (obj2 instanceof x) {
                x xVar = (x) obj2;
                if (!(!xVar.c())) {
                    throw new IllegalStateException("Must be called at most once".toString());
                }
                if (f16046g.compareAndSet(this, obj2, x.b(xVar, null, null, null, null, th, 15, null))) {
                    xVar.d(this, th);
                    return;
                }
            } else if (f16046g.compareAndSet(this, obj2, new x(obj2, null, null, null, th, 14, null))) {
                return;
            }
        }
    }

    @Override // kotlinx.coroutines.u0
    public final Continuation<T> b() {
        return this.f16048e;
    }

    @Override // kotlinx.coroutines.k
    public Object c(T t, Object obj) {
        return P(t, obj, null);
    }

    @Override // kotlinx.coroutines.u0
    public Throwable d(Object obj) {
        Throwable thD = super.d(obj);
        if (thD == null) {
            return null;
        }
        Continuation<T> continuation = this.f16048e;
        return (l0.d() && (continuation instanceof CoroutineStackFrame)) ? kotlinx.coroutines.internal.x.j(thD, (CoroutineStackFrame) continuation) : thD;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.u0
    public <T> T e(Object obj) {
        return obj instanceof x ? (T) ((x) obj).f16125a : obj;
    }

    @Override // kotlinx.coroutines.u0
    public Object g() {
        return y();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.f16048e;
        if (!(continuation instanceof CoroutineStackFrame)) {
            continuation = null;
        }
        return (CoroutineStackFrame) continuation;
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return this.f16047d;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    public final void j(i iVar, Throwable th) {
        try {
            iVar.a(th);
        } catch (Throwable th2) {
            f0.a(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void k(Function1<? super Throwable, kotlin.v> function1, Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            f0.a(getContext(), new CompletionHandlerException("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    @Override // kotlinx.coroutines.k
    public void l(Function1<? super Throwable, kotlin.v> function1) {
        i iVarD = D(function1);
        while (true) {
            Object obj = this._state;
            if (!(obj instanceof b)) {
                if (obj instanceof i) {
                    E(function1, obj);
                    throw null;
                }
                boolean z = obj instanceof y;
                if (z) {
                    if (!((y) obj).b()) {
                        E(function1, obj);
                        throw null;
                    }
                    if (obj instanceof o) {
                        if (!z) {
                            obj = null;
                        }
                        y yVar = (y) obj;
                        i(function1, yVar != null ? yVar.f16129a : null);
                        return;
                    }
                    return;
                }
                if (obj instanceof x) {
                    x xVar = (x) obj;
                    if (xVar.b != null) {
                        E(function1, obj);
                        throw null;
                    }
                    if (iVarD instanceof d) {
                        return;
                    }
                    if (xVar.c()) {
                        i(function1, xVar.f16127e);
                        return;
                    } else {
                        if (f16046g.compareAndSet(this, obj, x.b(xVar, null, iVarD, null, null, null, 29, null))) {
                            return;
                        }
                    }
                } else {
                    if (iVarD instanceof d) {
                        return;
                    }
                    if (f16046g.compareAndSet(this, obj, new x(obj, iVarD, null, null, null, 28, null))) {
                        return;
                    }
                }
            } else if (f16046g.compareAndSet(this, obj, iVarD)) {
                return;
            }
        }
    }

    @Override // kotlinx.coroutines.k
    public Object m(Throwable th) {
        return P(new y(th, false, 2, null), null, null);
    }

    public boolean n(Throwable th) {
        Object obj;
        boolean z;
        do {
            obj = this._state;
            if (!(obj instanceof g2)) {
                return false;
            }
            z = obj instanceof i;
        } while (!f16046g.compareAndSet(this, obj, new o(this, th, z)));
        if (!z) {
            obj = null;
        }
        i iVar = (i) obj;
        if (iVar != null) {
            j(iVar, th);
        }
        s();
        t(this.c);
        return true;
    }

    public final void q() {
        y0 y0VarV = v();
        if (y0VarV != null) {
            y0VarV.dispose();
        }
        M(f2.f15920a);
    }

    @Override // kotlinx.coroutines.k
    public void r(T t, Function1<? super Throwable, kotlin.v> function1) {
        I(t, this.c, function1);
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object obj) {
        K(this, b0.c(obj, this), this.c, null, 4, null);
    }

    public String toString() {
        return F() + '(' + m0.c(this.f16048e) + "){" + y() + "}@" + m0.b(this);
    }

    public Throwable u(t1 t1Var) {
        return t1Var.i();
    }

    @Override // kotlinx.coroutines.k
    public boolean w() {
        return !(y() instanceof g2);
    }

    public final Object x() {
        t1 t1Var;
        N();
        if (Q()) {
            return kotlin.coroutines.intrinsics.b.d();
        }
        Object objY = y();
        if (objY instanceof y) {
            Throwable th = ((y) objY).f16129a;
            if (l0.d()) {
                throw kotlinx.coroutines.internal.x.j(th, this);
            }
            throw th;
        }
        if (!v0.b(this.c) || (t1Var = (t1) getContext().get(t1.R)) == null || t1Var.isActive()) {
            return e(objY);
        }
        CancellationException cancellationExceptionI = t1Var.i();
        a(objY, cancellationExceptionI);
        if (l0.d()) {
            throw kotlinx.coroutines.internal.x.j(cancellationExceptionI, this);
        }
        throw cancellationExceptionI;
    }

    public final Object y() {
        return this._state;
    }

    public void z() {
        N();
    }
}
