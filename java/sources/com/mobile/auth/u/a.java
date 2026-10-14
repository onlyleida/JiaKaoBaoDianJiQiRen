package com.mobile.auth.u;

import android.util.SparseArray;
import com.mobile.auth.gatewayauth.model.VendorConfig;
import com.nirvana.tools.requestqueue.TimeoutResponse;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a extends TimeoutResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f13596a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f13597d;

    public a(boolean z, String str, String str2) {
        super(z);
        this.b = str;
        this.f13597d = str2;
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
            this.f13596a = z;
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
            return this.f13596a;
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

    public String b() {
        try {
            String str = this.c;
            return str == null ? "" : str;
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

    public String c() {
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

    public String d() {
        try {
            return this.f13597d;
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

    public abstract SparseArray<VendorConfig> e();
}
