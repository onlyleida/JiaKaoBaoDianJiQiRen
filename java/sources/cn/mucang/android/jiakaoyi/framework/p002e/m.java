package cn.mucang.android.jiakaoyi.framework.p002e;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
public class m<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private T f3438a;
    private Throwable b;

    private m(T t) {
        this.f3438a = t;
    }

    public static <T> m<T> a(Throwable th) {
        return new m<>(th);
    }

    public static <T> m<T> h(Callable<T> callable) {
        try {
            return i(callable.call());
        } catch (Throwable th) {
            if (MucangConfig.v()) {
                f.o("已捕获异常：" + q0.d(th));
            }
            return a(th);
        }
    }

    public static <T> m<T> i(T t) {
        return new m<>(t);
    }

    public Throwable b() {
        return this.b;
    }

    public T c() {
        return this.f3438a;
    }

    public boolean d() {
        return this.b != null;
    }

    public boolean e() {
        return this.b == null;
    }

    public m<T> f(b<Throwable> bVar) {
        if (d()) {
            bVar.callback(b());
        }
        return this;
    }

    public m<T> g(b<T> bVar) {
        if (e()) {
            bVar.callback(c());
        }
        return this;
    }

    private m(Throwable th) {
        this.b = th;
    }
}
