package com.coloros.ocs.base.common.c;

import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import com.coloros.ocs.base.common.CapabilityInfo;

/* JADX INFO: loaded from: classes5.dex */
class h extends com.coloros.ocs.base.common.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f11684a;
    private b b;

    private h(Looper looper, b bVar) {
        super(looper);
        this.f11684a = h.class.getSimpleName();
        this.b = bVar;
    }

    static h a(b bVar) {
        HandlerThread handlerThread = new HandlerThread("base_client");
        handlerThread.start();
        return new h(handlerThread.getLooper(), bVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        g.b.a.a.c.a.d(this.f11684a, "base client handler what ".concat(String.valueOf(i)));
        if (i == 1) {
            b bVar = this.b;
            CapabilityInfo capabilityInfo = (CapabilityInfo) message.obj;
            String str = b.n;
            g.b.a.a.c.a.e(str, "onAuthenticateSucceed");
            bVar.f11666a = 1;
            bVar.c = capabilityInfo;
            g.b.a.a.c.a.d(str, "handleAuthenticateSuccess");
            if (bVar.i == null) {
                bVar.i(null);
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 100;
            bVar.i.sendMessage(messageObtain);
            bVar.g();
            return;
        }
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    this.b.q();
                    return;
                } else {
                    if (i != 5) {
                        return;
                    }
                    this.b.o();
                    return;
                }
            }
            b bVar2 = this.b;
            g.b.a.a.b bVar3 = bVar2.l;
            if (bVar3 == null || bVar3.asBinder() == null || !bVar2.l.asBinder().isBinderAlive()) {
                return;
            }
            try {
                g.b.a.a.c.a.d(b.n, "thread handle authenticate");
                bVar2.l.g(bVar2.y(), "1.0.1", new b.a());
                return;
            } catch (RemoteException e2) {
                e2.printStackTrace();
                g.b.a.a.c.a.f(b.n, "the exception that service broker authenticates is " + e2.getMessage());
                return;
            }
        }
        b bVar4 = this.b;
        int i2 = message.arg1;
        String str2 = b.n;
        g.b.a.a.c.a.d(str2, "onFailed time");
        if (bVar4.f11668e != null) {
            bVar4.b.getApplicationContext().unbindService(bVar4.f11668e);
            bVar4.l = null;
        }
        bVar4.f11666a = 4;
        bVar4.c = b.n(i2);
        g.b.a.a.c.a.d(str2, "connect failed , error code is ".concat(String.valueOf(i2)));
        if (i2 == 1002 || i2 == 1003 || i2 == 1004 || i2 == 1005 || i2 == 1006 || i2 == 1007 || i2 == 1008) {
            bVar4.h(i2);
            l lVar = bVar4.f11670g;
            if (lVar != null) {
                lVar.a();
            }
        }
    }
}
