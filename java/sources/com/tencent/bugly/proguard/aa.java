package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes6.dex */
public final class aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f13806a = true;
    private static boolean b = true;
    private static SimpleDateFormat c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f13807d = 30720;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static StringBuilder f13808e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static StringBuilder f13809f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f13810g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static a f13811h = null;
    private static String i = null;
    private static String j = null;
    private static Context k = null;
    private static String l = null;
    private static boolean m = false;
    private static boolean n = false;
    private static ExecutorService o;
    private static int p;
    private static final Object q = new Object();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f13813a;
        private File b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f13814d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f13815e = 30720;

        public a(String str) {
            if (str == null || str.equals("")) {
                return;
            }
            this.c = str;
            this.f13813a = a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a() {
            try {
                File file = new File(this.c);
                this.b = file;
                if (file.exists() && !this.b.delete()) {
                    this.f13813a = false;
                    return false;
                }
                if (this.b.createNewFile()) {
                    return true;
                }
                this.f13813a = false;
                return false;
            } catch (Throwable th) {
                y.a(th);
                this.f13813a = false;
                return false;
            }
        }

        public final boolean a(String str) {
            if (!this.f13813a) {
                return false;
            }
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(this.b, true);
                try {
                    byte[] bytes = str.getBytes("UTF-8");
                    fileOutputStream2.write(bytes);
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                    this.f13814d += (long) bytes.length;
                    this.f13813a = true;
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused) {
                    }
                    return true;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    try {
                        y.a(th);
                        this.f13813a = false;
                        return false;
                    } finally {
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    static {
        try {
            c = new SimpleDateFormat("MM-dd HH:mm:ss");
        } catch (Throwable th) {
            y.b(th.getCause());
        }
    }

    public static synchronized void a(Context context) {
        if (m || context == null || !f13806a) {
            return;
        }
        try {
            o = Executors.newSingleThreadExecutor();
            f13809f = new StringBuilder(0);
            f13808e = new StringBuilder(0);
            k = context;
            com.tencent.bugly.crashreport.common.info.a aVarA = com.tencent.bugly.crashreport.common.info.a.a(context);
            i = aVarA.f13691d;
            aVarA.getClass();
            j = "";
            l = k.getFilesDir().getPath() + "/buglylog_" + i + "_" + j + ".txt";
            p = Process.myPid();
        } catch (Throwable unused) {
        }
        m = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void c(String str, String str2, String str3) {
        if (b) {
            d(str, str2, str3);
        } else {
            e(str, str2, str3);
        }
    }

    private static synchronized void d(String str, String str2, String str3) {
        String strA = a(str, str2, str3, Process.myTid());
        synchronized (q) {
            try {
                f13809f.append(strA);
                if (f13809f.length() >= f13807d) {
                    StringBuilder sb = f13809f;
                    f13809f = sb.delete(0, sb.indexOf("\u0001\r\n") + 1);
                }
            } catch (Throwable th) {
                if (!y.b(th)) {
                    th.printStackTrace();
                }
            }
        }
    }

    private static synchronized void e(String str, String str2, String str3) {
        String strA = a(str, str2, str3, Process.myTid());
        try {
            synchronized (q) {
                try {
                    f13809f.append(strA);
                    if (f13809f.length() <= f13807d) {
                        return;
                    }
                    if (f13810g) {
                        return;
                    }
                    f13810g = true;
                    a aVar = f13811h;
                    if (aVar == null) {
                        f13811h = new a(l);
                    } else if (aVar.b == null || f13811h.b.length() + ((long) f13809f.length()) > f13811h.f13815e) {
                        f13811h.a();
                    }
                    if (f13811h.a(f13809f.toString())) {
                        f13809f.setLength(0);
                        f13810g = false;
                    }
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private static byte[] b() {
        if (!f13806a) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        synchronized (q) {
            a aVar = f13811h;
            if (aVar != null && aVar.f13813a && f13811h.b != null && f13811h.b.length() > 0) {
                sb.append(ab.a(f13811h.b, 30720, true));
            }
            StringBuilder sb2 = f13809f;
            if (sb2 != null && sb2.length() > 0) {
                sb.append(f13809f.toString());
            }
        }
        return ab.a((File) null, sb.toString(), "BuglyLog.txt");
    }

    public static void a(int i2) {
        synchronized (q) {
            f13807d = i2;
            if (i2 < 0) {
                f13807d = 0;
            } else if (i2 > 30720) {
                f13807d = 30720;
            }
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (th == null) {
            return;
        }
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        a(str, str2, message + '\n' + ab.b(th));
    }

    public static synchronized void a(final String str, final String str2, final String str3) {
        if (m && f13806a) {
            try {
                o.execute(new Runnable() { // from class: com.tencent.bugly.proguard.aa.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        aa.c(str, str2, str3);
                    }
                });
            } catch (Exception e2) {
                y.b(e2);
            }
        }
    }

    private static String a(String str, String str2, String str3, long j2) {
        String string;
        f13808e.setLength(0);
        if (str3.length() > 30720) {
            str3 = str3.substring(str3.length() - 30720, str3.length() - 1);
        }
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = c;
        if (simpleDateFormat != null) {
            string = simpleDateFormat.format(date);
        } else {
            string = date.toString();
        }
        StringBuilder sb = f13808e;
        sb.append(string);
        sb.append(" ");
        sb.append(p);
        sb.append(" ");
        sb.append(j2);
        sb.append(" ");
        sb.append(str);
        sb.append(" ");
        sb.append(str2);
        sb.append(": ");
        sb.append(str3);
        sb.append("\u0001\r\n");
        return f13808e.toString();
    }

    public static byte[] a() {
        if (b) {
            if (f13806a) {
                return ab.a((File) null, f13809f.toString(), "BuglyLog.txt");
            }
            return null;
        }
        return b();
    }
}
