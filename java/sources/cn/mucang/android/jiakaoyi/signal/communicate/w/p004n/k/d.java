package cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k;

import android.os.SystemClock;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.exception.AiUpdateException;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.com.v.b;
import cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m.a;
import cn.mucang.android.jiakaoyi.signal.k.e0;
import java.io.IOException;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class d implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected a<?> f5522a;
    protected cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.o.a b;
    private volatile boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private j f5523d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5524e = 1;

    private void b(long j, long j2, String str) throws SocketTimeoutException {
        long j3 = j2 - j;
        if (j3 < i()) {
            return;
        }
        t.h("McBaseConnector", "超时了");
        f.f(str + "输入流超过" + j3 + "ms没有数据，抛出异常");
        throw new SocketTimeoutException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void g(b bVar, cn.mucang.android.jiakaoyi.framework.h.b bVar2) {
        a<?> aVar;
        j jVar;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (!this.c && bVar.isRunning() && (aVar = this.f5522a) != null && aVar.isRunning()) {
            try {
                if (bVar.t().available() <= 0) {
                    SystemClock.sleep(this.f5524e);
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    if (e0.j().p().booleanValue()) {
                        jElapsedRealtime = jElapsedRealtime2;
                    }
                    b(jElapsedRealtime, jElapsedRealtime2, bVar.w());
                } else {
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                    boolean zC = c(bVar);
                    if (zC && a() && this.f5523d == null && !this.c) {
                        j jVar2 = new j();
                        this.f5523d = jVar2;
                        jVar2.d();
                        this.f5523d.e();
                    } else if (zC && !this.c && (jVar = this.f5523d) != null) {
                        jVar.d();
                    }
                }
            } catch (Throwable th) {
                if (this.c) {
                    return;
                }
                SystemClock.sleep(30L);
                if (bVar.isRunning() && this.f5522a.isRunning() && (th instanceof IOException)) {
                    close();
                    if (bVar2 != null) {
                        bVar2.callback(d());
                        return;
                    }
                    return;
                }
                if (th instanceof ComException) {
                    close();
                    if (bVar2 != null) {
                        bVar2.callback(d());
                        return;
                    }
                    return;
                }
                if (th instanceof AiUpdateException) {
                    close();
                    if (bVar2 != null) {
                        bVar2.callback(ComState.AiUpdatingFirmware);
                        return;
                    }
                    return;
                }
            }
        }
    }

    protected boolean a() {
        return false;
    }

    protected abstract boolean c(b bVar) throws Exception;

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k.e, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.c = true;
        o.a(this.f5522a);
        o.a(this.b);
        j jVar = this.f5523d;
        if (jVar != null) {
            jVar.f();
            this.f5523d = null;
        }
    }

    protected ComState d() {
        return ComState.ErrorCom;
    }

    protected void h(final b bVar, final cn.mucang.android.jiakaoyi.framework.h.b<ComState> bVar2) {
        this.c = false;
        if (n.a()) {
            this.f5524e = 10;
        }
        new Thread(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.w.n.k.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f5516a.g(bVar, bVar2);
            }
        }).start();
    }

    protected int i() {
        return n.a() ? 86400000 : 8000;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.o.a
    public void r(byte b, byte[] bArr) throws Throwable {
        this.b.r(b, bArr);
    }
}
