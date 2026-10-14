package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.l0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d<T> extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater f16011a = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_consensus");
    private volatile Object _consensus = c.f16009a;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.u
    public d<?> a() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.u
    public final Object c(Object obj) {
        Object objE = this._consensus;
        if (objE == c.f16009a) {
            objE = e(i(obj));
        }
        d(obj, objE);
        return objE;
    }

    public abstract void d(T t, Object obj);

    public final Object e(Object obj) {
        if (l0.a()) {
            if (!(obj != c.f16009a)) {
                throw new AssertionError();
            }
        }
        Object obj2 = this._consensus;
        Object obj3 = c.f16009a;
        if (obj2 != obj3) {
            return obj2;
        }
        return f16011a.compareAndSet(this, obj3, obj) ? obj : this._consensus;
    }

    public final Object f() {
        return this._consensus;
    }

    public long g() {
        return 0L;
    }

    public final boolean h() {
        return this._consensus != c.f16009a;
    }

    public abstract Object i(T t);
}
