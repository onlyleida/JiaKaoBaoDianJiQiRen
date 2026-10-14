package com.coloros.ocs.base.common.c;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import com.coloros.ocs.base.common.AuthResult;
import com.coloros.ocs.base.common.CapabilityInfo;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Objects;
import java.util.Queue;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b<T extends IBinder> implements com.coloros.ocs.base.common.c.a.e {
    static final String n = "b";
    Context b;
    CapabilityInfo c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Looper f11667d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    l f11670g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private h f11671h;
    private boolean k;
    g.b.a.a.b l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    volatile int f11666a = 4;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    b<T>.c f11668e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Queue<g> f11669f = new LinkedList();
    i i = null;
    private int j = 3;
    private IBinder.DeathRecipient m = new C0197b();

    final class a extends g.b.a.a.a.AbstractBinderC0304a {
        a() {
        }

        @Override // g.b.a.a.a
        public final void a(int i) {
            g.b.a.a.c.a.e(b.n, "errorCode ".concat(String.valueOf(i)));
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            messageObtain.arg1 = i;
            b.this.f11671h.sendMessage(messageObtain);
        }

        @Override // g.b.a.a.a
        public final void f(CapabilityInfo capabilityInfo) {
            g.b.a.a.c.a.d(b.n, "thread authenticate success");
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.obj = capabilityInfo;
            b.this.f11671h.sendMessage(messageObtain);
        }
    }

    /* JADX INFO: renamed from: com.coloros.ocs.base.common.c.b$b, reason: collision with other inner class name */
    final class C0197b implements IBinder.DeathRecipient {
        C0197b() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            g.b.a.a.c.a.f(b.n, "binderDied()");
            b.v(b.this);
            if (b.this.l != null && b.this.l.asBinder() != null && b.this.l.asBinder().isBinderAlive()) {
                b.this.l.asBinder().unlinkToDeath(b.this.m, 0);
                b.this.l = null;
            }
            if (!b.this.k || b.this.c == null) {
                return;
            }
            b.t(b.this);
            b.this.connect();
        }
    }

    class c implements ServiceConnection {
        private c() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            g.b.a.a.c.a.d(b.n, "onServiceConnected");
            b.this.l = g.b.a.a.b.a.n(iBinder);
            try {
                b.this.l.asBinder().linkToDeath(b.this.m, 0);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
            if (b.this.c == null) {
                g.b.a.a.c.a.d(b.n, "handle authenticate");
                b.this.f11671h.sendEmptyMessage(3);
            } else {
                g.b.a.a.c.a.d(b.n, "handle reconnect");
                Message messageObtain = Message.obtain();
                messageObtain.what = 4;
                b.this.f11671h.sendMessage(messageObtain);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            g.b.a.a.c.a.f(b.n, "onServiceDisconnected()");
            b.t(b.this);
            b.v(b.this);
            b.this.l = null;
        }

        /* synthetic */ c(b bVar, byte b) {
            this();
        }
    }

    protected b(Context context, Looper looper) {
        Objects.requireNonNull(context, "null reference");
        this.b = context;
        Objects.requireNonNull(looper, "Looper must not be null");
        this.f11667d = looper;
        this.f11671h = h.a(this);
        String str = n;
        StringBuilder sb = new StringBuilder("build client, ");
        sb.append(y() == null ? "" : y());
        g.b.a.a.c.a.d(str, sb.toString());
    }

    private void j(g gVar) {
        CapabilityInfo capabilityInfo = this.c;
        if (capabilityInfo == null || capabilityInfo.a() == null) {
            return;
        }
        if (this.c.a().a() == 1001) {
            gVar.d(0);
        } else {
            gVar.d(this.c.a().a());
        }
    }

    private void k(g gVar, boolean z) {
        g.b.a.a.c.a.d(n, "add taskListenerHolder to queue,but whether is connect ".concat(String.valueOf(z)));
        this.f11669f.add(gVar);
        if (z) {
            l(true);
        }
    }

    private void l(boolean z) {
        if (z) {
            this.j = 3;
        }
        String str = n;
        g.b.a.a.c.a.d(str, "connect");
        this.f11666a = 2;
        this.f11668e = new c(this, (byte) 0);
        boolean zBindService = this.b.getApplicationContext().bindService(u(), this.f11668e, 1);
        g.b.a.a.c.a.e(str, "connect state ".concat(String.valueOf(zBindService)));
        if (zBindService) {
            return;
        }
        w();
    }

    static CapabilityInfo n(int i) {
        return new CapabilityInfo(new ArrayList(), 1, new AuthResult("", 0, 0, i, new byte[0]));
    }

    static /* synthetic */ int t(b bVar) {
        bVar.f11666a = 13;
        return 13;
    }

    private static Intent u() {
        Intent intent = new Intent("com.coloros.opencapabilityservice");
        g.b.a.a.c.a.c(n, "packageName = ".concat("com.coloros.ocs.opencapabilityservice"));
        intent.setComponent(new ComponentName("com.coloros.ocs.opencapabilityservice", "com.coloros.ocs.opencapabilityservice.service.ColorOcsService"));
        return intent;
    }

    static /* synthetic */ c v(b bVar) {
        bVar.f11668e = null;
        return null;
    }

    private void w() {
        g.b.a.a.c.a.e(n, "retry");
        int i = this.j;
        if (i != 0) {
            this.j = i - 1;
            l(false);
            return;
        }
        this.c = n(3);
        h(3);
        l lVar = this.f11670g;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // com.coloros.ocs.base.common.c.a.e
    public void a(l lVar) {
        this.f11670g = lVar;
    }

    @Override // com.coloros.ocs.base.common.c.a.e
    public AuthResult b() {
        return this.c.a();
    }

    @Override // com.coloros.ocs.base.common.c.a.e
    public <T> void c(g<T> gVar) {
        if (!isConnected()) {
            if (this.f11666a == 13) {
                k(gVar, true);
                return;
            } else {
                k(gVar, false);
                return;
            }
        }
        if (!this.k) {
            j(gVar);
            return;
        }
        g.b.a.a.b bVar = this.l;
        if (bVar == null || bVar.asBinder() == null || !this.l.asBinder().isBinderAlive()) {
            k(gVar, true);
        } else {
            j(gVar);
        }
    }

    @Override // com.coloros.ocs.base.common.c.a.e
    public void connect() {
        l(true);
    }

    @Override // com.coloros.ocs.base.common.c.a.e
    public void d(f fVar, Handler handler) {
        CapabilityInfo capabilityInfo = this.c;
        if (capabilityInfo == null || capabilityInfo.a() == null || this.c.a().a() != 1001) {
            i(handler);
            this.i.c = fVar;
        } else if (fVar != null) {
            fVar.onConnectionSucceed();
        }
    }

    @Override // com.coloros.ocs.base.common.c.a.e
    public void disconnect() {
        if (this.f11668e != null) {
            g.b.a.a.c.a.e(n, "disconnect service.");
            this.c = null;
            this.b.getApplicationContext().unbindService(this.f11668e);
            this.f11666a = 4;
        }
    }

    final void g() {
        b<T>.c cVar;
        if (this.k || (cVar = this.f11668e) == null || cVar == null) {
            return;
        }
        g.b.a.a.c.a.d(n, "disconnect service.");
        this.b.getApplicationContext().unbindService(this.f11668e);
        this.f11666a = 5;
        if (this.k) {
            return;
        }
        this.l = null;
    }

    final void h(int i) {
        g.b.a.a.c.a.d(n, "handleAuthenticateFailure");
        if (this.i == null) {
            i(null);
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 101;
        messageObtain.arg1 = i;
        this.i.sendMessage(messageObtain);
    }

    final void i(Handler handler) {
        i iVar = this.i;
        if (iVar == null) {
            if (handler == null) {
                this.i = new i(this.f11667d, this.f11671h);
                return;
            } else {
                this.i = new i(handler.getLooper(), this.f11671h);
                return;
            }
        }
        if (handler == null || iVar.getLooper() == handler.getLooper()) {
            return;
        }
        g.b.a.a.c.a.d(n, "the new handler looper is not the same as the old one.");
    }

    @Override // com.coloros.ocs.base.common.c.a.e
    public boolean isConnected() {
        return this.f11666a == 1 || this.f11666a == 5;
    }

    final void o() {
        while (this.f11669f.size() > 0) {
            g.b.a.a.c.a.d(n, "handleQue");
            j(this.f11669f.poll());
        }
        g.b.a.a.c.a.d(n, "task queue is end");
    }

    final void q() {
        g.b.a.a.c.a.d(n, "onReconnectSucceed");
        this.f11666a = 1;
        try {
            this.c.b(this.l.m(y(), "1.0.1"));
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
        o();
        g();
    }

    public abstract String y();
}
