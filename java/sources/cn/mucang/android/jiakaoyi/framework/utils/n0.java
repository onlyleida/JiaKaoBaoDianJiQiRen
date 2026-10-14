package cn.mucang.android.jiakaoyi.framework.utils;

import android.os.Looper;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes2.dex */
public class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ExecutorService f3631a = Executors.newFixedThreadPool(10);

    public static void a(Runnable runnable) {
        ExecutorService executorService = f3631a;
        if (executorService != null) {
            executorService.execute(runnable);
        }
    }

    public static void b(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            f3631a.execute(runnable);
        } else {
            runnable.run();
        }
    }

    public static <T> Future<T> c(Callable<T> callable) {
        ExecutorService executorService = f3631a;
        if (executorService != null) {
            return executorService.submit(callable);
        }
        return null;
    }
}
