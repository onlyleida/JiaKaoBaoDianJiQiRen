package cn.mucang.android.jiakaoyi.framework.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public class v {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final HandlerThread f3646f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Handler f3647g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Runnable f3648a;
    public int b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f3649d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f3650e = new a();
    private volatile boolean c = true;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            long j;
            if (v.this.c) {
                return;
            }
            v.f3647g.post(v.this.f3648a);
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = 0;
            if (v.this.f3649d == 0) {
                v vVar = v.this;
                j = vVar.b;
                vVar.f3649d = jElapsedRealtime;
            } else {
                long j3 = jElapsedRealtime - v.this.f3649d;
                v vVar2 = v.this;
                int i = vVar2.b;
                long j4 = ((long) i) - (j3 - ((long) i));
                if (j4 >= 0) {
                    j2 = j4 > ((long) (i + i)) ? ((long) i) * 2 : j4;
                }
                vVar2.f3649d += (long) v.this.b;
                j = j2;
            }
            v.f3647g.postDelayed(v.this.f3650e, j);
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread("hear_beat_thread");
        f3646f = handlerThread;
        handlerThread.start();
        f3647g = new Handler(handlerThread.getLooper());
    }

    public v(Runnable runnable, int i) {
        this.f3648a = runnable;
        this.b = i;
    }

    public void f(int i) {
        if (this.c) {
            this.b = i;
            return;
        }
        h();
        this.b = i;
        g();
    }

    public void g() {
        Handler handler = f3647g;
        handler.removeCallbacks(this.f3650e);
        this.c = false;
        this.f3649d = 0L;
        handler.post(this.f3650e);
    }

    public void h() {
        this.c = true;
        f3647g.removeCallbacks(this.f3650e);
    }
}
