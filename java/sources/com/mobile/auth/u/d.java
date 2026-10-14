package com.mobile.auth.u;

import com.nirvana.tools.requestqueue.TimeoutResponse;

/* JADX INFO: loaded from: classes5.dex */
public class d extends TimeoutResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f13600a;
    private boolean b;
    private String c;

    public d(boolean z, boolean z2) {
        super(z);
        this.b = false;
        this.f13600a = z2;
    }

    public String a() {
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

    public void a(String str) {
        try {
            this.c = str;
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
            this.f13600a = z;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    @Override // com.nirvana.tools.requestqueue.TimeoutResponse
    public boolean isResultTimeout() {
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
}
