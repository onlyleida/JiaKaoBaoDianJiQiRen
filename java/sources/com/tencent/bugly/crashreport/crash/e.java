package com.tencent.bugly.crashreport.crash;

import android.content.Context;
import android.os.Process;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.y;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class e implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f13777h;
    private static final Object i = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f13778a;
    private b b;
    private com.tencent.bugly.crashreport.common.strategy.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.tencent.bugly.crashreport.common.info.a f13779d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f13780e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f13781f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f13782g = false;
    private int j;

    public e(Context context, b bVar, com.tencent.bugly.crashreport.common.strategy.a aVar, com.tencent.bugly.crashreport.common.info.a aVar2) {
        this.f13778a = context;
        this.b = bVar;
        this.c = aVar;
        this.f13779d = aVar2;
    }

    public final synchronized void a() {
        if (this.j >= 10) {
            y.a("java crash handler over %d, no need set.", 10);
            return;
        }
        this.f13782g = true;
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != null) {
            if (getClass().getName().equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                return;
            }
            if ("com.android.internal.os.RuntimeInit$UncaughtHandler".equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                y.a("backup system java handler: %s", defaultUncaughtExceptionHandler.toString());
                this.f13781f = defaultUncaughtExceptionHandler;
                this.f13780e = defaultUncaughtExceptionHandler;
            } else {
                y.a("backup java handler: %s", defaultUncaughtExceptionHandler.toString());
                this.f13780e = defaultUncaughtExceptionHandler;
            }
        }
        Thread.setDefaultUncaughtExceptionHandler(this);
        this.j++;
        y.a("registered java monitor: %s", toString());
    }

    public final synchronized void b() {
        this.f13782g = false;
        y.a("close java monitor!", new Object[0]);
        if ("bugly".equals(Thread.getDefaultUncaughtExceptionHandler().getClass().getName())) {
            y.a("Java monitor to unregister: %s", toString());
            Thread.setDefaultUncaughtExceptionHandler(this.f13780e);
            this.j--;
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (i) {
            a(thread, th, true, null, null, this.f13779d.h());
        }
    }

    private CrashDetailBean b(Thread thread, Throwable th, boolean z, String str, byte[] bArr, boolean z2) {
        if (th == null) {
            y.d("We can do nothing with a null throwable.", new Object[0]);
            return null;
        }
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        crashDetailBean.r = System.currentTimeMillis();
        crashDetailBean.C = com.tencent.bugly.crashreport.common.info.b.j();
        crashDetailBean.D = com.tencent.bugly.crashreport.common.info.b.e();
        crashDetailBean.E = com.tencent.bugly.crashreport.common.info.b.l();
        crashDetailBean.F = this.f13779d.o();
        crashDetailBean.G = this.f13779d.n();
        crashDetailBean.H = this.f13779d.p();
        crashDetailBean.I = com.tencent.bugly.crashreport.common.info.b.f();
        crashDetailBean.J = com.tencent.bugly.crashreport.common.info.b.g();
        crashDetailBean.K = com.tencent.bugly.crashreport.common.info.b.h();
        crashDetailBean.w = ab.a(c.f13758e, (String) null);
        byte[] bArrA = aa.a();
        crashDetailBean.y = bArrA;
        Object[] objArr = new Object[1];
        objArr[0] = Integer.valueOf(bArrA == null ? 0 : bArrA.length);
        y.a("user log size:%d", objArr);
        crashDetailBean.b = z ? 0 : 2;
        crashDetailBean.f13716e = this.f13779d.k();
        com.tencent.bugly.crashreport.common.info.a aVar = this.f13779d;
        crashDetailBean.f13717f = aVar.i;
        crashDetailBean.f13718g = aVar.u();
        crashDetailBean.m = this.f13779d.g();
        crashDetailBean.z = ab.a(z2, c.f13759f, false);
        crashDetailBean.A = this.f13779d.f13691d;
        crashDetailBean.B = thread.getName() + "(" + thread.getId() + ")";
        crashDetailBean.L = this.f13779d.w();
        crashDetailBean.f13719h = this.f13779d.t();
        crashDetailBean.i = this.f13779d.F();
        com.tencent.bugly.crashreport.common.info.a aVar2 = this.f13779d;
        crashDetailBean.P = aVar2.f13690a;
        crashDetailBean.Q = aVar2.a();
        a(crashDetailBean, th, z);
        try {
            if (z) {
                this.b.d(crashDetailBean);
            } else {
                boolean z3 = str != null && str.length() > 0;
                boolean z4 = bArr != null && bArr.length > 0;
                if (z3) {
                    HashMap map = new HashMap(1);
                    crashDetailBean.R = map;
                    map.put("UserData", str);
                }
                if (z4) {
                    crashDetailBean.X = bArr;
                }
            }
            crashDetailBean.T = this.f13779d.D();
            crashDetailBean.U = this.f13779d.E();
            crashDetailBean.V = this.f13779d.x();
            crashDetailBean.W = this.f13779d.C();
        } catch (Throwable th2) {
            y.e("handle crash error %s", th2.toString());
        }
        return crashDetailBean;
    }

    private static String b(Throwable th, int i2) {
        String message = th.getMessage();
        if (message == null) {
            return "";
        }
        if (message.length() <= 1000) {
            return message;
        }
        return message.substring(0, 1000) + "\n[Message over limit size:1000, has been cutted!]";
    }

    private static void a(CrashDetailBean crashDetailBean, Throwable th, boolean z) {
        String strA;
        String name = th.getClass().getName();
        String strB = b(th, 1000);
        Object[] objArr = new Object[2];
        objArr[0] = Integer.valueOf(th.getStackTrace().length);
        objArr[1] = Boolean.valueOf(th.getCause() != null);
        y.e("stack frame :%d, has cause %b", objArr);
        String str = "";
        String string = th.getStackTrace().length > 0 ? th.getStackTrace()[0].toString() : "";
        Throwable cause = th;
        while (cause != null && cause.getCause() != null) {
            cause = cause.getCause();
        }
        if (cause != null && cause != th) {
            crashDetailBean.n = cause.getClass().getName();
            crashDetailBean.o = b(cause, 1000);
            if (cause.getStackTrace().length > 0) {
                crashDetailBean.p = cause.getStackTrace()[0].toString();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(name);
            sb.append(":");
            sb.append(strB);
            sb.append("\n");
            sb.append(string);
            sb.append("\n......");
            sb.append("\nCaused by:\n");
            sb.append(crashDetailBean.n);
            sb.append(":");
            sb.append(crashDetailBean.o);
            sb.append("\n");
            strA = a(cause, c.f13759f);
            sb.append(strA);
            crashDetailBean.q = sb.toString();
        } else {
            crashDetailBean.n = name;
            if (c.a().m() && z) {
                y.e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
                str = " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]";
            }
            crashDetailBean.o = strB + str;
            crashDetailBean.p = string;
            strA = a(th, c.f13759f);
            crashDetailBean.q = strA;
        }
        crashDetailBean.u = ab.a(crashDetailBean.q.getBytes());
        crashDetailBean.z.put(crashDetailBean.B, strA);
    }

    private static boolean a(Thread thread) {
        synchronized (i) {
            if (f13777h != null && thread.getName().equals(f13777h)) {
                return true;
            }
            f13777h = thread.getName();
            return false;
        }
    }

    public final void a(Thread thread, Throwable th, boolean z, String str, byte[] bArr, boolean z2) {
        if (z) {
            y.e("Java Crash Happen cause by %s(%d)", thread.getName(), Long.valueOf(thread.getId()));
            if (a(thread)) {
                y.a("this class has handled this exception", new Object[0]);
                if (this.f13781f != null) {
                    y.a("call system handler", new Object[0]);
                    this.f13781f.uncaughtException(thread, th);
                } else {
                    y.e("current process die", new Object[0]);
                    Process.killProcess(Process.myPid());
                    System.exit(1);
                }
            }
        } else {
            y.e("Java Catch Happen", new Object[0]);
        }
        try {
            if (!this.f13782g) {
                y.c("Java crash handler is disable. Just return.", new Object[0]);
                if (z) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f13780e;
                    if (uncaughtExceptionHandler != null && a(uncaughtExceptionHandler)) {
                        y.e("sys default last handle start!", new Object[0]);
                        this.f13780e.uncaughtException(thread, th);
                        y.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f13781f != null) {
                        y.e("system handle start!", new Object[0]);
                        this.f13781f.uncaughtException(thread, th);
                        y.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        y.e("crashreport last handle start!", new Object[0]);
                        y.e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        y.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            if (!this.c.b()) {
                y.d("no remote but still store!", new Object[0]);
            }
            if (!this.c.c().f13699e && this.c.b()) {
                y.e("crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
                b.a(z ? "JAVA_CRASH" : "JAVA_CATCH", ab.a(), this.f13779d.f13691d, thread.getName(), ab.a(th), (CrashDetailBean) null);
                if (z) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f13780e;
                    if (uncaughtExceptionHandler2 != null && a(uncaughtExceptionHandler2)) {
                        y.e("sys default last handle start!", new Object[0]);
                        this.f13780e.uncaughtException(thread, th);
                        y.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f13781f != null) {
                        y.e("system handle start!", new Object[0]);
                        this.f13781f.uncaughtException(thread, th);
                        y.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        y.e("crashreport last handle start!", new Object[0]);
                        y.e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        y.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            CrashDetailBean crashDetailBeanB = b(thread, th, z, str, bArr, z2);
            if (crashDetailBeanB == null) {
                y.e("pkg crash datas fail!", new Object[0]);
                if (z) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.f13780e;
                    if (uncaughtExceptionHandler3 != null && a(uncaughtExceptionHandler3)) {
                        y.e("sys default last handle start!", new Object[0]);
                        this.f13780e.uncaughtException(thread, th);
                        y.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f13781f != null) {
                        y.e("system handle start!", new Object[0]);
                        this.f13781f.uncaughtException(thread, th);
                        y.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        y.e("crashreport last handle start!", new Object[0]);
                        y.e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        y.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            b.a(z ? "JAVA_CRASH" : "JAVA_CATCH", ab.a(), this.f13779d.f13691d, thread.getName(), ab.a(th), crashDetailBeanB);
            if (!this.b.a(crashDetailBeanB)) {
                this.b.a(crashDetailBeanB, 3000L, z);
            }
            if (z) {
                this.b.c(crashDetailBeanB);
            }
            if (z) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler4 = this.f13780e;
                if (uncaughtExceptionHandler4 != null && a(uncaughtExceptionHandler4)) {
                    y.e("sys default last handle start!", new Object[0]);
                    this.f13780e.uncaughtException(thread, th);
                    y.e("sys default last handle end!", new Object[0]);
                } else if (this.f13781f != null) {
                    y.e("system handle start!", new Object[0]);
                    this.f13781f.uncaughtException(thread, th);
                    y.e("system handle end!", new Object[0]);
                } else {
                    y.e("crashreport last handle start!", new Object[0]);
                    y.e("current process die", new Object[0]);
                    Process.killProcess(Process.myPid());
                    System.exit(1);
                    y.e("crashreport last handle end!", new Object[0]);
                }
            }
        } catch (Throwable th2) {
            try {
                if (!y.a(th2)) {
                    th2.printStackTrace();
                }
                if (z) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler5 = this.f13780e;
                    if (uncaughtExceptionHandler5 != null && a(uncaughtExceptionHandler5)) {
                        y.e("sys default last handle start!", new Object[0]);
                        this.f13780e.uncaughtException(thread, th);
                        y.e("sys default last handle end!", new Object[0]);
                    } else if (this.f13781f != null) {
                        y.e("system handle start!", new Object[0]);
                        this.f13781f.uncaughtException(thread, th);
                        y.e("system handle end!", new Object[0]);
                    } else {
                        y.e("crashreport last handle start!", new Object[0]);
                        y.e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        y.e("crashreport last handle end!", new Object[0]);
                    }
                }
            } catch (Throwable th3) {
                if (z) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler6 = this.f13780e;
                    if (uncaughtExceptionHandler6 != null && a(uncaughtExceptionHandler6)) {
                        y.e("sys default last handle start!", new Object[0]);
                        this.f13780e.uncaughtException(thread, th);
                        y.e("sys default last handle end!", new Object[0]);
                    } else if (this.f13781f != null) {
                        y.e("system handle start!", new Object[0]);
                        this.f13781f.uncaughtException(thread, th);
                        y.e("system handle end!", new Object[0]);
                    } else {
                        y.e("crashreport last handle start!", new Object[0]);
                        y.e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        y.e("crashreport last handle end!", new Object[0]);
                    }
                }
                throw th3;
            }
        }
    }

    private static boolean a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        if (uncaughtExceptionHandler == null) {
            return true;
        }
        String name = uncaughtExceptionHandler.getClass().getName();
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            String className = stackTraceElement.getClassName();
            String methodName = stackTraceElement.getMethodName();
            if (name.equals(className) && "uncaughtException".equals(methodName)) {
                return false;
            }
        }
        return true;
    }

    public final synchronized void a(StrategyBean strategyBean) {
        if (strategyBean != null) {
            boolean z = strategyBean.f13699e;
            if (z != this.f13782g) {
                y.a("java changed to %b", Boolean.valueOf(z));
                if (strategyBean.f13699e) {
                    a();
                    return;
                }
                b();
            }
        }
    }

    private static String a(Throwable th, int i2) {
        if (th == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            if (th.getStackTrace() != null) {
                for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                    if (i2 > 0 && sb.length() >= i2) {
                        sb.append("\n[Stack over limit size :" + i2 + " , has been cutted !]");
                        return sb.toString();
                    }
                    sb.append(stackTraceElement.toString());
                    sb.append("\n");
                }
            }
        } catch (Throwable th2) {
            y.e("gen stack error %s", th2.toString());
        }
        return sb.toString();
    }
}
