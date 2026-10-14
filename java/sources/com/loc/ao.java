package com.loc;

import android.content.Context;
import com.google.common.net.HttpHeaders;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ao extends q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public JSONObject f12527a = null;
    public Context b = null;

    @Override // com.loc.bk
    public final Map<String, String> a() {
        HashMap map = new HashMap();
        map.put(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded");
        map.put(HttpHeaders.ACCEPT_ENCODING, "gzip");
        map.put(HttpHeaders.USER_AGENT, "AMAP SDK Android core 4.2.7");
        map.put("X-INFO", m.a(this.b));
        map.put("platinfo", String.format("platform=Android&sdkversion=%s&product=%s", "4.2.7", "core"));
        map.put("logversion", "2.1");
        return map;
    }

    @Override // com.loc.bk
    public final String b() {
        return p.a().b() ? "https://restsdk.amap.com/sdk/compliance/params" : "http://restsdk.amap.com/sdk/compliance/params";
    }

    @Override // com.loc.bk
    public final Map<String, String> d() {
        return null;
    }

    @Override // com.loc.bk
    public final byte[] e() {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            JSONObject jSONObject = this.f12527a;
            if (jSONObject != null) {
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    stringBuffer.append(next + "=" + URLEncoder.encode(this.f12527a.get(next).toString(), "utf-8") + "&");
                }
            }
            stringBuffer.append("output=json");
            String strF = k.f(this.b);
            stringBuffer.append("&key=".concat(String.valueOf(strF)));
            String strA = m.a();
            stringBuffer.append("&ts=".concat(String.valueOf(strA)));
            stringBuffer.append("&scode=" + m.a(this.b, strA, "key=".concat(String.valueOf(strF))));
            return stringBuffer.toString().getBytes("utf-8");
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.loc.bk
    public final String h() {
        return "core";
    }
}
