package com.mobile.auth.u;

import com.nirvana.tools.requestqueue.TimeoutResponse;

/* JADX INFO: loaded from: classes5.dex */
public class f extends TimeoutResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f13602a;
    private com.mobile.auth.gatewayauth.manager.base.c b;

    public f(boolean z) {
        super(z);
    }

    public void a(com.mobile.auth.gatewayauth.manager.base.c cVar) {
        try {
            this.b = cVar;
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
            this.f13602a = z;
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
            return this.f13602a;
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
            return this.b;
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
