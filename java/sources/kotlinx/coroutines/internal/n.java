package kotlinx.coroutines.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.l0;

/* JADX INFO: loaded from: classes6.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final AtomicReferenceFieldUpdater f16024a = AtomicReferenceFieldUpdater.newUpdater(n.class, Object.class, "_next");
    static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(n.class, Object.class, "_prev");
    private static final AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(n.class, Object.class, "_removedRef");
    volatile Object _next = this;
    volatile Object _prev = this;
    private volatile Object _removedRef = null;

    public static abstract class a extends kotlinx.coroutines.internal.b {
        @Override // kotlinx.coroutines.internal.b
        public final void a(kotlinx.coroutines.internal.d<?> dVar, Object obj) {
            boolean z = obj == null;
            n nVarH = h();
            if (nVarH == null) {
                if (l0.a() && !(!z)) {
                    throw new AssertionError();
                }
                return;
            }
            n nVarI = i();
            if (nVarI == null) {
                if (l0.a() && !(!z)) {
                    throw new AssertionError();
                }
            } else {
                if (n.f16024a.compareAndSet(nVarH, dVar, z ? n(nVarH, nVarI) : nVarI) && z) {
                    f(nVarH, nVarI);
                }
            }
        }

        @Override // kotlinx.coroutines.internal.b
        public final Object c(kotlinx.coroutines.internal.d<?> dVar) {
            while (true) {
                n nVarM = m(dVar);
                if (nVarM == null) {
                    return kotlinx.coroutines.internal.c.b;
                }
                Object obj = nVarM._next;
                if (obj == dVar || dVar.h()) {
                    return null;
                }
                if (obj instanceof u) {
                    u uVar = (u) obj;
                    if (dVar.b(uVar)) {
                        return kotlinx.coroutines.internal.c.b;
                    }
                    uVar.c(nVarM);
                } else {
                    Object objE = e(nVarM);
                    if (objE != null) {
                        return objE;
                    }
                    if (l(nVarM, obj)) {
                        continue;
                    } else {
                        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
                        c cVar = new c(nVarM, (n) obj, this);
                        if (n.f16024a.compareAndSet(nVarM, obj, cVar)) {
                            try {
                                Object objC = cVar.c(nVarM);
                                if (objC != o.f16027a) {
                                    if (l0.a()) {
                                        if (!(objC == null)) {
                                            throw new AssertionError();
                                        }
                                    }
                                    return null;
                                }
                            } catch (Throwable th) {
                                n.f16024a.compareAndSet(nVarM, cVar, obj);
                                throw th;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        }

        protected abstract Object e(n nVar);

        protected abstract void f(n nVar, n nVar2);

        public abstract void g(c cVar);

        protected abstract n h();

        protected abstract n i();

        public Object j(c cVar) {
            g(cVar);
            return null;
        }

        public void k(n nVar) {
        }

        protected abstract boolean l(n nVar, Object obj);

        protected abstract n m(u uVar);

        public abstract Object n(n nVar, n nVar2);
    }

    public static abstract class b extends kotlinx.coroutines.internal.d<n> {
        public n b;
        public final n c;

        public b(n nVar) {
            this.c = nVar;
        }

        @Override // kotlinx.coroutines.internal.d
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void d(n nVar, Object obj) {
            boolean z = obj == null;
            n nVar2 = z ? this.c : this.b;
            if (nVar2 != null && n.f16024a.compareAndSet(nVar, this, nVar2) && z) {
                n nVar3 = this.c;
                n nVar4 = this.b;
                kotlin.jvm.internal.r.c(nVar4);
                nVar3.F(nVar4);
            }
        }
    }

    public static final class c extends u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final n f16025a;
        public final n b;
        public final a c;

        public c(n nVar, n nVar2, a aVar) {
            this.f16025a = nVar;
            this.b = nVar2;
            this.c = aVar;
        }

        @Override // kotlinx.coroutines.internal.u
        public kotlinx.coroutines.internal.d<?> a() {
            return this.c.b();
        }

        @Override // kotlinx.coroutines.internal.u
        public Object c(Object obj) {
            Object objN;
            if (l0.a()) {
                if (!(obj == this.f16025a)) {
                    throw new AssertionError();
                }
            }
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            n nVar = (n) obj;
            Object objJ = this.c.j(this);
            Object obj2 = o.f16027a;
            if (objJ == obj2) {
                n nVar2 = this.b;
                if (n.f16024a.compareAndSet(nVar, this, nVar2.P())) {
                    this.c.k(nVar);
                    nVar2.D(null);
                }
                return obj2;
            }
            Object objE = objJ != null ? a().e(objJ) : a().f();
            if (objE == kotlinx.coroutines.internal.c.f16009a) {
                objN = a();
            } else {
                objN = objE == null ? this.c.n(nVar, this.b) : this.b;
            }
            n.f16024a.compareAndSet(nVar, this, objN);
            return null;
        }

        public final void d() {
            this.c.g(this);
        }

        @Override // kotlinx.coroutines.internal.u
        public String toString() {
            return "PrepareOp(op=" + a() + ')';
        }
    }

    public static class d<T> extends a {
        private static final AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_affectedNode");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final AtomicReferenceFieldUpdater f16026d = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_originalNext");
        private volatile Object _affectedNode = null;
        private volatile Object _originalNext = null;
        public final n b;

        public d(n nVar) {
            this.b = nVar;
        }

        @Override // kotlinx.coroutines.internal.n.a
        protected Object e(n nVar) {
            if (nVar == this.b) {
                return m.b();
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.n.a
        protected final void f(n nVar, n nVar2) {
            nVar2.D(null);
        }

        @Override // kotlinx.coroutines.internal.n.a
        public void g(c cVar) {
            c.compareAndSet(this, null, cVar.f16025a);
            f16026d.compareAndSet(this, null, cVar.b);
        }

        @Override // kotlinx.coroutines.internal.n.a
        protected final n h() {
            return (n) this._affectedNode;
        }

        @Override // kotlinx.coroutines.internal.n.a
        protected final n i() {
            return (n) this._originalNext;
        }

        @Override // kotlinx.coroutines.internal.n.a
        protected final boolean l(n nVar, Object obj) {
            if (!(obj instanceof v)) {
                return false;
            }
            ((v) obj).f16038a.L();
            return true;
        }

        @Override // kotlinx.coroutines.internal.n.a
        protected final n m(u uVar) {
            n nVar = this.b;
            while (true) {
                Object obj = nVar._next;
                if (!(obj instanceof u)) {
                    Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
                    return (n) obj;
                }
                u uVar2 = (u) obj;
                if (uVar.b(uVar2)) {
                    return null;
                }
                uVar2.c(this.b);
            }
        }

        @Override // kotlinx.coroutines.internal.n.a
        public final Object n(n nVar, n nVar2) {
            return nVar2.P();
        }

        public final T o() {
            T t = (T) h();
            kotlin.jvm.internal.r.c(t);
            return t;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final n D(u uVar) {
        Object obj;
        while (true) {
            n nVar = (n) this._prev;
            n nVar2 = nVar;
            while (true) {
                n nVar3 = null;
                while (true) {
                    obj = nVar2._next;
                    if (obj == this) {
                        if (nVar != nVar2 && !b.compareAndSet(this, nVar, nVar2)) {
                            break;
                        }
                        return nVar2;
                    }
                    if (M()) {
                        return null;
                    }
                    if (obj == uVar) {
                        return nVar2;
                    }
                    if (obj instanceof u) {
                        if (uVar != null && uVar.b((u) obj)) {
                            return null;
                        }
                        ((u) obj).c(nVar2);
                        break;
                    }
                    if (!(obj instanceof v)) {
                        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
                        nVar3 = nVar2;
                        nVar2 = (n) obj;
                    } else {
                        if (nVar3 != null) {
                            break;
                        }
                        nVar2 = (n) nVar2._prev;
                    }
                }
                if (!f16024a.compareAndSet(nVar3, nVar2, ((v) obj).f16038a)) {
                    break;
                }
                nVar2 = nVar3;
            }
        }
    }

    private final n E(n nVar) {
        while (nVar.M()) {
            nVar = (n) nVar._prev;
        }
        return nVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F(n nVar) {
        n nVar2;
        do {
            nVar2 = (n) nVar._prev;
            if (G() != nVar) {
                return;
            }
        } while (!b.compareAndSet(nVar, nVar2, this));
        if (M()) {
            nVar.D(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final v P() {
        v vVar = (v) this._removedRef;
        if (vVar != null) {
            return vVar;
        }
        v vVar2 = new v(this);
        c.lazySet(this, vVar2);
        return vVar2;
    }

    public final boolean A(n nVar) {
        b.lazySet(nVar, this);
        f16024a.lazySet(nVar, this);
        while (G() == this) {
            if (f16024a.compareAndSet(this, this, nVar)) {
                nVar.F(this);
                return true;
            }
        }
        return false;
    }

    public final Object G() {
        while (true) {
            Object obj = this._next;
            if (!(obj instanceof u)) {
                return obj;
            }
            ((u) obj).c(this);
        }
    }

    public final n H() {
        return m.c(G());
    }

    public final n I() {
        n nVarD = D(null);
        return nVarD != null ? nVarD : E((n) this._prev);
    }

    public final void K() {
        Object objG = G();
        Objects.requireNonNull(objG, "null cannot be cast to non-null type kotlinx.coroutines.internal.Removed");
        ((v) objG).f16038a.D(null);
    }

    public final void L() {
        n nVar = this;
        while (true) {
            Object objG = nVar.G();
            if (!(objG instanceof v)) {
                nVar.D(null);
                return;
            }
            nVar = ((v) objG).f16038a;
        }
    }

    public boolean M() {
        return G() instanceof v;
    }

    public boolean N() {
        return O() == null;
    }

    public final n O() {
        Object objG;
        n nVar;
        do {
            objG = G();
            if (objG instanceof v) {
                return ((v) objG).f16038a;
            }
            if (objG == this) {
                return (n) objG;
            }
            Objects.requireNonNull(objG, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            nVar = (n) objG;
        } while (!f16024a.compareAndSet(this, objG, nVar.P()));
        nVar.D(null);
        return null;
    }

    public final int Q(n nVar, n nVar2, b bVar) {
        b.lazySet(nVar, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f16024a;
        atomicReferenceFieldUpdater.lazySet(nVar, nVar2);
        bVar.b = nVar2;
        if (atomicReferenceFieldUpdater.compareAndSet(this, nVar2, bVar)) {
            return bVar.c(this) == null ? 1 : 2;
        }
        return 0;
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + Integer.toHexString(System.identityHashCode(this));
    }

    public final void y(n nVar) {
        while (!I().z(nVar, this)) {
        }
    }

    public final boolean z(n nVar, n nVar2) {
        b.lazySet(nVar, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f16024a;
        atomicReferenceFieldUpdater.lazySet(nVar, nVar2);
        if (!atomicReferenceFieldUpdater.compareAndSet(this, nVar2, nVar)) {
            return false;
        }
        nVar.F(nVar2);
        return true;
    }
}
