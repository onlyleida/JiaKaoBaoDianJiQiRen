package com.mobile.auth.u;

import com.nirvana.tools.requestqueue.TimeoutResponse;

/* JADX INFO: loaded from: classes5.dex */
public class e extends TimeoutResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.mobile.auth.gatewayauth.manager.a.C0256a f13601a;
    private boolean b;
    private com.mobile.auth.gatewayauth.manager.base.c c;

    public e(boolean z) {
        super(z);
    }

    public void a(com.mobile.auth.gatewayauth.manager.a.C0256a c0256a) {
        try {
            this.f13601a = c0256a;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(com.mobile.auth.gatewayauth.manager.base.c cVar) {
        try {
            this.c = cVar;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(boolean z) {
        try {
            this.b = z;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public boolean a() {
        try {
            return this.b;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return false;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return false;
            }
        }
    }

    public com.mobile.auth.gatewayauth.manager.base.c b() {
        try {
            return this.c;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public com.mobile.auth.gatewayauth.manager.a.C0256a c() {
        try {
            return this.f13601a;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    @Override // com.nirvana.tools.requestqueue.TimeoutResponse
    public boolean isResultTimeout() {
        return false;
    }
}
