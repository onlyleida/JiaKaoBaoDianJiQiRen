package com.coloros.ocs.base.common.c;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.coloros.ocs.base.common.AuthResult;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes5.dex */
public class k implements d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f11693d = "k";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Lock f11694a = new ReentrantLock();
    private a b;
    private a.e c;

    public k(Context context, a aVar, a.c cVar, g.b.a.a.d.a aVar2) {
        g.b.a.a.c.a.f(f11693d, "init color client impl");
        this.b = aVar;
        this.c = aVar.a().a(context, Looper.getMainLooper(), aVar2, cVar);
    }

    @Override // com.coloros.ocs.base.common.c.d
    public void a(l lVar) {
        a.e eVar = this.c;
        if (eVar != null) {
            eVar.a(lVar);
        }
    }

    @Override // com.coloros.ocs.base.common.c.d
    public AuthResult b() {
        a.e eVar = this.c;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    @Override // com.coloros.ocs.base.common.c.d
    public <T> void c(g<T> gVar) {
        a.e eVar = this.c;
        if (eVar != null) {
            eVar.c(gVar);
        }
    }

    @Override // com.coloros.ocs.base.common.c.d
    public void connect() {
        g.b.a.a.c.a.c(f11693d, "connect()");
        this.f11694a.lock();
        try {
            try {
                a.e eVar = this.c;
                if (eVar != null) {
                    eVar.connect();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } finally {
            this.f11694a.unlock();
        }
    }

    @Override // com.coloros.ocs.base.common.c.d
    public void d(f fVar, Handler handler) {
        a.e eVar = this.c;
        if (eVar != null) {
            eVar.d(fVar, handler);
        }
    }

    @Override // com.coloros.ocs.base.common.c.d
    public void disconnect() {
        this.f11694a.lock();
        try {
            try {
                a.e eVar = this.c;
                if (eVar != null && eVar.isConnected()) {
                    this.c.disconnect();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } finally {
            this.f11694a.unlock();
        }
    }

    @Override // com.coloros.ocs.base.common.c.d
    public boolean isConnected() {
        a.e eVar = this.c;
        if (eVar != null) {
            return eVar.isConnected();
        }
        return false;
    }
}
