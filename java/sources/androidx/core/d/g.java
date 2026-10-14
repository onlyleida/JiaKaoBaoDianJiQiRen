package androidx.core.d;

import android.os.Handler;
import android.os.Process;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
class g {

    private static class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f1084a;
        private int b;

        /* JADX INFO: renamed from: androidx.core.d.g$a$a, reason: collision with other inner class name */
        private static class C0029a extends Thread {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final int f1085a;

            C0029a(Runnable runnable, String str, int i) {
                super(runnable, str);
                this.f1085a = i;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(this.f1085a);
                super.run();
            }
        }

        a(String str, int i) {
            this.f1084a = str;
            this.b = i;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new C0029a(runnable, this.f1084a, this.b);
        }
    }

    private static class b<T> implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Callable<T> f1086a;
        private androidx.core.util.a<T> b;
        private Handler c;

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ androidx.core.util.a f1087a;
            final /* synthetic */ Object b;

            a(b bVar, androidx.core.util.a aVar, Object obj) {
                this.f1087a = aVar;
                this.b = obj;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                this.f1087a.accept(this.b);
            }
        }

        b(Handler handler, Callable<T> callable, androidx.core.util.a<T> aVar) {
            this.f1086a = callable;
            this.b = aVar;
            this.c = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            T tCall;
            try {
                tCall = this.f1086a.call();
            } catch (Exception unused) {
                tCall = null;
            }
            this.c.post(new a(this, this.b, tCall));
        }
    }

    static ThreadPoolExecutor a(String str, int i, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, i2, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new a(str, i));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    static <T> void b(Executor executor, Callable<T> callable, androidx.core.util.a<T> aVar) {
        executor.execute(new b(androidx.core.d.b.a(), callable, aVar));
    }

    static <T> T c(ExecutorService executorService, Callable<T> callable, int i) throws InterruptedException {
        try {
            return executorService.submit(callable).get(i, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            throw e2;
        } catch (ExecutionException e3) {
            throw new RuntimeException(e3);
        } catch (TimeoutException unused) {
            throw new InterruptedException("timeout");
        }
    }
}
