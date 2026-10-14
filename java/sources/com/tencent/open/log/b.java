package com.tencent.open.log;

import android.text.TextUtils;
import com.tencent.open.utils.l;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SimpleDateFormat f14123a = d.C0282d.a("yy.MM.dd.HH");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private File f14127g;
    private String b = "Tracer.File";
    private int c = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f14124d = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f14125e = 4096;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f14126f = 10000;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f14128h = 10;
    private String i = ".log";
    private long j = Long.MAX_VALUE;

    public b(File file, int i, int i2, int i3, String str, long j, int i4, String str2, long j2) {
        a(file);
        b(i);
        a(i2);
        c(i3);
        a(str);
        a(j);
        d(i4);
        b(str2);
        b(j2);
    }

    private File[] c(long j) {
        File fileB = b();
        String strC = c(d(j));
        try {
            fileB = new File(fileB, strC);
        } catch (Throwable th) {
            SLog.e(SLog.TAG, "getWorkFile,get old sdcard file exception:", th);
        }
        String strB = l.b();
        File file = null;
        if (!TextUtils.isEmpty(strB) || strB != null) {
            try {
                File file2 = new File(strB, c.o);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                file = new File(file2, strC);
            } catch (Exception e2) {
                SLog.e(SLog.TAG, "getWorkFile,get app specific file exception:", e2);
            }
        }
        return new File[]{fileB, file};
    }

    private String d(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        return new SimpleDateFormat("yy.MM.dd.HH").format(calendar.getTime());
    }

    public File[] a() {
        return c(System.currentTimeMillis());
    }

    public File b() {
        File fileE = e();
        if (fileE != null) {
            fileE.mkdirs();
        }
        return fileE;
    }

    public File e() {
        return this.f14127g;
    }

    public int f() {
        return this.f14128h;
    }

    public void a(String str) {
        this.b = str;
    }

    public void a(int i) {
        this.c = i;
    }

    public void b(int i) {
        this.f14124d = i;
    }

    public void a(long j) {
        this.f14126f = j;
    }

    public void b(String str) {
        this.i = str;
    }

    public void a(File file) {
        this.f14127g = file;
    }

    public void b(long j) {
        this.j = j;
    }

    public int d() {
        return this.f14125e;
    }

    public void d(int i) {
        this.f14128h = i;
    }

    private String c(String str) {
        return "com.tencent.mobileqq_connectSdk." + str + ".log";
    }

    public String c() {
        return this.b;
    }

    public void c(int i) {
        this.f14125e = i;
    }
}
