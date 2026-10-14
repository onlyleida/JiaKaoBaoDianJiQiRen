package com.mobile.auth.gatewayauth;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Runnable f13299a;
    private AtomicBoolean b;
    private Handler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f13300d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Runnable f13301e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f13302f;

    public c(long j, Runnable runnable) {
        this(j, runnable, Looper.getMainLooper());
    }

    public c(long j, Runnable runnable, Looper looper) {
        this.b = new AtomicBoolean(false);
        this.f13302f = false;
        this.f13300d = j;
        this.f13301e = runnable;
        this.c = new Handler(looper);
    }

    static /* synthetic */ boolean a(c cVar) {
        try {
            return cVar.f13302f;
        } catch (Throwable th) {
            try {
                a.a(th);
                return false;
            } catch (Throwable th2) {
                a.a(th2);
                return false;
            }
        }
    }

    static /* synthetic */ AtomicBoolean b(c cVar) {
        try {
            return cVar.b;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    static /* synthetic */ Runnable c(c cVar) {
        try {
            return cVar.f13301e;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public void a() {
        try {
            if (this.f13301e == null || this.f13300d <= 0) {
                return;
            }
            Runnable runnable = new Runnable() { // from class: com.mobile.auth.gatewayauth.c.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        synchronized (c.this) {
                            try {
                                if (!c.a(c.this)) {
                                    c.b(c.this).set(true);
                                    c.c(c.this).run();
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        try {
                            a.a(th2);
                        } catch (Throwable th3) {
                            a.a(th3);
                        }
                    }
                }
            };
            this.f13299a = runnable;
            this.c.postDelayed(runnable, this.f13300d);
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public synchronized void b() {
        try {
            this.f13302f = true;
            Runnable runnable = this.f13299a;
            if (runnable != null) {
                this.c.removeCallbacks(runnable);
            }
            this.f13301e = null;
            this.f13299a = null;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public boolean c() {
        try {
            return this.b.get();
        } catch (Throwable th) {
            try {
                a.a(th);
                return false;
            } catch (Throwable th2) {
                a.a(th2);
                return false;
            }
        }
    }

    public synchronized boolean d() {
        boolean zC;
        try {
            zC = c();
            b();
        } catch (Throwable th) {
            try {
                a.a(th);
                return false;
            } catch (Throwable th2) {
                a.a(th2);
                return false;
            }
        }
        return !zC;
    }
}
