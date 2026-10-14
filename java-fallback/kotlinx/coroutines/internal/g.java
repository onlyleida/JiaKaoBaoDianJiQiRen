package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.c1;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.m0;
import kotlinx.coroutines.r2;
import kotlinx.coroutines.u0;

/* JADX INFO: loaded from: classes6.dex */
public final class g<T> extends u0<T> implements kotlin.coroutines.jvm.internal.c, kotlin.coroutines.c<T> {
    private static final AtomicReferenceFieldUpdater i = null;
    private volatile Object _reusableCancellableContinuation;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f16015d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.coroutines.jvm.internal.c f16016e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f16017f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final CoroutineDispatcher f16018g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final kotlin.coroutines.c<T> f16019h;

    static {
        i = AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, "_reusableCancellableContinuation");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [kotlin.coroutines.c<? super T>, kotlin.coroutines.c<T>] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    public g(CoroutineDispatcher r2, kotlin.coroutines.c<? super T> r3) {
        super(-1);
        this.f16018g = r2;
        this.f16019h = r3;
        this.f16015d = h.a();
        boolean r4 = r3 instanceof kotlin.coroutines.jvm.internal.c;
        ?? r5 = r3;
        if (r4 == true) goto L5;
        r5 = (kotlin.coroutines.c<? super T>) null;
    L5:
        this.f16016e = (kotlin.coroutines.jvm.internal.c) r5;
        this.f16017f = ThreadContextKt.b(getContext());
        this._reusableCancellableContinuation = null;
    }

    @Override // kotlinx.coroutines.u0
    public void a(Object r2, Throwable r3) {
        if ((r2 instanceof kotlinx.coroutines.z) == false) goto L6;
        ((kotlinx.coroutines.z) r2).b.invoke(r3);
        return;
    }

    @Override // kotlinx.coroutines.u0
    public kotlin.coroutines.c<T> b() {
        return this;
    }

    @Override // kotlinx.coroutines.u0
    public Object g() {
        Object r0 = this.f16015d;
        if (l0.a() == true) goto L5;
    L12:
        this.f16015d = h.a();
        return r0;
    L5:
        if (r0 == h.a()) goto L7;
        boolean r1 = true;
    L8:
        if (r1 == true) goto L12;
        throw new AssertionError();
    L7:
        r1 = false;
        goto L8
    }

    @Override // kotlin.coroutines.jvm.internal.c
    public kotlin.coroutines.jvm.internal.c getCallerFrame() {
        return this.f16016e;
    }

    @Override // kotlin.coroutines.c
    public CoroutineContext getContext() {
        return this.f16019h.getContext();
    }

    @Override // kotlin.coroutines.jvm.internal.c
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    public final Throwable h(kotlinx.coroutines.k<?> r4) {
    L2:
        Object r0 = this._reusableCancellableContinuation;
        y r1 = h.b;
        if (r0 != r1) goto L7;
        if (i.compareAndSet(this, r1, r4) == false) goto L2;
        return null;
    L7:
        if (r0 != null) goto L10;
        return null;
    L10:
        if ((r0 instanceof Throwable) == false) goto L18;
        if (i.compareAndSet(this, r0, null) == false) goto L16;
        return (Throwable) r0;
    L16:
        throw new IllegalArgumentException("Failed requirement.".toString());
    L18:
        throw new IllegalStateException(("Inconsistent state " + r0).toString());
    }

    public final kotlinx.coroutines.l<T> i() {
    L2:
        Object r0 = this._reusableCancellableContinuation;
        if (r0 == null) goto L4;
        if ((r0 instanceof kotlinx.coroutines.l) == false) goto L13;
        if (i.compareAndSet(this, r0, h.b) == false) goto L2;
        return (kotlinx.coroutines.l) r0;
    L13:
        throw new IllegalStateException(("Inconsistent state " + r0).toString());
    L4:
        this._reusableCancellableContinuation = h.b;
        return null;
    }

    public final void j(CoroutineContext r1, T r2) {
        this.f16015d = r2;
        this.c = 1;
        this.f16018g.z(r1, this);
    }

    public final kotlinx.coroutines.l<?> k() {
        Object r0 = this._reusableCancellableContinuation;
        if ((r0 instanceof kotlinx.coroutines.l) == true) goto L6;
        r0 = null;
    L6:
        return (kotlinx.coroutines.l) r0;
    }

    public final boolean n(kotlinx.coroutines.l<?> r5) {
        Object r0 = this._reusableCancellableContinuation;
        if (r0 != null) goto L5;
        return false;
    L5:
        if ((r0 instanceof kotlinx.coroutines.l) == false) goto L9;
        if (r0 != r5) goto L11;
        return true;
    L11:
        return false;
    L9:
        return true;
    }

    public final boolean o(Throwable r5) {
    L2:
        Object r0 = this._reusableCancellableContinuation;
        y r1 = h.b;
        if (kotlin.jvm.internal.r.a(r0, r1) == true) goto L5;
        if ((r0 instanceof Throwable) == true) goto L9;
        if (i.compareAndSet(this, r0, null) == false) goto L2;
        return false;
    L9:
        return true;
    L5:
        if (i.compareAndSet(this, r1, r5) == false) goto L2;
        return true;
    }

    @Override // kotlin.coroutines.c
    public void resumeWith(Object r7) {
        CoroutineContext r0 = this.f16019h.getContext();
        Object r3 = kotlinx.coroutines.b0.d(r7, null, 1, null);
        if (this.f16018g.A(r0) == false) goto L5;
        this.f16015d = r3;
        this.c = 0;
        this.f16018g.y(r0, this);
        return;
    L5:
        l0.a();
        c1 r1 = r2.b.a();
        if (r1.J() == false) goto L8;
        this.f16015d = r3;
        this.c = 0;
        r1.D(this);
        return;
    L8:
        r1.F(true);
        CoroutineContext r4 = getContext();     // Catch: Throwable -> L18
        Object r5 = ThreadContextKt.c(r4, this.f16017f);     // Catch: Throwable -> L18
        this.f16019h.resumeWith(r7);     // Catch: Throwable -> L15
        kotlin.v r8 = kotlin.v.f15822a;     // Catch: Throwable -> L15
        ThreadContextKt.a(r4, r5);     // Catch: Throwable -> L18
    L13:
        if (r1.L() == true) goto L13;
    L20:
        r1.B(true);
        return;
    L15:
        th = move-exception;
        ThreadContextKt.a(r4, r5);     // Catch: Throwable -> L18
        throw th;     // Catch: Throwable -> L18
    L18:
        th = move-exception;
        f(th, null);     // Catch: Throwable -> L22
    L22:
        th = move-exception;
        r1.B(true);
        throw th;
    }

    public String toString() {
        return "DispatchedContinuation[" + this.f16018g + ", " + m0.c(this.f16019h) + ']';
    }
}
