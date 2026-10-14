package com.coloros.ocs.base.common.c;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.coloros.ocs.base.common.c.a.c;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
class j<O extends com.coloros.ocs.base.common.c.a.c> implements Handler.Callback {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile j f11687d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Map<com.coloros.ocs.base.common.c.a.f, d> f11688e = new ConcurrentHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Map<com.coloros.ocs.base.common.c.a.f, d> f11689f = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f11690a;
    com.coloros.ocs.base.common.b b;
    private Looper c;

    final class a implements l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f11691a;
        final /* synthetic */ d b;

        a(j jVar, c cVar, d dVar) {
            this.f11691a = cVar;
            this.b = dVar;
        }

        @Override // com.coloros.ocs.base.common.c.l
        public final void a() {
            j.d(this.f11691a.d().b());
            j.f11689f.put(this.f11691a.d().b(), this.b);
        }
    }

    final class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f11692a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(j jVar, Looper looper, f fVar) {
            super(looper);
            this.f11692a = fVar;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            this.f11692a.onConnectionSucceed();
        }
    }

    private j(Context context, Looper looper) {
        this.f11690a = context.getApplicationContext();
        this.c = looper;
        this.b = new com.coloros.ocs.base.common.b(this.c, this);
    }

    private static int a(d dVar) {
        if (dVar.b() != null) {
            return dVar.b().a();
        }
        return -1;
    }

    public static j b(Context context) {
        if (f11687d == null) {
            synchronized (j.class) {
                if (f11687d == null) {
                    HandlerThread handlerThread = new HandlerThread("ColorApiManager", 9);
                    handlerThread.start();
                    f11687d = new j(context, handlerThread.getLooper());
                }
            }
        }
        return f11687d;
    }

    static void d(com.coloros.ocs.base.common.c.a.f fVar) {
        f11688e.remove(fVar);
    }

    static <T> void f(c cVar, g<T> gVar) {
        d dVar;
        g.b.a.a.c.a.d("ColorApiManager", "addQueue " + cVar.getClass().getSimpleName());
        g.b.a.a.c.b.a(cVar, "colorApi not be null");
        if (f11688e.containsKey(cVar.d().b())) {
            d dVar2 = f11688e.get(cVar.d().b());
            if (dVar2 != null) {
                dVar2.c(gVar);
                return;
            }
            return;
        }
        if (!f11689f.containsKey(cVar.d().b()) || (dVar = f11689f.get(cVar.d().b())) == null || gVar.b() == null) {
            return;
        }
        int iA = a(dVar);
        gVar.b().a(gVar.c(), iA, com.coloros.ocs.base.common.e.a.a(iA));
    }

    static void h(com.coloros.ocs.base.common.c.a.f fVar) {
        f11689f.remove(fVar);
    }

    static boolean i(c cVar) {
        d dVar;
        g.b.a.a.c.b.a(cVar, "colorApi not be null");
        if (!f11688e.containsKey(cVar.d().b()) || (dVar = f11688e.get(cVar.d().b())) == null) {
            return false;
        }
        return dVar.isConnected();
    }

    final void e(c cVar, f fVar, Handler handler) {
        d dVar;
        g.b.a.a.c.b.a(cVar, "colorApi not be null");
        if (!f11688e.containsKey(cVar.d().b()) || (dVar = f11688e.get(cVar.d().b())) == null) {
            return;
        }
        if (cVar.e()) {
            new b(this, handler == null ? Looper.getMainLooper() : handler.getLooper(), fVar).sendEmptyMessage(0);
        } else {
            dVar.d(fVar, handler);
        }
    }

    final void g(c cVar, g.b.a.a.d.a aVar) {
        g.b.a.a.c.b.a(cVar, "colorApi not be null");
        g.b.a.a.c.b.a(aVar, "clientsettings not be null");
        if (f11688e.containsKey(cVar.d().b())) {
            return;
        }
        g.b.a.a.c.a.d("ColorApiManager", "addColorClient");
        k kVar = new k(this.f11690a, cVar.d(), cVar.c, aVar);
        kVar.a(new a(this, cVar, kVar));
        g.b.a.a.c.a.c("TAG", "getClientKey " + cVar.d().b());
        f11688e.put(cVar.d().b(), kVar);
        g.b.a.a.c.a.d("ColorApiManager", "handlerConnect");
        Message messageObtainMessage = this.b.obtainMessage();
        messageObtainMessage.what = 0;
        messageObtainMessage.obj = cVar;
        this.b.sendMessage(messageObtainMessage);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        d dVar;
        c cVar;
        d dVar2;
        g.b.a.a.c.a.d("ColorApiManager", "handle message " + message.what);
        int i = message.what;
        if (i == 0) {
            g.b.a.a.c.a.d("ColorApiManager", "handle connect");
            c cVar2 = (c) message.obj;
            if (cVar2 == null || cVar2.d().b() == null || (dVar = f11688e.get(cVar2.d().b())) == null) {
                return false;
            }
            g.b.a.a.c.a.c("ColorApiManager", "colorApiClient is not null,will connect");
            dVar.connect();
            return false;
        }
        if (i != 1 || (cVar = (c) message.obj) == null || cVar.d().b() == null || (dVar2 = f11688e.get(cVar.d().b())) == null) {
            return false;
        }
        g.b.a.a.c.a.c("ColorApiManager", "colorApiClient is not null,will disconnect");
        dVar2.disconnect();
        d(cVar.d().b());
        h(cVar.d().b());
        return false;
    }
}
