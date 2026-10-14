package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public class LifecycleService extends Service implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0 f1460a = new h0(this);

    @Override // androidx.lifecycle.r
    public Lifecycle getLifecycle() {
        return this.f1460a.a();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this.f1460a.b();
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f1460a.c();
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f1460a.d();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        this.f1460a.e();
        super.onStart(intent, i);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }
}
