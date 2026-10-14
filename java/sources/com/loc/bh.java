package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import com.alivc.live.pusher.logreport.core.AliLiveInfoUtils;
import com.mobile.auth.gatewayauth.Constant;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes4.dex */
public final class bh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile ConcurrentHashMap<String, c> f12565a = new ConcurrentHashMap<>(8);
    public static volatile List<String> b = Collections.synchronizedList(new ArrayList(8));
    private static volatile ConcurrentHashMap<String, b> c = new ConcurrentHashMap<>(8);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Random f12566d = new Random();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static ConcurrentHashMap<String, String> f12567e = new ConcurrentHashMap<>(8);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static List<bq> f12568f = Collections.synchronizedList(new ArrayList(16));

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f12569a;
        int b;
        double c;

        private a() {
        }

        /* synthetic */ a(byte b) {
            this();
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        bl f12570a;
        long b;

        private b() {
        }

        /* synthetic */ b(byte b) {
            this();
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Map<String, List<a>> f12571a;
        Map<String, String> b;

        private c() {
            this.f12571a = new HashMap(8);
            this.b = new HashMap(8);
        }

        /* synthetic */ c(byte b) {
            this();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && c.class == obj.getClass()) {
                c cVar = (c) obj;
                if (this.f12571a.equals(cVar.f12571a) && this.b.equals(cVar.b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            Map<String, List<a>> map = this.f12571a;
            int iHashCode = map != null ? map.hashCode() : 0;
            Map<String, String> map2 = this.b;
            return iHashCode + (map2 != null ? map2.hashCode() : 0);
        }
    }

    public static synchronized String a(String str, String str2) throws j {
        try {
            try {
                System.currentTimeMillis();
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
                    Context context = l.c;
                    try {
                        if (b == null) {
                            b = Collections.synchronizedList(new ArrayList(8));
                        }
                        if (context != null && !b.contains(str2)) {
                            b.add(str2);
                            String strA = au.a(context, "Yb3Blbl9odHRwX2NvbnRyb2w", str2);
                            if (!TextUtils.isEmpty(strA)) {
                                a(str2, new JSONObject(strA));
                            }
                        }
                    } catch (Throwable th) {
                        aj.a(th, "hlUtil", "llhl");
                    }
                    if (f12565a != null && f12565a.size() > 0) {
                        if (!f12565a.containsKey(str2)) {
                            return str;
                        }
                        c cVar = f12565a.get(str2);
                        if (cVar == null) {
                            return str;
                        }
                        if (a(str, cVar, str2)) {
                            throw new j("服务QPS超限");
                        }
                        return b(str, cVar, str2);
                    }
                    return str;
                }
                return str;
            } catch (Throwable th2) {
                throw th2;
            }
        } catch (j e2) {
            throw e2;
        } catch (Throwable th3) {
            aj.a(th3, "hlUtil", "pcr");
            return str;
        }
    }

    public static void a() {
        try {
            Context context = l.c;
            if (context == null) {
                return;
            }
            br.a(b(), context);
        } catch (Throwable unused) {
        }
    }

    private static void a(c cVar, JSONObject jSONObject) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("block");
            if (jSONArrayOptJSONArray == null) {
                return;
            }
            HashMap map = new HashMap(8);
            byte b2 = 0;
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString("api");
                    if (!TextUtils.isEmpty(strOptString)) {
                        if (!strOptString.startsWith("/")) {
                            strOptString = "/".concat(String.valueOf(strOptString));
                        }
                        if (strOptString.endsWith("/")) {
                            strOptString = strOptString.substring(0, strOptString.length() - 1);
                        }
                        JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("periods");
                        if (jSONArrayOptJSONArray != null) {
                            ArrayList arrayList = new ArrayList();
                            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray2.optJSONObject(i2);
                                if (jSONObjectOptJSONObject2 != null) {
                                    a aVar = new a(b2);
                                    aVar.f12569a = jSONObjectOptJSONObject2.optString("begin");
                                    aVar.b = jSONObjectOptJSONObject2.optInt("duration");
                                    aVar.c = jSONObjectOptJSONObject2.optDouble("percent");
                                    arrayList.add(aVar);
                                }
                            }
                            map.put(strOptString, arrayList);
                        }
                    }
                }
            }
            cVar.f12571a = map;
        } catch (Throwable th) {
            aj.a(th, "hlUtil", "pbr");
        }
    }

    public static synchronized void a(v vVar, JSONObject jSONObject) {
        if (vVar == null) {
            return;
        }
        try {
            String strA = vVar.a();
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            if (jSONObject == null) {
                a(strA);
            }
            if (!l.a(jSONObject.optString("able", null), false)) {
                a(strA);
            } else {
                au.a(l.c, "Yb3Blbl9odHRwX2NvbnRyb2w", strA, jSONObject.toString());
                a(strA, jSONObject);
            }
        } catch (Throwable th) {
            aj.a(th, "hlUtil", "par");
        }
    }

    private static synchronized void a(String str) {
        try {
            if (f12565a.containsKey(str)) {
                f12565a.remove(str);
            }
            SharedPreferences.Editor editorA = au.a(l.c, "Yb3Blbl9odHRwX2NvbnRyb2w");
            au.a(editorA, str);
            au.a(editorA);
        } catch (Throwable th) {
            aj.a(th, "hlUtil", "rc");
        }
    }

    private static void a(String str, c cVar) {
        try {
            if (f12565a == null) {
                f12565a = new ConcurrentHashMap<>(8);
            }
            f12565a.put(str, cVar);
        } catch (Throwable th) {
            aj.a(th, "hlUtil", "ucr");
        }
    }

    private static void a(String str, String str2, String str3) {
        try {
            Context context = l.c;
            if (context != null && !TextUtils.isEmpty(str)) {
                if (f12567e == null) {
                    f12567e = new ConcurrentHashMap<>(8);
                }
                synchronized (f12567e) {
                    if (f12567e.containsKey(str2)) {
                        return;
                    }
                    f12567e.put(str2, str3);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(DBHelpTool.RecordEntry.COLUMN_NAME_TIMESTAMP, System.currentTimeMillis());
                    jSONObject.put("type", af.j);
                    jSONObject.put(Constant.PROTOCOL_WEBVIEW_NAME, str);
                    jSONObject.put("version", af.a(str));
                    jSONObject.put("hostname", str2 + "#" + str3);
                    String string = jSONObject.toString();
                    if (TextUtils.isEmpty(string)) {
                        return;
                    }
                    bq bqVar = new bq(context, "core", AliLiveInfoUtils.ALIVC_CONAN_VERSION, "O005");
                    bqVar.a(string);
                    br.a(bqVar, context);
                }
            }
        } catch (Throwable unused) {
        }
    }

    private static void a(String str, JSONObject jSONObject) {
        try {
            c cVar = new c((byte) 0);
            a(cVar, jSONObject);
            b(cVar, jSONObject);
            if (cVar.b == null && cVar.f12571a == null) {
                a(str);
            } else {
                a(str, cVar);
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(URL url, bl blVar) {
        List<String> list;
        try {
            if (c == null) {
                c = new ConcurrentHashMap<>(8);
            }
            Map<String, List<String>> map = blVar.b;
            if (map != null && map.containsKey("nb") && (list = blVar.b.get("nb")) != null && list.size() > 0) {
                byte b2 = 0;
                String[] strArrSplit = list.get(0).split("#");
                if (strArrSplit.length < 2) {
                    return;
                }
                int i = Integer.parseInt(strArrSplit[0]);
                long j = Integer.parseInt(strArrSplit[1]);
                b bVar = new b(b2);
                bVar.f12570a = blVar;
                if (j <= 0) {
                    j = 30;
                }
                bVar.b = SystemClock.elapsedRealtime() + (j * 1000);
                if (i == 1) {
                    c.put("app", bVar);
                } else {
                    if (i != 2 || url == null) {
                        return;
                    }
                    c.put(url.getPath(), bVar);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(boolean z, String str) {
        try {
            Context context = l.c;
            if (context != null && !TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(DBHelpTool.RecordEntry.COLUMN_NAME_TIMESTAMP, Long.valueOf(System.currentTimeMillis()));
                jSONObject.put("type", z ? af.f12493g : af.f12492f);
                jSONObject.put(Constant.PROTOCOL_WEBVIEW_NAME, str);
                jSONObject.put("version", af.a(str));
                String string = jSONObject.toString();
                bq bqVar = new bq(context, "core", AliLiveInfoUtils.ALIVC_CONAN_VERSION, "O005");
                bqVar.a(string);
                br.a(bqVar, context);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(boolean r5, java.lang.String r6, java.lang.String r7, int r8) {
        /*
            android.content.Context r0 = com.loc.l.c     // Catch: java.lang.Throwable -> L93
            if (r0 == 0) goto L93
            boolean r1 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Throwable -> L93
            if (r1 != 0) goto L93
            boolean r1 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> L93
            if (r1 == 0) goto L12
            goto L93
        L12:
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L93
            r1.<init>()     // Catch: java.lang.Throwable -> L93
            java.lang.String r2 = "timestamp"
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L93
            r1.put(r2, r3)     // Catch: java.lang.Throwable -> L93
            java.lang.String r2 = com.loc.af.a(r6)     // Catch: java.lang.Throwable -> L93
            if (r5 == 0) goto L2e
            java.lang.String r5 = "type"
            java.lang.Integer r3 = com.loc.af.i     // Catch: java.lang.Throwable -> L93
        L2a:
            r1.put(r5, r3)     // Catch: java.lang.Throwable -> L93
            goto L33
        L2e:
            java.lang.String r5 = "type"
            java.lang.Integer r3 = com.loc.af.f12494h     // Catch: java.lang.Throwable -> L93
            goto L2a
        L33:
            java.lang.String r5 = "name"
            r1.put(r5, r6)     // Catch: java.lang.Throwable -> L93
            java.lang.String r5 = "version"
            r1.put(r5, r2)     // Catch: java.lang.Throwable -> L93
            android.net.Uri r5 = android.net.Uri.parse(r7)     // Catch: java.lang.Throwable -> L93
            java.lang.String r5 = r5.getPath()     // Catch: java.lang.Throwable -> L93
            java.lang.String r6 = "uri"
            r1.put(r6, r5)     // Catch: java.lang.Throwable -> L93
            java.lang.String r5 = "blockLevel"
            r1.put(r5, r8)     // Catch: java.lang.Throwable -> L93
            java.lang.String r5 = r1.toString()     // Catch: java.lang.Throwable -> L93
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L93
            if (r6 == 0) goto L5a
            return
        L5a:
            com.loc.bq r6 = new com.loc.bq     // Catch: java.lang.Throwable -> L93
            java.lang.String r7 = "core"
            java.lang.String r8 = "2.0"
            java.lang.String r1 = "O005"
            r6.<init>(r0, r7, r8, r1)     // Catch: java.lang.Throwable -> L93
            r6.a(r5)     // Catch: java.lang.Throwable -> L93
            java.util.List<com.loc.bq> r5 = com.loc.bh.f12568f     // Catch: java.lang.Throwable -> L93
            if (r5 != 0) goto L79
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L93
            r7 = 16
            r5.<init>(r7)     // Catch: java.lang.Throwable -> L93
            java.util.List r5 = java.util.Collections.synchronizedList(r5)     // Catch: java.lang.Throwable -> L93
            com.loc.bh.f12568f = r5     // Catch: java.lang.Throwable -> L93
        L79:
            java.util.List<com.loc.bq> r5 = com.loc.bh.f12568f     // Catch: java.lang.Throwable -> L93
            monitor-enter(r5)     // Catch: java.lang.Throwable -> L93
            java.util.List<com.loc.bq> r7 = com.loc.bh.f12568f     // Catch: java.lang.Throwable -> L90
            r7.add(r6)     // Catch: java.lang.Throwable -> L90
            java.util.List<com.loc.bq> r6 = com.loc.bh.f12568f     // Catch: java.lang.Throwable -> L90
            int r6 = r6.size()     // Catch: java.lang.Throwable -> L90
            r7 = 15
            if (r6 < r7) goto L8e
            a()     // Catch: java.lang.Throwable -> L90
        L8e:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L90
            return
        L90:
            r6 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L90
            throw r6     // Catch: java.lang.Throwable -> L93
        L93:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.bh.a(boolean, java.lang.String, java.lang.String, int):void");
    }

    private static boolean a(a aVar) {
        if (aVar == null || aVar.c == 1.0d) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!TextUtils.isEmpty(aVar.f12569a) && aVar.b > 0) {
            long timeInMillis = jCurrentTimeMillis - w.a(aVar.f12569a, "HH:mm:ss").getTimeInMillis();
            if (timeInMillis > 0 && timeInMillis < aVar.b * 1000) {
                if (aVar.c == 0.0d) {
                    return true;
                }
                if (f12566d == null) {
                    f12566d = new Random();
                }
                f12566d.setSeed(((long) UUID.randomUUID().hashCode()) + jCurrentTimeMillis);
                if (f12566d.nextDouble() > aVar.c) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean a(String str, c cVar, String str2) {
        try {
            Map<String, List<a>> map = cVar.f12571a;
            if (map != null && map.size() > 0) {
                if (map.containsKey(Marker.ANY_MARKER)) {
                    Iterator<Map.Entry<String, List<a>>> it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        if (a(it.next().getValue())) {
                            a(false, str2, str, 1);
                            return true;
                        }
                    }
                } else {
                    String path = Uri.parse(str).getPath();
                    if (map.containsKey(path) && a(map.get(path))) {
                        a(false, str2, str, 2);
                        return true;
                    }
                }
                return false;
            }
            return false;
        } catch (Throwable th) {
            aj.a(th, "hlUtil", "inb");
        }
    }

    private static boolean a(List<a> list) {
        if (list != null && list.size() > 0) {
            Iterator<a> it = list.iterator();
            while (it.hasNext()) {
                if (a(it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static bl b(String str, String str2) {
        Uri uri;
        String path = "app";
        try {
            if (c == null) {
                return null;
            }
            if (!c.containsKey("app")) {
                if (!TextUtils.isEmpty(str) && (uri = Uri.parse(str)) != null) {
                    path = uri.getPath();
                    if (c.containsKey(path)) {
                        b bVar = c.get(path);
                        if (SystemClock.elapsedRealtime() <= bVar.b) {
                            bl blVar = bVar.f12570a;
                            if (blVar != null) {
                                blVar.f12621e = false;
                            }
                            a(true, str2, str, 2);
                            return blVar;
                        }
                    }
                }
                return null;
            }
            b bVar2 = c.get("app");
            if (SystemClock.elapsedRealtime() <= bVar2.b) {
                bl blVar2 = bVar2.f12570a;
                if (blVar2 != null) {
                    blVar2.f12621e = false;
                }
                a(true, str2, str, 1);
                return blVar2;
            }
            c.remove(path);
            return null;
        } catch (Throwable unused) {
        }
    }

    private static String b(String str, c cVar, String str2) {
        try {
            Map<String, String> map = cVar.b;
            if (map != null && map.size() > 0) {
                Uri uri = Uri.parse(str);
                String authority = uri.getAuthority();
                if (!map.containsKey(authority)) {
                    return str;
                }
                String str3 = map.get(authority);
                str = uri.buildUpon().authority(str3).toString();
                a(str2, authority, str3);
                return str;
            }
            return str;
        } catch (Throwable th) {
            aj.a(th, "hlUtil", "pdr");
            return str;
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0028 */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0024, code lost:
    
        r0 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.loc.bq> b() {
        /*
            r0 = 0
            java.util.List<com.loc.bq> r1 = com.loc.bh.f12568f     // Catch: java.lang.Throwable -> L2a
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L2a
            java.util.List<com.loc.bq> r2 = com.loc.bh.f12568f     // Catch: java.lang.Throwable -> L20
            if (r2 == 0) goto L1e
            int r2 = r2.size()     // Catch: java.lang.Throwable -> L20
            if (r2 <= 0) goto L1e
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L20
            r2.<init>()     // Catch: java.lang.Throwable -> L20
            java.util.List<com.loc.bq> r0 = com.loc.bh.f12568f     // Catch: java.lang.Throwable -> L28
            r2.addAll(r0)     // Catch: java.lang.Throwable -> L28
            java.util.List<com.loc.bq> r0 = com.loc.bh.f12568f     // Catch: java.lang.Throwable -> L28
            r0.clear()     // Catch: java.lang.Throwable -> L28
            r0 = r2
        L1e:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L20
            goto L2a
        L20:
            r2 = move-exception
            r3 = r2
            r2 = r0
            r0 = r3
        L24:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L28
            throw r0     // Catch: java.lang.Throwable -> L26
        L26:
            r0 = r2
            goto L2a
        L28:
            r0 = move-exception
            goto L24
        L2a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.bh.b():java.util.List");
    }

    private static void b(c cVar, JSONObject jSONObject) {
        JSONArray jSONArrayNames;
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("domainMap");
            if (jSONObjectOptJSONObject == null || (jSONArrayNames = jSONObjectOptJSONObject.names()) == null) {
                return;
            }
            HashMap map = new HashMap(8);
            int length = jSONArrayNames.length();
            for (int i = 0; i < length; i++) {
                String strOptString = jSONArrayNames.optString(i);
                map.put(strOptString, jSONObjectOptJSONObject.optString(strOptString));
            }
            cVar.b = map;
        } catch (Throwable th) {
            aj.a(th, "hlUtil", "pdr");
        }
    }
}
