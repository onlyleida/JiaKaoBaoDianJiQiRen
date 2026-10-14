package kotlinx.coroutines;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;

/* JADX INFO: loaded from: classes6.dex */
final class c<T> {
    static final AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(c.class, "notCompletedCount");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p0<T>[] f15849a;
    volatile int notCompletedCount;

    private final class a extends z1<t1> {
        private volatile Object _disposer;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public y0 f15850e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final k<List<? extends T>> f15851f;

        /* JADX WARN: Multi-variable type inference failed */
        public a(k<? super List<? extends T>> kVar, t1 t1Var) {
            super(t1Var);
            this.f15851f = kVar;
            this._disposer = null;
        }

        @Override // kotlinx.coroutines.a0
        public void R(Throwable th) {
            if (th != null) {
                Object objM = this.f15851f.m(th);
                if (objM != null) {
                    this.f15851f.J(objM);
                    c<T>.b bVarS = S();
                    if (bVarS != null) {
                        bVarS.b();
                        return;
                    }
                    return;
                }
                return;
            }
            if (c.b.decrementAndGet(c.this) == 0) {
                k<List<? extends T>> kVar = this.f15851f;
                p0[] p0VarArr = c.this.f15849a;
                ArrayList arrayList = new ArrayList(p0VarArr.length);
                for (p0 p0Var : p0VarArr) {
                    arrayList.add(p0Var.d());
                }
                Result.Companion companion = Result.INSTANCE;
                kVar.resumeWith(Result.m139constructorimpl(arrayList));
            }
        }

        public final c<T>.b S() {
            return (b) this._disposer;
        }

        public final y0 T() {
            y0 y0Var = this.f15850e;
            if (y0Var != null) {
                return y0Var;
            }
            kotlin.jvm.internal.r.u("handle");
            throw null;
        }

        public final void U(c<T>.b bVar) {
            this._disposer = bVar;
        }

        public final void V(y0 y0Var) {
            this.f15850e = y0Var;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
            R(th);
            return kotlin.v.f15822a;
        }
    }

    private final class b extends i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c<T>.a[] f15853a;

        public b(c cVar, c<T>.a[] aVarArr) {
            this.f15853a = aVarArr;
        }

        @Override // kotlinx.coroutines.j
        public void a(Throwable th) {
            b();
        }

        public final void b() {
            for (c<T>.a aVar : this.f15853a) {
                aVar.T().dispose();
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
            a(th);
            return kotlin.v.f15822a;
        }

        public String toString() {
            return "DisposeHandlersOnCancel[" + this.f15853a + ']';
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(p0<? extends T>[] p0VarArr) {
        this.f15849a = p0VarArr;
        this.notCompletedCount = p0VarArr.length;
    }

    public final Object b(Continuation<? super List<? extends T>> continuation) {
        l lVar = new l(IntrinsicsKt__IntrinsicsJvmKt.c(continuation), 1);
        lVar.z();
        int length = this.f15849a.length;
        a[] aVarArr = new a[length];
        for (int i = 0; i < length; i++) {
            p0 p0Var = this.f15849a[kotlin.coroutines.jvm.internal.a.d(i).intValue()];
            p0Var.start();
            a aVar = new a(lVar, p0Var);
            aVar.V(p0Var.n(aVar));
            aVarArr[i] = aVar;
        }
        c<T>.b bVar = new b(this, aVarArr);
        for (int i2 = 0; i2 < length; i2++) {
            aVarArr[i2].U(bVar);
        }
        if (lVar.w()) {
            bVar.b();
        } else {
            lVar.l(bVar);
        }
        Object objX = lVar.x();
        if (objX == kotlin.coroutines.intrinsics.b.d()) {
            kotlin.coroutines.jvm.internal.f.c(continuation);
        }
        return objX;
    }
}
