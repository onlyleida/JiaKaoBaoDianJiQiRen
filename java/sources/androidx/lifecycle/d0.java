package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public class d0 implements r {
    private static final d0 i = new d0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f1491e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1489a = 0;
    private int b = 0;
    private boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1490d = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final t f1492f = new t(this);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Runnable f1493g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    e0.a f1494h = new b();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d0.this.f();
            d0.this.g();
        }
    }

    class b implements e0.a {
        b() {
        }

        @Override // androidx.lifecycle.e0.a
        public void a() {
        }

        @Override // androidx.lifecycle.e0.a
        public void onResume() {
            d0.this.b();
        }

        @Override // androidx.lifecycle.e0.a
        public void onStart() {
            d0.this.c();
        }
    }

    class c extends i {

        class a extends i {
            a() {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostResumed(Activity activity) {
                d0.this.b();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostStarted(Activity activity) {
                d0.this.c();
            }
        }

        c() {
        }

        @Override // androidx.lifecycle.i, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (Build.VERSION.SDK_INT < 29) {
                e0.f(activity).h(d0.this.f1494h);
            }
        }

        @Override // androidx.lifecycle.i, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            d0.this.a();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(Activity activity, Bundle bundle) {
            activity.registerActivityLifecycleCallbacks(new a());
        }

        @Override // androidx.lifecycle.i, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            d0.this.d();
        }
    }

    private d0() {
    }

    static void h(Context context) {
        i.e(context);
    }

    void a() {
        int i2 = this.b - 1;
        this.b = i2;
        if (i2 == 0) {
            this.f1491e.postDelayed(this.f1493g, 700L);
        }
    }

    void b() {
        int i2 = this.b + 1;
        this.b = i2;
        if (i2 == 1) {
            if (!this.c) {
                this.f1491e.removeCallbacks(this.f1493g);
            } else {
                this.f1492f.h(Lifecycle.Event.ON_RESUME);
                this.c = false;
            }
        }
    }

    void c() {
        int i2 = this.f1489a + 1;
        this.f1489a = i2;
        if (i2 == 1 && this.f1490d) {
            this.f1492f.h(Lifecycle.Event.ON_START);
            this.f1490d = false;
        }
    }

    void d() {
        this.f1489a--;
        g();
    }

    void e(Context context) {
        this.f1491e = new Handler();
        this.f1492f.h(Lifecycle.Event.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new c());
    }

    void f() {
        if (this.b == 0) {
            this.c = true;
            this.f1492f.h(Lifecycle.Event.ON_PAUSE);
        }
    }

    void g() {
        if (this.f1489a == 0 && this.c) {
            this.f1492f.h(Lifecycle.Event.ON_STOP);
            this.f1490d = true;
        }
    }

    @Override // androidx.lifecycle.r
    public Lifecycle getLifecycle() {
        return this.f1492f;
    }
}
