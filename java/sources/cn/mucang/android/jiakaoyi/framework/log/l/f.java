package cn.mucang.android.jiakaoyi.framework.log.l;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.log.i;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class f implements h {
    private static final ExecutorService c = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f3483a;
    private final LinkedList<Long> b = new LinkedList<>();

    public f(e eVar, i iVar) {
        this.f3483a = eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d() {
        try {
            this.f3483a.a();
        } catch (Throwable th) {
            t.d("LogWrap", "log error = " + th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void f() {
        try {
            this.f3483a.stop();
        } catch (Throwable th) {
            t.d("LogWrap", "log error = " + th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void h(byte[] bArr, String str, long j, String str2) {
        try {
            this.f3483a.g(bArr, str, k(j), str2);
        } catch (Throwable th) {
            t.d("LogWrap", "log error = " + th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void j(Object obj, long j, String str) {
        try {
            this.f3483a.f(obj, k(j), str);
        } catch (Throwable th) {
            t.d("LogWrap", "log error = " + th);
        }
    }

    private long k(long j) {
        boolean z;
        Iterator<Long> it = this.b.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (j == it.next().longValue()) {
                z = true;
                break;
            }
        }
        if (z) {
            j = this.b.getFirst().longValue() + 1;
            this.b.addFirst(Long.valueOf(j));
        } else {
            this.b.addFirst(Long.valueOf(j));
        }
        if (this.b.size() > 10) {
            this.b.removeLast();
        }
        return j;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public void a() {
        c.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.log.l.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f3477a.d();
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public String b() {
        return this.f3483a.b();
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public long entityId() {
        return this.f3483a.entityId();
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public void stop() {
        c.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.log.l.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f3478a.f();
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public void write(final byte[] bArr, final String str, final long j) throws Throwable {
        final String name = Thread.currentThread().getName();
        c.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.log.l.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f3474a.h(bArr, str, j, name);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.framework.log.l.h
    public void write(final Object obj, final long j) throws Throwable {
        final String name = Thread.currentThread().getName();
        c.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.log.l.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f3479a.j(obj, j, name);
            }
        });
    }
}
