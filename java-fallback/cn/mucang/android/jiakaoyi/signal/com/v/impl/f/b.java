package cn.mucang.android.jiakaoyi.signal.com.v.c.f;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.log.f;
import com.rscja.deviceapi.exception.ConfigurationException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public class b extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f5348a;
    private volatile int b;
    private volatile int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f5349d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f5350e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f5351f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Throwable f5352g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Thread f5353h;

    public b() {
        this.f5351f = false;
        this.c = -1;
        this.b = -1;
        this.f5349d = new Object();
        this.f5350e = new Object();
        this.f5348a = new byte[2048];
        Thread r0 = new Thread(new a(this));
        this.f5353h = r0;
        r0.start();
    }

    private void a() throws ConfigurationException {
    L3:
        if (this.f5351f == true) goto L8;
        byte[] r0 = com.rscja.deviceapi.b.b().d();
        if (r0.length <= 0) goto L6;
        d(r0);
        goto L3
    L6:
        Thread.yield();
        goto L3
    }

    private /* synthetic */ void b() {
        a();     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        this.f5352g = th;
    }

    private void d(byte[] r9) {
        if (r9.length <= this.f5348a.length) goto L6;
        f.f("v600:帧数据太长:" + r9.length);
        return;
    L6:
        Object r0 = this.f5350e;
        monitor-enter(r0);
    L37:
        th = move-exception;
        throw th;
    L9:
        if (this.b <= this.c) goto L12;
        this.c = -1;     // Catch: Throwable -> L37
        this.b = -1;     // Catch: Throwable -> L37
    L12:
        if (this.b != this.c) goto L17;
        if (this.c != (-1)) goto L17;
        System.arraycopy(r9, 0, this.f5348a, 0, r9.length);     // Catch: Throwable -> L37
        this.b = 0;     // Catch: Throwable -> L37
        this.c = r9.length - 1;     // Catch: Throwable -> L37
    L32:
        if (MucangConfig.v() == false) goto L34;
        t.h("V600", "start = " + this.b + " , end = " + this.c + " , length = " + ((this.c - this.b) + 1) + " , receive = " + r9.length + "," + r9[0] + "," + r9[1] + "," + r9[r9.length - 2] + "," + r9[r9.length - 1]);     // Catch: Throwable -> L37
    L34:
        monitor-exit(r0);     // Catch: Throwable -> L37
        e();
        return;
    L17:
        if ((this.c + r9.length) <= (this.f5348a.length - 1)) goto L23;
        int r1 = (this.c - this.b) + 1;     // Catch: Throwable -> L37
        if (r1 < 0) goto L21;
        System.arraycopy(this.f5348a, this.b, this.f5348a, 0, r1);     // Catch: Throwable -> L37
    L21:
        this.c -= this.b;     // Catch: Throwable -> L37
        this.b = 0;     // Catch: Throwable -> L37
    L23:
        if ((this.c + r9.length) <= (this.f5348a.length - 1)) goto L26;
        f.f("buffer的数据没有读取，清空:start = " + this.b + ",end=" + this.c);     // Catch: Throwable -> L37
        this.c = -1;     // Catch: Throwable -> L37
        this.b = -1;     // Catch: Throwable -> L37
    L26:
        if (this.b == this.c) goto L28;
    L30:
        System.arraycopy(r9, 0, this.f5348a, this.c + 1, r9.length);     // Catch: Throwable -> L37
        this.c += r9.length;     // Catch: Throwable -> L37
        goto L32
    L28:
        if (this.c != (-1)) goto L30;
        System.arraycopy(r9, 0, this.f5348a, 0, r9.length);     // Catch: Throwable -> L37
        this.b = 0;     // Catch: Throwable -> L37
        this.c = r9.length - 1;     // Catch: Throwable -> L37
        goto L32
    }

    private void e() {
        Object r0 = this.f5349d;     // Catch: Throwable -> L11
        monitor-enter(r0);     // Catch: Throwable -> L11
        this.f5349d.notifyAll();     // Catch: Throwable -> L7
        monitor-exit(r0);     // Catch: Throwable -> L7
        goto L16
    L10:
        return;
    L7:
        th = move-exception;
        throw th;     // Catch: Throwable -> L11
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        Object r0 = this.f5350e;
        monitor-enter(r0);
    L14:
        th = move-exception;
        throw th;
    L5:
        if (this.c == this.b) goto L7;
    L11:
        int r1 = (this.c - this.b) + 1;     // Catch: Throwable -> L14
        monitor-exit(r0);     // Catch: Throwable -> L14
        return r1;
    L7:
        if (this.c != (-1)) goto L11;
        monitor-exit(r0);     // Catch: Throwable -> L14
        return 0;
    }

    public /* synthetic */ void c() {
        b();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f5351f = true;
        e();
        this.f5353h.interrupt();     // Catch: Throwable -> L5
        return;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        Throwable r0 = this.f5352g;
        if (r0 == null) goto L10;
        if ((r0 instanceof IllegalMonitorStateException) == true) goto L10;
        this.f5352g = null;
        throw new IOException(r0);
    L10:
        if (this.b <= this.c) goto L12;
    L41:
        t.h("V600", "read wait");     // Catch: InterruptedException -> L37
        Object r1 = this.f5349d;     // Catch: InterruptedException -> L37
        monitor-enter(r1);     // Catch: InterruptedException -> L37
        this.f5349d.wait();     // Catch: Throwable -> L20
        monitor-exit(r1);     // Catch: Throwable -> L20
    L20:
        th = move-exception;
        throw th;     // Catch: InterruptedException -> L37
    L23:
        Object r2 = this.f5350e;
        monitor-enter(r2);
    L34:
        th = move-exception;
        throw th;
    L26:
        if (this.b <= this.c) goto L29;
        monitor-exit(r2);     // Catch: Throwable -> L34
        return -1;
    L29:
        byte[] r3 = this.f5348a;     // Catch: Throwable -> L34
        int r4 = this.b;     // Catch: Throwable -> L34
        this.b = r4 + 1;     // Catch: Throwable -> L34
        byte r5 = r3[r4];     // Catch: Throwable -> L34
        if (this.b <= this.c) goto L32;
        this.c = -1;     // Catch: Throwable -> L34
        this.b = -1;     // Catch: Throwable -> L34
    L32:
        monitor-exit(r2);     // Catch: Throwable -> L34
        return r5;
    L12:
        if (this.b != this.c) goto L23;
        if (this.c != (-1)) goto L23;
        goto L23
    }
}
