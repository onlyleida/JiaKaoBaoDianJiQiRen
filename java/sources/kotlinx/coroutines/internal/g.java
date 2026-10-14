package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.c1;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.m0;
import kotlinx.coroutines.r2;
import kotlinx.coroutines.u0;

/* JADX INFO: loaded from: classes6.dex */
public final class g<T> extends u0<T> implements CoroutineStackFrame, Continuation<T> {
    private static final AtomicReferenceFieldUpdater i = AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, "_reusableCancellableContinuation");
    private volatile Object _reusableCancellableContinuation;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f16015d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CoroutineStackFrame f16016e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f16017f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final CoroutineDispatcher f16018g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Continuation<T> f16019h;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [kotlin.coroutines.c<? super T>, kotlin.coroutines.c<T>] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.c<? super T> to ?? for r3v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.instructions.args.InsnArg.wrapInstruction(InsnArg.java:139)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.inline(CodeShrinkVisitor.java:212)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.checkInline(CodeShrinkVisitor.java:143)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.shrinkBlock(CodeShrinkVisitor.java:68)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.shrinkMethod(CodeShrinkVisitor.java:48)
        	at jadx.core.dex.visitors.regions.TernaryMod.replaceWithTernary(TernaryMod.java:359)
        	at jadx.core.dex.visitors.regions.TernaryMod.processOneBranchTernary(TernaryMod.java:284)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:82)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    public g(kotlinx.coroutines.CoroutineDispatcher r2, kotlin.coroutines.Continuation<? super T> r3) {
        /*
            r1 = this;
            r0 = -1
            r1.<init>(r0)
            r1.f16018g = r2
            r1.f16019h = r3
            kotlinx.coroutines.internal.y r2 = kotlinx.coroutines.internal.h.a()
            r1.f16015d = r2
            boolean r2 = r3 instanceof kotlin.coroutines.jvm.internal.CoroutineStackFrame
            r0 = 0
            if (r2 != 0) goto L14
            r3 = r0
        L14:
            kotlin.coroutines.jvm.internal.c r3 = (kotlin.coroutines.jvm.internal.CoroutineStackFrame) r3
            r1.f16016e = r3
            kotlin.coroutines.CoroutineContext r2 = r1.getContext()
            java.lang.Object r2 = kotlinx.coroutines.internal.ThreadContextKt.b(r2)
            r1.f16017f = r2
            r1._reusableCancellableContinuation = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.g.<init>(kotlinx.coroutines.CoroutineDispatcher, kotlin.coroutines.c):void");
    }

    @Override // kotlinx.coroutines.u0
    public void a(Object obj, Throwable th) {
        if (obj instanceof kotlinx.coroutines.z) {
            ((kotlinx.coroutines.z) obj).b.invoke(th);
        }
    }

    @Override // kotlinx.coroutines.u0
    public Continuation<T> b() {
        return this;
    }

    @Override // kotlinx.coroutines.u0
    public Object g() {
        Object obj = this.f16015d;
        if (l0.a()) {
            if (!(obj != h.f16020a)) {
                throw new AssertionError();
            }
        }
        this.f16015d = h.f16020a;
        return obj;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public CoroutineStackFrame getCallerFrame() {
        return this.f16016e;
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return this.f16019h.getContext();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    public final Throwable h(kotlinx.coroutines.k<?> kVar) {
        y yVar;
        do {
            Object obj = this._reusableCancellableContinuation;
            yVar = h.b;
            if (obj != yVar) {
                if (obj == null) {
                    return null;
                }
                if (obj instanceof Throwable) {
                    if (i.compareAndSet(this, obj, null)) {
                        return (Throwable) obj;
                    }
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!i.compareAndSet(this, yVar, kVar));
        return null;
    }

    public final kotlinx.coroutines.l<T> i() {
        Object obj;
        do {
            obj = this._reusableCancellableContinuation;
            if (obj == null) {
                this._reusableCancellableContinuation = h.b;
                return null;
            }
            if (!(obj instanceof kotlinx.coroutines.l)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!i.compareAndSet(this, obj, h.b));
        return (kotlinx.coroutines.l) obj;
    }

    public final void j(CoroutineContext coroutineContext, T t) {
        this.f16015d = t;
        this.c = 1;
        this.f16018g.z(coroutineContext, this);
    }

    public final kotlinx.coroutines.l<?> k() {
        Object obj = this._reusableCancellableContinuation;
        if (!(obj instanceof kotlinx.coroutines.l)) {
            obj = null;
        }
        return (kotlinx.coroutines.l) obj;
    }

    public final boolean n(kotlinx.coroutines.l<?> lVar) {
        Object obj = this._reusableCancellableContinuation;
        if (obj != null) {
            return !(obj instanceof kotlinx.coroutines.l) || obj == lVar;
        }
        return false;
    }

    public final boolean o(Throwable th) {
        while (true) {
            Object obj = this._reusableCancellableContinuation;
            y yVar = h.b;
            if (kotlin.jvm.internal.r.a(obj, yVar)) {
                if (i.compareAndSet(this, yVar, th)) {
                    return true;
                }
            } else {
                if (obj instanceof Throwable) {
                    return true;
                }
                if (i.compareAndSet(this, obj, null)) {
                    return false;
                }
            }
        }
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object obj) {
        CoroutineContext context = this.f16019h.getContext();
        Object objD = kotlinx.coroutines.b0.d(obj, null, 1, null);
        if (this.f16018g.A(context)) {
            this.f16015d = objD;
            this.c = 0;
            this.f16018g.y(context, this);
            return;
        }
        l0.a();
        c1 c1VarA = r2.b.a();
        if (c1VarA.J()) {
            this.f16015d = objD;
            this.c = 0;
            c1VarA.D(this);
            return;
        }
        c1VarA.F(true);
        try {
            CoroutineContext context2 = getContext();
            Object objC = ThreadContextKt.c(context2, this.f16017f);
            try {
                this.f16019h.resumeWith(obj);
                kotlin.v vVar = kotlin.v.f15822a;
                ThreadContextKt.a(context2, objC);
                while (c1VarA.L()) {
                }
            } catch (Throwable th) {
                ThreadContextKt.a(context2, objC);
                throw th;
            }
        } catch (Throwable th2) {
            try {
                f(th2, null);
            } finally {
                c1VarA.B(true);
            }
        }
    }

    public String toString() {
        return "DispatchedContinuation[" + this.f16018g + ", " + m0.c(this.f16019h) + ']';
    }
}
