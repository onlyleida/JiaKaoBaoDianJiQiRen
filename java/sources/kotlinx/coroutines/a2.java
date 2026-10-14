package kotlinx.coroutines;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
public class a2 implements t1, s, h2, kotlinx.coroutines.selects.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater f15829a = AtomicReferenceFieldUpdater.newUpdater(a2.class, Object.class, "_state");
    private volatile Object _parentHandle;
    private volatile Object _state;

    private static final class a<T> extends l<T> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final a2 f15830h;

        public a(Continuation<? super T> continuation, a2 a2Var) {
            super(continuation, 1);
            this.f15830h = a2Var;
        }

        @Override // kotlinx.coroutines.l
        protected String F() {
            return "AwaitContinuation";
        }

        @Override // kotlinx.coroutines.l
        public Throwable u(t1 t1Var) {
            Throwable thE;
            Object objK0 = this.f15830h.k0();
            if (!(objK0 instanceof c) || (thE = ((c) objK0).e()) == null) {
                return objK0 instanceof y ? ((y) objK0).f16129a : t1Var.i();
            }
            return thE;
        }
    }

    private static final class b extends z1<t1> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final a2 f15831e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final c f15832f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final r f15833g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final Object f15834h;

        public b(a2 a2Var, c cVar, r rVar, Object obj) {
            super(rVar.f16063e);
            this.f15831e = a2Var;
            this.f15832f = cVar;
            this.f15833g = rVar;
            this.f15834h = obj;
        }

        @Override // kotlinx.coroutines.a0
        public void R(Throwable th) {
            this.f15831e.Z(this.f15832f, this.f15833g, this.f15834h);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
            R(th);
            return kotlin.v.f15822a;
        }

        @Override // kotlinx.coroutines.internal.n
        public String toString() {
            return "ChildCompletion[" + this.f15833g + ", " + this.f15834h + ']';
        }
    }

    private static final class c implements n1 {
        private volatile Object _exceptionsHolder = null;
        private volatile int _isCompleting;
        private volatile Object _rootCause;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e2 f15835a;

        public c(e2 e2Var, boolean z, Throwable th) {
            this.f15835a = e2Var;
            this._isCompleting = z ? 1 : 0;
            this._rootCause = th;
        }

        private final ArrayList<Throwable> b() {
            return new ArrayList<>(4);
        }

        private final Object c() {
            return this._exceptionsHolder;
        }

        private final void k(Object obj) {
            this._exceptionsHolder = obj;
        }

        public final void a(Throwable th) {
            Throwable thE = e();
            if (thE == null) {
                l(th);
                return;
            }
            if (th == thE) {
                return;
            }
            Object objC = c();
            if (objC == null) {
                k(th);
                return;
            }
            if (!(objC instanceof Throwable)) {
                if (objC instanceof ArrayList) {
                    ((ArrayList) objC).add(th);
                    return;
                }
                throw new IllegalStateException(("State is " + objC).toString());
            }
            if (th == objC) {
                return;
            }
            ArrayList<Throwable> arrayListB = b();
            arrayListB.add(objC);
            arrayListB.add(th);
            kotlin.v vVar = kotlin.v.f15822a;
            k(arrayListB);
        }

        @Override // kotlinx.coroutines.n1
        public e2 d() {
            return this.f15835a;
        }

        public final Throwable e() {
            return (Throwable) this._rootCause;
        }

        public final boolean f() {
            return e() != null;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
        public final boolean g() {
            return this._isCompleting;
        }

        public final boolean h() {
            return c() == b2.f15846e;
        }

        public final List<Throwable> i(Throwable th) {
            ArrayList<Throwable> arrayListB;
            Object objC = c();
            if (objC == null) {
                arrayListB = b();
            } else if (objC instanceof Throwable) {
                ArrayList<Throwable> arrayListB2 = b();
                arrayListB2.add(objC);
                arrayListB = arrayListB2;
            } else {
                if (!(objC instanceof ArrayList)) {
                    throw new IllegalStateException(("State is " + objC).toString());
                }
                arrayListB = (ArrayList) objC;
            }
            Throwable thE = e();
            if (thE != null) {
                arrayListB.add(0, thE);
            }
            if (th != null && (!kotlin.jvm.internal.r.a(th, thE))) {
                arrayListB.add(th);
            }
            k(b2.f15846e);
            return arrayListB;
        }

        @Override // kotlinx.coroutines.n1
        public boolean isActive() {
            return e() == null;
        }

        public final void j(boolean z) {
            this._isCompleting = z ? 1 : 0;
        }

        public final void l(Throwable th) {
            this._rootCause = th;
        }

        public String toString() {
            return "Finishing[cancelling=" + f() + ", completing=" + g() + ", rootCause=" + e() + ", exceptions=" + c() + ", list=" + d() + ']';
        }
    }

    public static final class d extends kotlinx.coroutines.internal.n.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ a2 f15836d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Object f15837e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(kotlinx.coroutines.internal.n nVar, kotlinx.coroutines.internal.n nVar2, a2 a2Var, Object obj) {
            super(nVar2);
            this.f15836d = a2Var;
            this.f15837e = obj;
        }

        @Override // kotlinx.coroutines.internal.d
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public Object i(kotlinx.coroutines.internal.n nVar) {
            if (this.f15836d.k0() == this.f15837e) {
                return null;
            }
            return kotlinx.coroutines.internal.m.a();
        }
    }

    public a2(boolean z) {
        this._state = z ? b2.f15848g : b2.f15847f;
        this._parentHandle = null;
    }

    private final void B0(b1 b1Var) {
        e2 e2Var = new e2();
        Object m1Var = e2Var;
        if (!b1Var.isActive()) {
            m1Var = new m1(e2Var);
        }
        f15829a.compareAndSet(this, b1Var, m1Var);
    }

    private final void C0(z1<?> z1Var) {
        z1Var.A(new e2());
        f15829a.compareAndSet(this, z1Var, z1Var.H());
    }

    private final int H0(Object obj) {
        if (obj instanceof b1) {
            if (((b1) obj).isActive()) {
                return 0;
            }
            if (!f15829a.compareAndSet(this, obj, b2.f15848g)) {
                return -1;
            }
            A0();
            return 1;
        }
        if (!(obj instanceof m1)) {
            return 0;
        }
        if (!f15829a.compareAndSet(this, obj, ((m1) obj).d())) {
            return -1;
        }
        A0();
        return 1;
    }

    private final String I0(Object obj) {
        if (!(obj instanceof c)) {
            if (obj instanceof n1) {
                return ((n1) obj).isActive() ? "Active" : "New";
            }
            return obj instanceof y ? "Cancelled" : "Completed";
        }
        c cVar = (c) obj;
        if (cVar.f()) {
            return "Cancelling";
        }
        return cVar.g() ? "Completing" : "Active";
    }

    public static /* synthetic */ CancellationException K0(a2 a2Var, Throwable th, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        return a2Var.J0(th, str);
    }

    private final boolean M(Object obj, e2 e2Var, z1<?> z1Var) {
        int iQ;
        d dVar = new d(z1Var, z1Var, this, obj);
        do {
            iQ = e2Var.I().Q(z1Var, e2Var, dVar);
            if (iQ == 1) {
                return true;
            }
        } while (iQ != 2);
        return false;
    }

    private final boolean M0(n1 n1Var, Object obj) throws Throwable {
        if (l0.a()) {
            if (!((n1Var instanceof b1) || (n1Var instanceof z1))) {
                throw new AssertionError();
            }
        }
        if (l0.a() && !(!(obj instanceof y))) {
            throw new AssertionError();
        }
        if (!f15829a.compareAndSet(this, n1Var, b2.g(obj))) {
            return false;
        }
        y0(null);
        z0(obj);
        Y(n1Var, obj);
        return true;
    }

    private final void N(Throwable th, List<? extends Throwable> list) {
        if (list.size() <= 1) {
            return;
        }
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        Throwable thM = !l0.d() ? th : kotlinx.coroutines.internal.x.m(th);
        for (Throwable thM2 : list) {
            if (l0.d()) {
                thM2 = kotlinx.coroutines.internal.x.m(thM2);
            }
            if (thM2 != th && thM2 != thM && !(thM2 instanceof CancellationException) && setNewSetFromMap.add(thM2)) {
                kotlin.b.a(th, thM2);
            }
        }
    }

    private final boolean N0(n1 n1Var, Throwable th) throws Throwable {
        if (l0.a() && !(!(n1Var instanceof c))) {
            throw new AssertionError();
        }
        if (l0.a() && !n1Var.isActive()) {
            throw new AssertionError();
        }
        e2 e2VarI0 = i0(n1Var);
        if (e2VarI0 == null) {
            return false;
        }
        if (!f15829a.compareAndSet(this, n1Var, new c(e2VarI0, false, th))) {
            return false;
        }
        w0(e2VarI0, th);
        return true;
    }

    private final Object O0(Object obj, Object obj2) {
        if (!(obj instanceof n1)) {
            return b2.f15844a;
        }
        if ((!(obj instanceof b1) && !(obj instanceof z1)) || (obj instanceof r) || (obj2 instanceof y)) {
            return P0((n1) obj, obj2);
        }
        return M0((n1) obj, obj2) ? obj2 : b2.c;
    }

    private final Object P0(n1 n1Var, Object obj) throws Throwable {
        e2 e2VarI0 = i0(n1Var);
        if (e2VarI0 == null) {
            return b2.c;
        }
        c cVar = (c) (!(n1Var instanceof c) ? null : n1Var);
        if (cVar == null) {
            cVar = new c(e2VarI0, false, null);
        }
        synchronized (cVar) {
            if (cVar.g()) {
                return b2.f15844a;
            }
            cVar.j(true);
            if (cVar != n1Var && !f15829a.compareAndSet(this, n1Var, cVar)) {
                return b2.c;
            }
            if (l0.a() && !(!cVar.h())) {
                throw new AssertionError();
            }
            boolean zF = cVar.f();
            y yVar = (y) (!(obj instanceof y) ? null : obj);
            if (yVar != null) {
                cVar.a(yVar.f16129a);
            }
            Throwable thE = true ^ zF ? cVar.e() : null;
            kotlin.v vVar = kotlin.v.f15822a;
            if (thE != null) {
                w0(e2VarI0, thE);
            }
            r rVarC0 = c0(n1Var);
            return (rVarC0 == null || !Q0(cVar, rVarC0, obj)) ? b0(cVar, obj) : b2.b;
        }
    }

    private final boolean Q0(c cVar, r rVar, Object obj) {
        while (t1.a.d(rVar.f16063e, false, false, new b(this, cVar, rVar, obj), 1, null) == f2.f15920a) {
            rVar = v0(rVar);
            if (rVar == null) {
                return false;
            }
        }
        return true;
    }

    private final Object U(Object obj) {
        Object objO0;
        do {
            Object objK0 = k0();
            if (!(objK0 instanceof n1) || ((objK0 instanceof c) && ((c) objK0).g())) {
                return b2.f15844a;
            }
            objO0 = O0(objK0, new y(a0(obj), false, 2, null));
        } while (objO0 == b2.c);
        return objO0;
    }

    private final boolean V(Throwable th) {
        if (o0()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        q qVarJ0 = j0();
        if (qVarJ0 == null || qVarJ0 == f2.f15920a) {
            return z;
        }
        return qVarJ0.b(th) || z;
    }

    private final void Y(n1 n1Var, Object obj) throws Throwable {
        q qVarJ0 = j0();
        if (qVarJ0 != null) {
            qVarJ0.dispose();
            G0(f2.f15920a);
        }
        if (!(obj instanceof y)) {
            obj = null;
        }
        y yVar = (y) obj;
        Throwable th = yVar != null ? yVar.f16129a : null;
        if (!(n1Var instanceof z1)) {
            e2 e2VarD = n1Var.d();
            if (e2VarD != null) {
                x0(e2VarD, th);
                return;
            }
            return;
        }
        try {
            ((z1) n1Var).R(th);
        } catch (Throwable th2) {
            m0(new CompletionHandlerException("Exception in completion handler " + n1Var + " for " + this, th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z(c cVar, r rVar, Object obj) {
        if (l0.a()) {
            if (!(k0() == cVar)) {
                throw new AssertionError();
            }
        }
        r rVarV0 = v0(rVar);
        if (rVarV0 == null || !Q0(cVar, rVarV0, obj)) {
            O(b0(cVar, obj));
        }
    }

    private final Throwable a0(Object obj) {
        if (obj != null ? obj instanceof Throwable : true) {
            return obj != null ? (Throwable) obj : new JobCancellationException(W(), null, this);
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((h2) obj).u();
    }

    private final Object b0(c cVar, Object obj) throws Throwable {
        boolean zF;
        Throwable thF0;
        boolean z = true;
        if (l0.a()) {
            if (!(k0() == cVar)) {
                throw new AssertionError();
            }
        }
        if (l0.a() && !(!cVar.h())) {
            throw new AssertionError();
        }
        if (l0.a() && !cVar.g()) {
            throw new AssertionError();
        }
        y yVar = (y) (!(obj instanceof y) ? null : obj);
        Throwable th = yVar != null ? yVar.f16129a : null;
        synchronized (cVar) {
            zF = cVar.f();
            List<Throwable> listI = cVar.i(th);
            thF0 = f0(cVar, listI);
            if (thF0 != null) {
                N(thF0, listI);
            }
        }
        if (thF0 != null && thF0 != th) {
            obj = new y(thF0, false, 2, null);
        }
        if (thF0 != null) {
            if (!V(thF0) && !l0(thF0)) {
                z = false;
            }
            if (z) {
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                ((y) obj).b();
            }
        }
        if (!zF) {
            y0(thF0);
        }
        z0(obj);
        boolean zCompareAndSet = f15829a.compareAndSet(this, cVar, b2.g(obj));
        if (l0.a() && !zCompareAndSet) {
            throw new AssertionError();
        }
        Y(cVar, obj);
        return obj;
    }

    private final r c0(n1 n1Var) {
        r rVar = (r) (!(n1Var instanceof r) ? null : n1Var);
        if (rVar != null) {
            return rVar;
        }
        e2 e2VarD = n1Var.d();
        if (e2VarD != null) {
            return v0(e2VarD);
        }
        return null;
    }

    private final Throwable e0(Object obj) {
        if (!(obj instanceof y)) {
            obj = null;
        }
        y yVar = (y) obj;
        if (yVar != null) {
            return yVar.f16129a;
        }
        return null;
    }

    private final Throwable f0(c cVar, List<? extends Throwable> list) {
        Object next;
        Object obj = null;
        if (list.isEmpty()) {
            if (cVar.f()) {
                return new JobCancellationException(W(), null, this);
            }
            return null;
        }
        Iterator<T> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(!(((Throwable) next) instanceof CancellationException)));
        Throwable th = (Throwable) next;
        if (th != null) {
            return th;
        }
        Throwable th2 = list.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            for (Object obj2 : list) {
                Throwable th3 = (Throwable) obj2;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj = obj2;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    private final e2 i0(n1 n1Var) {
        e2 e2VarD = n1Var.d();
        if (e2VarD != null) {
            return e2VarD;
        }
        if (n1Var instanceof b1) {
            return new e2();
        }
        if (n1Var instanceof z1) {
            C0((z1) n1Var);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + n1Var).toString());
    }

    private final boolean p0() {
        Object objK0;
        do {
            objK0 = k0();
            if (!(objK0 instanceof n1)) {
                return false;
            }
        } while (H0(objK0) < 0);
        return true;
    }

    private final Object r0(Object obj) throws Throwable {
        Throwable thA0 = null;
        while (true) {
            Object objK0 = k0();
            if (objK0 instanceof c) {
                synchronized (objK0) {
                    if (((c) objK0).h()) {
                        return b2.f15845d;
                    }
                    boolean zF = ((c) objK0).f();
                    if (obj != null || !zF) {
                        if (thA0 == null) {
                            thA0 = a0(obj);
                        }
                        ((c) objK0).a(thA0);
                    }
                    Throwable thE = zF ^ true ? ((c) objK0).e() : null;
                    if (thE != null) {
                        w0(((c) objK0).d(), thE);
                    }
                    return b2.f15844a;
                }
            }
            if (!(objK0 instanceof n1)) {
                return b2.f15845d;
            }
            if (thA0 == null) {
                thA0 = a0(obj);
            }
            n1 n1Var = (n1) objK0;
            if (!n1Var.isActive()) {
                Object objO0 = O0(objK0, new y(thA0, false, 2, null));
                if (objO0 == b2.f15844a) {
                    throw new IllegalStateException(("Cannot happen in " + objK0).toString());
                }
                if (objO0 != b2.c) {
                    return objO0;
                }
            } else if (N0(n1Var, thA0)) {
                return b2.f15844a;
            }
        }
    }

    private final z1<?> t0(Function1<? super Throwable, kotlin.v> function1, boolean z) {
        if (z) {
            u1 u1Var = (u1) (function1 instanceof u1 ? function1 : null);
            if (u1Var != null) {
                if (l0.a()) {
                    if (!(u1Var.f16133d == this)) {
                        throw new AssertionError();
                    }
                }
                if (u1Var != null) {
                    return u1Var;
                }
            }
            return new r1(this, function1);
        }
        z1<?> z1Var = (z1) (function1 instanceof z1 ? function1 : null);
        if (z1Var != null) {
            if (l0.a()) {
                if (!(z1Var.f16133d == this && !(z1Var instanceof u1))) {
                    throw new AssertionError();
                }
            }
            if (z1Var != null) {
                return z1Var;
            }
        }
        return new s1(this, function1);
    }

    private final r v0(kotlinx.coroutines.internal.n nVar) {
        while (nVar.M()) {
            nVar = nVar.I();
        }
        while (true) {
            nVar = nVar.H();
            if (!nVar.M()) {
                if (nVar instanceof r) {
                    return (r) nVar;
                }
                if (nVar instanceof e2) {
                    return null;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002b  */
    /* JADX WARN: Instruction removed from duplicated block: B:15:0x002b, please report this as an issue */
    private final void w0(e2 e2Var, Throwable th) throws Throwable {
        y0(th);
        Object objG = e2Var.G();
        Objects.requireNonNull(objG, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        CompletionHandlerException completionHandlerException = null;
        for (kotlinx.coroutines.internal.n nVarH = (kotlinx.coroutines.internal.n) objG; !kotlin.jvm.internal.r.a(nVarH, e2Var); nVarH = nVarH.H()) {
            if (nVarH instanceof u1) {
                z1 z1Var = (z1) nVarH;
                try {
                    z1Var.R(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        kotlin.b.a(completionHandlerException, th2);
                        if (completionHandlerException == null) {
                            completionHandlerException = new CompletionHandlerException("Exception in completion handler " + z1Var + " for " + this, th2);
                            kotlin.v vVar = kotlin.v.f15822a;
                        }
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + z1Var + " for " + this, th2);
                        kotlin.v vVar2 = kotlin.v.f15822a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            m0(completionHandlerException);
        }
        V(th);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0028  */
    /* JADX WARN: Instruction removed from duplicated block: B:15:0x0028, please report this as an issue */
    private final void x0(e2 e2Var, Throwable th) throws Throwable {
        Object objG = e2Var.G();
        Objects.requireNonNull(objG, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        CompletionHandlerException completionHandlerException = null;
        for (kotlinx.coroutines.internal.n nVarH = (kotlinx.coroutines.internal.n) objG; !kotlin.jvm.internal.r.a(nVarH, e2Var); nVarH = nVarH.H()) {
            if (nVarH instanceof z1) {
                z1 z1Var = (z1) nVarH;
                try {
                    z1Var.R(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        kotlin.b.a(completionHandlerException, th2);
                        if (completionHandlerException == null) {
                            completionHandlerException = new CompletionHandlerException("Exception in completion handler " + z1Var + " for " + this, th2);
                            kotlin.v vVar = kotlin.v.f15822a;
                        }
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + z1Var + " for " + this, th2);
                        kotlin.v vVar2 = kotlin.v.f15822a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            m0(completionHandlerException);
        }
    }

    public void A0() {
    }

    public final <T, R> void D0(kotlinx.coroutines.selects.f<? super R> fVar, Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        Object objK0;
        do {
            objK0 = k0();
            if (fVar.e()) {
                return;
            }
            if (!(objK0 instanceof n1)) {
                if (fVar.j()) {
                    if (objK0 instanceof y) {
                        fVar.p(((y) objK0).f16129a);
                        return;
                    } else {
                        kotlinx.coroutines.a3.b.d(function2, b2.h(objK0), fVar.o());
                        return;
                    }
                }
                return;
            }
        } while (H0(objK0) != 0);
        fVar.h(n(new m2(this, fVar, function2)));
    }

    public final void E0(z1<?> z1Var) {
        Object objK0;
        do {
            objK0 = k0();
            if (!(objK0 instanceof z1)) {
                if (!(objK0 instanceof n1) || ((n1) objK0).d() == null) {
                    return;
                }
                z1Var.N();
                return;
            }
            if (objK0 != z1Var) {
                return;
            }
        } while (!f15829a.compareAndSet(this, objK0, b2.f15848g));
    }

    public final <T, R> void F0(kotlinx.coroutines.selects.f<? super R> fVar, Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        Object objK0 = k0();
        if (objK0 instanceof y) {
            fVar.p(((y) objK0).f16129a);
        } else {
            kotlinx.coroutines.a3.a.d(function2, b2.h(objK0), fVar.o(), null, 4, null);
        }
    }

    public final void G0(q qVar) {
        this._parentHandle = qVar;
    }

    @Override // kotlinx.coroutines.t1
    public final q I(s sVar) {
        y0 y0VarD = t1.a.d(this, true, false, new r(this, sVar), 2, null);
        Objects.requireNonNull(y0VarD, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        return (q) y0VarD;
    }

    protected final CancellationException J0(Throwable th, String str) {
        CancellationException jobCancellationException = (CancellationException) (!(th instanceof CancellationException) ? null : th);
        if (jobCancellationException == null) {
            if (str == null) {
                str = W();
            }
            jobCancellationException = new JobCancellationException(str, th, this);
        }
        return jobCancellationException;
    }

    public final String L0() {
        return u0() + '{' + I0(k0()) + '}';
    }

    protected void O(Object obj) {
    }

    public final Object P(Continuation<Object> continuation) throws Throwable {
        Object objK0;
        do {
            objK0 = k0();
            if (!(objK0 instanceof n1)) {
                if (!(objK0 instanceof y)) {
                    return b2.h(objK0);
                }
                Throwable th = ((y) objK0).f16129a;
                if (l0.d() && (continuation instanceof CoroutineStackFrame)) {
                    throw kotlinx.coroutines.internal.x.j(th, (CoroutineStackFrame) continuation);
                }
                throw th;
            }
        } while (H0(objK0) < 0);
        return Q(continuation);
    }

    final /* synthetic */ Object Q(Continuation<Object> continuation) {
        a aVar = new a(IntrinsicsKt__IntrinsicsJvmKt.c(continuation), this);
        n.a(aVar, n(new j2(this, aVar)));
        Object objX = aVar.x();
        if (objX == kotlin.coroutines.intrinsics.b.d()) {
            kotlin.coroutines.jvm.internal.f.c(continuation);
        }
        return objX;
    }

    public final boolean R(Throwable th) {
        return S(th);
    }

    public final boolean S(Object obj) throws Throwable {
        Object objR0 = b2.f15844a;
        if (h0() && (objR0 = U(obj)) == b2.b) {
            return true;
        }
        if (objR0 == b2.f15844a) {
            objR0 = r0(obj);
        }
        if (objR0 == b2.f15844a || objR0 == b2.b) {
            return true;
        }
        if (objR0 == b2.f15845d) {
            return false;
        }
        O(objR0);
        return true;
    }

    public void T(Throwable th) throws Throwable {
        S(th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String W() {
        return "Job was cancelled";
    }

    public boolean X(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return S(th) && g0();
    }

    @Override // kotlinx.coroutines.t1
    public void a(CancellationException cancellationException) throws Throwable {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(W(), null, this);
        }
        T(cancellationException);
    }

    public final Object d0() throws Throwable {
        Object objK0 = k0();
        if (!(!(objK0 instanceof n1))) {
            throw new IllegalStateException("This job has not completed yet".toString());
        }
        if (objK0 instanceof y) {
            throw ((y) objK0).f16129a;
        }
        return b2.h(objK0);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, Function2<? super R, ? super CoroutineContext.a, ? extends R> function2) {
        return (R) t1.a.b(this, r, function2);
    }

    public boolean g0() {
        return true;
    }

    @Override // kotlin.coroutines.CoroutineContext.a, kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.a> E get(CoroutineContext.b<E> bVar) {
        return (E) t1.a.c(this, bVar);
    }

    @Override // kotlin.coroutines.CoroutineContext.a
    public final CoroutineContext.b<?> getKey() {
        return t1.R;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x007e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0082 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x0085  */
    /* JADX WARN: Code duplicated, block: B:80:0x007c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x0002 A[SYNTHETIC] */
    @Override // kotlinx.coroutines.t1
    public final y0 h(boolean z, boolean z2, Function1<? super Throwable, kotlin.v> function1) {
        Throwable thE;
        z1<?> z1VarT0 = null;
        while (true) {
            Object objK0 = k0();
            if (objK0 instanceof b1) {
                b1 b1Var = (b1) objK0;
                if (b1Var.isActive()) {
                    if (z1VarT0 == null) {
                        z1VarT0 = t0(function1, z);
                    }
                    if (f15829a.compareAndSet(this, objK0, z1VarT0)) {
                        return z1VarT0;
                    }
                } else {
                    B0(b1Var);
                }
            } else {
                if (!(objK0 instanceof n1)) {
                    if (z2) {
                        if (!(objK0 instanceof y)) {
                            objK0 = null;
                        }
                        y yVar = (y) objK0;
                        function1.invoke(yVar != null ? yVar.f16129a : null);
                    }
                    return f2.f15920a;
                }
                e2 e2VarD = ((n1) objK0).d();
                if (e2VarD == null) {
                    Objects.requireNonNull(objK0, "null cannot be cast to non-null type kotlinx.coroutines.JobNode<*>");
                    C0((z1) objK0);
                } else {
                    y0 y0Var = f2.f15920a;
                    if (z && (objK0 instanceof c)) {
                        synchronized (objK0) {
                            thE = ((c) objK0).e();
                            if (thE == null || ((function1 instanceof r) && !((c) objK0).g())) {
                                if (z1VarT0 == null) {
                                    z1VarT0 = t0(function1, z);
                                }
                                if (M(objK0, e2VarD, z1VarT0)) {
                                    if (thE == null) {
                                        return z1VarT0;
                                    }
                                    y0Var = z1VarT0;
                                }
                            }
                            kotlin.v vVar = kotlin.v.f15822a;
                        }
                        if (thE != null) {
                            if (z2) {
                                function1.invoke(thE);
                            }
                            return y0Var;
                        }
                        if (z1VarT0 == null) {
                            z1VarT0 = t0(function1, z);
                        }
                        if (M(objK0, e2VarD, z1VarT0)) {
                            return z1VarT0;
                        }
                    } else {
                        thE = null;
                        if (thE != null) {
                            if (z2) {
                                function1.invoke(thE);
                            }
                            return y0Var;
                        }
                        if (z1VarT0 == null) {
                            z1VarT0 = t0(function1, z);
                        }
                        if (M(objK0, e2VarD, z1VarT0)) {
                            return z1VarT0;
                        }
                    }
                }
            }
        }
    }

    public boolean h0() {
        return false;
    }

    @Override // kotlinx.coroutines.t1
    public final CancellationException i() {
        Object objK0 = k0();
        if (!(objK0 instanceof c)) {
            if (objK0 instanceof n1) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (objK0 instanceof y) {
                return K0(this, ((y) objK0).f16129a, null, 1, null);
            }
            return new JobCancellationException(m0.a(this) + " has completed normally", null, this);
        }
        Throwable thE = ((c) objK0).e();
        if (thE != null) {
            CancellationException cancellationExceptionJ0 = J0(thE, m0.a(this) + " is cancelling");
            if (cancellationExceptionJ0 != null) {
                return cancellationExceptionJ0;
            }
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    @Override // kotlinx.coroutines.t1
    public boolean isActive() {
        Object objK0 = k0();
        return (objK0 instanceof n1) && ((n1) objK0).isActive();
    }

    @Override // kotlinx.coroutines.t1
    public final boolean isCancelled() {
        Object objK0 = k0();
        return (objK0 instanceof y) || ((objK0 instanceof c) && ((c) objK0).f());
    }

    @Override // kotlinx.coroutines.s
    public final void j(h2 h2Var) throws Throwable {
        S(h2Var);
    }

    public final q j0() {
        return (q) this._parentHandle;
    }

    public final Object k0() {
        while (true) {
            Object obj = this._state;
            if (!(obj instanceof kotlinx.coroutines.internal.u)) {
                return obj;
            }
            ((kotlinx.coroutines.internal.u) obj).c(this);
        }
    }

    protected boolean l0(Throwable th) {
        return false;
    }

    public void m0(Throwable th) throws Throwable {
        throw th;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.b<?> bVar) {
        return t1.a.e(this, bVar);
    }

    @Override // kotlinx.coroutines.t1
    public final y0 n(Function1<? super Throwable, kotlin.v> function1) {
        return h(false, true, function1);
    }

    public final void n0(t1 t1Var) {
        if (l0.a()) {
            if (!(j0() == null)) {
                throw new AssertionError();
            }
        }
        if (t1Var == null) {
            G0(f2.f15920a);
            return;
        }
        t1Var.start();
        q qVarI = t1Var.I(this);
        G0(qVarI);
        if (w()) {
            qVarI.dispose();
            G0(f2.f15920a);
        }
    }

    protected boolean o0() {
        return false;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return t1.a.f(this, coroutineContext);
    }

    final /* synthetic */ Object q0(Continuation<? super kotlin.v> continuation) {
        l lVar = new l(IntrinsicsKt__IntrinsicsJvmKt.c(continuation), 1);
        lVar.z();
        n.a(lVar, n(new k2(this, lVar)));
        Object objX = lVar.x();
        if (objX == kotlin.coroutines.intrinsics.b.d()) {
            kotlin.coroutines.jvm.internal.f.c(continuation);
        }
        return objX;
    }

    public final Object s0(Object obj) {
        Object objO0;
        do {
            objO0 = O0(k0(), obj);
            if (objO0 == b2.f15844a) {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, e0(obj));
            }
        } while (objO0 == b2.c);
        return objO0;
    }

    @Override // kotlinx.coroutines.t1
    public final boolean start() {
        int iH0;
        do {
            iH0 = H0(k0());
            if (iH0 == 0) {
                return false;
            }
        } while (iH0 != 1);
        return true;
    }

    public String toString() {
        return L0() + '@' + m0.b(this);
    }

    @Override // kotlinx.coroutines.h2
    public CancellationException u() {
        Throwable thE;
        Object objK0 = k0();
        if (objK0 instanceof c) {
            thE = ((c) objK0).e();
        } else if (objK0 instanceof y) {
            thE = ((y) objK0).f16129a;
        } else {
            if (objK0 instanceof n1) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + objK0).toString());
            }
            thE = null;
        }
        CancellationException cancellationException = (CancellationException) (thE instanceof CancellationException ? thE : null);
        if (cancellationException != null) {
            return cancellationException;
        }
        return new JobCancellationException("Parent job is " + I0(objK0), thE, this);
    }

    public String u0() {
        return m0.a(this);
    }

    public final boolean w() {
        return !(k0() instanceof n1);
    }

    @Override // kotlinx.coroutines.t1
    public final Object x(Continuation<? super kotlin.v> continuation) {
        if (p0()) {
            Object objQ0 = q0(continuation);
            return objQ0 == kotlin.coroutines.intrinsics.b.d() ? objQ0 : kotlin.v.f15822a;
        }
        z2.a(continuation.getContext());
        return kotlin.v.f15822a;
    }

    protected void y0(Throwable th) {
    }

    protected void z0(Object obj) {
    }
}
