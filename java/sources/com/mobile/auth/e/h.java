package com.mobile.auth.e;

import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class h {
    public static JSONObject a(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("resultCode", str);
            jSONObject.put("resultDesc", str2);
        } catch (JSONException e2) {
            Log.e("AuthnResult", "JSONException", e2);
        }
        return jSONObject;
    }

    static JSONObject a(String str, String str2, com.cmic.sso.sdk.a aVar, JSONObject jSONObject) {
        String str3;
        String str4 = "0";
        JSONObject jSONObject2 = new JSONObject();
        try {
            int i = Integer.parseInt(aVar.a("authtype", "0"));
            int iA = aVar.a("networkType");
            if (i == 2) {
                str4 = "7";
                str3 = "短信验证码";
            } else if (i != 3) {
                if (i != 4) {
                    str3 = "其他";
                } else {
                    str4 = "3";
                    str3 = "短信上行";
                }
            } else if (iA == 3) {
                str3 = "WIFI下网关鉴权";
                str4 = "1";
            } else {
                str3 = "网关鉴权";
                str4 = "2";
            }
            jSONObject2.put("resultCode", str);
            jSONObject2.put("authType", str4 + "");
            jSONObject2.put("authTypeDes", str3);
            if ("103000".equals(str)) {
                if (1 == aVar.a("logintype", 0)) {
                    jSONObject2.put("openId", aVar.c("openId"));
                }
                jSONObject2.put("token", jSONObject.optString("token"));
            } else {
                jSONObject2.put("resultDesc", str2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.mobile.auth.k.f.b("AuthnResult", "返回参数:" + jSONObject2.toString());
        return jSONObject2;
    }
}
