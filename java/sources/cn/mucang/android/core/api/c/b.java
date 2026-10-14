package cn.mucang.android.core.api.c;

import android.os.Looper;
import cn.mucang.android.core.api.exception.WeakRefLostException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;

/* JADX INFO: loaded from: classes.dex */
public class b {

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.core.api.c.a f2321a;

        a(cn.mucang.android.core.api.c.a aVar) {
            this.f2321a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.c(this.f2321a);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.core.api.c.b$b, reason: collision with other inner class name */
    class RunnableC0062b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.core.api.c.a f2322a;

        /* JADX INFO: renamed from: cn.mucang.android.core.api.c.b$b$a */
        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Object f2323a;

            a(Object obj) {
                this.f2323a = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    RunnableC0062b.this.f2322a.b(this.f2323a);
                } catch (WeakRefLostException e2) {
                    t.c("默认替换", e2);
                }
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.core.api.c.b$b$b, reason: collision with other inner class name */
        class RunnableC0063b implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Exception f2324a;

            RunnableC0063b(Exception exc) {
                this.f2324a = exc;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    RunnableC0062b.this.f2322a.c(this.f2324a);
                } catch (WeakRefLostException e2) {
                    t.c("默认替换", e2);
                }
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.core.api.c.b$b$c */
        class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    RunnableC0062b.this.f2322a.d();
                } catch (WeakRefLostException e2) {
                    t.c("默认替换", e2);
                }
            }
        }

        RunnableC0062b(cn.mucang.android.core.api.c.a aVar) {
            this.f2322a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar;
            try {
                try {
                    u.c(new a(this.f2322a.request()));
                    cVar = new c();
                } catch (Exception e2) {
                    t.c("默认替换", e2);
                    if (e2 instanceof WeakRefLostException) {
                        u.c(new c());
                        return;
                    } else {
                        u.c(new RunnableC0063b(e2));
                        cVar = new c();
                    }
                }
                u.c(cVar);
            } catch (Throwable th) {
                u.c(new c());
                throw th;
            }
        }
    }

    public static <T> void b(cn.mucang.android.core.api.c.a<T> aVar) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            c(aVar);
        } else {
            u.c(new a(aVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(cn.mucang.android.core.api.c.a aVar) {
        try {
            aVar.a();
            d(aVar);
        } catch (WeakRefLostException e2) {
            t.c("默认替换", e2);
        }
    }

    private static <T> void d(cn.mucang.android.core.api.c.a<T> aVar) {
        MucangConfig.f(new RunnableC0062b(aVar));
    }
}
