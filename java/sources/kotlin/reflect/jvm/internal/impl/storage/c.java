package kotlin.reflect.jvm.internal.impl.storage;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends d {
    private final Runnable c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function1<InterruptedException, v> f15632d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public c(Lock lock, Runnable checkCancelled, Function1<? super InterruptedException, v> interruptedExceptionHandler) {
        super(lock);
        r.e(lock, "lock");
        r.e(checkCancelled, "checkCancelled");
        r.e(interruptedExceptionHandler, "interruptedExceptionHandler");
        this.c = checkCancelled;
        this.f15632d = interruptedExceptionHandler;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.d, kotlin.reflect.jvm.internal.impl.storage.j
    public void lock() {
        while (!a().tryLock(50L, TimeUnit.MILLISECONDS)) {
            try {
                this.c.run();
            } catch (InterruptedException e2) {
                this.f15632d.invoke(e2);
                return;
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(Runnable checkCancelled, Function1<? super InterruptedException, v> interruptedExceptionHandler) {
        this(new ReentrantLock(), checkCancelled, interruptedExceptionHandler);
        r.e(checkCancelled, "checkCancelled");
        r.e(interruptedExceptionHandler, "interruptedExceptionHandler");
    }
}
