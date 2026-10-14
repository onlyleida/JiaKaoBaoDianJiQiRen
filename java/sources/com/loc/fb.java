package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.net.URL;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class fb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f12876a = 1;
    public static int b = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static fb f12877e;
    private Context j;
    private String k;
    private long c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f12878d = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<String> f12879f = new ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ek f12880g = new ek();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ek f12881h = new ek();
    private long i = 120000;
    private boolean l = false;

    private fb(Context context) {
        this.j = context;
    }

    public static synchronized fb a(Context context) {
        if (f12877e == null) {
            f12877e = new fb(context);
        }
        return f12877e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ek b(int i) {
        return i == b ? this.f12881h : this.f12880g;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0017 A[Catch: all -> 0x008e, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:10:0x000f, B:12:0x0017, B:21:0x0031, B:23:0x004b, B:24:0x0080), top: B:30:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:15:0x0025 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:17:0x0027  */
    /* JADX WARN: Code duplicated, block: B:19:0x002f A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:23:0x004b A[Catch: all -> 0x008e, LOOP:0: B:22:0x0049->B:23:0x004b, LOOP_END, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:10:0x000f, B:12:0x0017, B:21:0x0031, B:23:0x004b, B:24:0x0080), top: B:30:0x0003 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:15:0x0025, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:19:0x002f, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:23:0x004b, please report this as an issue */
    private synchronized void b(boolean z, final int i) {
        StackTraceElement[] stackTrace;
        StringBuffer stringBuffer;
        int i2;
        long jCurrentTimeMillis;
        long j;
        if (z) {
            if (this.c != 0) {
                jCurrentTimeMillis = System.currentTimeMillis();
                j = this.c;
                if (jCurrentTimeMillis - j < this.i) {
                    return;
                }
                if (jCurrentTimeMillis - j < DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) {
                    return;
                }
            }
            this.c = System.currentTimeMillis();
            this.l = true;
            stackTrace = Thread.currentThread().getStackTrace();
            stringBuffer = new StringBuffer();
            for (StackTraceElement stackTraceElement : stackTrace) {
                stringBuffer.append(stackTraceElement.getClassName() + "(" + stackTraceElement.getMethodName() + ":" + stackTraceElement.getLineNumber() + "),");
            }
            ci.a().b(new cj() { // from class: com.loc.fb.1
                @Override // com.loc.cj
                public final void a() {
                    int i3;
                    StringBuilder sb = new StringBuilder("http://");
                    sb.append(fh.q());
                    sb.append("?host=dualstack-a.apilocate.amap.com&query=");
                    sb.append(i == fb.b ? 6 : 4);
                    String string = sb.toString();
                    fc fcVar = new fc();
                    fcVar.b(string);
                    fcVar.c(string);
                    fcVar.a(bk.a.SINGLE);
                    fcVar.a(bk.c.HTTP);
                    try {
                        bf.a();
                        JSONObject jSONObject = new JSONObject(new String(bf.a(fcVar).f12619a));
                        String[] strArrB = fb.b(jSONObject.optJSONArray("ips"), fb.f12876a);
                        if (strArrB != null && strArrB.length > 0 && !fb.b(strArrB, fb.this.b(fb.f12876a).a())) {
                            fb.this.b(fb.f12876a).a(strArrB);
                            fb.this.f(fb.f12876a);
                        }
                        String[] strArrB2 = fb.b(jSONObject.optJSONArray("ipsv6"), fb.b);
                        if (strArrB2 != null && strArrB2.length > 0 && !fb.b(strArrB2, fb.this.b(fb.b).a())) {
                            fb.this.b(fb.b).a(strArrB2);
                            fb.this.f(fb.b);
                        }
                        if ((jSONObject.has("ips") || jSONObject.has("ipsv6")) && jSONObject.has("ttl") && (i3 = jSONObject.getInt("ttl")) > 30) {
                            fb.this.i = i3 * 1000;
                        }
                    } catch (Throwable th) {
                        JSONObject jSONObject2 = new JSONObject();
                        try {
                            jSONObject2.put("key", "dnsError");
                            jSONObject2.put("reason", th.getMessage());
                        } catch (Throwable unused) {
                        }
                        fn.a(fb.this.j, "O018", jSONObject2);
                    }
                }
            });
            return;
        }
        if (!fh.o() && this.l) {
            return;
        }
        if (this.c != 0) {
            jCurrentTimeMillis = System.currentTimeMillis();
            j = this.c;
            if (jCurrentTimeMillis - j < this.i) {
                return;
            }
            if (jCurrentTimeMillis - j < DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) {
                return;
            }
        }
        this.c = System.currentTimeMillis();
        this.l = true;
        stackTrace = Thread.currentThread().getStackTrace();
        stringBuffer = new StringBuffer();
        while (i2 < r1) {
            stringBuffer.append(stackTraceElement.getClassName() + "(" + stackTraceElement.getMethodName() + ":" + stackTraceElement.getLineNumber() + "),");
        }
        ci.a().b(new cj() { // from class: com.loc.fb.1
            @Override // com.loc.cj
            public final void a() {
                int i3;
                StringBuilder sb = new StringBuilder("http://");
                sb.append(fh.q());
                sb.append("?host=dualstack-a.apilocate.amap.com&query=");
                sb.append(i == fb.b ? 6 : 4);
                String string = sb.toString();
                fc fcVar = new fc();
                fcVar.b(string);
                fcVar.c(string);
                fcVar.a(bk.a.SINGLE);
                fcVar.a(bk.c.HTTP);
                try {
                    bf.a();
                    JSONObject jSONObject = new JSONObject(new String(bf.a(fcVar).f12619a));
                    String[] strArrB = fb.b(jSONObject.optJSONArray("ips"), fb.f12876a);
                    if (strArrB != null && strArrB.length > 0 && !fb.b(strArrB, fb.this.b(fb.f12876a).a())) {
                        fb.this.b(fb.f12876a).a(strArrB);
                        fb.this.f(fb.f12876a);
                    }
                    String[] strArrB2 = fb.b(jSONObject.optJSONArray("ipsv6"), fb.b);
                    if (strArrB2 != null && strArrB2.length > 0 && !fb.b(strArrB2, fb.this.b(fb.b).a())) {
                        fb.this.b(fb.b).a(strArrB2);
                        fb.this.f(fb.b);
                    }
                    if ((jSONObject.has("ips") || jSONObject.has("ipsv6")) && jSONObject.has("ttl") && (i3 = jSONObject.getInt("ttl")) > 30) {
                        fb.this.i = i3 * 1000;
                    }
                } catch (Throwable th) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("key", "dnsError");
                        jSONObject2.put("reason", th.getMessage());
                    } catch (Throwable unused) {
                    }
                    fn.a(fb.this.j, "O018", jSONObject2);
                }
            }
        });
        return;
        throw th;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr.length == 0 || strArr2 == null || strArr2.length == 0 || strArr.length != strArr2.length) {
            return false;
        }
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (!strArr[i].equals(strArr2[i])) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String[] b(JSONArray jSONArray, int i) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return new String[0];
        }
        int length = jSONArray.length();
        String[] strArr = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            String string = jSONArray.getString(i2);
            if (!TextUtils.isEmpty(string)) {
                if (i == b) {
                    string = "[" + string + "]";
                }
                strArr[i2] = string;
            }
        }
        return strArr;
    }

    private static String c(int i) {
        return i == b ? "last_ip_6" : "last_ip_4";
    }

    private void d(int i) {
        if (b(i).d()) {
            SharedPreferences.Editor editorA = fo.a(this.j, "cbG9jaXA");
            fo.a(editorA, c(i));
            fo.a(editorA);
            b(i).a(false);
        }
    }

    private String e(int i) {
        String str;
        int i2 = 0;
        b(false, i);
        String[] strArrA = b(i).a();
        if (strArrA == null || strArrA.length <= 0) {
            g(i);
            return b(i).b();
        }
        int length = strArrA.length;
        while (true) {
            if (i2 >= length) {
                str = null;
                break;
            }
            str = strArrA[i2];
            if (!this.f12879f.contains(str)) {
                break;
            }
            i2++;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        b(i).a(str);
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(int i) {
        if (b(i).a() == null || b(i).a().length <= 0) {
            return;
        }
        String str = b(i).a()[0];
        if (str.equals(this.k) || this.f12879f.contains(str)) {
            return;
        }
        this.k = str;
        SharedPreferences.Editor editorA = fo.a(this.j, "cbG9jaXA");
        fo.a(editorA, c(i), str);
        fo.a(editorA);
    }

    private void g(int i) {
        String strA = fo.a(this.j, "cbG9jaXA", c(i), (String) null);
        if (TextUtils.isEmpty(strA) || this.f12879f.contains(strA)) {
            return;
        }
        b(i).a(strA);
        b(i).b(strA);
        b(i).a(true);
    }

    public final String a(fe feVar, int i) {
        try {
            if (fh.p() && feVar != null) {
                String strB = feVar.b();
                String host = new URL(strB).getHost();
                if (!"http://abroad.apilocate.amap.com/mobile/binary".equals(strB) && !"abroad.apilocate.amap.com".equals(host)) {
                    String str = "apilocate.amap.com".equalsIgnoreCase(host) ? "httpdns.apilocate.amap.com" : host;
                    if (!l.d(str)) {
                        return null;
                    }
                    String strE = e(i);
                    if (!TextUtils.isEmpty(strE)) {
                        feVar.d(strB.replace(host, strE));
                        feVar.a().put("host", str);
                        feVar.e(str);
                        feVar.a(i == b);
                        return strE;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public final void a(int i) {
        if (b(i).e()) {
            d(i);
            return;
        }
        this.f12879f.add(b(i).b());
        d(i);
        b(true, i);
    }

    public final void a(boolean z, int i) {
        b(i).b(z);
        if (z) {
            String strC = b(i).c();
            String strB = b(i).b();
            if (TextUtils.isEmpty(strB) || strB.equals(strC)) {
                return;
            }
            SharedPreferences.Editor editorA = fo.a(this.j, "cbG9jaXA");
            fo.a(editorA, c(i), strB);
            fo.a(editorA);
        }
    }
}
