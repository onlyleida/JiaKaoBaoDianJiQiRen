package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;

/* JADX INFO: loaded from: classes6.dex */
final class m2 extends kotlinx.coroutines.flow.internal.c<StateFlowImpl<?>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final AtomicReferenceFieldUpdater f15984a = AtomicReferenceFieldUpdater.newUpdater(m2.class, Object.class, "_state");
    volatile Object _state = null;

    @Override // kotlinx.coroutines.flow.internal.c
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean a(StateFlowImpl<?> stateFlowImpl) {
        if (this._state != null) {
            return false;
        }
        this._state = l2.f15983a;
        return true;
    }

    public final Object d(Continuation<? super kotlin.v> continuation) {
        kotlinx.coroutines.l lVar = new kotlinx.coroutines.l(IntrinsicsKt__IntrinsicsJvmKt.c(continuation), 1);
        lVar.z();
        if (kotlinx.coroutines.l0.a() && !kotlin.coroutines.jvm.internal.a.a(!(this._state instanceof kotlinx.coroutines.l)).booleanValue()) {
            throw new AssertionError();
        }
        if (!f15984a.compareAndSet(this, l2.f15983a, lVar)) {
            if (kotlinx.coroutines.l0.a()) {
                if (!kotlin.coroutines.jvm.internal.a.a(this._state == l2.b).booleanValue()) {
                    throw new AssertionError();
                }
            }
            kotlin.v vVar = kotlin.v.f15822a;
            Result.Companion companion = Result.INSTANCE;
            lVar.resumeWith(Result.m139constructorimpl(vVar));
        }
        Object objX = lVar.x();
        if (objX == kotlin.coroutines.intrinsics.b.d()) {
            kotlin.coroutines.jvm.internal.f.c(continuation);
        }
        return objX;
    }

    @Override // kotlinx.coroutines.flow.internal.c
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public Continuation<kotlin.v>[] b(StateFlowImpl<?> stateFlowImpl) {
        this._state = null;
        return kotlinx.coroutines.flow.internal.b.f15973a;
    }

    public final void f() {
        while (true) {
            Object obj = this._state;
            if (obj == null || obj == l2.b) {
                return;
            }
            if (obj == l2.f15983a) {
                if (f15984a.compareAndSet(this, obj, l2.b)) {
                    return;
                }
            } else if (f15984a.compareAndSet(this, obj, l2.f15983a)) {
                kotlin.v vVar = kotlin.v.f15822a;
                Result.Companion companion = Result.INSTANCE;
                ((kotlinx.coroutines.l) obj).resumeWith(Result.m139constructorimpl(vVar));
                return;
            }
        }
    }

    public final boolean g() {
        Object andSet = f15984a.getAndSet(this, l2.f15983a);
        kotlin.jvm.internal.r.c(andSet);
        if (!kotlinx.coroutines.l0.a() || (!(andSet instanceof kotlinx.coroutines.l))) {
            return andSet == l2.b;
        }
        throw new AssertionError();
    }
}
