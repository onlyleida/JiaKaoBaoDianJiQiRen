package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.alivc.live.pusher.logreport.core.AliLiveInfoUtils;
import com.amap.api.maps.AMapException;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class l {
    private static volatile boolean C = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f12969a = -1;
    public static String b = "";
    public static Context c = null;
    private static String k = "6";
    private static String l = "4";
    private static String m = "9";
    private static String n = "8";
    private static volatile boolean o = true;
    private static Vector<e> p = new Vector<>();
    private static Map<String, Integer> q = new HashMap();
    private static String r = null;
    private static long s = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile boolean f12970d = false;
    private static volatile ConcurrentHashMap<String, Long> t = new ConcurrentHashMap<>(8);
    private static volatile ConcurrentHashMap<String, Long> u = new ConcurrentHashMap<>(8);
    private static volatile ConcurrentHashMap<String, d> v = new ConcurrentHashMap<>(8);
    private static boolean w = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f12971e = 5000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f12972f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static boolean f12973g = false;
    private static int x = 3;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static boolean f12974h = true;
    public static boolean i = false;
    private static int y = 3;
    public static boolean j = false;
    private static ConcurrentHashMap<String, Boolean> z = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, Boolean> A = new ConcurrentHashMap<>();
    private static ArrayList<bi.a> B = new ArrayList<>();
    private static Queue<bi.c> D = new LinkedList();

    public interface a {
        void a(b bVar);
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Deprecated
        public JSONObject f12977a;

        @Deprecated
        public JSONObject b;
        public String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f12978d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f12979e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public JSONObject f12980f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public a f12981g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public C0247b f12982h;
        private boolean i;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f12983a;
            public boolean b;
            public JSONObject c;
        }

        /* JADX INFO: renamed from: com.loc.l$b$b, reason: collision with other inner class name */
        public static class C0247b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f12984a;
        }
    }

    static class c extends bg {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f12985h;
        private Map<String, String> i;
        private String j;
        private String k;
        private String l;

        c(Context context, v vVar, String str, String str2, String str3, String str4) {
            super(context, vVar);
            this.f12985h = str;
            this.i = null;
            this.j = str2;
            this.k = str3;
            this.l = str4;
            a(bk.c.HTTPS);
            a(bk.a.FIX);
        }

        private static String a(String str, String str2) {
            try {
                return !TextUtils.isEmpty(str2) ? Uri.parse(str).buildUpon().encodedAuthority(str2).build().toString() : str;
            } catch (Throwable unused) {
                return str;
            }
        }

        @Override // com.loc.bk
        public final Map<String, String> a() {
            if (TextUtils.isEmpty(this.l)) {
                return null;
            }
            HashMap map = new HashMap();
            map.put("host", this.l);
            return map;
        }

        @Override // com.loc.bg
        public final byte[] a_() {
            return null;
        }

        @Override // com.loc.bk
        public final String b() {
            return a("https://restsdk.amap.com/v3/iasdkauth", this.j);
        }

        @Override // com.loc.bg
        public final byte[] b_() {
            String strU = n.u(((bg) this).f12564a);
            if (!TextUtils.isEmpty(strU)) {
                strU = r.a(new StringBuilder(strU).reverse().toString());
            }
            HashMap map = new HashMap();
            map.put("authkey", TextUtils.isEmpty(this.f12985h) ? "" : this.f12985h);
            map.put("plattype", "android");
            map.put("product", ((bg) this).b.a());
            map.put("version", ((bg) this).b.b());
            map.put("output", "json");
            StringBuilder sb = new StringBuilder();
            sb.append(Build.VERSION.SDK_INT);
            map.put("androidversion", sb.toString());
            map.put("deviceId", strU);
            map.put("manufacture", Build.MANUFACTURER);
            Map<String, String> map2 = this.i;
            if (map2 != null && !map2.isEmpty()) {
                map.putAll(this.i);
            }
            map.put("abitype", w.a(((bg) this).f12564a));
            map.put("ext", ((bg) this).b.d());
            return w.a(w.a(map));
        }

        @Override // com.loc.q, com.loc.bk
        public final String c() {
            return a("https://dualstack-arestapi.amap.com/v3/iasdkauth", this.k);
        }

        @Override // com.loc.bg
        protected final String f() {
            return "3.0";
        }

        @Override // com.loc.bk
        protected final String g() {
            return !TextUtils.isEmpty(this.l) ? this.l : super.g();
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        v f12986a;
        String b;
        a c;

        private d() {
        }

        /* synthetic */ d(byte b) {
            this();
        }
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f12987a;
        private String b;
        private AtomicInteger c;

        public e(String str, String str2, int i) {
            this.f12987a = str;
            this.b = str2;
            this.c = new AtomicInteger(i);
        }

        public static e b(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new e(jSONObject.optString("a"), jSONObject.optString("f"), jSONObject.optInt(ak.f12508g));
            } catch (Throwable unused) {
                return null;
            }
        }

        public final int a() {
            AtomicInteger atomicInteger = this.c;
            if (atomicInteger == null) {
                return 0;
            }
            return atomicInteger.get();
        }

        public final void a(String str) {
            this.b = str;
        }

        public final String b() {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("a", this.f12987a);
                jSONObject.put("f", this.b);
                jSONObject.put(ak.f12508g, this.c.get());
                return jSONObject.toString();
            } catch (Throwable unused) {
                return "";
            }
        }
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static boolean f12988a = true;
        public static boolean b = false;
        public static boolean c = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static int f12989d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static boolean f12990e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static int f12991f;
    }

    public static b a(Context context, v vVar, String str, String str2, String str3, String str4) {
        return b(context, vVar, str, str2, str3, str4);
    }

    private static synchronized e a(Context context, String str, String str2) {
        e eVar;
        if (!TextUtils.isEmpty(str)) {
            int i2 = 0;
            while (true) {
                if (i2 >= p.size()) {
                    eVar = null;
                    break;
                }
                eVar = p.get(i2);
                if (eVar != null && str.equals(eVar.f12987a)) {
                    break;
                }
                i2++;
            }
        } else {
            eVar = null;
            break;
        }
        if (eVar != null) {
            return eVar;
        }
        if (context == null) {
            return null;
        }
        e eVarB = e.b(au.b(context, str2, str, ""));
        String strA = w.a(System.currentTimeMillis(), "yyyyMMdd");
        if (eVarB == null) {
            eVarB = new e(str, strA, 0);
        }
        if (!strA.equals(eVarB.b)) {
            eVarB.a(strA);
            eVarB.c.set(0);
        }
        p.add(eVarB);
        return eVarB;
    }

    public static void a(Context context) {
        if (context != null) {
            c = context.getApplicationContext();
        }
    }

    private static void a(Context context, v vVar, String str) {
        HashMap map = new HashMap();
        map.put("amap_sdk_auth_fail", "1");
        map.put("amap_sdk_auth_fail_type", str);
        map.put("amap_sdk_name", vVar.a());
        map.put("amap_sdk_version", vVar.c());
        String string = new JSONObject(map).toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        try {
            bq bqVar = new bq(context, "core", AliLiveInfoUtils.ALIVC_CONAN_VERSION, "O001");
            bqVar.a(string);
            br.a(bqVar, context);
        } catch (j unused) {
        }
    }

    public static synchronized void a(Context context, v vVar, String str, a aVar) {
        if (context == null || vVar == null) {
            return;
        }
        try {
            if (c == null) {
                c = context.getApplicationContext();
            }
            String strA = vVar.a();
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            a(vVar);
            if (v == null) {
                v = new ConcurrentHashMap<>(8);
            }
            if (u == null) {
                u = new ConcurrentHashMap<>(8);
            }
            if (t == null) {
                t = new ConcurrentHashMap<>(8);
            }
            if (!v.containsKey(strA)) {
                d dVar = new d((byte) 0);
                dVar.f12986a = vVar;
                dVar.b = str;
                dVar.c = aVar;
                v.put(strA, dVar);
                t.put(strA, Long.valueOf(au.b(c, "open_common", strA)));
                d(c);
            }
        } catch (Throwable th) {
            aj.a(th, "at", "rglc");
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0236  */
    /* JADX WARN: Code duplicated, block: B:105:0x024a A[Catch: all -> 0x02d2, TryCatch #11 {all -> 0x02d2, blocks: (B:103:0x0244, B:105:0x024a, B:107:0x0288, B:109:0x028c, B:111:0x0290, B:113:0x0294, B:115:0x0298, B:117:0x029c), top: B:160:0x0244 }] */
    /* JADX WARN: Code duplicated, block: B:107:0x0288 A[Catch: all -> 0x02d2, TryCatch #11 {all -> 0x02d2, blocks: (B:103:0x0244, B:105:0x024a, B:107:0x0288, B:109:0x028c, B:111:0x0290, B:113:0x0294, B:115:0x0298, B:117:0x029c), top: B:160:0x0244 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x02db  */
    /* JADX WARN: Code duplicated, block: B:148:0x02fd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:154:0x02e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:160:0x0244 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:? A[RETURN, SYNTHETIC] */
    private static void a(Context context, v vVar, String str, b bVar, JSONObject jSONObject) throws JSONException {
        String str2;
        String str3;
        String str4;
        boolean zA;
        Context context2;
        JSONObject jSONObject2;
        boolean zA2;
        boolean zA3;
        boolean zA4;
        int iOptInt;
        boolean zA5;
        int iOptInt2;
        b.a aVar = new b.a();
        aVar.f12983a = false;
        aVar.b = false;
        bVar.f12981g = aVar;
        try {
            String[] strArrSplit = str.split(VoiceWakeuperAidl.PARAMS_SEPARATE);
            if (strArrSplit != null && strArrSplit.length > 0) {
                int length = strArrSplit.length;
                int i2 = 0;
                while (i2 < length) {
                    String str5 = strArrSplit[i2];
                    if (jSONObject.has(str5)) {
                        bVar.f12980f.putOpt(str5, jSONObject.get(str5));
                    }
                    i2++;
                    strArrSplit = strArrSplit;
                }
            }
        } catch (Throwable th) {
            aj.a(th, "at", "co");
        }
        if (w.a(jSONObject, "16H")) {
            try {
                bVar.i = a(jSONObject.getJSONObject("16H").optString("able"), false);
            } catch (Throwable th2) {
                aj.a(th2, "AuthConfigManager", "load 16H");
            }
        }
        if (w.a(jSONObject, "11K")) {
            try {
                JSONObject jSONObject3 = jSONObject.getJSONObject("11K");
                aVar.f12983a = a(jSONObject3.getString("able"), false);
                if (jSONObject3.has("off")) {
                    aVar.c = jSONObject3.getJSONObject("off");
                }
            } catch (Throwable th3) {
                aj.a(th3, "AuthConfigManager", "load 11K");
            }
        }
        if (w.a(jSONObject, "145")) {
            try {
                bVar.f12977a = jSONObject.getJSONObject("145");
            } catch (Throwable th4) {
                aj.a(th4, "AuthConfigManager", "load 145");
            }
        }
        if (w.a(jSONObject, "14D")) {
            try {
                bVar.b = jSONObject.getJSONObject("14D");
            } catch (Throwable th5) {
                aj.a(th5, "AuthConfigManager", "load 14D");
            }
        }
        if (w.a(jSONObject, "151")) {
            try {
                JSONObject jSONObject4 = jSONObject.getJSONObject("151");
                b.C0247b c0247b = new b.C0247b();
                if (jSONObject4 != null) {
                    c0247b.f12984a = a(jSONObject4.optString("able"), false);
                }
                bVar.f12982h = c0247b;
            } catch (Throwable th6) {
                aj.a(th6, "AuthConfigManager", "load 151");
            }
        }
        if (w.a(jSONObject, "17S")) {
            try {
                JSONObject jSONObject5 = jSONObject.getJSONObject("17S");
                if (jSONObject5 != null && (zA = a(jSONObject5.optString("able"), false)) != o) {
                    o = zA;
                    if (context != null) {
                        SharedPreferences.Editor editorA = au.a(context, "open_common");
                        au.a(editorA, "a2", zA);
                        au.a(editorA);
                    }
                }
                if (jSONObject5 != null) {
                    boolean zA6 = a(jSONObject5.optString("static_enable"), true);
                    boolean zA7 = a(jSONObject5.optString("static_ip_direct_enable"), false);
                    int iOptInt3 = jSONObject5.optInt("static_timeout", 5) * 1000;
                    int iOptInt4 = jSONObject5.optInt("static_retry", 3);
                    str2 = "ustv";
                    try {
                        boolean zA8 = a(jSONObject5.optString("bgp_enable"), true);
                        str3 = "ust";
                        try {
                            boolean zA9 = a(jSONObject5.optString("bgp_ip_direct_enable"), false);
                            str4 = "umv";
                            try {
                                int iOptInt5 = jSONObject5.optInt("bgp_retry", 3);
                                boolean zA10 = a(jSONObject5.optString("perf_data_upload_enable"), false);
                                if (zA6 != f12972f || zA7 != f12973g || iOptInt3 != f12971e || iOptInt4 != x || zA8 != f12974h || zA9 != i || iOptInt5 != y || zA10 != j) {
                                    f12972f = zA6;
                                    f12973g = zA7;
                                    f12971e = iOptInt3;
                                    x = iOptInt4;
                                    f12974h = zA8;
                                    i = zA9;
                                    y = iOptInt5;
                                    j = zA10;
                                    if (context != null) {
                                        SharedPreferences.Editor editorA2 = au.a(context, "open_common");
                                        au.a(editorA2, "a13", zA6);
                                        au.a(editorA2, "a6", zA8);
                                        au.a(editorA2, "a7", zA7);
                                        au.a(editorA2, "a8", iOptInt3);
                                        au.a(editorA2, "a9", iOptInt4);
                                        au.a(editorA2, "a10", zA9);
                                        au.a(editorA2, "a11", iOptInt5);
                                        au.a(editorA2, "a12", zA10);
                                        au.a(editorA2);
                                    }
                                }
                                new StringBuilder("static_enable=").append(f12972f);
                                bi.a();
                                new StringBuilder("bgp_enable=").append(f12974h);
                                bi.a();
                                new StringBuilder("static_ip_direct_enable=").append(f12973g);
                                bi.a();
                                new StringBuilder("bgp_ip_direct_enable=").append(i);
                                bi.a();
                                new StringBuilder("perf_data_upload_enable=").append(j);
                                bi.a();
                            } catch (Throwable th7) {
                                th = th7;
                                aj.a(th, "AuthConfigManager", "load 17S");
                            }
                        } catch (Throwable th8) {
                            th = th8;
                            str4 = "umv";
                            aj.a(th, "AuthConfigManager", "load 17S");
                            if (w.a(jSONObject, "15K")) {
                                try {
                                    jSONObject2 = jSONObject.getJSONObject("15K");
                                    if (jSONObject2 != null) {
                                        zA2 = a(jSONObject2.optString("ucf"), f.f12988a);
                                        zA3 = a(jSONObject2.optString("fsv2"), f.b);
                                        zA4 = a(jSONObject2.optString("usc"), f.c);
                                        String str6 = str4;
                                        iOptInt = jSONObject2.optInt(str6, f.f12989d);
                                        String str7 = str3;
                                        zA5 = a(jSONObject2.optString(str7), f.f12990e);
                                        String str8 = str2;
                                        iOptInt2 = jSONObject2.optInt(str8, f.f12991f);
                                        if (zA2 != f.f12988a) {
                                        }
                                        f.f12988a = zA2;
                                        f.b = zA3;
                                        f.c = zA4;
                                        f.f12989d = iOptInt;
                                        f.f12990e = zA5;
                                        f.f12991f = iOptInt2;
                                        context2 = context;
                                        try {
                                            SharedPreferences.Editor editorA3 = au.a(context2, "open_common");
                                            au.a(editorA3, "ucf", f.f12988a);
                                            au.a(editorA3, "fsv2", f.b);
                                            au.a(editorA3, "usc", f.c);
                                            au.a(editorA3, str6, f.f12989d);
                                            au.a(editorA3, str7, f.f12990e);
                                            au.a(editorA3, str8, f.f12991f);
                                            au.a(editorA3);
                                        } catch (Throwable unused) {
                                        }
                                    } else {
                                        context2 = context;
                                    }
                                } catch (Throwable th9) {
                                    context2 = context;
                                    aj.a(th9, "AuthConfigManager", "load 15K");
                                }
                            } else {
                                context2 = context;
                            }
                            if (w.a(jSONObject, "183")) {
                                try {
                                    bh.a(vVar, jSONObject.getJSONObject("183"));
                                } catch (Throwable th10) {
                                    aj.a(th10, "AuthConfigManager", "load 183");
                                }
                            }
                            if (w.a(jSONObject, "17I")) {
                                try {
                                    JSONObject jSONObject6 = jSONObject.getJSONObject("17I");
                                    boolean zA11 = a(jSONObject6.optString("na"), false);
                                    boolean zA12 = a(jSONObject6.optString("aa"), false);
                                    af.f12490d = zA11;
                                    af.f12491e = zA12;
                                    SharedPreferences.Editor editorA4 = au.a(context2, "open_common");
                                    au.a(editorA4, "a4", zA11);
                                    au.a(editorA4, "a5", zA12);
                                    au.a(editorA4);
                                } catch (Throwable th11) {
                                    aj.a(th11, "AuthConfigManager", "load 17I");
                                    return;
                                }
                            }
                        }
                    } catch (Throwable th12) {
                        th = th12;
                        str3 = "ust";
                        str4 = "umv";
                        aj.a(th, "AuthConfigManager", "load 17S");
                        if (w.a(jSONObject, "15K")) {
                            jSONObject2 = jSONObject.getJSONObject("15K");
                            if (jSONObject2 != null) {
                                zA2 = a(jSONObject2.optString("ucf"), f.f12988a);
                                zA3 = a(jSONObject2.optString("fsv2"), f.b);
                                zA4 = a(jSONObject2.optString("usc"), f.c);
                                String str9 = str4;
                                iOptInt = jSONObject2.optInt(str9, f.f12989d);
                                String str10 = str3;
                                zA5 = a(jSONObject2.optString(str10), f.f12990e);
                                String str11 = str2;
                                iOptInt2 = jSONObject2.optInt(str11, f.f12991f);
                                if (zA2 != f.f12988a) {
                                }
                                f.f12988a = zA2;
                                f.b = zA3;
                                f.c = zA4;
                                f.f12989d = iOptInt;
                                f.f12990e = zA5;
                                f.f12991f = iOptInt2;
                                context2 = context;
                                SharedPreferences.Editor editorA5 = au.a(context2, "open_common");
                                au.a(editorA5, "ucf", f.f12988a);
                                au.a(editorA5, "fsv2", f.b);
                                au.a(editorA5, "usc", f.c);
                                au.a(editorA5, str9, f.f12989d);
                                au.a(editorA5, str10, f.f12990e);
                                au.a(editorA5, str11, f.f12991f);
                                au.a(editorA5);
                            } else {
                                context2 = context;
                            }
                        } else {
                            context2 = context;
                        }
                        if (w.a(jSONObject, "183")) {
                            bh.a(vVar, jSONObject.getJSONObject("183"));
                        }
                        if (w.a(jSONObject, "17I")) {
                            JSONObject jSONObject7 = jSONObject.getJSONObject("17I");
                            boolean zA13 = a(jSONObject7.optString("na"), false);
                            boolean zA14 = a(jSONObject7.optString("aa"), false);
                            af.f12490d = zA13;
                            af.f12491e = zA14;
                            SharedPreferences.Editor editorA6 = au.a(context2, "open_common");
                            au.a(editorA6, "a4", zA13);
                            au.a(editorA6, "a5", zA14);
                            au.a(editorA6);
                        }
                    }
                } else {
                    str2 = "ustv";
                    str3 = "ust";
                    str4 = "umv";
                }
            } catch (Throwable th13) {
                th = th13;
                str2 = "ustv";
            }
        } else {
            str2 = "ustv";
            str3 = "ust";
            str4 = "umv";
        }
        if (w.a(jSONObject, "15K")) {
            jSONObject2 = jSONObject.getJSONObject("15K");
            if (jSONObject2 != null) {
                zA2 = a(jSONObject2.optString("ucf"), f.f12988a);
                zA3 = a(jSONObject2.optString("fsv2"), f.b);
                zA4 = a(jSONObject2.optString("usc"), f.c);
                String str12 = str4;
                iOptInt = jSONObject2.optInt(str12, f.f12989d);
                String str13 = str3;
                zA5 = a(jSONObject2.optString(str13), f.f12990e);
                String str14 = str2;
                iOptInt2 = jSONObject2.optInt(str14, f.f12991f);
                if (zA2 != f.f12988a && zA3 == f.b && zA4 == f.c && iOptInt == f.f12989d && zA5 == f.f12990e && iOptInt2 == f.f12989d) {
                    context2 = context;
                } else {
                    f.f12988a = zA2;
                    f.b = zA3;
                    f.c = zA4;
                    f.f12989d = iOptInt;
                    f.f12990e = zA5;
                    f.f12991f = iOptInt2;
                    context2 = context;
                    SharedPreferences.Editor editorA7 = au.a(context2, "open_common");
                    au.a(editorA7, "ucf", f.f12988a);
                    au.a(editorA7, "fsv2", f.b);
                    au.a(editorA7, "usc", f.c);
                    au.a(editorA7, str12, f.f12989d);
                    au.a(editorA7, str13, f.f12990e);
                    au.a(editorA7, str14, f.f12991f);
                    au.a(editorA7);
                }
            } else {
                context2 = context;
            }
        } else {
            context2 = context;
        }
        if (w.a(jSONObject, "183")) {
            bh.a(vVar, jSONObject.getJSONObject("183"));
        }
        if (w.a(jSONObject, "17I")) {
            JSONObject jSONObject8 = jSONObject.getJSONObject("17I");
            boolean zA15 = a(jSONObject8.optString("na"), false);
            boolean zA16 = a(jSONObject8.optString("aa"), false);
            af.f12490d = zA15;
            af.f12491e = zA16;
            SharedPreferences.Editor editorA8 = au.a(context2, "open_common");
            au.a(editorA8, "a4", zA15);
            au.a(editorA8, "a5", zA16);
            au.a(editorA8);
        }
    }

    private static void a(Context context, v vVar, Throwable th) {
        a(context, vVar, th.getMessage());
    }

    public static void a(Context context, String str) {
        k.a(context, str);
    }

    private static void a(Context context, String str, String str2, e eVar) {
        if (eVar == null || TextUtils.isEmpty(eVar.f12987a)) {
            return;
        }
        String strB = eVar.b();
        if (TextUtils.isEmpty(strB) || context == null) {
            return;
        }
        SharedPreferences.Editor editorA = au.a(context, str2);
        editorA.putString(str, strB);
        au.a(editorA);
    }

    public static void a(bi.c cVar) {
        if (cVar == null || c == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("serverip", cVar.c);
        map.put("hostname", cVar.f12587e);
        map.put("path", cVar.f12586d);
        map.put("csid", cVar.f12585a);
        map.put("degrade", String.valueOf(cVar.b.a()));
        map.put("errorcode", String.valueOf(cVar.m));
        map.put("errorsubcode", String.valueOf(cVar.n));
        map.put("connecttime", String.valueOf(cVar.f12590h));
        map.put("writetime", String.valueOf(cVar.i));
        map.put("readtime", String.valueOf(cVar.j));
        map.put("datasize", String.valueOf(cVar.l));
        map.put("totaltime", String.valueOf(cVar.f12588f));
        String string = new JSONObject(map).toString();
        "--埋点--".concat(String.valueOf(string));
        bi.a();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        try {
            bq bqVar = new bq(c, "core", AliLiveInfoUtils.ALIVC_CONAN_VERSION, "O008");
            bqVar.a(string);
            br.a(bqVar, c);
        } catch (j unused) {
        }
    }

    private static void a(v vVar) {
        if (vVar != null) {
            try {
                if (TextUtils.isEmpty(vVar.a())) {
                    return;
                }
                String strC = vVar.c();
                if (TextUtils.isEmpty(strC)) {
                    strC = vVar.b();
                }
                if (TextUtils.isEmpty(strC)) {
                    return;
                }
                af.a(vVar.a(), strC);
            } catch (Throwable unused) {
            }
        }
    }

    private static void a(String str, String str2) {
        e eVarA = a(c, str, str2);
        String strA = w.a(System.currentTimeMillis(), "yyyyMMdd");
        if (!strA.equals(eVarA.b)) {
            eVarA.a(strA);
            eVarA.c.set(0);
        }
        eVarA.c.incrementAndGet();
        a(c, str, str2, eVarA);
    }

    public static synchronized void a(final String str, boolean z2, final String str2, final String str3, final String str4) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (u == null) {
                u = new ConcurrentHashMap<>(8);
            }
            u.put(str, Long.valueOf(SystemClock.elapsedRealtime()));
            if (v == null) {
                return;
            }
            if (v.containsKey(str)) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (z2) {
                    bh.a(true, str);
                }
                ci.a().b(new cj() { // from class: com.loc.l.1
                    @Override // com.loc.cj
                    public final void a() {
                        d dVar = (d) l.v.get(str);
                        if (dVar == null) {
                            return;
                        }
                        a aVar = dVar.c;
                        b bVarA = l.a(l.c, dVar.f12986a, dVar.b, str2, str3, str4);
                        if (bVarA == null || aVar == null) {
                            return;
                        }
                        aVar.a(bVarA);
                    }
                });
            }
        } catch (Throwable th) {
            aj.a(th, "at", "lca");
        }
    }

    public static void a(String str, boolean z2, boolean z3, boolean z4) {
        String str2;
        if (TextUtils.isEmpty(str) || c == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("url", str);
        map.put("downLevel", String.valueOf(z2));
        map.put("ant", n.o(c) == 0 ? "0" : "1");
        if (z4) {
            str2 = z2 ? m : n;
        } else {
            str2 = z2 ? k : l;
        }
        map.put("type", str2);
        map.put("status", z3 ? "0" : "1");
        String string = new JSONObject(map).toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        try {
            bq bqVar = new bq(c, "core", AliLiveInfoUtils.ALIVC_CONAN_VERSION, "O002");
            bqVar.a(string);
            br.a(bqVar, c);
        } catch (j unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006b A[Catch: all -> 0x009c, LOOP:0: B:24:0x0062->B:26:0x006b, LOOP_END, TryCatch #0 {, blocks: (B:9:0x000d, B:10:0x0013, B:12:0x0019, B:14:0x0029, B:16:0x0033, B:18:0x0039, B:20:0x003f, B:21:0x0042, B:22:0x0046, B:23:0x0059, B:24:0x0062, B:26:0x006b, B:27:0x0097, B:28:0x009a), top: B:34:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0097 A[SYNTHETIC] */
    public static void a(boolean z2, bi.a aVar) {
        Iterator<bi.a> it;
        if (!C || aVar == null) {
            return;
        }
        synchronized (B) {
            if (z2) {
                Iterator<bi.a> it2 = B.iterator();
                while (it2.hasNext()) {
                    bi.a next = it2.next();
                    if (next.b.equals(aVar.b) && next.f12580e.equals(aVar.f12580e) && next.f12581f == aVar.f12581f) {
                        if (next.j == aVar.j) {
                            it2.remove();
                        } else {
                            next.j.set(next.j.get() - aVar.j.get());
                        }
                        bi.a();
                    }
                }
                C = false;
                it = B.iterator();
                while (true) {
                    bi.a();
                    if (it.hasNext()) {
                        bi.a next2 = it.next();
                        StringBuilder sb = new StringBuilder("----path=");
                        sb.append(next2.f12580e);
                        sb.append("-counts=");
                        sb.append(next2.j);
                        sb.append("-code=");
                        sb.append(next2.f12581f);
                        sb.append(InternalFrame.ID);
                    } else {
                        bi.a();
                    }
                }
            } else {
                C = false;
                it = B.iterator();
                while (true) {
                    bi.a();
                    if (it.hasNext()) {
                        bi.a next3 = it.next();
                        StringBuilder sb2 = new StringBuilder("----path=");
                        sb2.append(next3.f12580e);
                        sb2.append("-counts=");
                        sb2.append(next3.j);
                        sb2.append("-code=");
                        sb2.append(next3.f12581f);
                        sb2.append(InternalFrame.ID);
                    } else {
                        bi.a();
                    }
                }
            }
            throw th;
        }
    }

    public static void a(boolean z2, String str) {
        Boolean bool = Boolean.TRUE;
        try {
            "--markHostNameFailed---hostname=".concat(String.valueOf(str));
            bi.a();
            if (f12972f || z2) {
                if ((i || !z2) && !TextUtils.isEmpty(str)) {
                    if (z2) {
                        if (A.get(str) != null) {
                            return;
                        }
                        A.put(str, bool);
                        a(b(str, "a15"), "open_common");
                        return;
                    }
                    if (z.get(str) != null) {
                        return;
                    }
                    z.put(str, bool);
                    a(b(str, "a14"), "open_common");
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static boolean a() {
        e eVarA;
        if (c != null) {
            i();
            if (!c()) {
                return false;
            }
            if (b()) {
                return true;
            }
        }
        return o && (eVarA = a(c, "IPV6_CONFIG_NAME", "open_common")) != null && eVarA.a() < 5;
    }

    public static synchronized boolean a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            if (v == null) {
                return false;
            }
            if (u == null) {
                u = new ConcurrentHashMap<>(8);
            }
            if (v.containsKey(str) && !u.containsKey(str)) {
                u.put(str, Long.valueOf(SystemClock.elapsedRealtime()));
                return true;
            }
        } catch (Throwable th) {
            aj.a(th, "at", "cslct");
        }
        return false;
    }

    public static synchronized boolean a(String str, long j2) {
        boolean z2 = false;
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            if (j2 > c(str)) {
                long jLongValue = 0;
                if (u != null && u.containsKey(str)) {
                    jLongValue = u.get(str).longValue();
                }
                if (SystemClock.elapsedRealtime() - jLongValue > 30000) {
                    z2 = true;
                }
            }
        } catch (Throwable unused) {
        }
        return z2;
    }

    public static boolean a(String str, boolean z2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return z2;
            }
            String[] strArrSplit = URLDecoder.decode(str).split("/");
            return strArrSplit[strArrSplit.length - 1].charAt(4) % 2 == 1;
        } catch (Throwable unused) {
            return z2;
        }
    }

    private static boolean a(InetAddress inetAddress) {
        return inetAddress.isLoopbackAddress() || inetAddress.isLinkLocalAddress() || inetAddress.isAnyLocalAddress();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01b7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:101:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:103:0x01be  */
    /* JADX WARN: Code duplicated, block: B:106:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:109:0x01da A[Catch: all -> 0x0276, TryCatch #13 {all -> 0x0276, blocks: (B:107:0x01cf, B:109:0x01da, B:111:0x01e1, B:134:0x023b, B:136:0x0243, B:133:0x0238, B:115:0x01ec, B:117:0x01f5, B:119:0x0201, B:120:0x0207, B:122:0x0211, B:123:0x0215, B:125:0x0223, B:128:0x022a, B:130:0x0230), top: B:151:0x01cf, inners: #15 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x01e1 A[Catch: all -> 0x0276, TryCatch #13 {all -> 0x0276, blocks: (B:107:0x01cf, B:109:0x01da, B:111:0x01e1, B:134:0x023b, B:136:0x0243, B:133:0x0238, B:115:0x01ec, B:117:0x01f5, B:119:0x0201, B:120:0x0207, B:122:0x0211, B:123:0x0215, B:125:0x0223, B:128:0x022a, B:130:0x0230), top: B:151:0x01cf, inners: #15 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:113:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:115:0x01ec A[Catch: all -> 0x0276, TryCatch #13 {all -> 0x0276, blocks: (B:107:0x01cf, B:109:0x01da, B:111:0x01e1, B:134:0x023b, B:136:0x0243, B:133:0x0238, B:115:0x01ec, B:117:0x01f5, B:119:0x0201, B:120:0x0207, B:122:0x0211, B:123:0x0215, B:125:0x0223, B:128:0x022a, B:130:0x0230), top: B:151:0x01cf, inners: #15 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:119:0x0201 A[Catch: all -> 0x0276, TryCatch #13 {all -> 0x0276, blocks: (B:107:0x01cf, B:109:0x01da, B:111:0x01e1, B:134:0x023b, B:136:0x0243, B:133:0x0238, B:115:0x01ec, B:117:0x01f5, B:119:0x0201, B:120:0x0207, B:122:0x0211, B:123:0x0215, B:125:0x0223, B:128:0x022a, B:130:0x0230), top: B:151:0x01cf, inners: #15 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x0211 A[Catch: all -> 0x0276, TryCatch #13 {all -> 0x0276, blocks: (B:107:0x01cf, B:109:0x01da, B:111:0x01e1, B:134:0x023b, B:136:0x0243, B:133:0x0238, B:115:0x01ec, B:117:0x01f5, B:119:0x0201, B:120:0x0207, B:122:0x0211, B:123:0x0215, B:125:0x0223, B:128:0x022a, B:130:0x0230), top: B:151:0x01cf, inners: #15 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x0223 A[Catch: all -> 0x0276, TRY_LEAVE, TryCatch #13 {all -> 0x0276, blocks: (B:107:0x01cf, B:109:0x01da, B:111:0x01e1, B:134:0x023b, B:136:0x0243, B:133:0x0238, B:115:0x01ec, B:117:0x01f5, B:119:0x0201, B:120:0x0207, B:122:0x0211, B:123:0x0215, B:125:0x0223, B:128:0x022a, B:130:0x0230), top: B:151:0x01cf, inners: #15 }] */
    /* JADX WARN: Code duplicated, block: B:130:0x0230 A[Catch: all -> 0x0237, TRY_LEAVE, TryCatch #15 {all -> 0x0237, blocks: (B:128:0x022a, B:130:0x0230), top: B:152:0x022a, outer: #13 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x0243 A[Catch: all -> 0x0276, TRY_LEAVE, TryCatch #13 {all -> 0x0276, blocks: (B:107:0x01cf, B:109:0x01da, B:111:0x01e1, B:134:0x023b, B:136:0x0243, B:133:0x0238, B:115:0x01ec, B:117:0x01f5, B:119:0x0201, B:120:0x0207, B:122:0x0211, B:123:0x0215, B:125:0x0223, B:128:0x022a, B:130:0x0230), top: B:151:0x01cf, inners: #15 }] */
    /* JADX WARN: Code duplicated, block: B:139:0x0267 A[Catch: all -> 0x027a, TryCatch #16 {all -> 0x027a, blocks: (B:137:0x024a, B:139:0x0267, B:140:0x026e), top: B:155:0x024a }] */
    /* JADX WARN: Code duplicated, block: B:140:0x026e A[Catch: all -> 0x027a, TRY_LEAVE, TryCatch #16 {all -> 0x027a, blocks: (B:137:0x024a, B:139:0x0267, B:140:0x026e), top: B:155:0x024a }] */
    private static b b(Context context, v vVar, String str, String str2, String str3, String str4) {
        String str5;
        String str6;
        String str7;
        String str8;
        b bVar;
        String str9;
        String str10;
        String string;
        bl blVarA;
        byte[] bArr;
        String str11;
        String str12;
        JSONObject jSONObject;
        int i2;
        String str13;
        String str14;
        String str15;
        String str16;
        JSONObject jSONObject2;
        boolean zA;
        List<String> list;
        b bVar2 = new b();
        bVar2.f12980f = new JSONObject();
        if (context != null) {
            c = context.getApplicationContext();
        }
        e();
        String strA = null;
        try {
            a(vVar);
            new bf();
            boolean zIsEmpty = TextUtils.isEmpty(str);
            if (zIsEmpty) {
                string = str;
            } else {
                try {
                    StringBuilder sb = new StringBuilder();
                    str5 = str;
                    try {
                        sb.append(str5);
                        sb.append(";15K;16H;17I;17S;183");
                        string = sb.toString();
                    } catch (j e2) {
                        e = e2;
                        str6 = "infocode";
                        str7 = SpeechUtility.TAG_RESOURCE_RESULT;
                        str8 = "ver";
                        bVar = bVar2;
                        str9 = "at";
                        str10 = "lc";
                        try {
                            throw e;
                        } catch (j e3) {
                            e = e3;
                            string = str5;
                            blVarA = null;
                            bArr = null;
                            bVar.c = e.a();
                            a(context, vVar, e.a());
                            am.a(vVar, "/v3/iasdkauth", e);
                            str11 = string;
                            if (bArr == null) {
                                return bVar;
                            }
                            if (TextUtils.isEmpty(strA)) {
                                strA = w.a(bArr);
                            }
                            str12 = strA;
                            if (TextUtils.isEmpty(str12)) {
                                a(context, vVar, "result is null");
                            }
                            try {
                                jSONObject = new JSONObject(str12);
                                if (jSONObject.has("status")) {
                                    i2 = jSONObject.getInt("status");
                                    if (i2 == 1) {
                                        f12969a = 1;
                                    } else if (i2 == 0) {
                                        if (blVarA != null) {
                                            str13 = blVarA.c;
                                            str14 = blVarA.f12620d;
                                        } else {
                                            str13 = "authcsid";
                                            str14 = "authgsid";
                                        }
                                        w.a(context, str13, str14, jSONObject);
                                        f12969a = 0;
                                        if (jSONObject.has("info")) {
                                            b = jSONObject.getString("info");
                                        }
                                        String str17 = str6;
                                        am.a(vVar, "/v3/iasdkauth", b, str14, str13, jSONObject.has(str17) ? jSONObject.getString(str17) : "");
                                        if (f12969a == 0) {
                                            bVar.c = b;
                                            return bVar;
                                        }
                                    }
                                    str15 = str8;
                                    try {
                                        if (jSONObject.has(str15)) {
                                            bVar.f12978d = jSONObject.getInt(str15);
                                        }
                                    } catch (Throwable th) {
                                        aj.a(th, str9, str10);
                                    }
                                    str16 = str7;
                                    if (w.a(jSONObject, str16)) {
                                        JSONObject jSONObject3 = jSONObject.getJSONObject(str16);
                                        a(context, vVar, str11, bVar, jSONObject3);
                                        try {
                                            jSONObject2 = jSONObject3.getJSONObject("15K");
                                            zA = a(jSONObject2.optString("isTargetAble"), false);
                                            if (a(jSONObject2.optString("able"), false)) {
                                                p.a().a(context, zA);
                                            } else {
                                                p.a();
                                                p.b(context);
                                            }
                                        } catch (Throwable unused) {
                                        }
                                    }
                                }
                            } catch (Throwable th2) {
                                aj.a(th2, str9, str10);
                            }
                            return bVar;
                        } catch (IllegalBlockSizeException e4) {
                            e = e4;
                            string = str5;
                            blVarA = null;
                            bArr = null;
                            a(context, vVar, e);
                            str11 = string;
                            if (bArr == null) {
                                return bVar;
                            }
                            if (TextUtils.isEmpty(strA)) {
                                strA = w.a(bArr);
                            }
                            str12 = strA;
                            if (TextUtils.isEmpty(str12)) {
                                a(context, vVar, "result is null");
                            }
                            jSONObject = new JSONObject(str12);
                            if (jSONObject.has("status")) {
                                i2 = jSONObject.getInt("status");
                                if (i2 == 1) {
                                    f12969a = 1;
                                } else if (i2 == 0) {
                                    if (blVarA != null) {
                                        str13 = blVarA.c;
                                        str14 = blVarA.f12620d;
                                    } else {
                                        str13 = "authcsid";
                                        str14 = "authgsid";
                                    }
                                    w.a(context, str13, str14, jSONObject);
                                    f12969a = 0;
                                    if (jSONObject.has("info")) {
                                        b = jSONObject.getString("info");
                                    }
                                    String str18 = str6;
                                    am.a(vVar, "/v3/iasdkauth", b, str14, str13, jSONObject.has(str18) ? jSONObject.getString(str18) : "");
                                    if (f12969a == 0) {
                                        bVar.c = b;
                                        return bVar;
                                    }
                                }
                                str15 = str8;
                                if (jSONObject.has(str15)) {
                                    bVar.f12978d = jSONObject.getInt(str15);
                                }
                                str16 = str7;
                                if (w.a(jSONObject, str16)) {
                                    JSONObject jSONObject4 = jSONObject.getJSONObject(str16);
                                    a(context, vVar, str11, bVar, jSONObject4);
                                    jSONObject2 = jSONObject4.getJSONObject("15K");
                                    zA = a(jSONObject2.optString("isTargetAble"), false);
                                    if (a(jSONObject2.optString("able"), false)) {
                                        p.a();
                                        p.b(context);
                                    } else {
                                        p.a().a(context, zA);
                                    }
                                }
                            }
                            return bVar;
                        } catch (Throwable th3) {
                            e = th3;
                            string = str5;
                            blVarA = null;
                            bArr = null;
                            am.b(e, str9, str10);
                            a(context, vVar, e);
                            str11 = string;
                            if (bArr == null) {
                                return bVar;
                            }
                            if (TextUtils.isEmpty(strA)) {
                                strA = w.a(bArr);
                            }
                            str12 = strA;
                            if (TextUtils.isEmpty(str12)) {
                                a(context, vVar, "result is null");
                            }
                            jSONObject = new JSONObject(str12);
                            if (jSONObject.has("status")) {
                                i2 = jSONObject.getInt("status");
                                if (i2 == 1) {
                                    f12969a = 1;
                                } else if (i2 == 0) {
                                    if (blVarA != null) {
                                        str13 = blVarA.c;
                                        str14 = blVarA.f12620d;
                                    } else {
                                        str13 = "authcsid";
                                        str14 = "authgsid";
                                    }
                                    w.a(context, str13, str14, jSONObject);
                                    f12969a = 0;
                                    if (jSONObject.has("info")) {
                                        b = jSONObject.getString("info");
                                    }
                                    String str19 = str6;
                                    am.a(vVar, "/v3/iasdkauth", b, str14, str13, jSONObject.has(str19) ? jSONObject.getString(str19) : "");
                                    if (f12969a == 0) {
                                        bVar.c = b;
                                        return bVar;
                                    }
                                }
                                str15 = str8;
                                if (jSONObject.has(str15)) {
                                    bVar.f12978d = jSONObject.getInt(str15);
                                }
                                str16 = str7;
                                if (w.a(jSONObject, str16)) {
                                    JSONObject jSONObject5 = jSONObject.getJSONObject(str16);
                                    a(context, vVar, str11, bVar, jSONObject5);
                                    jSONObject2 = jSONObject5.getJSONObject("15K");
                                    zA = a(jSONObject2.optString("isTargetAble"), false);
                                    if (a(jSONObject2.optString("able"), false)) {
                                        p.a();
                                        p.b(context);
                                    } else {
                                        p.a().a(context, zA);
                                    }
                                }
                            }
                            return bVar;
                        }
                    } catch (Throwable unused2) {
                        string = str5;
                        str6 = "infocode";
                        str7 = SpeechUtility.TAG_RESOURCE_RESULT;
                        str8 = "ver";
                        bVar = bVar2;
                        str9 = "at";
                        str10 = "lc";
                        try {
                            throw new j(AMapException.ERROR_UNKNOWN);
                        } catch (j e5) {
                            e = e5;
                            blVarA = null;
                            bArr = null;
                            bVar.c = e.a();
                            a(context, vVar, e.a());
                            am.a(vVar, "/v3/iasdkauth", e);
                            str11 = string;
                            if (bArr == null) {
                                return bVar;
                            }
                            if (TextUtils.isEmpty(strA)) {
                                strA = w.a(bArr);
                            }
                            str12 = strA;
                            if (TextUtils.isEmpty(str12)) {
                                a(context, vVar, "result is null");
                            }
                            jSONObject = new JSONObject(str12);
                            if (jSONObject.has("status")) {
                                i2 = jSONObject.getInt("status");
                                if (i2 == 1) {
                                    f12969a = 1;
                                } else if (i2 == 0) {
                                    if (blVarA != null) {
                                        str13 = blVarA.c;
                                        str14 = blVarA.f12620d;
                                    } else {
                                        str13 = "authcsid";
                                        str14 = "authgsid";
                                    }
                                    w.a(context, str13, str14, jSONObject);
                                    f12969a = 0;
                                    if (jSONObject.has("info")) {
                                        b = jSONObject.getString("info");
                                    }
                                    String str110 = str6;
                                    am.a(vVar, "/v3/iasdkauth", b, str14, str13, jSONObject.has(str110) ? jSONObject.getString(str110) : "");
                                    if (f12969a == 0) {
                                        bVar.c = b;
                                        return bVar;
                                    }
                                }
                                str15 = str8;
                                if (jSONObject.has(str15)) {
                                    bVar.f12978d = jSONObject.getInt(str15);
                                }
                                str16 = str7;
                                if (w.a(jSONObject, str16)) {
                                    JSONObject jSONObject6 = jSONObject.getJSONObject(str16);
                                    a(context, vVar, str11, bVar, jSONObject6);
                                    jSONObject2 = jSONObject6.getJSONObject("15K");
                                    zA = a(jSONObject2.optString("isTargetAble"), false);
                                    if (a(jSONObject2.optString("able"), false)) {
                                        p.a();
                                        p.b(context);
                                    } else {
                                        p.a().a(context, zA);
                                    }
                                }
                            }
                            return bVar;
                        } catch (IllegalBlockSizeException e6) {
                            e = e6;
                            blVarA = null;
                            bArr = null;
                            a(context, vVar, e);
                            str11 = string;
                            if (bArr == null) {
                                return bVar;
                            }
                            if (TextUtils.isEmpty(strA)) {
                                strA = w.a(bArr);
                            }
                            str12 = strA;
                            if (TextUtils.isEmpty(str12)) {
                                a(context, vVar, "result is null");
                            }
                            jSONObject = new JSONObject(str12);
                            if (jSONObject.has("status")) {
                                i2 = jSONObject.getInt("status");
                                if (i2 == 1) {
                                    f12969a = 1;
                                } else if (i2 == 0) {
                                    if (blVarA != null) {
                                        str13 = blVarA.c;
                                        str14 = blVarA.f12620d;
                                    } else {
                                        str13 = "authcsid";
                                        str14 = "authgsid";
                                    }
                                    w.a(context, str13, str14, jSONObject);
                                    f12969a = 0;
                                    if (jSONObject.has("info")) {
                                        b = jSONObject.getString("info");
                                    }
                                    String str111 = str6;
                                    am.a(vVar, "/v3/iasdkauth", b, str14, str13, jSONObject.has(str111) ? jSONObject.getString(str111) : "");
                                    if (f12969a == 0) {
                                        bVar.c = b;
                                        return bVar;
                                    }
                                }
                                str15 = str8;
                                if (jSONObject.has(str15)) {
                                    bVar.f12978d = jSONObject.getInt(str15);
                                }
                                str16 = str7;
                                if (w.a(jSONObject, str16)) {
                                    JSONObject jSONObject7 = jSONObject.getJSONObject(str16);
                                    a(context, vVar, str11, bVar, jSONObject7);
                                    jSONObject2 = jSONObject7.getJSONObject("15K");
                                    zA = a(jSONObject2.optString("isTargetAble"), false);
                                    if (a(jSONObject2.optString("able"), false)) {
                                        p.a();
                                        p.b(context);
                                    } else {
                                        p.a().a(context, zA);
                                    }
                                }
                            }
                            return bVar;
                        } catch (Throwable th4) {
                            e = th4;
                            blVarA = null;
                            bArr = null;
                            am.b(e, str9, str10);
                            a(context, vVar, e);
                            str11 = string;
                            if (bArr == null) {
                                return bVar;
                            }
                            if (TextUtils.isEmpty(strA)) {
                                strA = w.a(bArr);
                            }
                            str12 = strA;
                            if (TextUtils.isEmpty(str12)) {
                                a(context, vVar, "result is null");
                            }
                            jSONObject = new JSONObject(str12);
                            if (jSONObject.has("status")) {
                                i2 = jSONObject.getInt("status");
                                if (i2 == 1) {
                                    f12969a = 1;
                                } else if (i2 == 0) {
                                    if (blVarA != null) {
                                        str13 = blVarA.c;
                                        str14 = blVarA.f12620d;
                                    } else {
                                        str13 = "authcsid";
                                        str14 = "authgsid";
                                    }
                                    w.a(context, str13, str14, jSONObject);
                                    f12969a = 0;
                                    if (jSONObject.has("info")) {
                                        b = jSONObject.getString("info");
                                    }
                                    String str112 = str6;
                                    am.a(vVar, "/v3/iasdkauth", b, str14, str13, jSONObject.has(str112) ? jSONObject.getString(str112) : "");
                                    if (f12969a == 0) {
                                        bVar.c = b;
                                        return bVar;
                                    }
                                }
                                str15 = str8;
                                if (jSONObject.has(str15)) {
                                    bVar.f12978d = jSONObject.getInt(str15);
                                }
                                str16 = str7;
                                if (w.a(jSONObject, str16)) {
                                    JSONObject jSONObject8 = jSONObject.getJSONObject(str16);
                                    a(context, vVar, str11, bVar, jSONObject8);
                                    jSONObject2 = jSONObject8.getJSONObject("15K");
                                    zA = a(jSONObject2.optString("isTargetAble"), false);
                                    if (a(jSONObject2.optString("able"), false)) {
                                        p.a();
                                        p.b(context);
                                    } else {
                                        p.a().a(context, zA);
                                    }
                                }
                            }
                            return bVar;
                        }
                    }
                } catch (j e7) {
                    e = e7;
                    str5 = str;
                } catch (Throwable unused3) {
                    str5 = str;
                }
            }
            try {
                d(context);
                str7 = SpeechUtility.TAG_RESOURCE_RESULT;
                bVar = bVar2;
                str8 = "ver";
                str9 = "at";
                str6 = "infocode";
                str10 = "lc";
                try {
                    blVarA = bf.a(new c(context, vVar, string, str2, str3, str4));
                    if (zIsEmpty) {
                        return bVar;
                    }
                    if (blVarA != null) {
                        try {
                            bArr = blVarA.f12619a;
                            try {
                                Map<String, List<String>> map = blVarA.b;
                                if (map != null && map.containsKey("lct") && (list = map.get("lct")) != null && list.size() > 0) {
                                    String str20 = list.get(0);
                                    if (!TextUtils.isEmpty(str20)) {
                                        long jLongValue = Long.valueOf(str20).longValue();
                                        bVar.f12979e = jLongValue;
                                        if (vVar != null && jLongValue != 0) {
                                            String strA2 = vVar.a();
                                            if (!TextUtils.isEmpty(strA2)) {
                                                b(strA2, bVar.f12979e);
                                            }
                                        }
                                    }
                                }
                            } catch (Throwable th5) {
                                try {
                                    am.b(th5, str9, "lct");
                                } catch (j e8) {
                                    e = e8;
                                    bVar.c = e.a();
                                    a(context, vVar, e.a());
                                    am.a(vVar, "/v3/iasdkauth", e);
                                } catch (IllegalBlockSizeException e9) {
                                    e = e9;
                                    a(context, vVar, e);
                                } catch (Throwable th6) {
                                    e = th6;
                                    am.b(e, str9, str10);
                                    a(context, vVar, e);
                                }
                            }
                        } catch (j e10) {
                            e = e10;
                            bArr = null;
                            bVar.c = e.a();
                            a(context, vVar, e.a());
                            am.a(vVar, "/v3/iasdkauth", e);
                        } catch (IllegalBlockSizeException e11) {
                            e = e11;
                            bArr = null;
                            a(context, vVar, e);
                        } catch (Throwable th7) {
                            e = th7;
                            bArr = null;
                            am.b(e, str9, str10);
                            a(context, vVar, e);
                        }
                    } else {
                        bArr = null;
                    }
                    byte[] bArr2 = new byte[16];
                    byte[] bArr3 = new byte[bArr.length - 16];
                    System.arraycopy(bArr, 0, bArr2, 0, 16);
                    System.arraycopy(bArr, 16, bArr3, 0, bArr.length - 16);
                    SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, w.c("EQUVT"));
                    Cipher cipher = Cipher.getInstance(w.c("CQUVTL0NCQy9QS0NTNVBhZGRpbmc"));
                    cipher.init(2, secretKeySpec, new IvParameterSpec(w.c()));
                    strA = w.a(cipher.doFinal(bArr3));
                    str11 = string;
                    if (bArr == null) {
                        return bVar;
                    }
                    if (TextUtils.isEmpty(strA)) {
                        strA = w.a(bArr);
                    }
                    str12 = strA;
                    if (TextUtils.isEmpty(str12)) {
                        a(context, vVar, "result is null");
                    }
                    jSONObject = new JSONObject(str12);
                    if (jSONObject.has("status")) {
                        i2 = jSONObject.getInt("status");
                        if (i2 == 1) {
                            f12969a = 1;
                        } else if (i2 == 0) {
                            if (blVarA != null) {
                                str13 = blVarA.c;
                                str14 = blVarA.f12620d;
                            } else {
                                str13 = "authcsid";
                                str14 = "authgsid";
                            }
                            w.a(context, str13, str14, jSONObject);
                            f12969a = 0;
                            if (jSONObject.has("info")) {
                                b = jSONObject.getString("info");
                            }
                            String str113 = str6;
                            am.a(vVar, "/v3/iasdkauth", b, str14, str13, jSONObject.has(str113) ? jSONObject.getString(str113) : "");
                            if (f12969a == 0) {
                                bVar.c = b;
                                return bVar;
                            }
                        }
                        str15 = str8;
                        if (jSONObject.has(str15)) {
                            bVar.f12978d = jSONObject.getInt(str15);
                        }
                        str16 = str7;
                        if (w.a(jSONObject, str16)) {
                            JSONObject jSONObject9 = jSONObject.getJSONObject(str16);
                            a(context, vVar, str11, bVar, jSONObject9);
                            jSONObject2 = jSONObject9.getJSONObject("15K");
                            zA = a(jSONObject2.optString("isTargetAble"), false);
                            if (a(jSONObject2.optString("able"), false)) {
                                p.a();
                                p.b(context);
                            } else {
                                p.a().a(context, zA);
                            }
                        }
                    }
                    return bVar;
                } catch (j e12) {
                    e = e12;
                    str5 = string;
                    throw e;
                } catch (Throwable unused4) {
                    throw new j(AMapException.ERROR_UNKNOWN);
                }
            } catch (j e13) {
                e = e13;
                str6 = "infocode";
                str7 = SpeechUtility.TAG_RESOURCE_RESULT;
                str8 = "ver";
                bVar = bVar2;
                str9 = "at";
                str10 = "lc";
            } catch (Throwable unused5) {
                str6 = "infocode";
                str7 = SpeechUtility.TAG_RESOURCE_RESULT;
                str8 = "ver";
                bVar = bVar2;
                str9 = "at";
                str10 = "lc";
                throw new j(AMapException.ERROR_UNKNOWN);
            }
        } catch (j e14) {
            e = e14;
            str5 = str;
            str6 = "infocode";
            str7 = SpeechUtility.TAG_RESOURCE_RESULT;
            str8 = "ver";
            bVar = bVar2;
            str9 = "at";
            str10 = "lc";
        } catch (IllegalBlockSizeException e15) {
            e = e15;
            str5 = str;
            str6 = "infocode";
            str7 = SpeechUtility.TAG_RESOURCE_RESULT;
            str8 = "ver";
            bVar = bVar2;
            str9 = "at";
            str10 = "lc";
        } catch (Throwable th8) {
            e = th8;
            str5 = str;
            str6 = "infocode";
            str7 = SpeechUtility.TAG_RESOURCE_RESULT;
            str8 = "ver";
            bVar = bVar2;
            str9 = "at";
            str10 = "lc";
        }
    }

    private static String b(String str, String str2) {
        return str2 + "_" + r.a(str.getBytes());
    }

    public static void b(Context context) {
        if (context == null) {
            return;
        }
        o = au.a(context, "open_common", "a2", true);
    }

    public static void b(bi.c cVar) {
        synchronized (B) {
            boolean z2 = false;
            for (int i2 = 0; i2 < B.size(); i2++) {
                bi.a aVar = B.get(i2);
                if (cVar.c.equals(aVar.b) && cVar.f12586d.equals(aVar.f12580e)) {
                    int i3 = cVar.m;
                    int i4 = aVar.f12581f;
                    if (i3 == i4) {
                        if (i4 == 1) {
                            aVar.i = ((((long) aVar.j.get()) * aVar.i) + cVar.f12588f) / ((long) (aVar.j.get() + 1));
                        }
                        aVar.j.getAndIncrement();
                        z2 = true;
                    }
                }
            }
            if (!z2) {
                B.add(new bi.a(cVar));
            }
            bi.a();
        }
    }

    public static synchronized void b(String str) {
        if (u == null) {
            return;
        }
        if (u.containsKey(str)) {
            u.remove(str);
        }
    }

    private static synchronized void b(String str, long j2) {
        try {
            if (v != null && v.containsKey(str)) {
                if (t == null) {
                    t = new ConcurrentHashMap<>(8);
                }
                t.put(str, Long.valueOf(j2));
                Context context = c;
                if (context != null) {
                    SharedPreferences.Editor editorA = au.a(context, "open_common");
                    au.a(editorA, str, j2);
                    au.a(editorA);
                }
            }
        } catch (Throwable th) {
            aj.a(th, "at", "ucut");
        }
    }

    public static synchronized void b(String str, boolean z2) {
        a(str, z2, (String) null, (String) null, (String) null);
    }

    public static boolean b() {
        Integer num;
        Context context = c;
        if (context == null) {
            return false;
        }
        String strT = n.t(context);
        return (TextUtils.isEmpty(strT) || (num = q.get(strT.toUpperCase())) == null || num.intValue() != 2) ? false : true;
    }

    public static synchronized long c(String str) {
        try {
            if (t == null) {
                t = new ConcurrentHashMap<>(8);
            }
            if (t.containsKey(str)) {
                return t.get(str).longValue();
            }
        } catch (Throwable th) {
            aj.a(th, "at", "glcut");
        }
        return 0L;
    }

    private static void c(Context context) {
        if (context == null) {
            return;
        }
        f12972f = au.a(context, "open_common", "a13", true);
        f12974h = au.a(context, "open_common", "a6", true);
        f12973g = au.a(context, "open_common", "a7", false);
        f12971e = au.a(context, "open_common", "a8", 5000);
        x = au.a(context, "open_common", "a9", 3);
        i = au.a(context, "open_common", "a10", false);
        y = au.a(context, "open_common", "a11", 3);
        j = au.a(context, "open_common", "a12", false);
    }

    public static void c(bi.c cVar) {
        if (cVar != null && j) {
            synchronized (D) {
                D.offer(cVar);
                bi.a();
            }
        }
    }

    public static boolean c() {
        Integer num;
        Context context = c;
        if (context == null) {
            return false;
        }
        String strT = n.t(context);
        return (TextUtils.isEmpty(strT) || (num = q.get(strT.toUpperCase())) == null || num.intValue() < 2) ? false : true;
    }

    public static void d() {
        try {
            e eVarA = a(c, "IPV6_CONFIG_NAME", "open_common");
            String strA = w.a(System.currentTimeMillis(), "yyyyMMdd");
            if (!strA.equals(eVarA.b)) {
                eVarA.a(strA);
                eVarA.c.set(0);
            }
            eVarA.c.incrementAndGet();
            a(c, "IPV6_CONFIG_NAME", "open_common", eVarA);
        } catch (Throwable unused) {
        }
    }

    private static void d(Context context) {
        try {
            if (w) {
                return;
            }
            af.f12490d = au.a(context, "open_common", "a4", true);
            af.f12491e = au.a(context, "open_common", "a5", true);
            w = true;
        } catch (Throwable unused) {
        }
    }

    public static boolean d(String str) {
        e eVarA;
        try {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            if (!f12972f) {
                return false;
            }
            if (!(z.get(str) == null)) {
                return false;
            }
            Context context = c;
            return context == null || (eVarA = a(context, b(str, "a14"), "open_common")) == null || eVarA.a() < x;
        } catch (Throwable unused) {
            return true;
        }
    }

    public static void e() {
        if (f12970d) {
            return;
        }
        try {
            Context context = c;
            if (context == null) {
                return;
            }
            f12970d = true;
            p.a().a(context);
            b(context);
            c(context);
            f.f12988a = au.a(context, "open_common", "ucf", f.f12988a);
            f.b = au.a(context, "open_common", "fsv2", f.b);
            f.c = au.a(context, "open_common", "usc", f.c);
            f.f12989d = au.a(context, "open_common", "umv", f.f12989d);
            f.f12990e = au.a(context, "open_common", "ust", f.f12990e);
            f.f12991f = au.a(context, "open_common", "ustv", f.f12991f);
        } catch (Throwable unused) {
        }
    }

    public static boolean e(String str) {
        e eVarA;
        try {
            if (TextUtils.isEmpty(str) || !i) {
                return false;
            }
            if (!(A.get(str) == null)) {
                return false;
            }
            Context context = c;
            if (context == null || (eVarA = a(context, b(str, "a15"), "open_common")) == null || eVarA.a() < y) {
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static bi.a f() {
        if (C) {
            return null;
        }
        synchronized (B) {
            if (C) {
                return null;
            }
            Collections.sort(B);
            if (B.size() <= 0) {
                return null;
            }
            bi.a aVarClone = B.get(0).clone();
            C = true;
            return aVarClone;
        }
    }

    public static bi.c g() {
        synchronized (D) {
            bi.c cVarPoll = D.poll();
            if (cVarPoll != null) {
                return cVarPoll;
            }
            return null;
        }
    }

    private static void i() {
        Map<String, Integer> map;
        String str;
        Integer numValueOf;
        try {
            Context context = c;
            if (context != null) {
                String strT = n.t(context);
                if (!TextUtils.isEmpty(r) && !TextUtils.isEmpty(strT) && r.equals(strT) && System.currentTimeMillis() - s < DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) {
                    return;
                }
                if (!TextUtils.isEmpty(strT)) {
                    r = strT;
                }
            } else if (System.currentTimeMillis() - s < 10000) {
                return;
            }
            s = System.currentTimeMillis();
            q.clear();
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (!networkInterface.getInterfaceAddresses().isEmpty()) {
                    String displayName = networkInterface.getDisplayName();
                    int i2 = 0;
                    Iterator<InterfaceAddress> it = networkInterface.getInterfaceAddresses().iterator();
                    while (it.hasNext()) {
                        InetAddress address = it.next().getAddress();
                        if (address instanceof Inet6Address) {
                            if (!a((Inet6Address) address)) {
                                i2 |= 2;
                            }
                        } else if (address instanceof Inet4Address) {
                            Inet4Address inet4Address = (Inet4Address) address;
                            if (!a(inet4Address) && !inet4Address.getHostAddress().startsWith(w.c("FMTkyLjE2OC40My4"))) {
                                i2 |= 1;
                            }
                        }
                    }
                    if (i2 != 0) {
                        if (displayName != null && displayName.startsWith("wlan")) {
                            map = q;
                            str = "WIFI";
                            numValueOf = Integer.valueOf(i2);
                        } else if (displayName != null && displayName.startsWith("rmnet")) {
                            map = q;
                            str = "MOBILE";
                            numValueOf = Integer.valueOf(i2);
                        }
                        map.put(str, numValueOf);
                    }
                }
            }
        } catch (Throwable th) {
            aj.a(th, "at", "ipstack");
        }
    }
}
