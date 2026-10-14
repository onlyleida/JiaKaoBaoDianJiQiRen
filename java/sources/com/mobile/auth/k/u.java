package com.mobile.auth.k;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ExecutorService f13508a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue());

    public static abstract class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Thread.UncaughtExceptionHandler f13509a;

        /* JADX INFO: renamed from: com.mobile.auth.k.u$a$a, reason: collision with other inner class name */
        class C0265a implements Thread.UncaughtExceptionHandler {
            C0265a(a aVar) {
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                th.printStackTrace();
            }
        }

        class b implements Thread.UncaughtExceptionHandler {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Context f13510a;
            final /* synthetic */ com.cmic.sso.sdk.a b;

            b(a aVar, Context context, com.cmic.sso.sdk.a aVar2) {
                this.f13510a = context;
                this.b = aVar2;
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                th.printStackTrace();
                com.mobile.auth.e.a.a(this.f13510a).a("200025", "发生未知错误", this.b, null, th);
            }
        }

        protected a() {
            this.f13509a = new C0265a(this);
        }

        protected a(Context context, com.cmic.sso.sdk.a aVar) {
            this.f13509a = new b(this, context, aVar);
        }

        protected abstract void a();

        @Override // java.lang.Runnable
        public void run() {
            Thread.currentThread().setUncaughtExceptionHandler(this.f13509a);
            a();
            Thread.currentThread().setUncaughtExceptionHandler(null);
        }
    }

    public static void a(a aVar) {
        f13508a.execute(aVar);
    }
}
