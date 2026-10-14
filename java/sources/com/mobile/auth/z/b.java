package com.mobile.auth.z;

import android.text.TextUtils;
import com.mobile.auth.ab.d;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.mobile.auth.x.a f13615a = null;

    public void a(com.mobile.auth.x.a aVar) {
        try {
            this.f13615a = aVar;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(String str) {
        try {
            b(str, "");
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(String str, String str2) {
        try {
            try {
                try {
                    if (this.f13615a == null) {
                        return;
                    }
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("resultCode", 0);
                    jSONObject.put("resultMsg", str);
                    jSONObject.put("resultData", !TextUtils.isEmpty(str2) ? new JSONObject(str2) : "");
                    jSONObject.put("operatorType", "CU");
                    this.f13615a.a(jSONObject.toString());
                    this.f13615a = null;
                    return;
                } catch (Exception e2) {
                    d.b(e2.getMessage());
                    return;
                }
            } catch (Throwable th) {
                com.mobile.auth.gatewayauth.a.a(th);
                return;
            }
            com.mobile.auth.gatewayauth.a.a(th);
            return;
        } catch (Throwable th2) {
            com.mobile.auth.gatewayauth.a.a(th2);
            return;
        }
    }

    public void b(String str, String str2) {
        try {
            try {
                if (this.f13615a == null) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("resultCode", 1);
                jSONObject.put("resultMsg", str);
                jSONObject.put("resultData", "");
                jSONObject.put("traceId", str2);
                jSONObject.put("operatorType", "CU");
                this.f13615a.a(jSONObject.toString());
                this.f13615a = null;
            } catch (Exception e2) {
                d.b(e2.getMessage());
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
