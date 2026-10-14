package com.tencent.bugly.proguard;

import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ad extends Thread {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ac f13823e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f13824f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f13821a = false;
    private boolean b = true;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f13822d = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f13825g = true;

    public interface a {
        void a(boolean z, long j);
    }

    public final void a(boolean z) {
        this.f13825g = z;
        y.c("set record stack trace enable:" + z, new Object[0]);
    }

    public final boolean b() {
        Handler handler = new Handler(Looper.getMainLooper());
        ac acVar = this.f13823e;
        if (acVar != null) {
            acVar.a(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        } else {
            this.f13823e = new ac(handler, handler.getLooper().getThread().getName(), DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        }
        if (isAlive()) {
            return false;
        }
        try {
            start();
            return true;
        } catch (Exception e2) {
            y.b(e2);
            return false;
        }
    }

    public final List<com.tencent.bugly.crashreport.crash.anr.c> c() {
        return this.f13823e.b(200000L);
    }

    public final synchronized void d() {
        this.b = false;
        y.c("Record stack trace is disabled.", new Object[0]);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        while (!this.f13821a) {
            try {
                ac acVar = this.f13823e;
                boolean z = false;
                if (acVar == null) {
                    y.c("Main handler checker is null. Stop thread monitor.", new Object[0]);
                    return;
                }
                acVar.a();
                a(acVar);
                boolean z2 = true;
                if (this.f13825g && this.b) {
                    long jC = acVar.c();
                    if (jC > 1510 && jC < 199990) {
                        if (jC <= 5010) {
                            this.f13822d = 1;
                            y.c("timeSinceMsgSent in [2s, 5s], record stack", new Object[0]);
                            z = true;
                        } else {
                            int i = this.f13822d + 1;
                            this.f13822d = i;
                            if ((i & (i - 1)) != 0) {
                                z2 = false;
                            }
                            if (z2) {
                                y.c("timeSinceMsgSent in (5s, 200s), should record stack:true", new Object[0]);
                            }
                            z = z2;
                        }
                    }
                }
                if (z) {
                    acVar.d();
                }
                a aVar = this.f13824f;
                if (aVar != null && this.b) {
                    aVar.a(acVar.b(), acVar.c());
                }
                ab.b(500 - ((System.currentTimeMillis() - jCurrentTimeMillis) % 500));
            } catch (Exception e2) {
                y.b(e2);
            } catch (OutOfMemoryError e3) {
                y.b(e3);
            }
        }
    }

    public final boolean a() {
        this.f13821a = true;
        if (!isAlive()) {
            return false;
        }
        try {
            interrupt();
        } catch (Exception e2) {
            y.b(e2);
        }
        y.d("MainHandlerChecker is reset to null.", new Object[0]);
        this.f13823e = null;
        return true;
    }

    public final synchronized void b(boolean z) {
        this.c = true;
    }

    public final void a(a aVar) {
        this.f13824f = aVar;
    }

    private synchronized void a(ac acVar) {
        if (this.b) {
            return;
        }
        if (this.c && !acVar.b()) {
            y.c("Restart getting main stack trace.", new Object[0]);
            this.b = true;
            this.c = false;
        }
    }
}
