package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a<T> extends a2 implements t1, Continuation<T>, i0 {
    private final CoroutineContext b;
    protected final CoroutineContext c;

    public a(CoroutineContext coroutineContext, boolean z) {
        super(z);
        this.c = coroutineContext;
        this.b = coroutineContext.plus(this);
    }

    @Override // kotlinx.coroutines.a2
    public final void A0() {
        V0();
    }

    @Override // kotlinx.coroutines.i0
    /* JADX INFO: renamed from: E */
    public CoroutineContext getCoroutineContext() {
        return this.b;
    }

    protected void R0(Object obj) {
        O(obj);
    }

    public final void S0() {
        n0((t1) this.c.get(t1.R));
    }

    protected void T0(Throwable th, boolean z) {
    }

    protected void U0(T t) {
    }

    protected void V0() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.a2
    public String W() {
        return m0.a(this) + " was cancelled";
    }

    public final <R> void W0(CoroutineStart coroutineStart, R r, Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2) {
        S0();
        coroutineStart.invoke(function2, r, this);
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        return this.b;
    }

    @Override // kotlinx.coroutines.a2, kotlinx.coroutines.t1
    public boolean isActive() {
        return super.isActive();
    }

    @Override // kotlinx.coroutines.a2
    public final void m0(Throwable th) {
        f0.a(this.b, th);
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Object objS0 = s0(b0.d(obj, null, 1, null));
        if (objS0 == b2.b) {
            return;
        }
        R0(objS0);
    }

    @Override // kotlinx.coroutines.a2
    public String u0() {
        String strB = d0.b(this.b);
        if (strB == null) {
            return super.u0();
        }
        return '\"' + strB + "\":" + super.u0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.a2
    protected final void z0(Object obj) {
        if (!(obj instanceof y)) {
            U0(obj);
        } else {
            y yVar = (y) obj;
            T0(yVar.f16129a, yVar.a());
        }
    }
}
