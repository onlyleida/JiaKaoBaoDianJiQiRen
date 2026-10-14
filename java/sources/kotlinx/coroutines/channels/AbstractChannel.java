package kotlinx.coroutines.channels;

import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.y;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.m0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractChannel<E> extends kotlinx.coroutines.channels.b<E> implements kotlinx.coroutines.channels.f<E> {

    private static final class a<E> implements ChannelIterator<E> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Object f15856a = kotlinx.coroutines.channels.a.f15871d;
        public final AbstractChannel<E> b;

        public a(AbstractChannel<E> abstractChannel) {
            this.b = abstractChannel;
        }

        private final boolean b(Object obj) throws Throwable {
            if (!(obj instanceof kotlinx.coroutines.channels.j)) {
                return true;
            }
            kotlinx.coroutines.channels.j jVar = (kotlinx.coroutines.channels.j) obj;
            if (jVar.f15885d == null) {
                return false;
            }
            throw kotlinx.coroutines.internal.x.k(jVar.Y());
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public Object a(Continuation<? super Boolean> continuation) {
            Object obj = this.f15856a;
            y yVar = kotlinx.coroutines.channels.a.f15871d;
            if (obj != yVar) {
                return kotlin.coroutines.jvm.internal.a.a(b(obj));
            }
            Object objV = this.b.V();
            this.f15856a = objV;
            return objV != yVar ? kotlin.coroutines.jvm.internal.a.a(b(objV)) : c(continuation);
        }

        final /* synthetic */ Object c(Continuation<? super Boolean> continuation) {
            kotlinx.coroutines.l lVarB = kotlinx.coroutines.n.b(IntrinsicsKt__IntrinsicsJvmKt.c(continuation));
            d dVar = new d(this, lVarB);
            while (true) {
                if (this.b.M(dVar)) {
                    this.b.a0(lVarB, dVar);
                    break;
                }
                Object objV = this.b.V();
                d(objV);
                if (objV instanceof kotlinx.coroutines.channels.j) {
                    kotlinx.coroutines.channels.j jVar = (kotlinx.coroutines.channels.j) objV;
                    if (jVar.f15885d != null) {
                        Throwable thY = jVar.Y();
                        Result.Companion companion = Result.INSTANCE;
                        lVarB.resumeWith(Result.m139constructorimpl(kotlin.k.a(thY)));
                        break;
                    }
                    Boolean boolA = kotlin.coroutines.jvm.internal.a.a(false);
                    Result.Companion companion2 = Result.INSTANCE;
                    lVarB.resumeWith(Result.m139constructorimpl(boolA));
                    break;
                }
                if (objV != kotlinx.coroutines.channels.a.f15871d) {
                    Boolean boolA2 = kotlin.coroutines.jvm.internal.a.a(true);
                    Function1<E, kotlin.v> function1 = this.b.b;
                    lVarB.r(boolA2, function1 != null ? OnUndeliveredElementKt.a(function1, objV, lVarB.getContext()) : null);
                    break;
                }
            }
            Object objX = lVarB.x();
            if (objX == kotlin.coroutines.intrinsics.b.d()) {
                kotlin.coroutines.jvm.internal.f.c(continuation);
            }
            return objX;
        }

        public final void d(Object obj) {
            this.f15856a = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlinx.coroutines.channels.ChannelIterator
        public E next() throws Throwable {
            E e2 = (E) this.f15856a;
            if (e2 instanceof kotlinx.coroutines.channels.j) {
                throw kotlinx.coroutines.internal.x.k(((kotlinx.coroutines.channels.j) e2).Y());
            }
            y yVar = kotlinx.coroutines.channels.a.f15871d;
            if (e2 == yVar) {
                throw new IllegalStateException("'hasNext' should be called prior to 'next' invocation");
            }
            this.f15856a = yVar;
            return e2;
        }
    }

    private static class b<E> extends o<E> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final kotlinx.coroutines.k<Object> f15857d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f15858e;

        public b(kotlinx.coroutines.k<Object> kVar, int i) {
            this.f15857d = kVar;
            this.f15858e = i;
        }

        @Override // kotlinx.coroutines.channels.o
        public void T(kotlinx.coroutines.channels.j<?> jVar) {
            int i = this.f15858e;
            if (i == 1 && jVar.f15885d == null) {
                kotlinx.coroutines.k<Object> kVar = this.f15857d;
                Result.Companion companion = Result.INSTANCE;
                kVar.resumeWith(Result.m139constructorimpl(null));
            } else {
                if (i != 2) {
                    kotlinx.coroutines.k<Object> kVar2 = this.f15857d;
                    Throwable thY = jVar.Y();
                    Result.Companion companion2 = Result.INSTANCE;
                    kVar2.resumeWith(Result.m139constructorimpl(kotlin.k.a(thY)));
                    return;
                }
                kotlinx.coroutines.k<Object> kVar3 = this.f15857d;
                x.b bVar = x.b;
                x.a aVar = new x.a(jVar.f15885d);
                x.b(aVar);
                x xVarA = x.a(aVar);
                Result.Companion companion3 = Result.INSTANCE;
                kVar3.resumeWith(Result.m139constructorimpl(xVarA));
            }
        }

        public final Object U(E e2) {
            if (this.f15858e != 2) {
                return e2;
            }
            x.b bVar = x.b;
            x.b(e2);
            return x.a(e2);
        }

        @Override // kotlinx.coroutines.channels.q
        public void g(E e2) {
            this.f15857d.J(kotlinx.coroutines.m.f16053a);
        }

        @Override // kotlinx.coroutines.channels.q
        public y s(E e2, kotlinx.coroutines.internal.n.c cVar) {
            Object objB = this.f15857d.B(U(e2), cVar != null ? cVar.c : null, S(e2));
            if (objB == null) {
                return null;
            }
            if (l0.a()) {
                if (!(objB == kotlinx.coroutines.m.f16053a)) {
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
            return "ReceiveElement@" + m0.b(this) + "[receiveMode=" + this.f15858e + ']';
        }
    }

    private static final class c<E> extends b<E> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Function1<E, kotlin.v> f15859f;

        /* JADX WARN: Multi-variable type inference failed */
        public c(kotlinx.coroutines.k<Object> kVar, int i, Function1<? super E, kotlin.v> function1) {
            super(kVar, i);
            this.f15859f = function1;
        }

        @Override // kotlinx.coroutines.channels.o
        public Function1<Throwable, kotlin.v> S(E e2) {
            return OnUndeliveredElementKt.a(this.f15859f, e2, this.f15857d.getContext());
        }
    }

    private static class d<E> extends o<E> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final a<E> f15860d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final kotlinx.coroutines.k<Boolean> f15861e;

        /* JADX WARN: Multi-variable type inference failed */
        public d(a<E> aVar, kotlinx.coroutines.k<? super Boolean> kVar) {
            this.f15860d = aVar;
            this.f15861e = kVar;
        }

        @Override // kotlinx.coroutines.channels.o
        public Function1<Throwable, kotlin.v> S(E e2) {
            Function1<E, kotlin.v> function1 = this.f15860d.b.b;
            if (function1 != null) {
                return OnUndeliveredElementKt.a(function1, e2, this.f15861e.getContext());
            }
            return null;
        }

        @Override // kotlinx.coroutines.channels.o
        public void T(kotlinx.coroutines.channels.j<?> jVar) {
            Object objA = jVar.f15885d == null ? kotlinx.coroutines.k.a.a(this.f15861e, Boolean.FALSE, null, 2, null) : this.f15861e.m(jVar.Y());
            if (objA != null) {
                this.f15860d.d(jVar);
                this.f15861e.J(objA);
            }
        }

        @Override // kotlinx.coroutines.channels.q
        public void g(E e2) {
            this.f15860d.d(e2);
            this.f15861e.J(kotlinx.coroutines.m.f16053a);
        }

        @Override // kotlinx.coroutines.channels.q
        public y s(E e2, kotlinx.coroutines.internal.n.c cVar) {
            Object objB = this.f15861e.B(Boolean.TRUE, cVar != null ? cVar.c : null, S(e2));
            if (objB == null) {
                return null;
            }
            if (l0.a()) {
                if (!(objB == kotlinx.coroutines.m.f16053a)) {
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
            return "ReceiveHasNext@" + m0.b(this);
        }
    }

    private static final class e<R, E> extends o<E> implements y0 {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final AbstractChannel<E> f15862d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final kotlinx.coroutines.selects.f<R> f15863e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Function2<Object, Continuation<? super R>, Object> f15864f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f15865g;

        /* JADX WARN: Multi-variable type inference failed */
        public e(AbstractChannel<E> abstractChannel, kotlinx.coroutines.selects.f<? super R> fVar, Function2<Object, ? super Continuation<? super R>, ? extends Object> function2, int i) {
            this.f15862d = abstractChannel;
            this.f15863e = fVar;
            this.f15864f = function2;
            this.f15865g = i;
        }

        @Override // kotlinx.coroutines.channels.o
        public Function1<Throwable, kotlin.v> S(E e2) {
            Function1<E, kotlin.v> function1 = this.f15862d.b;
            if (function1 != null) {
                return OnUndeliveredElementKt.a(function1, e2, this.f15863e.o().getContext());
            }
            return null;
        }

        @Override // kotlinx.coroutines.channels.o
        public void T(kotlinx.coroutines.channels.j<?> jVar) {
            if (this.f15863e.j()) {
                int i = this.f15865g;
                if (i == 0) {
                    this.f15863e.p(jVar.Y());
                    return;
                }
                if (i == 1) {
                    if (jVar.f15885d == null) {
                        kotlinx.coroutines.a3.a.d(this.f15864f, null, this.f15863e.o(), null, 4, null);
                        return;
                    } else {
                        this.f15863e.p(jVar.Y());
                        return;
                    }
                }
                if (i != 2) {
                    return;
                }
                Function2<Object, Continuation<? super R>, Object> function2 = this.f15864f;
                x.b bVar = x.b;
                x.a aVar = new x.a(jVar.f15885d);
                x.b(aVar);
                kotlinx.coroutines.a3.a.d(function2, x.a(aVar), this.f15863e.o(), null, 4, null);
            }
        }

        @Override // kotlinx.coroutines.y0
        public void dispose() {
            if (N()) {
                this.f15862d.T();
            }
        }

        @Override // kotlinx.coroutines.channels.q
        public void g(E e2) {
            Object objA;
            Function2<Object, Continuation<? super R>, Object> function2 = this.f15864f;
            if (this.f15865g == 2) {
                x.b bVar = x.b;
                x.b(e2);
                objA = x.a(e2);
            } else {
                objA = e2;
            }
            kotlinx.coroutines.a3.a.c(function2, objA, this.f15863e.o(), S(e2));
        }

        @Override // kotlinx.coroutines.channels.q
        public y s(E e2, kotlinx.coroutines.internal.n.c cVar) {
            return (y) this.f15863e.i(cVar);
        }

        @Override // kotlinx.coroutines.internal.n
        public String toString() {
            return "ReceiveSelect@" + m0.b(this) + '[' + this.f15863e + ",receiveMode=" + this.f15865g + ']';
        }
    }

    private final class f extends kotlinx.coroutines.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final o<?> f15866a;

        public f(o<?> oVar) {
            this.f15866a = oVar;
        }

        @Override // kotlinx.coroutines.j
        public void a(Throwable th) {
            if (this.f15866a.N()) {
                AbstractChannel.this.T();
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
            a(th);
            return kotlin.v.f15822a;
        }

        public String toString() {
            return "RemoveReceiveOnCancel[" + this.f15866a + ']';
        }
    }

    protected static final class g<E> extends kotlinx.coroutines.internal.n.d<s> {
        public g(kotlinx.coroutines.internal.l lVar) {
            super(lVar);
        }

        @Override // kotlinx.coroutines.internal.n.d, kotlinx.coroutines.internal.n.a
        protected Object e(kotlinx.coroutines.internal.n nVar) {
            if (nVar instanceof kotlinx.coroutines.channels.j) {
                return nVar;
            }
            if (nVar instanceof s) {
                return null;
            }
            return kotlinx.coroutines.channels.a.f15871d;
        }

        @Override // kotlinx.coroutines.internal.n.a
        public Object j(kotlinx.coroutines.internal.n.c cVar) {
            kotlinx.coroutines.internal.n nVar = cVar.f16025a;
            Objects.requireNonNull(nVar, "null cannot be cast to non-null type kotlinx.coroutines.channels.Send");
            y yVarU = ((s) nVar).U(cVar);
            if (yVarU == null) {
                return kotlinx.coroutines.internal.o.f16027a;
            }
            Object obj = kotlinx.coroutines.internal.c.b;
            if (yVarU == obj) {
                return obj;
            }
            if (!l0.a()) {
                return null;
            }
            if (yVarU == kotlinx.coroutines.m.f16053a) {
                return null;
            }
            throw new AssertionError();
        }

        @Override // kotlinx.coroutines.internal.n.a
        public void k(kotlinx.coroutines.internal.n nVar) {
            Objects.requireNonNull(nVar, "null cannot be cast to non-null type kotlinx.coroutines.channels.Send");
            ((s) nVar).V();
        }
    }

    public static final class h extends kotlinx.coroutines.internal.n.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ AbstractChannel f15867d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(kotlinx.coroutines.internal.n nVar, kotlinx.coroutines.internal.n nVar2, AbstractChannel abstractChannel) {
            super(nVar2);
            this.f15867d = abstractChannel;
        }

        @Override // kotlinx.coroutines.internal.d
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public Object i(kotlinx.coroutines.internal.n nVar) {
            if (this.f15867d.Q()) {
                return null;
            }
            return kotlinx.coroutines.internal.m.a();
        }
    }

    public static final class i implements kotlinx.coroutines.selects.d<E> {
        i() {
        }

        @Override // kotlinx.coroutines.selects.d
        public <R> void f(kotlinx.coroutines.selects.f<? super R> fVar, Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) throws Throwable {
            AbstractChannel abstractChannel = AbstractChannel.this;
            Objects.requireNonNull(function2, "null cannot be cast to non-null type suspend (kotlin.Any?) -> R");
            abstractChannel.Z(fVar, 0, function2);
        }
    }

    public static final class j implements kotlinx.coroutines.selects.d<E> {
        j() {
        }

        @Override // kotlinx.coroutines.selects.d
        public <R> void f(kotlinx.coroutines.selects.f<? super R> fVar, Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) throws Throwable {
            AbstractChannel abstractChannel = AbstractChannel.this;
            Objects.requireNonNull(function2, "null cannot be cast to non-null type suspend (kotlin.Any?) -> R");
            abstractChannel.Z(fVar, 1, function2);
        }
    }

    public AbstractChannel(Function1<? super E, kotlin.v> function1) {
        super(function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean M(o<? super E> oVar) {
        boolean zN = N(oVar);
        if (zN) {
            U();
        }
        return zN;
    }

    private final <R> boolean O(kotlinx.coroutines.selects.f<? super R> fVar, Function2<Object, ? super Continuation<? super R>, ? extends Object> function2, int i2) {
        e eVar = new e(this, fVar, function2, i2);
        boolean zM = M(eVar);
        if (zM) {
            fVar.h(eVar);
        }
        return zM;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final E X(Object obj) throws Throwable {
        if (!(obj instanceof kotlinx.coroutines.channels.j)) {
            return obj;
        }
        Throwable th = ((kotlinx.coroutines.channels.j) obj).f15885d;
        if (th == null) {
            return null;
        }
        throw kotlinx.coroutines.internal.x.k(th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <R> void Z(kotlinx.coroutines.selects.f<? super R> fVar, int i2, Function2<Object, ? super Continuation<? super R>, ? extends Object> function2) throws Throwable {
        while (!fVar.e()) {
            if (!R()) {
                Object objW = W(fVar);
                if (objW == kotlinx.coroutines.selects.g.d()) {
                    return;
                }
                if (objW != kotlinx.coroutines.channels.a.f15871d && objW != kotlinx.coroutines.internal.c.b) {
                    b0(function2, fVar, i2, objW);
                }
            } else if (O(fVar, function2, i2)) {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a0(kotlinx.coroutines.k<?> kVar, o<?> oVar) {
        kVar.l(new f(oVar));
    }

    private final <R> void b0(Function2<Object, ? super Continuation<? super R>, ? extends Object> function2, kotlinx.coroutines.selects.f<? super R> fVar, int i2, Object obj) throws Throwable {
        boolean z = obj instanceof kotlinx.coroutines.channels.j;
        if (!z) {
            if (i2 != 2) {
                kotlinx.coroutines.a3.b.d(function2, obj, fVar.o());
                return;
            }
            x.b bVar = x.b;
            if (z) {
                obj = new x.a(((kotlinx.coroutines.channels.j) obj).f15885d);
                x.b(obj);
            } else {
                x.b(obj);
            }
            kotlinx.coroutines.a3.b.d(function2, x.a(obj), fVar.o());
            return;
        }
        if (i2 == 0) {
            throw kotlinx.coroutines.internal.x.k(((kotlinx.coroutines.channels.j) obj).Y());
        }
        if (i2 == 1) {
            kotlinx.coroutines.channels.j jVar = (kotlinx.coroutines.channels.j) obj;
            if (jVar.f15885d != null) {
                throw kotlinx.coroutines.internal.x.k(jVar.Y());
            }
            if (fVar.j()) {
                kotlinx.coroutines.a3.b.d(function2, null, fVar.o());
                return;
            }
            return;
        }
        if (i2 == 2 && fVar.j()) {
            x.b bVar2 = x.b;
            x.a aVar = new x.a(((kotlinx.coroutines.channels.j) obj).f15885d);
            x.b(aVar);
            kotlinx.coroutines.a3.b.d(function2, x.a(aVar), fVar.o());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.p
    public final Object A(Continuation<? super E> continuation) {
        Object objV = V();
        return (objV == kotlinx.coroutines.channels.a.f15871d || (objV instanceof kotlinx.coroutines.channels.j)) ? Y(1, continuation) : objV;
    }

    @Override // kotlinx.coroutines.channels.b
    protected q<E> C() {
        q<E> qVarC = super.C();
        if (qVarC != null && !(qVarC instanceof kotlinx.coroutines.channels.j)) {
            T();
        }
        return qVarC;
    }

    public final boolean K(Throwable th) {
        boolean zD = D(th);
        S(zD);
        return zD;
    }

    protected final g<E> L() {
        return new g<>(i());
    }

    protected boolean N(o<? super E> oVar) {
        int iQ;
        kotlinx.coroutines.internal.n nVarI;
        if (!P()) {
            kotlinx.coroutines.internal.n nVarI2 = i();
            h hVar = new h(oVar, oVar, this);
            do {
                kotlinx.coroutines.internal.n nVarI3 = nVarI2.I();
                if (!(!(nVarI3 instanceof s))) {
                    return false;
                }
                iQ = nVarI3.Q(oVar, nVarI2, hVar);
                if (iQ != 1) {
                }
            } while (iQ != 2);
            return false;
        }
        kotlinx.coroutines.internal.n nVarI4 = i();
        do {
            nVarI = nVarI4.I();
            if (!(!(nVarI instanceof s))) {
                return false;
            }
        } while (!nVarI.z(oVar, nVarI4));
        return true;
    }

    protected abstract boolean P();

    protected abstract boolean Q();

    protected final boolean R() {
        return !(i().H() instanceof s) && Q();
    }

    protected void S(boolean z) {
        kotlinx.coroutines.channels.j<?> jVarH = h();
        if (jVarH == null) {
            throw new IllegalStateException("Cannot happen".toString());
        }
        Object objB = kotlinx.coroutines.internal.k.b(null, 1, null);
        while (true) {
            kotlinx.coroutines.internal.n nVarI = jVarH.I();
            if (nVarI instanceof kotlinx.coroutines.internal.l) {
                if (objB == null) {
                    return;
                }
                if (!(objB instanceof ArrayList)) {
                    ((s) objB).T(jVarH);
                    return;
                }
                Objects.requireNonNull(objB, "null cannot be cast to non-null type kotlin.collections.ArrayList<E> /* = java.util.ArrayList<E> */");
                ArrayList arrayList = (ArrayList) objB;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((s) arrayList.get(size)).T(jVarH);
                }
                return;
            }
            if (l0.a() && !(nVarI instanceof s)) {
                throw new AssertionError();
            }
            if (nVarI.N()) {
                Objects.requireNonNull(nVarI, "null cannot be cast to non-null type kotlinx.coroutines.channels.Send");
                objB = kotlinx.coroutines.internal.k.c(objB, (s) nVarI);
            } else {
                nVarI.K();
            }
        }
    }

    protected void T() {
    }

    protected void U() {
    }

    protected Object V() {
        while (true) {
            s sVarE = E();
            if (sVarE == null) {
                return kotlinx.coroutines.channels.a.f15871d;
            }
            y yVarU = sVarE.U(null);
            if (yVarU != null) {
                if (l0.a()) {
                    if (!(yVarU == kotlinx.coroutines.m.f16053a)) {
                        throw new AssertionError();
                    }
                }
                sVarE.R();
                return sVarE.S();
            }
            sVarE.V();
        }
    }

    protected Object W(kotlinx.coroutines.selects.f<?> fVar) {
        g<E> gVarL = L();
        Object objQ = fVar.q(gVarL);
        if (objQ != null) {
            return objQ;
        }
        gVarL.o().R();
        return gVarL.o().S();
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ <R> Object Y(int i2, Continuation<? super R> continuation) {
        b cVar;
        kotlinx.coroutines.l lVarB = kotlinx.coroutines.n.b(IntrinsicsKt__IntrinsicsJvmKt.c(continuation));
        if (this.b == null) {
            Objects.requireNonNull(lVarB, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Any?>");
            cVar = new b(lVarB, i2);
        } else {
            Objects.requireNonNull(lVarB, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Any?>");
            cVar = new c(lVarB, i2, this.b);
        }
        while (true) {
            if (M(cVar)) {
                a0(lVarB, cVar);
                break;
            }
            Object objV = V();
            if (objV instanceof kotlinx.coroutines.channels.j) {
                cVar.T((kotlinx.coroutines.channels.j) objV);
                break;
            }
            if (objV != kotlinx.coroutines.channels.a.f15871d) {
                lVarB.r(cVar.U(objV), cVar.S(objV));
                break;
            }
        }
        Object objX = lVarB.x();
        if (objX == kotlin.coroutines.intrinsics.b.d()) {
            kotlin.coroutines.jvm.internal.f.c(continuation);
        }
        return objX;
    }

    @Override // kotlinx.coroutines.channels.p
    public final void a(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException(m0.a(this) + " was cancelled");
        }
        K(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.p
    public boolean g() {
        return f() != null && Q();
    }

    @Override // kotlinx.coroutines.channels.p
    public final ChannelIterator<E> iterator() {
        return new a(this);
    }

    @Override // kotlinx.coroutines.channels.p
    public final E poll() {
        Object objV = V();
        if (objV == kotlinx.coroutines.channels.a.f15871d) {
            return null;
        }
        return X(objV);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.channels.p
    public final Object v(Continuation<? super x<? extends E>> continuation) throws Throwable {
        AbstractChannel$receiveOrClosed$1 abstractChannel$receiveOrClosed$1;
        if (continuation instanceof AbstractChannel$receiveOrClosed$1) {
            abstractChannel$receiveOrClosed$1 = (AbstractChannel$receiveOrClosed$1) continuation;
            int i2 = abstractChannel$receiveOrClosed$1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                abstractChannel$receiveOrClosed$1.label = i2 - Integer.MIN_VALUE;
            } else {
                abstractChannel$receiveOrClosed$1 = new AbstractChannel$receiveOrClosed$1(this, continuation);
            }
        } else {
            abstractChannel$receiveOrClosed$1 = new AbstractChannel$receiveOrClosed$1(this, continuation);
        }
        Object objY = abstractChannel$receiveOrClosed$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i3 = abstractChannel$receiveOrClosed$1.label;
        if (i3 == 0) {
            kotlin.k.b(objY);
            Object objV = V();
            if (objV != kotlinx.coroutines.channels.a.f15871d) {
                if (!(objV instanceof kotlinx.coroutines.channels.j)) {
                    x.b bVar = x.b;
                    x.b(objV);
                    return objV;
                }
                x.b bVar2 = x.b;
                x.a aVar = new x.a(((kotlinx.coroutines.channels.j) objV).f15885d);
                x.b(aVar);
                return aVar;
            }
            abstractChannel$receiveOrClosed$1.L$0 = this;
            abstractChannel$receiveOrClosed$1.L$1 = objV;
            abstractChannel$receiveOrClosed$1.label = 1;
            objY = Y(2, abstractChannel$receiveOrClosed$1);
            if (objY == objD) {
                return objD;
            }
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Object obj = abstractChannel$receiveOrClosed$1.L$1;
            kotlin.k.b(objY);
        }
        return ((x) objY).i();
    }

    @Override // kotlinx.coroutines.channels.p
    public final kotlinx.coroutines.selects.d<E> y() {
        return new i();
    }

    @Override // kotlinx.coroutines.channels.p
    public final kotlinx.coroutines.selects.d<E> z() {
        return new j();
    }
}
