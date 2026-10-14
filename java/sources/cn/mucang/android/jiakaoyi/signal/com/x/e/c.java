package cn.mucang.android.jiakaoyi.signal.com.x.e;

import androidx.lifecycle.a0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.communicate.s;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class c extends cn.mucang.android.jiakaoyi.signal.com.x.a {
    private final cn.mucang.android.jiakaoyi.signal.com.x.a b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f5369a = new b(null);
    private volatile boolean c = true;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LiveBus.d(s.class).i(c.this.f5369a);
        }
    }

    private static class b implements a0<s> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private volatile cn.mucang.android.jiakaoyi.signal.com.x.c.a f5371a;
        private volatile CountDownLatch b;
        private volatile boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private volatile int f5372d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private volatile int f5373e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private volatile boolean f5374f;

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void l() {
            this.f5371a = null;
            this.c = false;
            this.f5372d = -1;
            this.f5373e = -1;
            this.f5374f = false;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // androidx.lifecycle.a0
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void onChanged(s sVar) {
            this.f5374f = false;
            if (sVar.f5473a == 152) {
                cn.mucang.android.jiakaoyi.signal.communicate.receive.a0 a0Var = (cn.mucang.android.jiakaoyi.signal.communicate.receive.a0) sVar.b;
                if (a0Var.f5411a == this.f5373e && a0Var.b == this.f5372d) {
                    this.f5374f = true;
                    CountDownLatch countDownLatch = this.b;
                    if (countDownLatch != null) {
                        countDownLatch.countDown();
                        return;
                    }
                    return;
                }
            }
            cn.mucang.android.jiakaoyi.signal.com.x.c.a aVar = this.f5371a;
            if (aVar != null && sVar.f5473a == aVar.b) {
                this.c = true;
                cn.mucang.android.jiakaoyi.framework.h.a<Boolean, T> aVar2 = aVar.f5363e;
                if (aVar2 != 0 && cn.mucang.android.jiakaoyi.signal.com.x.c.b(aVar.c)) {
                    this.c = aVar2.a((T) sVar.b).booleanValue();
                }
                CountDownLatch countDownLatch2 = this.b;
                if (countDownLatch2 != null) {
                    countDownLatch2.countDown();
                }
            }
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    public c(cn.mucang.android.jiakaoyi.signal.com.x.a aVar) {
        this.b = aVar;
        u.c(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d() {
        LiveBus.d(s.class).m(this.f5369a);
    }

    static /* synthetic */ void e(int i) {
        cn.mucang.android.jiakaoyi.framework.h.b<String> bVar;
        cn.mucang.android.jiakaoyi.signal.com.x.c.a<?> aVarA = cn.mucang.android.jiakaoyi.signal.com.x.c.a(i);
        if (aVarA == null || (bVar = aVarA.f5362d) == null) {
            return;
        }
        bVar.callback("发送失败");
    }

    @Override // cn.mucang.android.jiakaoyi.signal.com.x.a
    public boolean a(byte[] bArr, final int i, boolean z, int i2, int i3, int i4) throws Throwable {
        int i5;
        cn.mucang.android.jiakaoyi.signal.com.x.c.a<?> aVarA = cn.mucang.android.jiakaoyi.signal.com.x.c.a(i);
        boolean z2 = true;
        if (aVarA != null && aVarA.f5361a > 0) {
            this.f5369a.f5371a = aVarA;
            this.f5369a.c = false;
            this.f5369a.f5373e = i4;
            this.f5369a.f5372d = i3;
            this.f5369a.f5374f = false;
            i5 = aVarA.f5361a;
        } else {
            i5 = 0;
        }
        int i6 = 0;
        while (this.c) {
            i6++;
            boolean zA = this.b.a(bArr, i, z, i2, i3, i4);
            if (!cn.mucang.android.jiakaoyi.signal.com.x.c.b(i)) {
                this.f5369a.l();
                return zA;
            }
            try {
                if (!this.f5369a.c) {
                    this.f5369a.b = new CountDownLatch(1);
                    this.f5369a.b.await(500L, TimeUnit.MILLISECONDS);
                    if (!this.f5369a.c) {
                        if ((!this.f5369a.f5374f || i6 >= i5) && i6 >= i5) {
                            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.com.x.e.a
                                @Override // java.lang.Runnable
                                public final void run() {
                                    c.e(i);
                                }
                            });
                            break;
                        }
                    }
                }
            } catch (InterruptedException unused) {
            }
            this.f5369a.l();
            return z2;
        }
        z2 = false;
        this.f5369a.l();
        return z2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.c = false;
        this.b.close();
        this.f5369a.f5371a = null;
        CountDownLatch countDownLatch = this.f5369a.b;
        this.f5369a.b = null;
        if (countDownLatch != null) {
            try {
                countDownLatch.countDown();
            } catch (Throwable th) {
                t.d("TAG", th.getMessage());
            }
        }
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.com.x.e.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f5368a.d();
            }
        });
    }
}
