package cn.mucang.android.jiakaoyi.signal.e;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.log.i;
import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f5582a = false;
    private static final ExecutorService b = Executors.newSingleThreadExecutor();
    private static final LinkedList<String> c = new LinkedList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final cn.mucang.android.jiakaoyi.signal.c.f.a f5583d = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.signal.e.c
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            e.g(eVar);
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final cn.mucang.android.jiakaoyi.framework.log.j.b f5584e = new cn.mucang.android.jiakaoyi.framework.log.j.a();

    private static void a() {
        b.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.e.d
            @Override // java.lang.Runnable
            public final void run() {
                e.d();
            }
        });
    }

    public static void b(final byte[] bArr) {
        final String name = Thread.currentThread().getName();
        h();
        b.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.e.a
            @Override // java.lang.Runnable
            public final void run() {
                e.e(bArr, name);
            }
        });
    }

    public static void c(final byte[] bArr) {
        final String name = Thread.currentThread().getName();
        h();
        b.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.e.b
            @Override // java.lang.Runnable
            public final void run() {
                e.f(bArr, name);
            }
        });
    }

    static /* synthetic */ void d() {
        while (true) {
            LinkedList<String> linkedList = c;
            if (linkedList.size() <= 0) {
                return;
            } else {
                f.i(linkedList.removeLast());
            }
        }
    }

    static /* synthetic */ void e(byte[] bArr, String str) {
        try {
            String str2 = new String(bArr);
            if (n0.e(str2)) {
                return;
            }
            LinkedList<String> linkedList = c;
            linkedList.addFirst(f5584e.b(i.k, str2, System.currentTimeMillis(), str));
            if (linkedList.size() > 50) {
                linkedList.removeLast();
            }
        } catch (Throwable unused) {
        }
    }

    static /* synthetic */ void f(byte[] bArr, String str) {
        try {
            String str2 = new String(bArr);
            if (n0.e(str2)) {
                return;
            }
            LinkedList<String> linkedList = c;
            linkedList.addFirst(f5584e.b(i.k, str2, System.currentTimeMillis(), str));
            if (linkedList.size() > 50) {
                linkedList.removeLast();
            }
        } catch (Throwable unused) {
        }
    }

    static /* synthetic */ void g(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (eVar.getCurrentPosition().f5282h != 4) {
            a();
        }
    }

    private static void h() {
        if (f5582a) {
            return;
        }
        f5582a = true;
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(f5583d);
    }
}
