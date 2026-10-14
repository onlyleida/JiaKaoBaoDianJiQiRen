package com.mobile.auth.gatewayauth.model;

import com.mobile.auth.gatewayauth.a;

/* JADX INFO: loaded from: classes5.dex */
public class CustomizeToken {
    private String encryptToken;
    private String key;
    private String vendorName;

    public String getEncryptToken() {
        try {
            return this.encryptToken;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getKey() {
        try {
            return this.key;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public String getVendorName() {
        try {
            return this.vendorName;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public void setEncryptToken(String str) {
        try {
            this.encryptToken = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setKey(String str) {
        try {
            this.key = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setVendorName(String str) {
        try {
            this.vendorName = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }
}
