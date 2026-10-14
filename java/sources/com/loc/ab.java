package com.loc;

import android.content.Context;
import android.text.TextUtils;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f12481a = w.c("SRFZHZUVZT3BOa0ZiemZRQQ");
    private static final String b = w.c("FbGJzX3Nkaw");
    private static final String c = w.c("SWjJuYVh2eEMwSzVmNklFSmh0UXpVb2xtOVM4eU9Ua3E");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f12482d = w.c("FQU5EU0RLMTA");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f12483e = w.c("FMTAw");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f12484f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f12485g = "";

    public static n.a a() {
        return new n.a() { // from class: com.loc.ab.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private ab f12486a = new ab();

            @Override // com.loc.n.a
            public final bk a(byte[] bArr, Map<String, String> map) {
                return new be(bArr, map);
            }

            @Override // com.loc.n.a
            public final String a() {
                return ab.c();
            }

            @Override // com.loc.n.a
            public final String a(Context context, String str) {
                return ab.a(context, str);
            }

            @Override // com.loc.n.a
            public final String a(String str, String str2, String str3, String str4) {
                return this.f12486a.a(str, str2, str3, str4);
            }

            @Override // com.loc.n.a
            public final Map<String, String> b() {
                return this.f12486a.b();
            }
        };
    }

    public static String a(Context context, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt(w.c("UY29kZQ")) != 1) {
                return "";
            }
            String strOptString = new JSONObject(jSONObject.optString(w.c("FZGF0YQ"))).optString(w.c("FYWRpdQ"));
            if (TextUtils.isEmpty(strOptString)) {
                return "";
            }
            ac.a(strOptString);
            x.a(context).a(strOptString);
            return strOptString;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String c() {
        return ac.a();
    }

    private String d() {
        if (!TextUtils.isEmpty(this.f12485g)) {
            return this.f12485g;
        }
        String strA = o.a("TUpJaVFGNk5LXHtSX1ZwQlRiV1VVZmtYWU1haV1hYWHCiXJtZcKLdmp8wpFewo1/wphwwoFzZmR8aWp6X2k6XsKDwoF+WGbChGdAScKLwoVXfmNxYEvCjcKLSG7CjGNvwoZtVFZ7WMKXYMKfwo5dZcKHfzZXUG85X0hNOVJrb2U8ZlJGW8KCe8KOV8KQWllrcGrCjcKIT25lUHPCicKGVsKKeG5fwp56XsKbc8KJbUVYR0pqU09gfE5/WT5YeHNAwoDCh1Z4V8KQT3JQYmxQbcKYwpFxdG/Ci3rCmMKQwop+YVbCmWFxwpxBdW07Zjp/ODlAbcKEY1pQwoJowohbV1VmV1laWmtcYGbClXfCk2NvesKdwohdWFnCol/CjWTCmMKicG1ENnAvPFtpcXtfclhfXsKAwolgRWNbS29OwpFafV3CkMKLTcKCwolrU3DCmGnCmX9wdsKPcXDCg3LCnFpGcDVTeTxNWW07bXJePVRfQn3ChGNraFhbwpNcwpXChMKNaFVjeVF8wojChm9YbmvChGDCmHvChGVQWjo0Z3o9djleOztWcVxSfWE9woLChkZdcGTCgVzCjMKUVE12wpV5bcKVwprCnntZworCgsKfwpHCksKnwpHClURURW9YaDtwXU1bck5YX3hSVFZUYlxKWFlua1xeYm9jU8KDa3ZrwpZ5am9Za3jCknR3fA");
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
        this.f12485g = string2;
        return string2;
    }

    public final String a(String str, String str2, String str3, String str4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(w.c("LdGlk"), str);
            jSONObject.put(w.c("FZGl1"), str2);
            jSONObject.put(w.c("AZGl1Mg"), str3);
            jSONObject.put(w.c("EZGl1Mw"), str4);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        String string = jSONObject.toString();
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        String strA = ae.a();
        if (!TextUtils.isEmpty(strA)) {
            String strA2 = z.a(bb.a((string + "\u0000").getBytes(), strA.getBytes()));
            if (!TextUtils.isEmpty(strA2)) {
                try {
                    return w.c("Fa2V5PQ") + URLEncoder.encode(z.a(ad.a(strA.getBytes("utf-8"), ad.a(d())))) + w.c("SJmRhdGE9") + URLEncoder.encode(strA2);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        }
        return null;
    }

    public final synchronized Map<String, String> b() {
        if (f12484f) {
            return null;
        }
        f12484f = true;
        HashMap map = new HashMap();
        map.put(w.c("FZW50"), w.c("FMg"));
        StringBuilder sb = new StringBuilder();
        sb.append(w.c("SY2hhbm5lbD0"));
        String str = b;
        sb.append(str);
        sb.append(w.c("SJmRpdj0"));
        String str2 = f12482d;
        sb.append(str2);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(str2);
        stringBuffer.append(w.c("FQA"));
        stringBuffer.append(c);
        String strA = ae.a(stringBuffer.toString());
        sb.append(w.c("FJnNpZ249"));
        sb.append(strA.toUpperCase(Locale.US));
        sb.append(w.c("SJm91dHB1dD1qc29u") + "\u0000");
        map.put(w.c("FaW4"), z.a(bb.a(sb.toString().getBytes(), f12481a.getBytes())));
        map.put(w.c("Sa2V5dA"), f12483e);
        return map;
    }
}
