package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class t5 {
    private static final String b = n5.t("SRFZHZUVZT3BOa0ZiemZRQQ");
    private static final String c = n5.t("FbGJzX3Nkaw");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f11195d = n5.t("SWjJuYVh2eEMwSzVmNklFSmh0UXpVb2xtOVM4eU9Ua3E");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f11196e = n5.t("FQU5EU0RLMTA");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f11197f = n5.t("FMTAw");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f11198g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f11199a = "";

    static class a implements g5.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private t5 f11200a = new t5();

        a() {
        }

        @Override // com.amap.api.mapcore.util.g5.c
        public String a() {
            return this.f11200a.e();
        }

        @Override // com.amap.api.mapcore.util.g5.c
        public Map<String, String> b() {
            return this.f11200a.d();
        }

        @Override // com.amap.api.mapcore.util.g5.c
        public String a(Context context, String str) {
            return this.f11200a.b(context, str);
        }

        @Override // com.amap.api.mapcore.util.g5.c
        public String a(String str, String str2, String str3, String str4) {
            return this.f11200a.c(str, str2, str3, str4);
        }
    }

    public static g5.c a() {
        return new a();
    }

    private String f() {
        if (!TextUtils.isEmpty(this.f11199a)) {
            return this.f11199a;
        }
        String strA = h5.a("TUpJaVFGNk5LXHtSX1ZwQlRiV1VVZmtYWU1haV1hYWHCiXJtZcKLdmp8wpFewo1/wphwwoFzZmR8aWp6X2k6XsKDwoF+WGbChGdAScKLwoVXfmNxYEvCjcKLSG7CjGNvwoZtVFZ7WMKXYMKfwo5dZcKHfzZXUG85X0hNOVJrb2U8ZlJGW8KCe8KOV8KQWllrcGrCjcKIT25lUHPCicKGVsKKeG5fwp56XsKbc8KJbUVYR0pqU09gfE5/WT5YeHNAwoDCh1Z4V8KQT3JQYmxQbcKYwpFxdG/Ci3rCmMKQwop+YVbCmWFxwpxBdW07Zjp/ODlAbcKEY1pQwoJowohbV1VmV1laWmtcYGbClXfCk2NvesKdwohdWFnCol/CjWTCmMKicG1ENnAvPFtpcXtfclhfXsKAwolgRWNbS29OwpFafV3CkMKLTcKCwolrU3DCmGnCmX9wdsKPcXDCg3LCnFpGcDVTeTxNWW07bXJePVRfQn3ChGNraFhbwpNcwpXChMKNaFVjeVF8wojChm9YbmvChGDCmHvChGVQWjo0Z3o9djleOztWcVxSfWE9woLChkZdcGTCgVzCjMKUVE12wpV5bcKVwprCnntZworCgsKfwpHCksKnwpHClURURW9YaDtwXU1bck5YX3hSVFZUYlxKWFlua1xeYm9jU8KDa3ZrwpZ5am9Za3jCknR3fA");
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < strA.length(); i++) {
            stringBuffer.append((char) (strA.charAt(i) - (i % 48)));
        }
        String string = stringBuffer.toString();
        StringBuffer stringBuffer2 = new StringBuffer();
        for (int i2 = 0; i2 < string.length() / 2; i2++) {
            stringBuffer2.append((char) ((string.charAt(i2) + string.charAt((string.length() - 1) - i2)) / 2));
        }
        String string2 = stringBuffer2.toString();
        this.f11199a = string2;
        return string2;
    }

    public String b(Context context, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt(n5.t("UY29kZQ")) != 1) {
                return "";
            }
            String strOptString = new JSONObject(jSONObject.optString(n5.t("FZGF0YQ"))).optString(n5.t("FYWRpdQ"));
            if (TextUtils.isEmpty(strOptString)) {
                return "";
            }
            u5.b(strOptString);
            p5.a(context).b(strOptString);
            return strOptString;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public String c(String str, String str2, String str3, String str4) throws Throwable {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(n5.t("LdGlk"), str);
            jSONObject.put(n5.t("FZGl1"), str2);
            jSONObject.put(n5.t("AZGl1Mg"), str3);
            jSONObject.put(n5.t("EZGl1Mw"), str4);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        String string = jSONObject.toString();
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        String strA = w5.a();
        if (!TextUtils.isEmpty(strA)) {
            String strB = r5.b(x5.a((string + "\u0000").getBytes(), strA.getBytes()));
            if (!TextUtils.isEmpty(strB)) {
                try {
                    return n5.t("Fa2V5PQ") + URLEncoder.encode(r5.b(v5.b(strA.getBytes("utf-8"), v5.a(f())))) + n5.t("SJmRhdGE9") + URLEncoder.encode(strB);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        }
        return null;
    }

    public synchronized Map<String, String> d() {
        if (f11198g) {
            return null;
        }
        f11198g = true;
        HashMap map = new HashMap();
        map.put(n5.t("FZW50"), n5.t("FMg"));
        StringBuilder sb = new StringBuilder();
        sb.append(n5.t("SY2hhbm5lbD0"));
        String str = c;
        sb.append(str);
        sb.append(n5.t("SJmRpdj0"));
        String str2 = f11196e;
        sb.append(str2);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(str2);
        stringBuffer.append(n5.t("FQA"));
        stringBuffer.append(f11195d);
        String strD = w5.d(stringBuffer.toString());
        sb.append(n5.t("FJnNpZ249"));
        sb.append(strD.toUpperCase(Locale.US));
        sb.append(n5.t("SJm91dHB1dD1qc29u") + "\u0000");
        map.put(n5.t("FaW4"), r5.b(x5.a(sb.toString().getBytes(), b.getBytes())));
        map.put(n5.t("Sa2V5dA"), f11197f);
        return map;
    }

    public String e() {
        return u5.a();
    }
}
