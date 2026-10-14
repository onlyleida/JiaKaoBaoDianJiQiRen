package kotlinx.coroutines.debug.internal;

import java.text.SimpleDateFormat;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.z;
import kotlin.k;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ConcurrentWeakMap<a<?>, Boolean> f15913a;
    private static final Function1<Boolean, v> b;
    private static final ConcurrentWeakMap<CoroutineStackFrame, b> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f15914d;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a<T> implements Continuation<T>, CoroutineStackFrame {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Continuation<T> f15915a;
        public final b b;
        private final CoroutineStackFrame c;

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        public CoroutineStackFrame getCallerFrame() {
            CoroutineStackFrame coroutineStackFrame = this.c;
            if (coroutineStackFrame != null) {
                return coroutineStackFrame.getCallerFrame();
            }
            return null;
        }

        @Override // kotlin.coroutines.Continuation
        public CoroutineContext getContext() {
            return this.f15915a.getContext();
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        public StackTraceElement getStackTraceElement() {
            CoroutineStackFrame coroutineStackFrame = this.c;
            if (coroutineStackFrame != null) {
                return coroutineStackFrame.getStackTraceElement();
            }
            return null;
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(Object obj) {
            c.c(c.f15914d, this);
            throw null;
        }

        public String toString() {
            return this.f15915a.toString();
        }
    }

    static {
        c cVar = new c();
        f15914d = cVar;
        new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        f15913a = new ConcurrentWeakMap<>(false, 1, null);
        new ReentrantReadWriteLock();
        b = cVar.d();
        c = new ConcurrentWeakMap<>(true);
        AtomicLongFieldUpdater.newUpdater(d.class, "sequenceNumber");
    }

    private c() {
    }

    public static final /* synthetic */ boolean b(c cVar, a aVar) {
        cVar.e(aVar);
        throw null;
    }

    public static final /* synthetic */ void c(c cVar, a aVar) {
        cVar.f(aVar);
        throw null;
    }

    private final Function1<Boolean, v> d() {
        Object objM139constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            Object objNewInstance = Class.forName("kotlinx.coroutines.debug.internal.ByteBuddyDynamicAttach").getConstructors()[0].newInstance(new Object[0]);
            if (objNewInstance == null) {
                throw new NullPointerException("null cannot be cast to non-null type (kotlin.Boolean) -> kotlin.Unit");
            }
            z.e(objNewInstance, 1);
            objM139constructorimpl = Result.m139constructorimpl((Function1) objNewInstance);
            if (Result.m145isFailureimpl(objM139constructorimpl)) {
                objM139constructorimpl = null;
            }
            return (Function1) objM139constructorimpl;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
    }

    private final boolean e(a<?> aVar) {
        aVar.b.a();
        throw null;
    }

    private final void f(a<?> aVar) {
        f15913a.remove(aVar);
        aVar.b.b();
        throw null;
    }
}
