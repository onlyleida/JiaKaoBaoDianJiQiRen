package com.tencent.bugly.crashreport.crash.anr;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.FileObserver;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.info.AppInfo;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.ad;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import com.tencent.bugly.proguard.z;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class b {
    private static b m;
    private final Context b;
    private final ActivityManager c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.tencent.bugly.crashreport.common.info.a f13734d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final x f13735e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.tencent.bugly.crashreport.crash.b f13736f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f13738h;
    private FileObserver i;
    private ad k;
    private int l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f13733a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f13737g = new Object();
    private boolean j = true;
    private long n = 0;

    private b(Context context, com.tencent.bugly.crashreport.common.strategy.a aVar, com.tencent.bugly.crashreport.common.info.a aVar2, x xVar, com.tencent.bugly.crashreport.crash.b bVar) {
        Context contextA = ab.a(context);
        this.b = contextA;
        this.c = (ActivityManager) contextA.getSystemService("activity");
        this.f13738h = context.getDir("bugly", 0).getAbsolutePath();
        this.f13734d = aVar2;
        this.f13735e = xVar;
        this.f13736f = bVar;
    }

    static /* synthetic */ void b(b bVar) {
        long jCurrentTimeMillis = (com.tencent.bugly.crashreport.crash.c.f13760g + System.currentTimeMillis()) - ab.b();
        z.a(bVar.f13738h, "bugly_trace_", ".txt", jCurrentTimeMillis);
        z.a(bVar.f13738h, "manual_bugly_trace_", ".txt", jCurrentTimeMillis);
        z.a(bVar.f13738h, "main_stack_record_", ".txt", jCurrentTimeMillis);
        z.a(bVar.f13738h, "main_stack_record_", ".txt.merged", jCurrentTimeMillis);
    }

    private synchronized boolean e() {
        return this.i != null;
    }

    private synchronized boolean f() {
        return this.j;
    }

    private synchronized void g() {
        if (e()) {
            y.d("start when started!", new Object[0]);
            return;
        }
        if (TextUtils.isEmpty(this.f13738h)) {
            return;
        }
        synchronized (this.f13737g) {
            ad adVar = this.k;
            if (adVar == null || !adVar.isAlive()) {
                ad adVar2 = new ad();
                this.k = adVar2;
                adVar2.a(this.f13734d.j());
                this.k.a(new ad.a() { // from class: com.tencent.bugly.crashreport.crash.anr.b.3
                    @Override // com.tencent.bugly.proguard.ad.a
                    public final void a(boolean z, long j) {
                        if (z) {
                            if (b.this.a()) {
                                y.c("anr is processing, return", new Object[0]);
                                return;
                            }
                            y.c("main thread blocked overdue, blockTime:%s", Long.valueOf(j));
                            if (!com.tencent.bugly.proguard.a.a(b.this.c)) {
                                y.c("proc is not in anr, wait next check", new Object[0]);
                                return;
                            }
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            if (!b.this.a(jCurrentTimeMillis) && b.a(b.this, true)) {
                                y.c("found anr", new Object[0]);
                                NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
                                if (nativeCrashHandler != null && nativeCrashHandler.isEnableCatchAnrTrace()) {
                                    y.c("anr trace enable, do dump trace", new Object[0]);
                                    nativeCrashHandler.dumpAnrNativeStack();
                                    return;
                                }
                                y.c("anr trace not enable", new Object[0]);
                                File file = new File(b.this.f13738h, "manual_bugly_trace_" + jCurrentTimeMillis + ".txt");
                                y.a("create new trace file:%s", file.getAbsoluteFile());
                                z.a(file, "android trace not enable\n", 101376L, true);
                            }
                        }
                    }
                });
                ad adVar3 = this.k;
                StringBuilder sb = new StringBuilder("Bugly-ThreadMonitor");
                int i = this.l;
                this.l = i + 1;
                sb.append(i);
                adVar3.setName(sb.toString());
                this.k.b();
            }
        }
        FileObserver fileObserver = new FileObserver(this.f13738h, 8) { // from class: com.tencent.bugly.crashreport.crash.anr.b.4
            @Override // android.os.FileObserver
            public final void onEvent(int i2, String str) {
                if (str == null) {
                    return;
                }
                y.d("observe file, dir:%s fileName:%s", b.this.f13738h, str);
                if (!b.a(str)) {
                    y.c("not manual trace file, ignore.", new Object[0]);
                    return;
                }
                if (!b.this.a()) {
                    y.c("proc is not in anr, just ignore", new Object[0]);
                    return;
                }
                long jA = z.a(str, "manual_bugly_trace_", ".txt");
                b.this.a(jA, b.this.f13738h + "/" + str);
                y.c("Finish handling one anr.", new Object[0]);
            }
        };
        this.i = fileObserver;
        try {
            fileObserver.startWatching();
            y.a("startWatchingPrivateAnrDir! dumFilePath is %s", this.f13738h);
            this.f13735e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.5
                @Override // java.lang.Runnable
                public final void run() {
                    b.b(b.this);
                }
            });
        } catch (Throwable th) {
            this.i = null;
            y.d("startWatchingPrivateAnrDir failed!", new Object[0]);
            if (y.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private synchronized void h() {
        if (!e()) {
            y.d("close when closed!", new Object[0]);
            return;
        }
        synchronized (this.f13737g) {
            ad adVar = this.k;
            if (adVar != null) {
                adVar.a();
                this.k = null;
            }
        }
        y.a("stopWatchingPrivateAnrDir", new Object[0]);
        try {
            this.i.stopWatching();
            this.i = null;
            y.d("close anr monitor!", new Object[0]);
        } catch (Throwable th) {
            y.d("stop anr monitor failed!", new Object[0]);
            if (y.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private boolean b(boolean z) {
        boolean zCompareAndSet = this.f13733a.compareAndSet(!z, z);
        y.c("tryChangeAnrState to %s, success:%s", Boolean.valueOf(z), Boolean.valueOf(zCompareAndSet));
        return zCompareAndSet;
    }

    private synchronized void c() {
        if (e()) {
            y.d("start when started!", new Object[0]);
            return;
        }
        FileObserver fileObserver = new FileObserver("/data/anr/", 8) { // from class: com.tencent.bugly.crashreport.crash.anr.b.1
            @Override // android.os.FileObserver
            public final void onEvent(int i, String str) {
                if (str == null) {
                    return;
                }
                final String str2 = "/data/anr/" + str;
                y.d("watching file %s", str2);
                if (str2.contains("trace")) {
                    b.this.f13735e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            b.a(b.this, str2);
                        }
                    });
                } else {
                    y.d("not anr file %s", str2);
                }
            }
        };
        this.i = fileObserver;
        try {
            fileObserver.startWatching();
            y.a("start anr monitor!", new Object[0]);
            this.f13735e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.2
                @Override // java.lang.Runnable
                public final void run() {
                    b.b(b.this);
                }
            });
        } catch (Throwable th) {
            this.i = null;
            y.d("start anr monitor failed!", new Object[0]);
            if (y.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private synchronized void d() {
        if (!e()) {
            y.d("close when closed!", new Object[0]);
            return;
        }
        try {
            this.i.stopWatching();
            this.i = null;
            y.d("close anr monitor!", new Object[0]);
        } catch (Throwable th) {
            y.d("stop anr monitor failed!", new Object[0]);
            if (y.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    static /* synthetic */ void a(b bVar, String str) {
        if (bVar.b(true)) {
            try {
                y.c("read trace first dump for create time!", new Object[0]);
                TraceFileHelper.a firstDumpInfo = TraceFileHelper.readFirstDumpInfo(str, false);
                long jCurrentTimeMillis = firstDumpInfo != null ? firstDumpInfo.c : -1L;
                if (jCurrentTimeMillis == -1) {
                    y.d("trace dump fail could not get time!", new Object[0]);
                    jCurrentTimeMillis = System.currentTimeMillis();
                }
                if (bVar.a(jCurrentTimeMillis)) {
                    return;
                }
                bVar.a(jCurrentTimeMillis, str);
            } catch (Throwable th) {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
                y.e("handle anr error %s", th.getClass().toString());
            }
        }
    }

    public final synchronized void b() {
        y.d("customer decides whether to open or close.", new Object[0]);
    }

    static /* synthetic */ boolean a(b bVar, boolean z) {
        return bVar.b(true);
    }

    static /* synthetic */ boolean a(String str) {
        return str.startsWith("manual_bugly_trace_") && str.endsWith(".txt");
    }

    public static b a(Context context, com.tencent.bugly.crashreport.common.strategy.a aVar, com.tencent.bugly.crashreport.common.info.a aVar2, x xVar, o oVar, com.tencent.bugly.crashreport.crash.b bVar, BuglyStrategy.a aVar3) {
        if (m == null) {
            m = new b(context, aVar, aVar2, xVar, bVar);
        }
        return m;
    }

    private CrashDetailBean a(a aVar) {
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        try {
            crashDetailBean.C = com.tencent.bugly.crashreport.common.info.b.j();
            crashDetailBean.D = com.tencent.bugly.crashreport.common.info.b.e();
            crashDetailBean.E = com.tencent.bugly.crashreport.common.info.b.l();
            crashDetailBean.F = this.f13734d.o();
            crashDetailBean.G = this.f13734d.n();
            crashDetailBean.H = this.f13734d.p();
            crashDetailBean.I = com.tencent.bugly.crashreport.common.info.b.f();
            crashDetailBean.J = com.tencent.bugly.crashreport.common.info.b.g();
            crashDetailBean.K = com.tencent.bugly.crashreport.common.info.b.h();
            if (!com.tencent.bugly.crashreport.common.info.b.o()) {
                crashDetailBean.w = ab.a(com.tencent.bugly.crashreport.crash.c.f13758e, (String) null);
            }
            crashDetailBean.b = 3;
            crashDetailBean.f13716e = this.f13734d.k();
            com.tencent.bugly.crashreport.common.info.a aVar2 = this.f13734d;
            crashDetailBean.f13717f = aVar2.i;
            crashDetailBean.f13718g = aVar2.u();
            crashDetailBean.m = this.f13734d.g();
            crashDetailBean.n = "ANR_EXCEPTION";
            crashDetailBean.o = aVar.f13731f;
            crashDetailBean.q = aVar.f13732g;
            HashMap map = new HashMap();
            crashDetailBean.S = map;
            map.put("BUGLY_CR_01", aVar.f13730e);
            String str = crashDetailBean.q;
            int iIndexOf = str != null ? str.indexOf("\n") : -1;
            crashDetailBean.p = iIndexOf > 0 ? crashDetailBean.q.substring(0, iIndexOf) : "GET_FAIL";
            crashDetailBean.r = aVar.c;
            String str2 = crashDetailBean.q;
            if (str2 != null) {
                crashDetailBean.u = ab.a(str2.getBytes());
            }
            crashDetailBean.z = aVar.b;
            crashDetailBean.A = aVar.f13728a;
            crashDetailBean.B = "main(1)";
            crashDetailBean.L = this.f13734d.w();
            crashDetailBean.f13719h = this.f13734d.t();
            crashDetailBean.i = this.f13734d.F();
            crashDetailBean.v = aVar.f13729d;
            com.tencent.bugly.crashreport.common.info.a aVar3 = this.f13734d;
            crashDetailBean.O = aVar3.m;
            crashDetailBean.P = aVar3.f13690a;
            crashDetailBean.Q = aVar3.a();
            if (!com.tencent.bugly.crashreport.common.info.b.o()) {
                this.f13736f.d(crashDetailBean);
            }
            crashDetailBean.T = this.f13734d.D();
            crashDetailBean.U = this.f13734d.E();
            crashDetailBean.V = this.f13734d.x();
            crashDetailBean.W = this.f13734d.C();
            crashDetailBean.y = aa.a();
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
        }
        return crashDetailBean;
    }

    private synchronized void d(boolean z) {
        if (this.j != z) {
            y.a("user change anr %b", Boolean.valueOf(z));
            this.j = z;
        }
    }

    private synchronized void c(boolean z) {
        if (Build.VERSION.SDK_INT <= 19) {
            if (z) {
                c();
                return;
            } else {
                d();
                return;
            }
        }
        if (z) {
            g();
        } else {
            h();
        }
    }

    private static boolean a(String str, String str2, String str3) throws Throwable {
        Map<String, String[]> map;
        TraceFileHelper.a targetDumpInfo = TraceFileHelper.readTargetDumpInfo(str3, str, true);
        if (targetDumpInfo != null && (map = targetDumpInfo.f13727d) != null && !map.isEmpty()) {
            StringBuilder sb = new StringBuilder(1024);
            String[] strArr = targetDumpInfo.f13727d.get("main");
            if (strArr != null && strArr.length >= 3) {
                sb.append("\"main\" tid=");
                sb.append(strArr[2]);
                sb.append(" :\n");
                sb.append(strArr[0]);
                sb.append("\n");
                sb.append(strArr[1]);
                sb.append("\n\n");
            }
            for (Map.Entry<String, String[]> entry : targetDumpInfo.f13727d.entrySet()) {
                if (!entry.getKey().equals("main") && entry.getValue() != null && entry.getValue().length >= 3) {
                    sb.append("\"");
                    sb.append(entry.getKey());
                    sb.append("\" tid=");
                    sb.append(entry.getValue()[2]);
                    sb.append(" :\n");
                    sb.append(entry.getValue()[0]);
                    sb.append("\n");
                    sb.append(entry.getValue()[1]);
                    sb.append("\n\n");
                }
            }
            return z.a(str2, sb.toString(), sb.length() * 2);
        }
        y.e("not found trace dump for %s", str3);
        return false;
    }

    public final boolean a() {
        return this.f13733a.get();
    }

    private static String a(List<c> list, long j) {
        if (list == null || list.isEmpty()) {
            return "main thread stack not enable";
        }
        StringBuilder sb = new StringBuilder(4096);
        sb.append("\n>>>>> 以下为anr过程中主线程堆栈记录，可根据堆栈出现次数推测在该堆栈阻塞的时间，出现次数越多对anr贡献越大，越可能是造成anr的原因 >>>>>\n");
        sb.append("\n>>>>> Thread Stack Traces Records Start >>>>>\n");
        for (int i = 0; i < list.size(); i++) {
            c cVar = list.get(i);
            sb.append("Thread name:");
            sb.append(cVar.b());
            sb.append("\n");
            long jC = cVar.c() - j;
            String str = jC <= 0 ? "before " : "after ";
            sb.append("Got ");
            sb.append(str);
            sb.append("anr:");
            sb.append(Math.abs(jC));
            sb.append("ms\n");
            sb.append(cVar.a());
            sb.append("\n");
            if ((sb.length() << 1) >= 101376) {
                break;
            }
        }
        sb.append("\n<<<<< Thread Stack Traces Records End <<<<<\n");
        return sb.toString();
    }

    public final void a(boolean z) {
        d(z);
        boolean zF = f();
        com.tencent.bugly.crashreport.common.strategy.a aVarA = com.tencent.bugly.crashreport.common.strategy.a.a();
        if (aVarA != null) {
            zF = zF && aVarA.c().f13699e;
        }
        if (zF != e()) {
            y.a("anr changed to %b", Boolean.valueOf(zF));
            c(zF);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, String str) {
        ActivityManager.ProcessErrorStateInfo processErrorStateInfoA;
        List<c> listC;
        try {
            y.c("anr time:%s", Long.valueOf(j));
            synchronized (this.f13737g) {
                if (this.k != null) {
                    y.c("Disable record main stack trace.", new Object[0]);
                    this.k.d();
                }
            }
            String strA = ab.a(Looper.getMainLooper().getThread());
            Map<String, String> mapA = ab.a(this.f13734d.i(), com.tencent.bugly.crashreport.crash.c.f13759f, false);
            Context context = this.b;
            boolean z = com.tencent.bugly.crashreport.common.info.b.d(context) || com.tencent.bugly.crashreport.common.info.b.e(context);
            y.c("isAnrCrashDevice:%s", Boolean.valueOf(z));
            if (z) {
                processErrorStateInfoA = com.tencent.bugly.proguard.a.a(this.c, 0L);
            } else {
                processErrorStateInfoA = com.tencent.bugly.proguard.a.a(this.c, 21000L);
            }
            if (processErrorStateInfoA == null) {
                y.c("proc state is invisible or not my proc!", new Object[0]);
                b(false);
                return;
            }
            a aVar = new a();
            aVar.c = j;
            aVar.f13728a = processErrorStateInfoA != null ? processErrorStateInfoA.processName : AppInfo.a(Process.myPid());
            aVar.f13731f = processErrorStateInfoA != null ? processErrorStateInfoA.shortMsg : "";
            aVar.f13730e = processErrorStateInfoA != null ? processErrorStateInfoA.longMsg : "";
            aVar.b = mapA;
            aVar.f13732g = strA;
            if (TextUtils.isEmpty(strA)) {
                aVar.f13732g = "main stack is null , some error may be encountered.";
            }
            Object[] objArr = new Object[7];
            objArr[0] = Long.valueOf(aVar.c);
            objArr[1] = aVar.f13729d;
            objArr[2] = aVar.f13728a;
            objArr[3] = aVar.f13732g;
            objArr[4] = aVar.f13731f;
            objArr[5] = aVar.f13730e;
            Map<String, String> map = aVar.b;
            objArr[6] = Integer.valueOf(map == null ? 0 : map.size());
            y.c("anr tm:%d\ntr:%s\nproc:%s\nmain stack:%s\nsMsg:%s\n lMsg:%s\n threads:%d", objArr);
            y.a("found visible anr , start to upload!", new Object[0]);
            y.c("trace file:%s", str);
            if (TextUtils.isEmpty(str) || !new File(str).exists()) {
                y.c("trace file is null or not exists, just ignore", new Object[0]);
            } else {
                File file = new File(this.f13738h, "bugly_trace_" + j + ".txt");
                y.c("trace file exists", new Object[0]);
                if (str.startsWith("/data/anr/")) {
                    y.a("backup trace isOK:%s", Boolean.valueOf(a(str, file.getAbsolutePath(), aVar.f13728a)));
                } else {
                    y.a("trace file rename :%s", Boolean.valueOf(new File(str).renameTo(file)));
                }
                synchronized (this.f13737g) {
                    ad adVar = this.k;
                    listC = adVar != null ? adVar.c() : null;
                }
                if (listC != null) {
                    String strA2 = a(listC, j);
                    y.c("save main stack trace", new Object[0]);
                    z.a(file, strA2, 2147483647L, true);
                }
                aVar.f13729d = file.getAbsolutePath();
            }
            CrashDetailBean crashDetailBeanA = a(aVar);
            if (crashDetailBeanA == null) {
                y.e("pack anr fail!", new Object[0]);
            } else {
                com.tencent.bugly.crashreport.crash.c.a().a(crashDetailBeanA);
                if (crashDetailBeanA.f13714a >= 0) {
                    y.a("backup anr record success!", new Object[0]);
                } else {
                    y.d("backup anr record fail!", new Object[0]);
                }
                com.tencent.bugly.crashreport.crash.b.a("ANR", ab.a(j), aVar.f13728a, "main", aVar.f13732g, crashDetailBeanA);
                if (!this.f13736f.a(crashDetailBeanA)) {
                    this.f13736f.a(crashDetailBeanA, 3000L, true);
                }
                this.f13736f.c(crashDetailBeanA);
            }
            synchronized (this.f13737g) {
                if (this.k != null) {
                    y.c("Finish anr process.", new Object[0]);
                    this.k.b(true);
                }
            }
            b(false);
        } catch (Throwable th) {
            try {
                y.b(th);
            } finally {
                b(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(long j) {
        if (Math.abs(j - this.n) < 10000) {
            y.d("should not process ANR too Fre in %dms", 10000);
            return true;
        }
        this.n = j;
        return false;
    }
}
