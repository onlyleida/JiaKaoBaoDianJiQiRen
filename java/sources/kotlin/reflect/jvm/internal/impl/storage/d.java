package kotlin.reflect.jvm.internal.impl.storage;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public class d implements j {
    private final Lock b;

    public d(Lock lock) {
        r.e(lock, "lock");
        this.b = lock;
    }

    protected final Lock a() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.j
    public void lock() {
        this.b.lock();
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.j
    public void unlock() {
        this.b.unlock();
    }

    public /* synthetic */ d(Lock lock, int i, o oVar) {
        this((i & 1) != 0 ? new ReentrantLock() : lock);
    }
}
