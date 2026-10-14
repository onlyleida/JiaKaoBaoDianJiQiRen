package com.mobile.auth.q;

import com.mobile.auth.e.e;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, String> f13566a = new HashMap();
    private e b;

    public b(e eVar) {
        this.b = eVar;
    }

    public Map<String, String> a() {
        try {
            return this.f13566a;
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

    @Override // com.mobile.auth.e.e
    public void a(int i, JSONObject jSONObject) {
        try {
            Map<String, String> map = this.f13566a;
            if (map != null && !map.isEmpty()) {
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                for (Map.Entry<String, String> entry : this.f13566a.entrySet()) {
                    try {
                        jSONObject.put(entry.getKey(), entry.getValue());
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
            e eVar = this.b;
            if (eVar != null) {
                eVar.a(i, jSONObject);
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
