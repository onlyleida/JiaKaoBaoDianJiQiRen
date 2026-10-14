package cn.mucang.android.core.utils;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import cn.mucang.android.core.config.MucangConfig;

/* JADX INFO: loaded from: classes.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Handler f2671a = new Handler(Looper.getMainLooper());

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f2672a;
        final /* synthetic */ boolean b;

        a(String str, boolean z) {
            this.f2672a = str;
            this.b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            me.drakeet.support.toast.c.a(MucangConfig.getContext(), this.f2672a, this.b ? 1 : 0).show();
        }
    }

    public static Handler a() {
        return f2671a;
    }

    public static boolean b() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public static void c(Runnable runnable) {
        a().post(runnable);
    }

    public static void d(Runnable runnable, long j) {
        a().postDelayed(runnable, j);
    }

    public static void e(Runnable runnable) {
        a().removeCallbacks(runnable);
    }

    public static void f(Runnable runnable) {
        if (b()) {
            runnable.run();
        } else {
            c(runnable);
        }
    }

    public static void g(int i) {
        i(n0.c(i), false);
    }

    public static void h(String str) {
        i(str, false);
    }

    private static void i(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f(new a(str, z));
    }

    public static void j(String str) {
        i(str, true);
    }
}
