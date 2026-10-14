package cn.mucang.android.jky.usbcamera.detectside;

/* JADX INFO: loaded from: classes4.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile u f8899a = null;
    private static volatile boolean b = false;
    private static boolean c = false;

    public static synchronized void a() {
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jky.usbcamera.detectside.i
            @Override // java.lang.Runnable
            public final void run() {
                t.d();
            }
        });
    }

    public static synchronized float b() {
        if (f8899a == null || !c) {
            return -1000.0f;
        }
        return f8899a.h();
    }

    public static synchronized boolean c() {
        return f8899a != null;
    }

    static /* synthetic */ void d() {
        synchronized (t.class) {
            if (f8899a != null) {
                try {
                    f8899a.g();
                } catch (Throwable th) {
                    cn.mucang.android.core.utils.t.d("SideDetectorTag", th.getMessage());
                }
                f8899a = null;
            }
        }
    }

    static /* synthetic */ void e() {
        synchronized (t.class) {
            if (f8899a != null) {
                f8899a.o();
            }
        }
    }

    static /* synthetic */ void f() {
        synchronized (t.class) {
            if (f8899a != null) {
                f8899a.p();
            }
        }
    }

    static /* synthetic */ void g() {
        u uVar = new u();
        uVar.s();
        synchronized (t.class) {
            f8899a = uVar;
        }
        b = false;
    }

    public static synchronized void h() {
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jky.usbcamera.detectside.g
            @Override // java.lang.Runnable
            public final void run() {
                t.e();
            }
        });
    }

    public static synchronized void i() {
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jky.usbcamera.detectside.f
            @Override // java.lang.Runnable
            public final void run() {
                t.f();
            }
        });
    }

    public static synchronized void j(boolean z) {
        c = z;
    }

    public static synchronized void k() {
        if (b) {
            return;
        }
        if (f8899a == null) {
            b = true;
            c = false;
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jky.usbcamera.detectside.h
                @Override // java.lang.Runnable
                public final void run() {
                    t.g();
                }
            });
        }
    }
}
