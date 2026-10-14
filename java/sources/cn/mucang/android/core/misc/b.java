package cn.mucang.android.core.misc;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public abstract void a();

    public abstract boolean b();

    public synchronized <V> V c(Callable<V> callable) throws Exception {
        if (callable == null) {
            return null;
        }
        if (b()) {
            return null;
        }
        V vCall = callable.call();
        a();
        return vCall;
    }

    public synchronized <V> Future<V> d(Callable<V> callable, ExecutorService executorService) {
        if (callable == null) {
            return null;
        }
        if (b()) {
            return null;
        }
        a();
        return executorService.submit(callable);
    }
}
