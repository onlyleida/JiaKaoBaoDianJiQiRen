package com.coloros.ocs.base.common.c;

import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes5.dex */
public class g<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f11678a = g.class.getSimpleName();
    private Looper b;
    private g.b.a.a.e.b<T> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f11679d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b<T> f11680e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a<T> f11681f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private g<T>.c f11682g;

    public interface a<T> {
        void a(g.b.a.a.e.b<T> bVar, int i, String str);
    }

    public interface b<T> {
        void a(g.b.a.a.e.b<T> bVar);
    }

    class c extends com.coloros.ocs.base.common.b {
        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (!(message.what == 1)) {
                throw new IllegalArgumentException();
            }
            g.a(g.this, message.arg1);
        }
    }

    public g(Looper looper, g.b.a.a.e.b<T> bVar, b<T> bVar2, a<T> aVar) {
        this.b = looper;
        this.c = bVar;
        this.f11680e = bVar2;
        this.f11681f = aVar;
        this.f11682g = new c(this.b);
    }

    static /* synthetic */ void a(g gVar, int i) {
        g.b.a.a.c.a.e(gVar.f11678a, "errorCode ".concat(String.valueOf(i)));
        if (i == 0) {
            if (gVar.f11680e != null) {
                g.b.a.a.c.a.d(gVar.f11678a, "notifier is not null ");
                gVar.f11680e.a(gVar.c);
                return;
            }
            return;
        }
        a<T> aVar = gVar.f11681f;
        if (aVar != null) {
            aVar.a(gVar.c, i, com.coloros.ocs.base.common.e.a.a(i));
        }
    }

    public a<T> b() {
        return this.f11681f;
    }

    public g.b.a.a.e.b<T> c() {
        return this.c;
    }

    public void d(int i) {
        this.f11679d = i;
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        messageObtain.arg1 = this.f11679d;
        this.f11682g.sendMessage(messageObtain);
    }
}
