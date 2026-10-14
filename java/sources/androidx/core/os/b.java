package androidx.core.os;

import android.os.Build;
import android.os.CancellationSignal;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f1143a;
    private a b;
    private Object c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1144d;

    public interface a {
        void onCancel();
    }

    private void d() {
        while (this.f1144d) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    public void a() {
        synchronized (this) {
            if (this.f1143a) {
                return;
            }
            this.f1143a = true;
            this.f1144d = true;
            a aVar = this.b;
            Object obj = this.c;
            if (aVar != null) {
                try {
                    aVar.onCancel();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f1144d = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            if (obj != null && Build.VERSION.SDK_INT >= 16) {
                ((CancellationSignal) obj).cancel();
            }
            synchronized (this) {
                this.f1144d = false;
                notifyAll();
            }
        }
    }

    public boolean b() {
        boolean z;
        synchronized (this) {
            z = this.f1143a;
        }
        return z;
    }

    public void c(a aVar) {
        synchronized (this) {
            d();
            if (this.b == aVar) {
                return;
            }
            this.b = aVar;
            if (this.f1143a && aVar != null) {
                aVar.onCancel();
            }
        }
    }
}
