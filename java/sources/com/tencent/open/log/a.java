package com.tencent.open.log;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes6.dex */
public class a extends Tracer implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f14117a;
    private FileWriter b;
    private FileWriter c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f14118d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private File f14119e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private char[] f14120f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile f f14121g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile f f14122h;
    private volatile f i;
    private volatile f j;
    private volatile boolean k;
    private HandlerThread l;
    private Handler m;

    public a(b bVar) {
        this(c.b, true, g.f14138a, bVar);
    }

    private void f() {
        if (Thread.currentThread() == this.l && !this.k) {
            this.k = true;
            j();
            try {
                try {
                    this.j.a(g(), this.f14120f);
                } catch (IOException e2) {
                    SLog.e("FileTracer", "flushBuffer exception", e2);
                }
                this.j.b();
                this.k = false;
            } catch (Throwable th) {
                this.j.b();
                throw th;
            }
        }
    }

    private Writer[] g() {
        File[] fileArrA = c().a();
        if (fileArrA != null && fileArrA.length >= 2) {
            File file = fileArrA[0];
            if ((file != null && !file.equals(this.f14118d)) || (this.b == null && file != null)) {
                this.f14118d = file;
                h();
                try {
                    this.b = new FileWriter(this.f14118d, true);
                } catch (IOException unused) {
                    this.b = null;
                    SLog.e(SLog.TAG, "-->obtainFileWriter() old log file permission denied");
                }
            }
            File file2 = fileArrA[1];
            if ((file2 != null && !file2.equals(this.f14119e)) || (this.c == null && file2 != null)) {
                this.f14119e = file2;
                i();
                try {
                    this.c = new FileWriter(this.f14119e, true);
                } catch (IOException unused2) {
                    this.c = null;
                    SLog.e(SLog.TAG, "-->obtainFileWriter() app specific file permission denied");
                }
            }
        }
        return new Writer[]{this.b, this.c};
    }

    private void h() {
        try {
            FileWriter fileWriter = this.b;
            if (fileWriter != null) {
                fileWriter.flush();
                this.b.close();
            }
        } catch (IOException e2) {
            SLog.e(SLog.TAG, "-->closeFileWriter() exception:", e2);
        }
    }

    private void i() {
        try {
            FileWriter fileWriter = this.c;
            if (fileWriter != null) {
                fileWriter.flush();
                this.c.close();
            }
        } catch (IOException e2) {
            SLog.e(SLog.TAG, "-->closeAppSpecificFileWriter() exception:", e2);
        }
    }

    private void j() {
        synchronized (this) {
            if (this.i == this.f14121g) {
                this.i = this.f14122h;
                this.j = this.f14121g;
            } else {
                this.i = this.f14121g;
                this.j = this.f14122h;
            }
        }
    }

    public void a() {
        if (this.m.hasMessages(1024)) {
            this.m.removeMessages(1024);
        }
        this.m.sendEmptyMessage(1024);
    }

    public void b() {
        h();
        i();
        this.l.quit();
    }

    public b c() {
        return this.f14117a;
    }

    @Override // com.tencent.open.log.Tracer
    protected void doTrace(int i, Thread thread, long j, String str, String str2, Throwable th) {
        a(e().a(i, thread, j, str, str2, th));
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 1024) {
            return true;
        }
        f();
        return true;
    }

    public a(int i, boolean z, g gVar, b bVar) {
        super(i, z, gVar);
        this.k = false;
        a(bVar);
        this.f14121g = new f();
        this.f14122h = new f();
        this.i = this.f14121g;
        this.j = this.f14122h;
        this.f14120f = new char[bVar.d()];
        HandlerThread handlerThread = new HandlerThread(bVar.c(), bVar.f());
        this.l = handlerThread;
        if (handlerThread != null) {
            handlerThread.start();
        }
        if (!this.l.isAlive() || this.l.getLooper() == null) {
            return;
        }
        this.m = new Handler(this.l.getLooper(), this);
    }

    private void a(String str) {
        this.i.a(str);
        if (this.i.a() >= c().d()) {
            a();
        }
    }

    public void a(b bVar) {
        this.f14117a = bVar;
    }
}
