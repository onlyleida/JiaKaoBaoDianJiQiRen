package a.a.a;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public class b {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Thread f20a = Thread.currentThread();

        public void a() {
            if (this.f20a == null) {
                this.f20a = Thread.currentThread();
            }
            if (Thread.currentThread() != this.f20a) {
                throw new IllegalStateException("Wrong thread");
            }
        }
    }

    public static boolean a(Thread thread, long j) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = false;
        long jElapsedRealtime2 = j;
        while (jElapsedRealtime2 > 0) {
            try {
                thread.join(jElapsedRealtime2);
                break;
            } catch (InterruptedException unused) {
                jElapsedRealtime2 = j - (SystemClock.elapsedRealtime() - jElapsedRealtime);
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return !thread.isAlive();
    }
}
