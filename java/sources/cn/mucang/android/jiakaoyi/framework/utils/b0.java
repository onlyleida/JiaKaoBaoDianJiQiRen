package cn.mucang.android.jiakaoyi.framework.utils;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile b0 f3602d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object f3603e = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<a> f3604a = new ArrayList();
    private volatile int b = -1;
    private volatile Boolean c = null;

    public interface a {
        void a(int i);
    }

    private b0() {
    }

    public static b0 a() {
        if (f3602d == null) {
            synchronized (b0.class) {
                if (f3602d == null) {
                    f3602d = new b0();
                }
            }
        }
        return f3602d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d(int i) {
        synchronized (f3603e) {
            List<a> list = this.f3604a;
            if (list != null) {
                Iterator<a> it = list.iterator();
                while (it.hasNext()) {
                    it.next().a(i);
                }
            }
        }
    }

    public synchronized boolean b() {
        if (!AppUtils.g()) {
            return true;
        }
        if (n.a()) {
            return true;
        }
        if (this.c == null) {
            return false;
        }
        return this.c.booleanValue();
    }

    public synchronized void e(final int i) {
        this.c = Boolean.valueOf(i == 1);
        if (this.b != i) {
            cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.utils.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3612a.d(i);
                }
            });
        }
    }
}
