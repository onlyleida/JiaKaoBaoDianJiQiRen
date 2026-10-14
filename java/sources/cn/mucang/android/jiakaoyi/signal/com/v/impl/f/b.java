package cn.mucang.android.jiakaoyi.signal.com.v.impl.f;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.log.f;
import com.rscja.deviceapi.exception.ConfigurationException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public class b extends InputStream {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Throwable f5352g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Thread f5353h;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f5351f = false;
    private volatile int c = -1;
    private volatile int b = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f5349d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f5350e = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f5348a = new byte[2048];

    public b() {
        Thread thread = new Thread(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.com.v.c.f.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f5347a.c();
            }
        });
        this.f5353h = thread;
        thread.start();
    }

    private void a() throws ConfigurationException {
        while (!this.f5351f) {
            byte[] bArrD = com.rscja.deviceapi.b.b().d();
            if (bArrD.length <= 0) {
                Thread.yield();
            } else {
                d(bArrD);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void c() {
        try {
            a();
        } catch (Throwable th) {
            this.f5352g = th;
        }
    }

    private void d(byte[] bArr) {
        if (bArr.length > this.f5348a.length) {
            f.f("v600:帧数据太长:" + bArr.length);
            return;
        }
        synchronized (this.f5350e) {
            if (this.b > this.c) {
                this.c = -1;
                this.b = -1;
            }
            if (this.b == this.c && this.c == -1) {
                System.arraycopy(bArr, 0, this.f5348a, 0, bArr.length);
                this.b = 0;
                this.c = bArr.length - 1;
            } else {
                if (this.c + bArr.length > this.f5348a.length - 1) {
                    int i = (this.c - this.b) + 1;
                    if (i >= 0) {
                        System.arraycopy(this.f5348a, this.b, this.f5348a, 0, i);
                    }
                    this.c -= this.b;
                    this.b = 0;
                }
                if (this.c + bArr.length > this.f5348a.length - 1) {
                    f.f("buffer的数据没有读取，清空:start = " + this.b + ",end=" + this.c);
                    this.c = -1;
                    this.b = -1;
                }
                if (this.b == this.c && this.c == -1) {
                    System.arraycopy(bArr, 0, this.f5348a, 0, bArr.length);
                    this.b = 0;
                    this.c = bArr.length - 1;
                } else {
                    System.arraycopy(bArr, 0, this.f5348a, this.c + 1, bArr.length);
                    this.c += bArr.length;
                }
            }
            if (MucangConfig.v()) {
                t.h("V600", "start = " + this.b + " , end = " + this.c + " , length = " + ((this.c - this.b) + 1) + " , receive = " + bArr.length + "," + ((int) bArr[0]) + "," + ((int) bArr[1]) + "," + ((int) bArr[bArr.length - 2]) + "," + ((int) bArr[bArr.length - 1]));
            }
        }
        e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void e() {
        /*
            r2 = this;
            java.lang.Object r0 = r2.f5349d     // Catch: java.lang.Throwable -> Ld
            monitor-enter(r0)     // Catch: java.lang.Throwable -> Ld
            java.lang.Object r1 = r2.f5349d     // Catch: java.lang.Throwable -> La
            r1.notifyAll()     // Catch: java.lang.Throwable -> La
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La
            goto Ld
        La:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La
            throw r1     // Catch: java.lang.Throwable -> Ld
        Ld:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.signal.com.v.impl.f.b.e():void");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        synchronized (this.f5350e) {
            if (this.c == this.b && this.c == -1) {
                return 0;
            }
            return (this.c - this.b) + 1;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f5351f = true;
        e();
        try {
            this.f5353h.interrupt();
        } catch (Throwable unused) {
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        Throwable th = this.f5352g;
        if (th != null && !(th instanceof IllegalMonitorStateException)) {
            this.f5352g = null;
            throw new IOException(th);
        }
        if (this.b > this.c || (this.b == this.c && this.c == -1)) {
            try {
                t.h("V600", "read wait");
                synchronized (this.f5349d) {
                    this.f5349d.wait();
                }
            } catch (InterruptedException unused) {
            }
        }
        synchronized (this.f5350e) {
            if (this.b > this.c) {
                return -1;
            }
            byte[] bArr = this.f5348a;
            int i = this.b;
            this.b = i + 1;
            byte b = bArr[i];
            if (this.b > this.c) {
                this.c = -1;
                this.b = -1;
            }
            return b;
        }
    }
}
