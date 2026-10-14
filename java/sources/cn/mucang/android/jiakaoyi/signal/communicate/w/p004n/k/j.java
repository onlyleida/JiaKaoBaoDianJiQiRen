package cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.k;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;

/* JADX INFO: loaded from: classes3.dex */
class j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5529d = 1000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f5530a;
    private final Runnable c = new a();
    private volatile boolean b = false;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (System.currentTimeMillis() - j.this.f5530a <= j.f5529d || m.h().n()) {
                if (j.this.b) {
                    return;
                }
                u.d(this, 100L);
            } else {
                j.this.f();
                f.o("读数据超时 通信重连");
                m.h().J();
            }
        }
    }

    j() {
    }

    void d() {
        this.f5530a = System.currentTimeMillis();
    }

    void e() {
        if (this.b) {
            return;
        }
        if (n.a()) {
            f5529d = 5000;
        }
        u.d(this.c, 100L);
    }

    void f() {
        this.b = true;
        u.e(this.c);
    }
}
