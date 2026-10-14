package com.loc;

import android.content.Context;
import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class am extends aj implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static ExecutorService f12512e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static WeakReference<Context> f12514g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f12516d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Set<Integer> f12513f = Collections.synchronizedSet(new HashSet());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ThreadFactory f12515h = new ThreadFactory() { // from class: com.loc.am.2

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f12518a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable, "pama#" + this.f12518a.getAndIncrement()) { // from class: com.loc.am.2.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    try {
                        super.run();
                    } catch (Throwable unused) {
                    }
                }
            };
        }
    };

    private am(Context context) {
        this.f12516d = context;
        try {
            Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            this.b = defaultUncaughtExceptionHandler;
            if (defaultUncaughtExceptionHandler == null) {
                Thread.setDefaultUncaughtExceptionHandler(this);
                this.c = true;
                return;
            }
            String string = defaultUncaughtExceptionHandler.toString();
            if (!string.startsWith("com.amap.apis.utils.core.dynamiccore") && (string.indexOf("com.amap.api") != -1 || string.indexOf("com.loc") != -1)) {
                this.c = false;
            } else {
                Thread.setDefaultUncaughtExceptionHandler(this);
                this.c = true;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static synchronized am a(Context context, v vVar) throws j {
        try {
            if (vVar == null) {
                throw new j("sdk info is null");
            }
            if (vVar.a() == null || "".equals(vVar.a())) {
                throw new j("sdk name is invalid");
            }
            try {
                if (!f12513f.add(Integer.valueOf(vVar.hashCode()))) {
                    return (am) aj.f12503a;
                }
                aj ajVar = aj.f12503a;
                if (ajVar == null) {
                    aj.f12503a = new am(context);
                } else {
                    ajVar.c = false;
                }
                aj ajVar2 = aj.f12503a;
                ajVar2.a(vVar, ajVar2.c);
                return (am) aj.f12503a;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static void a(v vVar, String str, j jVar) {
        if (jVar != null) {
            a(vVar, str, jVar.c(), jVar.d(), jVar.e(), jVar.b());
        }
    }

    public static void a(v vVar, String str, String str2, String str3, String str4) {
        a(vVar, str, str2, str3, "", str4);
    }

    public static void a(v vVar, String str, String str2, String str3, String str4, String str5) {
        try {
            if (aj.f12503a != null) {
                aj.f12503a.a(vVar, "path:" + str + ",type:" + str2 + ",gsid:" + str3 + ",csid:" + str4 + ",code:" + str5, "networkError");
            }
        } catch (Throwable unused) {
        }
    }

    public static synchronized void b() {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        try {
            ExecutorService executorService = f12512e;
            if (executorService != null) {
                executorService.shutdown();
            }
            bc.a();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            if (aj.f12503a != null) {
                Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
                aj ajVar = aj.f12503a;
                if (defaultUncaughtExceptionHandler == ajVar && (uncaughtExceptionHandler = ajVar.b) != null) {
                    Thread.setDefaultUncaughtExceptionHandler(uncaughtExceptionHandler);
                }
            }
            aj.f12503a = null;
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public static void b(v vVar, String str, String str2) {
        try {
            aj ajVar = aj.f12503a;
            if (ajVar != null) {
                ajVar.a(vVar, str, str2);
            }
        } catch (Throwable unused) {
        }
    }

    public static void b(Throwable th, String str, String str2) {
        try {
            aj ajVar = aj.f12503a;
            if (ajVar != null) {
                ajVar.a(th, 1, str, str2);
            }
        } catch (Throwable unused) {
        }
    }

    public static void c() {
        WeakReference<Context> weakReference = f12514g;
        if (weakReference != null && weakReference.get() != null) {
            ak.a(f12514g.get());
            return;
        }
        aj ajVar = aj.f12503a;
        if (ajVar != null) {
            ajVar.a();
        }
    }

    @Override // com.loc.aj
    protected final void a() {
        ak.a(this.f12516d);
    }

    @Override // com.loc.aj
    protected final void a(v vVar, String str, String str2) {
        an.a(vVar, this.f12516d, str2, str);
    }

    @Override // com.loc.aj
    protected final void a(final v vVar, final boolean z) {
        try {
            ci.a().b(new cj() { // from class: com.loc.am.1
                @Override // com.loc.cj
                public final void a() {
                    try {
                        synchronized (Looper.getMainLooper()) {
                            ak.a(vVar);
                        }
                        if (z) {
                            an.a(am.this.f12516d);
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.loc.aj
    protected final void a(Throwable th, int i, String str, String str2) {
        an.a(this.f12516d, th, i, str, str2);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        if (th == null) {
            return;
        }
        a(th, 0, null, null);
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.b;
        if (uncaughtExceptionHandler != null) {
            try {
                Thread.setDefaultUncaughtExceptionHandler(uncaughtExceptionHandler);
            } catch (Throwable unused) {
            }
            this.b.uncaughtException(thread, th);
        }
    }
}
