package kotlinx.coroutines.channels;

import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.z;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.y;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.m0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b<E> implements t<E> {
    private static final AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "onCloseHandler");
    protected final Function1<E, kotlin.v> b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlinx.coroutines.internal.l f15874a = new kotlinx.coroutines.internal.l();
    private volatile Object onCloseHandler = null;

    public static final class a<E> extends s {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final E f15875d;

        public a(E e2) {
            this.f15875d = e2;
        }

        @Override // kotlinx.coroutines.channels.s
        public void R() {
        }

        @Override // kotlinx.coroutines.channels.s
        public Object S() {
            return this.f15875d;
        }

        @Override // kotlinx.coroutines.channels.s
        public void T(j<?> jVar) {
        }

        @Override // kotlinx.coroutines.channels.s
        public y U(kotlinx.coroutines.internal.n.c cVar) {
            y yVar = kotlinx.coroutines.m.f16053a;
            if (cVar != null) {
                cVar.d();
            }
            return yVar;
        }

        @Override // kotlinx.coroutines.internal.n
        public String toString() {
            return "SendBuffered@" + m0.b(this) + '(' + this.f15875d + ')';
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.b$b, reason: collision with other inner class name */
    public static final class C0364b extends kotlinx.coroutines.internal.n.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ b f15876d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0364b(kotlinx.coroutines.internal.n nVar, kotlinx.coroutines.internal.n nVar2, b bVar) {
            super(nVar2);
            this.f15876d = bVar;
        }

        @Override // kotlinx.coroutines.internal.d
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public Object i(kotlinx.coroutines.internal.n nVar) {
            if (this.f15876d.r()) {
                return null;
            }
            return kotlinx.coroutines.internal.m.a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(Function1<? super E, kotlin.v> function1) {
        this.b = function1;
    }

    private final int c() {
        kotlinx.coroutines.internal.l lVar = this.f15874a;
        Object objG = lVar.G();
        Objects.requireNonNull(objG, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        int i = 0;
        for (kotlinx.coroutines.internal.n nVarH = (kotlinx.coroutines.internal.n) objG; !kotlin.jvm.internal.r.a(nVarH, lVar); nVarH = nVarH.H()) {
            if (nVarH instanceof kotlinx.coroutines.internal.n) {
                i++;
            }
        }
        return i;
    }

    private final String j() {
        String string;
        kotlinx.coroutines.internal.n nVarH = this.f15874a.H();
        if (nVarH == this.f15874a) {
            return "EmptyQueue";
        }
        if (nVarH instanceof j) {
            string = nVarH.toString();
        } else if (nVarH instanceof o) {
            string = "ReceiveQueued";
        } else if (nVarH instanceof s) {
            string = "SendQueued";
        } else {
            string = "UNEXPECTED:" + nVarH;
        }
        kotlinx.coroutines.internal.n nVarI = this.f15874a.I();
        if (nVarI == nVarH) {
            return string;
        }
        String str = string + ",queueSize=" + c();
        if (!(nVarI instanceof j)) {
            return str;
        }
        return str + ",closedForSend=" + nVarI;
    }

    private final void l(j<?> jVar) {
        Object objB = kotlinx.coroutines.internal.k.b(null, 1, null);
        while (true) {
            kotlinx.coroutines.internal.n nVarI = jVar.I();
            if (!(nVarI instanceof o)) {
                nVarI = null;
            }
            o oVar = (o) nVarI;
            if (oVar == null) {
                break;
            } else if (oVar.N()) {
                objB = kotlinx.coroutines.internal.k.c(objB, oVar);
            } else {
                oVar.K();
            }
        }
        if (objB != null) {
            if (objB instanceof ArrayList) {
                Objects.requireNonNull(objB, "null cannot be cast to non-null type kotlin.collections.ArrayList<E> /* = java.util.ArrayList<E> */");
                ArrayList arrayList = (ArrayList) objB;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((o) arrayList.get(size)).T(jVar);
                }
            } else {
                ((o) objB).T(jVar);
            }
        }
        w(jVar);
    }

    private final Throwable m(E e2, j<?> jVar) {
        UndeliveredElementException undeliveredElementExceptionD;
        l(jVar);
        Function1<E, kotlin.v> function1 = this.b;
        if (function1 == null || (undeliveredElementExceptionD = OnUndeliveredElementKt.d(function1, e2, null, 2, null)) == null) {
            return jVar.Z();
        }
        kotlin.b.a(undeliveredElementExceptionD, jVar.Z());
        throw undeliveredElementExceptionD;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(Continuation<?> continuation, E e2, j<?> jVar) {
        UndeliveredElementException undeliveredElementExceptionD;
        l(jVar);
        Throwable thZ = jVar.Z();
        Function1<E, kotlin.v> function1 = this.b;
        if (function1 == null || (undeliveredElementExceptionD = OnUndeliveredElementKt.d(function1, e2, null, 2, null)) == null) {
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m139constructorimpl(kotlin.k.a(thZ)));
        } else {
            kotlin.b.a(undeliveredElementExceptionD, thZ);
            Result.Companion companion2 = Result.INSTANCE;
            continuation.resumeWith(Result.m139constructorimpl(kotlin.k.a(undeliveredElementExceptionD)));
        }
    }

    private final void p(Throwable th) {
        y yVar;
        Object obj = this.onCloseHandler;
        if (obj == null || obj == (yVar = kotlinx.coroutines.channels.a.f15873f) || !c.compareAndSet(this, obj, yVar)) {
            return;
        }
        z.e(obj, 1);
        ((Function1) obj).invoke(th);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006c  */
    /* JADX WARN: Code duplicated, block: B:31:0x0075 A[EDGE_INSN: B:31:0x0075->B:32:0x007a BREAK  A[LOOP:0: B:3:0x0008->B:43:?]] */
    /* JADX WARN: Code duplicated, block: B:36:0x0088  */
    /* JADX WARN: Code duplicated, block: B:41:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x0071 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:? A[LOOP:0: B:3:0x0008->B:43:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:36:0x0088, please report this as an issue */
    final /* synthetic */ Object B(E e2, Continuation<? super kotlin.v> continuation) {
        Object objU;
        kotlinx.coroutines.l lVarB = kotlinx.coroutines.n.b(IntrinsicsKt__IntrinsicsJvmKt.c(continuation));
        while (true) {
            if (s()) {
                s uVar = this.b == null ? new u(e2, lVarB) : new v(e2, lVarB, this.b);
                Object objD = d(uVar);
                if (objD == null) {
                    kotlinx.coroutines.n.c(lVarB, uVar);
                    break;
                }
                if (objD instanceof j) {
                    n(lVarB, e2, (j) objD);
                    break;
                }
                if (objD != kotlinx.coroutines.channels.a.f15872e && !(objD instanceof o)) {
                    throw new IllegalStateException(("enqueueSend returned " + objD).toString());
                }
                objU = u(e2);
                if (objU == kotlinx.coroutines.channels.a.b) {
                    kotlin.v vVar = kotlin.v.f15822a;
                    Result.Companion companion = Result.INSTANCE;
                    lVarB.resumeWith(Result.m139constructorimpl(vVar));
                    break;
                }
                if (objU == kotlinx.coroutines.channels.a.c) {
                    if (objU instanceof j) {
                        n(lVarB, e2, (j) objU);
                        break;
                    }
                    throw new IllegalStateException(("offerInternal returned " + objU).toString());
                }
            } else {
                objU = u(e2);
                if (objU == kotlinx.coroutines.channels.a.b) {
                    kotlin.v vVar2 = kotlin.v.f15822a;
                    Result.Companion companion2 = Result.INSTANCE;
                    lVarB.resumeWith(Result.m139constructorimpl(vVar2));
                    break;
                }
                if (objU == kotlinx.coroutines.channels.a.c) {
                    if (objU instanceof j) {
                        n(lVarB, e2, (j) objU);
                        break;
                    }
                    throw new IllegalStateException(("offerInternal returned " + objU).toString());
                }
            }
        }
        Object objX = lVarB.x();
        if (objX == kotlin.coroutines.intrinsics.b.d()) {
            kotlin.coroutines.jvm.internal.f.c(continuation);
        }
        return objX;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.coroutines.internal.n] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    protected q<E> C() {
        ?? r1;
        kotlinx.coroutines.internal.n nVarO;
        kotlinx.coroutines.internal.l lVar = this.f15874a;
        while (true) {
            Object objG = lVar.G();
            Objects.requireNonNull(objG, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            r1 = (kotlinx.coroutines.internal.n) objG;
            if (r1 == lVar || !(r1 instanceof q)) {
                break;
            }
            if ((!(((q) r1) instanceof j) || r1.M()) && (nVarO = r1.O()) != null) {
                nVarO.L();
            }
            return (q) r1;
        }
        r1 = 0;
        return (q) r1;
    }

    @Override // kotlinx.coroutines.channels.t
    public boolean D(Throwable th) {
        kotlinx.coroutines.internal.n nVarI;
        boolean z;
        j<?> jVar = new j<>(th);
        kotlinx.coroutines.internal.n nVar = this.f15874a;
        do {
            nVarI = nVar.I();
            z = true;
            if (!(!(nVarI instanceof j))) {
                z = false;
                break;
            }
        } while (!nVarI.z(jVar, nVar));
        if (!z) {
            kotlinx.coroutines.internal.n nVarI2 = this.f15874a.I();
            Objects.requireNonNull(nVarI2, "null cannot be cast to non-null type kotlinx.coroutines.channels.Closed<*>");
            jVar = (j) nVarI2;
        }
        l(jVar);
        if (z) {
            p(th);
        }
        return z;
    }

    protected final s E() {
        kotlinx.coroutines.internal.n nVar;
        kotlinx.coroutines.internal.n nVarO;
        kotlinx.coroutines.internal.l lVar = this.f15874a;
        while (true) {
            Object objG = lVar.G();
            Objects.requireNonNull(objG, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            nVar = (kotlinx.coroutines.internal.n) objG;
            if (nVar == lVar || !(nVar instanceof s)) {
                break;
            }
            if ((!(((s) nVar) instanceof j) || nVar.M()) && (nVarO = nVar.O()) != null) {
                nVarO.L();
            }
            return (s) nVar;
        }
        nVar = null;
        return (s) nVar;
    }

    @Override // kotlinx.coroutines.channels.t
    public final Object F(E e2, Continuation<? super kotlin.v> continuation) {
        Object objB;
        return (u(e2) != kotlinx.coroutines.channels.a.b && (objB = B(e2, continuation)) == kotlin.coroutines.intrinsics.b.d()) ? objB : kotlin.v.f15822a;
    }

    @Override // kotlinx.coroutines.channels.t
    public final boolean G() {
        return h() != null;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0036  */
    /* JADX WARN: Code duplicated, block: B:24:0x0039 A[ORIG_RETURN, RETURN] */
    protected Object d(s sVar) {
        int iQ;
        boolean z;
        kotlinx.coroutines.internal.n nVarI;
        if (q()) {
            kotlinx.coroutines.internal.n nVar = this.f15874a;
            do {
                nVarI = nVar.I();
                if (nVarI instanceof q) {
                    return nVarI;
                }
            } while (!nVarI.z(sVar, nVar));
            return null;
        }
        kotlinx.coroutines.internal.n nVar2 = this.f15874a;
        C0364b c0364b = new C0364b(sVar, sVar, this);
        do {
            kotlinx.coroutines.internal.n nVarI2 = nVar2.I();
            if (nVarI2 instanceof q) {
                return nVarI2;
            }
            iQ = nVarI2.Q(sVar, nVar2, c0364b);
            z = true;
            if (iQ != 1) {
            }
            if (z) {
                return null;
            }
            return kotlinx.coroutines.channels.a.f15872e;
        } while (iQ != 2);
        z = false;
        if (z) {
            return kotlinx.coroutines.channels.a.f15872e;
        }
        return null;
    }

    protected String e() {
        return "";
    }

    protected final j<?> f() {
        kotlinx.coroutines.internal.n nVarH = this.f15874a.H();
        if (!(nVarH instanceof j)) {
            nVarH = null;
        }
        j<?> jVar = (j) nVarH;
        if (jVar == null) {
            return null;
        }
        l(jVar);
        return jVar;
    }

    protected final j<?> h() {
        kotlinx.coroutines.internal.n nVarI = this.f15874a.I();
        if (!(nVarI instanceof j)) {
            nVarI = null;
        }
        j<?> jVar = (j) nVarI;
        if (jVar == null) {
            return null;
        }
        l(jVar);
        return jVar;
    }

    protected final kotlinx.coroutines.internal.l i() {
        return this.f15874a;
    }

    @Override // kotlinx.coroutines.channels.t
    public final boolean offer(E e2) throws Throwable {
        Object objU = u(e2);
        if (objU == kotlinx.coroutines.channels.a.b) {
            return true;
        }
        if (objU == kotlinx.coroutines.channels.a.c) {
            j<?> jVarH = h();
            if (jVarH == null) {
                return false;
            }
            throw kotlinx.coroutines.internal.x.k(m(e2, jVarH));
        }
        if (objU instanceof j) {
            throw kotlinx.coroutines.internal.x.k(m(e2, (j) objU));
        }
        throw new IllegalStateException(("offerInternal returned " + objU).toString());
    }

    protected abstract boolean q();

    protected abstract boolean r();

    protected final boolean s() {
        return !(this.f15874a.H() instanceof q) && r();
    }

    @Override // kotlinx.coroutines.channels.t
    public void t(Function1<? super Throwable, kotlin.v> function1) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = c;
        if (atomicReferenceFieldUpdater.compareAndSet(this, null, function1)) {
            j<?> jVarH = h();
            if (jVarH == null || !atomicReferenceFieldUpdater.compareAndSet(this, function1, kotlinx.coroutines.channels.a.f15873f)) {
                return;
            }
            function1.invoke(jVarH.f15885d);
            return;
        }
        Object obj = this.onCloseHandler;
        if (obj == kotlinx.coroutines.channels.a.f15873f) {
            throw new IllegalStateException("Another handler was already registered and successfully invoked");
        }
        throw new IllegalStateException("Another handler was already registered: " + obj);
    }

    public String toString() {
        return m0.a(this) + '@' + m0.b(this) + '{' + j() + '}' + e();
    }

    protected Object u(E e2) {
        q<E> qVarC;
        y yVarS;
        do {
            qVarC = C();
            if (qVarC == null) {
                return kotlinx.coroutines.channels.a.c;
            }
            yVarS = qVarC.s(e2, null);
        } while (yVarS == null);
        if (l0.a()) {
            if (!(yVarS == kotlinx.coroutines.m.f16053a)) {
                throw new AssertionError();
            }
        }
        qVarC.g(e2);
        return qVarC.a();
    }

    protected void w(kotlinx.coroutines.internal.n nVar) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected final q<?> x(E e2) {
        kotlinx.coroutines.internal.n nVarI;
        kotlinx.coroutines.internal.l lVar = this.f15874a;
        a aVar = new a(e2);
        do {
            nVarI = lVar.I();
            if (nVarI instanceof q) {
                return (q) nVarI;
            }
        } while (!nVarI.z(aVar, lVar));
        return null;
    }
}
