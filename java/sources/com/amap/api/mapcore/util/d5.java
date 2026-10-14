package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.amap.api.maps.AMapException;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.speech.VoiceWakeuperAidl;
import com.loc.ak;
import com.tencent.connect.common.Constants;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.URLDecoder;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Vector;
import java.util.concurrent.atomic.AtomicInteger;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class d5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f10655a = -1;
    public static String b = "";
    private static Context c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile boolean f10656d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Vector<c> f10657e = new Vector<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Map<String, Integer> f10658f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f10659g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static long f10660h = 0;

    public static class a {
        public c A;
        public b B;
        public b C;
        public b D;
        public b E;
        public f F;
        private boolean G;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f10661a;

        @Deprecated
        public JSONObject b;

        @Deprecated
        public JSONObject c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Deprecated
        public JSONObject f10662d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Deprecated
        public JSONObject f10663e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @Deprecated
        public JSONObject f10664f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @Deprecated
        public JSONObject f10665g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @Deprecated
        public JSONObject f10666h;

        @Deprecated
        public JSONObject i;

        @Deprecated
        public JSONObject j;

        @Deprecated
        public JSONObject k;

        @Deprecated
        public JSONObject l;

        @Deprecated
        public JSONObject m;

        @Deprecated
        public JSONObject n;

        @Deprecated
        public JSONObject o;

        @Deprecated
        public JSONObject p;

        @Deprecated
        public JSONObject q;

        @Deprecated
        public JSONObject r;

        @Deprecated
        public JSONObject s;

        @Deprecated
        public JSONObject t;

        @Deprecated
        public JSONObject u;
        public JSONObject v;
        public C0187a w;
        public d x;
        public e y;

        @Deprecated
        public c z;

        /* JADX INFO: renamed from: com.amap.api.mapcore.util.d5$a$a, reason: collision with other inner class name */
        public static class C0187a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f10667a;
            public JSONObject b;
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f10668a;
            public String b;
            public String c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f10669d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f10670e;
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f10671a;
            public String b;
        }

        public static class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f10672a;
            public String b;
            public String c;
        }

        public static class e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f10673a;
        }

        public static class f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f10674a;
            public boolean b;
            public boolean c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f10675d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f10676e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f10677f;
        }
    }

    static class b extends g7 {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f10678f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Map<String, String> f10679g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f10680h;

        b(Context context, m5 m5Var, String str, Map<String, String> map) {
            super(context, m5Var);
            this.f10678f = str;
            this.f10679g = map;
            this.f10680h = Build.VERSION.SDK_INT != 19;
        }

        private Map<String, String> r() {
            String strA0 = g5.a0(this.f10824d);
            if (TextUtils.isEmpty(strA0)) {
                strA0 = g5.N(this.f10824d);
            }
            if (!TextUtils.isEmpty(strA0)) {
                strA0 = k5.d(new StringBuilder(strA0).reverse().toString());
            }
            HashMap map = new HashMap();
            map.put("authkey", this.f10678f);
            map.put("plattype", "android");
            map.put("product", this.f10825e.a());
            map.put("version", this.f10825e.e());
            map.put("output", "json");
            map.put("androidversion", Build.VERSION.SDK_INT + "");
            map.put("deviceId", strA0);
            map.put("manufacture", Build.MANUFACTURER);
            Map<String, String> map2 = this.f10679g;
            if (map2 != null && !map2.isEmpty()) {
                map.putAll(this.f10679g);
            }
            map.put("abitype", n5.d(this.f10824d));
            map.put("ext", this.f10825e.i());
            return map;
        }

        @Override // com.amap.api.mapcore.util.g7
        public byte[] g() {
            return null;
        }

        @Override // com.amap.api.mapcore.util.k7
        public Map<String, String> getRequestHead() {
            return null;
        }

        @Override // com.amap.api.mapcore.util.k7
        public String getURL() {
            return this.f10680h ? "https://restapi.amap.com/v3/iasdkauth" : "http://restapi.amap.com/v3/iasdkauth";
        }

        @Override // com.amap.api.mapcore.util.g7
        public byte[] h() {
            return n5.o(n5.r(r()));
        }

        @Override // com.amap.api.mapcore.util.g7
        protected String i() {
            return "3.0";
        }

        public boolean q() {
            return this.f10680h;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f10681a;
        private String b;
        private AtomicInteger c;

        public c(String str, String str2, int i) {
            this.f10681a = str;
            this.b = str2;
            this.c = new AtomicInteger(i);
        }

        public static c d(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new c(jSONObject.optString("a"), jSONObject.optString("f"), jSONObject.optInt(ak.f12508g));
            } catch (Throwable unused) {
                return null;
            }
        }

        public int a() {
            AtomicInteger atomicInteger = this.c;
            if (atomicInteger == null) {
                return 0;
            }
            return atomicInteger.get();
        }

        public void c(String str) {
            this.b = str;
        }

        public String e() {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("a", this.f10681a);
                jSONObject.put("f", this.b);
                jSONObject.put(ak.f12508g, this.c.get());
                return jSONObject.toString();
            } catch (Throwable unused) {
                return "";
            }
        }
    }

    public static void A() {
        try {
            Context context = c;
            if (context != null) {
                String strZ = g5.Z(context);
                if (!TextUtils.isEmpty(f10659g) && !TextUtils.isEmpty(strZ) && f10659g.equals(strZ) && System.currentTimeMillis() - f10660h < DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) {
                    return;
                }
                if (!TextUtils.isEmpty(strZ)) {
                    f10659g = strZ;
                }
            } else if (System.currentTimeMillis() - f10660h < 10000) {
                return;
            }
            f10660h = System.currentTimeMillis();
            f10658f.clear();
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (!networkInterface.getInterfaceAddresses().isEmpty()) {
                    String displayName = networkInterface.getDisplayName();
                    int i = 0;
                    Iterator<InterfaceAddress> it = networkInterface.getInterfaceAddresses().iterator();
                    while (it.hasNext()) {
                        InetAddress address = it.next().getAddress();
                        if (address instanceof Inet6Address) {
                            if (!y((Inet6Address) address)) {
                                i |= 2;
                            }
                        } else if (address instanceof Inet4Address) {
                            Inet4Address inet4Address = (Inet4Address) address;
                            if (!y(inet4Address) && !inet4Address.getHostAddress().startsWith(n5.t("FMTkyLjE2OC40My4"))) {
                                i |= 1;
                            }
                        }
                    }
                    if (i != 0) {
                        if (displayName != null && displayName.startsWith("wlan")) {
                            f10658f.put("WIFI", Integer.valueOf(i));
                        } else if (displayName != null && displayName.startsWith("rmnet")) {
                            f10658f.put("MOBILE", Integer.valueOf(i));
                        }
                    }
                }
            }
        } catch (Throwable th) {
            b6.e(th, "at", "ipstack");
        }
    }

    public static void B(Context context) {
        if (context == null) {
            return;
        }
        f10656d = new s6("IPV6_CONFIG_NAME").e(context, "k", true);
    }

    private static void C(Context context, JSONObject jSONObject) {
        boolean zX;
        if (jSONObject == null || (zX = x(jSONObject.optString("able"), false)) == f10656d) {
            return;
        }
        f10656d = zX;
        o(context, zX);
    }

    public static boolean D() {
        Integer num;
        Context context = c;
        if (context == null) {
            return false;
        }
        String strZ = g5.Z(context);
        return (TextUtils.isEmpty(strZ) || (num = f10658f.get(strZ.toUpperCase())) == null || num.intValue() != 2) ? false : true;
    }

    public static boolean E() {
        Integer num;
        Context context = c;
        if (context == null) {
            return false;
        }
        String strZ = g5.Z(context);
        return (TextUtils.isEmpty(strZ) || (num = f10658f.get(strZ.toUpperCase())) == null || num.intValue() < 2) ? false : true;
    }

    private static void F() {
        c cVarZ = z(c, "IPV6_CONFIG_NAME");
        String strC = n5.c(System.currentTimeMillis(), "yyyyMMdd");
        if (!strC.equals(cVarZ.b)) {
            cVarZ.c(strC);
            cVarZ.c.set(0);
        }
        cVarZ.c.incrementAndGet();
        i(c, cVarZ);
    }

    public static a a(Context context, m5 m5Var, String str, Map<String, String> map) {
        return b(context, m5Var, str, map, false);
    }

    public static a b(Context context, m5 m5Var, String str, Map<String, String> map, boolean z) {
        return c(context, m5Var, str, map, z, "DEF_ID");
    }

    /* JADX WARN: Code duplicated, block: B:62:0x00de A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:63:0x00df  */
    /* JADX WARN: Code duplicated, block: B:65:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:68:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:71:0x00ff A[Catch: all -> 0x018b, TryCatch #4 {all -> 0x018b, blocks: (B:69:0x00f4, B:71:0x00ff, B:73:0x0107, B:95:0x0157, B:97:0x015d, B:99:0x016a, B:100:0x0187, B:94:0x0154, B:77:0x0112, B:78:0x0116, B:80:0x0121, B:81:0x0127, B:83:0x012f, B:85:0x0136, B:87:0x0144, B:89:0x0149, B:91:0x014f), top: B:106:0x00f4, inners: #10 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0107 A[Catch: all -> 0x018b, TryCatch #4 {all -> 0x018b, blocks: (B:69:0x00f4, B:71:0x00ff, B:73:0x0107, B:95:0x0157, B:97:0x015d, B:99:0x016a, B:100:0x0187, B:94:0x0154, B:77:0x0112, B:78:0x0116, B:80:0x0121, B:81:0x0127, B:83:0x012f, B:85:0x0136, B:87:0x0144, B:89:0x0149, B:91:0x014f), top: B:106:0x00f4, inners: #10 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x010a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x010c  */
    /* JADX WARN: Code duplicated, block: B:77:0x0112 A[Catch: all -> 0x018b, TryCatch #4 {all -> 0x018b, blocks: (B:69:0x00f4, B:71:0x00ff, B:73:0x0107, B:95:0x0157, B:97:0x015d, B:99:0x016a, B:100:0x0187, B:94:0x0154, B:77:0x0112, B:78:0x0116, B:80:0x0121, B:81:0x0127, B:83:0x012f, B:85:0x0136, B:87:0x0144, B:89:0x0149, B:91:0x014f), top: B:106:0x00f4, inners: #10 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0121 A[Catch: all -> 0x018b, TryCatch #4 {all -> 0x018b, blocks: (B:69:0x00f4, B:71:0x00ff, B:73:0x0107, B:95:0x0157, B:97:0x015d, B:99:0x016a, B:100:0x0187, B:94:0x0154, B:77:0x0112, B:78:0x0116, B:80:0x0121, B:81:0x0127, B:83:0x012f, B:85:0x0136, B:87:0x0144, B:89:0x0149, B:91:0x014f), top: B:106:0x00f4, inners: #10 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x012f A[Catch: all -> 0x018b, TryCatch #4 {all -> 0x018b, blocks: (B:69:0x00f4, B:71:0x00ff, B:73:0x0107, B:95:0x0157, B:97:0x015d, B:99:0x016a, B:100:0x0187, B:94:0x0154, B:77:0x0112, B:78:0x0116, B:80:0x0121, B:81:0x0127, B:83:0x012f, B:85:0x0136, B:87:0x0144, B:89:0x0149, B:91:0x014f), top: B:106:0x00f4, inners: #10 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0135  */
    /* JADX WARN: Code duplicated, block: B:87:0x0144 A[Catch: all -> 0x018b, TRY_LEAVE, TryCatch #4 {all -> 0x018b, blocks: (B:69:0x00f4, B:71:0x00ff, B:73:0x0107, B:95:0x0157, B:97:0x015d, B:99:0x016a, B:100:0x0187, B:94:0x0154, B:77:0x0112, B:78:0x0116, B:80:0x0121, B:81:0x0127, B:83:0x012f, B:85:0x0136, B:87:0x0144, B:89:0x0149, B:91:0x014f), top: B:106:0x00f4, inners: #10 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x014f A[Catch: all -> 0x0153, TRY_LEAVE, TryCatch #10 {all -> 0x0153, blocks: (B:89:0x0149, B:91:0x014f), top: B:107:0x0149, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x015d A[Catch: all -> 0x018b, TryCatch #4 {all -> 0x018b, blocks: (B:69:0x00f4, B:71:0x00ff, B:73:0x0107, B:95:0x0157, B:97:0x015d, B:99:0x016a, B:100:0x0187, B:94:0x0154, B:77:0x0112, B:78:0x0116, B:80:0x0121, B:81:0x0127, B:83:0x012f, B:85:0x0136, B:87:0x0144, B:89:0x0149, B:91:0x014f), top: B:106:0x00f4, inners: #10 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x016a A[Catch: all -> 0x018b, TryCatch #4 {all -> 0x018b, blocks: (B:69:0x00f4, B:71:0x00ff, B:73:0x0107, B:95:0x0157, B:97:0x015d, B:99:0x016a, B:100:0x0187, B:94:0x0154, B:77:0x0112, B:78:0x0116, B:80:0x0121, B:81:0x0127, B:83:0x012f, B:85:0x0136, B:87:0x0144, B:89:0x0149, B:91:0x014f), top: B:106:0x00f4, inners: #10 }] */
    public static a c(Context context, m5 m5Var, String str, Map<String, String> map, boolean z, String str2) throws gb, BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        m7 m7VarB;
        String str3;
        byte[] bArr;
        String strG;
        JSONObject jSONObject;
        int i;
        String str4;
        String str5;
        String string;
        JSONObject jSONObject2;
        a aVar = new a();
        aVar.v = new JSONObject();
        i5.a().c(context);
        B(context);
        if (context != null) {
            c = context.getApplicationContext();
        }
        try {
            try {
                f7 f7Var = new f7();
                try {
                    StringBuilder sb = new StringBuilder();
                    try {
                        sb.append(str);
                        sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                        sb.append("15K");
                        sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                        sb.append("16H");
                        sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                        sb.append("17I");
                        sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                        sb.append("17S");
                        String string2 = sb.toString();
                        try {
                            b bVar = new b(context, m5Var, string2, map);
                            m7VarB = f7Var.b(bVar, bVar.q());
                            if (m7VarB != null) {
                                try {
                                    bArr = m7VarB.f11008a;
                                } catch (gb e2) {
                                    e = e2;
                                    str3 = string2;
                                    bArr = null;
                                    aVar.f10661a = e.a();
                                    j(context, m5Var, e.a());
                                    e6.j(m5Var, "/v3/iasdkauth", e);
                                    strG = null;
                                    if (bArr == null) {
                                        return aVar;
                                    }
                                    if (TextUtils.isEmpty(strG)) {
                                        strG = n5.g(bArr);
                                    }
                                    if (TextUtils.isEmpty(strG)) {
                                        j(context, m5Var, "result is null");
                                    }
                                    try {
                                        jSONObject = new JSONObject(strG);
                                        if (jSONObject.has("status")) {
                                            i = jSONObject.getInt("status");
                                            if (i == 1) {
                                                f10655a = 1;
                                            } else if (i == 0) {
                                                str4 = "authcsid";
                                                str5 = "authgsid";
                                                if (m7VarB != null) {
                                                    str4 = m7VarB.c;
                                                    str5 = m7VarB.f11009d;
                                                }
                                                n5.i(context, str4, str5, jSONObject);
                                                f10655a = 0;
                                                if (jSONObject.has("info")) {
                                                    b = jSONObject.getString("info");
                                                }
                                                if (jSONObject.has("infocode")) {
                                                    string = jSONObject.getString("infocode");
                                                } else {
                                                    string = "";
                                                }
                                                e6.k(m5Var, "/v3/iasdkauth", b, str5, str4, string);
                                                if (f10655a == 0) {
                                                    aVar.f10661a = b;
                                                    return aVar;
                                                }
                                            }
                                            try {
                                                if (jSONObject.has("ver")) {
                                                    jSONObject.getInt("ver");
                                                }
                                            } catch (Throwable th) {
                                                b6.e(th, "at", "lc");
                                            }
                                            if (n5.m(jSONObject, SpeechUtility.TAG_RESOURCE_RESULT)) {
                                                jSONObject2 = jSONObject.getJSONObject(SpeechUtility.TAG_RESOURCE_RESULT);
                                                m(context, str3, aVar, jSONObject2);
                                                if (n5.m(jSONObject2, "17I")) {
                                                    JSONObject jSONObject3 = jSONObject2.getJSONObject("17I");
                                                    boolean zX = x(jSONObject3.optString("na"), false);
                                                    boolean zX2 = x(jSONObject3.optString("aa"), false);
                                                    y5.f11383f = zX;
                                                    y5.f11384g = zX2;
                                                }
                                                n(context, jSONObject2);
                                            }
                                        }
                                    } catch (Throwable th2) {
                                        b6.e(th2, "at", "lc");
                                    }
                                    return aVar;
                                } catch (IllegalBlockSizeException e3) {
                                    e = e3;
                                    str3 = string2;
                                    bArr = null;
                                    k(context, m5Var, e);
                                    strG = null;
                                    if (bArr == null) {
                                        return aVar;
                                    }
                                    if (TextUtils.isEmpty(strG)) {
                                        strG = n5.g(bArr);
                                    }
                                    if (TextUtils.isEmpty(strG)) {
                                        j(context, m5Var, "result is null");
                                    }
                                    jSONObject = new JSONObject(strG);
                                    if (jSONObject.has("status")) {
                                        i = jSONObject.getInt("status");
                                        if (i == 1) {
                                            f10655a = 1;
                                        } else if (i == 0) {
                                            str4 = "authcsid";
                                            str5 = "authgsid";
                                            if (m7VarB != null) {
                                                str4 = m7VarB.c;
                                                str5 = m7VarB.f11009d;
                                            }
                                            n5.i(context, str4, str5, jSONObject);
                                            f10655a = 0;
                                            if (jSONObject.has("info")) {
                                                b = jSONObject.getString("info");
                                            }
                                            if (jSONObject.has("infocode")) {
                                                string = jSONObject.getString("infocode");
                                            } else {
                                                string = "";
                                            }
                                            e6.k(m5Var, "/v3/iasdkauth", b, str5, str4, string);
                                            if (f10655a == 0) {
                                                aVar.f10661a = b;
                                                return aVar;
                                            }
                                        }
                                        if (jSONObject.has("ver")) {
                                            jSONObject.getInt("ver");
                                        }
                                        if (n5.m(jSONObject, SpeechUtility.TAG_RESOURCE_RESULT)) {
                                            jSONObject2 = jSONObject.getJSONObject(SpeechUtility.TAG_RESOURCE_RESULT);
                                            m(context, str3, aVar, jSONObject2);
                                            if (n5.m(jSONObject2, "17I")) {
                                                JSONObject jSONObject4 = jSONObject2.getJSONObject("17I");
                                                boolean zX3 = x(jSONObject4.optString("na"), false);
                                                boolean zX4 = x(jSONObject4.optString("aa"), false);
                                                y5.f11383f = zX3;
                                                y5.f11384g = zX4;
                                            }
                                            n(context, jSONObject2);
                                        }
                                    }
                                    return aVar;
                                } catch (Throwable th3) {
                                    th = th3;
                                    str3 = string2;
                                    bArr = null;
                                    e6.r(th, "at", "lc");
                                    k(context, m5Var, th);
                                    strG = null;
                                    if (bArr == null) {
                                        return aVar;
                                    }
                                    if (TextUtils.isEmpty(strG)) {
                                        strG = n5.g(bArr);
                                    }
                                    if (TextUtils.isEmpty(strG)) {
                                        j(context, m5Var, "result is null");
                                    }
                                    jSONObject = new JSONObject(strG);
                                    if (jSONObject.has("status")) {
                                        i = jSONObject.getInt("status");
                                        if (i == 1) {
                                            f10655a = 1;
                                        } else if (i == 0) {
                                            str4 = "authcsid";
                                            str5 = "authgsid";
                                            if (m7VarB != null) {
                                                str4 = m7VarB.c;
                                                str5 = m7VarB.f11009d;
                                            }
                                            n5.i(context, str4, str5, jSONObject);
                                            f10655a = 0;
                                            if (jSONObject.has("info")) {
                                                b = jSONObject.getString("info");
                                            }
                                            if (jSONObject.has("infocode")) {
                                                string = jSONObject.getString("infocode");
                                            } else {
                                                string = "";
                                            }
                                            e6.k(m5Var, "/v3/iasdkauth", b, str5, str4, string);
                                            if (f10655a == 0) {
                                                aVar.f10661a = b;
                                                return aVar;
                                            }
                                        }
                                        if (jSONObject.has("ver")) {
                                            jSONObject.getInt("ver");
                                        }
                                        if (n5.m(jSONObject, SpeechUtility.TAG_RESOURCE_RESULT)) {
                                            jSONObject2 = jSONObject.getJSONObject(SpeechUtility.TAG_RESOURCE_RESULT);
                                            m(context, str3, aVar, jSONObject2);
                                            if (n5.m(jSONObject2, "17I")) {
                                                JSONObject jSONObject5 = jSONObject2.getJSONObject("17I");
                                                boolean zX5 = x(jSONObject5.optString("na"), false);
                                                boolean zX6 = x(jSONObject5.optString("aa"), false);
                                                y5.f11383f = zX5;
                                                y5.f11384g = zX6;
                                            }
                                            n(context, jSONObject2);
                                        }
                                    }
                                    return aVar;
                                }
                            } else {
                                bArr = null;
                            }
                            try {
                                str3 = string2;
                                strG = f(bArr);
                            } catch (gb e4) {
                                e = e4;
                                str3 = string2;
                                aVar.f10661a = e.a();
                                j(context, m5Var, e.a());
                                e6.j(m5Var, "/v3/iasdkauth", e);
                                strG = null;
                            } catch (IllegalBlockSizeException e5) {
                                e = e5;
                                str3 = string2;
                                k(context, m5Var, e);
                                strG = null;
                            } catch (Throwable th4) {
                                th = th4;
                                str3 = string2;
                                e6.r(th, "at", "lc");
                                k(context, m5Var, th);
                                strG = null;
                            }
                        } catch (gb e6) {
                            throw e6;
                        } catch (Throwable unused) {
                            throw new gb(AMapException.ERROR_UNKNOWN);
                        }
                    } catch (gb e7) {
                        throw e7;
                    } catch (Throwable unused2) {
                    }
                } catch (gb e8) {
                    throw e8;
                } catch (Throwable unused3) {
                }
            } catch (gb e9) {
                e = e9;
                str3 = str;
                m7VarB = null;
                bArr = null;
                aVar.f10661a = e.a();
                j(context, m5Var, e.a());
                e6.j(m5Var, "/v3/iasdkauth", e);
                strG = null;
                if (bArr == null) {
                    return aVar;
                }
                if (TextUtils.isEmpty(strG)) {
                    strG = n5.g(bArr);
                }
                if (TextUtils.isEmpty(strG)) {
                    j(context, m5Var, "result is null");
                }
                jSONObject = new JSONObject(strG);
                if (jSONObject.has("status")) {
                    i = jSONObject.getInt("status");
                    if (i == 1) {
                        f10655a = 1;
                    } else if (i == 0) {
                        str4 = "authcsid";
                        str5 = "authgsid";
                        if (m7VarB != null) {
                            str4 = m7VarB.c;
                            str5 = m7VarB.f11009d;
                        }
                        n5.i(context, str4, str5, jSONObject);
                        f10655a = 0;
                        if (jSONObject.has("info")) {
                            b = jSONObject.getString("info");
                        }
                        if (jSONObject.has("infocode")) {
                            string = jSONObject.getString("infocode");
                        } else {
                            string = "";
                        }
                        e6.k(m5Var, "/v3/iasdkauth", b, str5, str4, string);
                        if (f10655a == 0) {
                            aVar.f10661a = b;
                            return aVar;
                        }
                    }
                    if (jSONObject.has("ver")) {
                        jSONObject.getInt("ver");
                    }
                    if (n5.m(jSONObject, SpeechUtility.TAG_RESOURCE_RESULT)) {
                        jSONObject2 = jSONObject.getJSONObject(SpeechUtility.TAG_RESOURCE_RESULT);
                        m(context, str3, aVar, jSONObject2);
                        if (n5.m(jSONObject2, "17I")) {
                            JSONObject jSONObject6 = jSONObject2.getJSONObject("17I");
                            boolean zX7 = x(jSONObject6.optString("na"), false);
                            boolean zX8 = x(jSONObject6.optString("aa"), false);
                            y5.f11383f = zX7;
                            y5.f11384g = zX8;
                        }
                        n(context, jSONObject2);
                    }
                }
                return aVar;
            } catch (IllegalBlockSizeException e10) {
                e = e10;
                str3 = str;
                m7VarB = null;
                bArr = null;
                k(context, m5Var, e);
                strG = null;
                if (bArr == null) {
                    return aVar;
                }
                if (TextUtils.isEmpty(strG)) {
                    strG = n5.g(bArr);
                }
                if (TextUtils.isEmpty(strG)) {
                    j(context, m5Var, "result is null");
                }
                jSONObject = new JSONObject(strG);
                if (jSONObject.has("status")) {
                    i = jSONObject.getInt("status");
                    if (i == 1) {
                        f10655a = 1;
                    } else if (i == 0) {
                        str4 = "authcsid";
                        str5 = "authgsid";
                        if (m7VarB != null) {
                            str4 = m7VarB.c;
                            str5 = m7VarB.f11009d;
                        }
                        n5.i(context, str4, str5, jSONObject);
                        f10655a = 0;
                        if (jSONObject.has("info")) {
                            b = jSONObject.getString("info");
                        }
                        if (jSONObject.has("infocode")) {
                            string = jSONObject.getString("infocode");
                        } else {
                            string = "";
                        }
                        e6.k(m5Var, "/v3/iasdkauth", b, str5, str4, string);
                        if (f10655a == 0) {
                            aVar.f10661a = b;
                            return aVar;
                        }
                    }
                    if (jSONObject.has("ver")) {
                        jSONObject.getInt("ver");
                    }
                    if (n5.m(jSONObject, SpeechUtility.TAG_RESOURCE_RESULT)) {
                        jSONObject2 = jSONObject.getJSONObject(SpeechUtility.TAG_RESOURCE_RESULT);
                        m(context, str3, aVar, jSONObject2);
                        if (n5.m(jSONObject2, "17I")) {
                            JSONObject jSONObject7 = jSONObject2.getJSONObject("17I");
                            boolean zX9 = x(jSONObject7.optString("na"), false);
                            boolean zX10 = x(jSONObject7.optString("aa"), false);
                            y5.f11383f = zX9;
                            y5.f11384g = zX10;
                        }
                        n(context, jSONObject2);
                    }
                }
                return aVar;
            } catch (Throwable th5) {
                th = th5;
                str3 = str;
                m7VarB = null;
                bArr = null;
                e6.r(th, "at", "lc");
                k(context, m5Var, th);
                strG = null;
                if (bArr == null) {
                    return aVar;
                }
                if (TextUtils.isEmpty(strG)) {
                    strG = n5.g(bArr);
                }
                if (TextUtils.isEmpty(strG)) {
                    j(context, m5Var, "result is null");
                }
                jSONObject = new JSONObject(strG);
                if (jSONObject.has("status")) {
                    i = jSONObject.getInt("status");
                    if (i == 1) {
                        f10655a = 1;
                    } else if (i == 0) {
                        str4 = "authcsid";
                        str5 = "authgsid";
                        if (m7VarB != null) {
                            str4 = m7VarB.c;
                            str5 = m7VarB.f11009d;
                        }
                        n5.i(context, str4, str5, jSONObject);
                        f10655a = 0;
                        if (jSONObject.has("info")) {
                            b = jSONObject.getString("info");
                        }
                        if (jSONObject.has("infocode")) {
                            string = jSONObject.getString("infocode");
                        } else {
                            string = "";
                        }
                        e6.k(m5Var, "/v3/iasdkauth", b, str5, str4, string);
                        if (f10655a == 0) {
                            aVar.f10661a = b;
                            return aVar;
                        }
                    }
                    if (jSONObject.has("ver")) {
                        jSONObject.getInt("ver");
                    }
                    if (n5.m(jSONObject, SpeechUtility.TAG_RESOURCE_RESULT)) {
                        jSONObject2 = jSONObject.getJSONObject(SpeechUtility.TAG_RESOURCE_RESULT);
                        m(context, str3, aVar, jSONObject2);
                        if (n5.m(jSONObject2, "17I")) {
                            JSONObject jSONObject8 = jSONObject2.getJSONObject("17I");
                            boolean zX11 = x(jSONObject8.optString("na"), false);
                            boolean zX12 = x(jSONObject8.optString("aa"), false);
                            y5.f11383f = zX11;
                            y5.f11384g = zX12;
                        }
                        n(context, jSONObject2);
                    }
                }
                return aVar;
            }
        } catch (gb e11) {
            e = e11;
            m7VarB = null;
            bArr = null;
            aVar.f10661a = e.a();
            j(context, m5Var, e.a());
            e6.j(m5Var, "/v3/iasdkauth", e);
            strG = null;
            if (bArr == null) {
                return aVar;
            }
            if (TextUtils.isEmpty(strG)) {
                strG = n5.g(bArr);
            }
            if (TextUtils.isEmpty(strG)) {
                j(context, m5Var, "result is null");
            }
            jSONObject = new JSONObject(strG);
            if (jSONObject.has("status")) {
                i = jSONObject.getInt("status");
                if (i == 1) {
                    f10655a = 1;
                } else if (i == 0) {
                    str4 = "authcsid";
                    str5 = "authgsid";
                    if (m7VarB != null) {
                        str4 = m7VarB.c;
                        str5 = m7VarB.f11009d;
                    }
                    n5.i(context, str4, str5, jSONObject);
                    f10655a = 0;
                    if (jSONObject.has("info")) {
                        b = jSONObject.getString("info");
                    }
                    if (jSONObject.has("infocode")) {
                        string = jSONObject.getString("infocode");
                    } else {
                        string = "";
                    }
                    e6.k(m5Var, "/v3/iasdkauth", b, str5, str4, string);
                    if (f10655a == 0) {
                        aVar.f10661a = b;
                        return aVar;
                    }
                }
                if (jSONObject.has("ver")) {
                    jSONObject.getInt("ver");
                }
                if (n5.m(jSONObject, SpeechUtility.TAG_RESOURCE_RESULT)) {
                    jSONObject2 = jSONObject.getJSONObject(SpeechUtility.TAG_RESOURCE_RESULT);
                    m(context, str3, aVar, jSONObject2);
                    if (n5.m(jSONObject2, "17I")) {
                        JSONObject jSONObject9 = jSONObject2.getJSONObject("17I");
                        boolean zX13 = x(jSONObject9.optString("na"), false);
                        boolean zX14 = x(jSONObject9.optString("aa"), false);
                        y5.f11383f = zX13;
                        y5.f11384g = zX14;
                    }
                    n(context, jSONObject2);
                }
            }
            return aVar;
        } catch (IllegalBlockSizeException e12) {
            e = e12;
            m7VarB = null;
            bArr = null;
            k(context, m5Var, e);
            strG = null;
            if (bArr == null) {
                return aVar;
            }
            if (TextUtils.isEmpty(strG)) {
                strG = n5.g(bArr);
            }
            if (TextUtils.isEmpty(strG)) {
                j(context, m5Var, "result is null");
            }
            jSONObject = new JSONObject(strG);
            if (jSONObject.has("status")) {
                i = jSONObject.getInt("status");
                if (i == 1) {
                    f10655a = 1;
                } else if (i == 0) {
                    str4 = "authcsid";
                    str5 = "authgsid";
                    if (m7VarB != null) {
                        str4 = m7VarB.c;
                        str5 = m7VarB.f11009d;
                    }
                    n5.i(context, str4, str5, jSONObject);
                    f10655a = 0;
                    if (jSONObject.has("info")) {
                        b = jSONObject.getString("info");
                    }
                    if (jSONObject.has("infocode")) {
                        string = jSONObject.getString("infocode");
                    } else {
                        string = "";
                    }
                    e6.k(m5Var, "/v3/iasdkauth", b, str5, str4, string);
                    if (f10655a == 0) {
                        aVar.f10661a = b;
                        return aVar;
                    }
                }
                if (jSONObject.has("ver")) {
                    jSONObject.getInt("ver");
                }
                if (n5.m(jSONObject, SpeechUtility.TAG_RESOURCE_RESULT)) {
                    jSONObject2 = jSONObject.getJSONObject(SpeechUtility.TAG_RESOURCE_RESULT);
                    m(context, str3, aVar, jSONObject2);
                    if (n5.m(jSONObject2, "17I")) {
                        JSONObject jSONObject10 = jSONObject2.getJSONObject("17I");
                        boolean zX15 = x(jSONObject10.optString("na"), false);
                        boolean zX16 = x(jSONObject10.optString("aa"), false);
                        y5.f11383f = zX15;
                        y5.f11384g = zX16;
                    }
                    n(context, jSONObject2);
                }
            }
            return aVar;
        } catch (Throwable th6) {
            th = th6;
            m7VarB = null;
            bArr = null;
            e6.r(th, "at", "lc");
            k(context, m5Var, th);
            strG = null;
            if (bArr == null) {
                return aVar;
            }
            if (TextUtils.isEmpty(strG)) {
                strG = n5.g(bArr);
            }
            if (TextUtils.isEmpty(strG)) {
                j(context, m5Var, "result is null");
            }
            jSONObject = new JSONObject(strG);
            if (jSONObject.has("status")) {
                i = jSONObject.getInt("status");
                if (i == 1) {
                    f10655a = 1;
                } else if (i == 0) {
                    str4 = "authcsid";
                    str5 = "authgsid";
                    if (m7VarB != null) {
                        str4 = m7VarB.c;
                        str5 = m7VarB.f11009d;
                    }
                    n5.i(context, str4, str5, jSONObject);
                    f10655a = 0;
                    if (jSONObject.has("info")) {
                        b = jSONObject.getString("info");
                    }
                    if (jSONObject.has("infocode")) {
                        string = jSONObject.getString("infocode");
                    } else {
                        string = "";
                    }
                    e6.k(m5Var, "/v3/iasdkauth", b, str5, str4, string);
                    if (f10655a == 0) {
                        aVar.f10661a = b;
                        return aVar;
                    }
                }
                if (jSONObject.has("ver")) {
                    jSONObject.getInt("ver");
                }
                if (n5.m(jSONObject, SpeechUtility.TAG_RESOURCE_RESULT)) {
                    jSONObject2 = jSONObject.getJSONObject(SpeechUtility.TAG_RESOURCE_RESULT);
                    m(context, str3, aVar, jSONObject2);
                    if (n5.m(jSONObject2, "17I")) {
                        JSONObject jSONObject11 = jSONObject2.getJSONObject("17I");
                        boolean zX17 = x(jSONObject11.optString("na"), false);
                        boolean zX18 = x(jSONObject11.optString("aa"), false);
                        y5.f11383f = zX17;
                        y5.f11384g = zX18;
                    }
                    n(context, jSONObject2);
                }
            }
            return aVar;
        }
        if (bArr == null) {
            return aVar;
        }
        if (TextUtils.isEmpty(strG)) {
            strG = n5.g(bArr);
        }
        if (TextUtils.isEmpty(strG)) {
            j(context, m5Var, "result is null");
        }
        jSONObject = new JSONObject(strG);
        if (jSONObject.has("status")) {
            i = jSONObject.getInt("status");
            if (i == 1) {
                f10655a = 1;
            } else if (i == 0) {
                str4 = "authcsid";
                str5 = "authgsid";
                if (m7VarB != null) {
                    str4 = m7VarB.c;
                    str5 = m7VarB.f11009d;
                }
                n5.i(context, str4, str5, jSONObject);
                f10655a = 0;
                if (jSONObject.has("info")) {
                    b = jSONObject.getString("info");
                }
                if (jSONObject.has("infocode")) {
                    string = jSONObject.getString("infocode");
                } else {
                    string = "";
                }
                e6.k(m5Var, "/v3/iasdkauth", b, str5, str4, string);
                if (f10655a == 0) {
                    aVar.f10661a = b;
                    return aVar;
                }
            }
            if (jSONObject.has("ver")) {
                jSONObject.getInt("ver");
            }
            if (n5.m(jSONObject, SpeechUtility.TAG_RESOURCE_RESULT)) {
                jSONObject2 = jSONObject.getJSONObject(SpeechUtility.TAG_RESOURCE_RESULT);
                m(context, str3, aVar, jSONObject2);
                if (n5.m(jSONObject2, "17I")) {
                    JSONObject jSONObject12 = jSONObject2.getJSONObject("17I");
                    boolean zX19 = x(jSONObject12.optString("na"), false);
                    boolean zX110 = x(jSONObject12.optString("aa"), false);
                    y5.f11383f = zX19;
                    y5.f11384g = zX110;
                }
                n(context, jSONObject2);
            }
        }
        return aVar;
    }

    private static c d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (int i = 0; i < f10657e.size(); i++) {
            c cVar = f10657e.get(i);
            if (cVar != null && str.equals(cVar.f10681a)) {
                return cVar;
            }
        }
        return null;
    }

    public static String e(JSONObject jSONObject, String str) throws JSONException {
        return (jSONObject == null || !jSONObject.has(str) || jSONObject.getString(str).equals("[]")) ? "" : jSONObject.optString(str);
    }

    private static String f(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        byte[] bArr2 = new byte[16];
        byte[] bArr3 = new byte[bArr.length - 16];
        System.arraycopy(bArr, 0, bArr2, 0, 16);
        System.arraycopy(bArr, 16, bArr3, 0, bArr.length - 16);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, secretKeySpec, new IvParameterSpec(n5.v()));
        return n5.g(cipher.doFinal(bArr3));
    }

    public static void g(int i) {
        if (i != 2) {
            return;
        }
        try {
            F();
        } catch (Throwable unused) {
        }
    }

    public static void h(Context context) {
        if (context != null) {
            c = context.getApplicationContext();
        }
    }

    private static void i(Context context, c cVar) {
        if (cVar == null || TextUtils.isEmpty(cVar.f10681a)) {
            return;
        }
        String strE = cVar.e();
        if (TextUtils.isEmpty(strE) || context == null) {
            return;
        }
        new s6("IPV6_CONFIG_NAME").b(context, "i", strE);
    }

    private static void j(Context context, m5 m5Var, String str) {
        HashMap map = new HashMap();
        map.put("amap_sdk_auth_fail", "1");
        map.put("amap_sdk_auth_fail_type", str);
        map.put("amap_sdk_name", m5Var.a());
        map.put("amap_sdk_version", m5Var.g());
        String string = new JSONObject(map).toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        try {
            u7 u7Var = new u7(context, "core", "1.0", "O001");
            u7Var.a(string);
            v7.d(u7Var, context);
        } catch (gb unused) {
        }
    }

    private static void k(Context context, m5 m5Var, Throwable th) {
        j(context, m5Var, th != null ? th.getMessage() : "on exception");
    }

    public static void l(Context context, String str) {
        c5.b(context, str);
    }

    private static void m(Context context, String str, a aVar, JSONObject jSONObject) throws JSONException {
        a.C0187a c0187a = new a.C0187a();
        c0187a.f10667a = false;
        aVar.w = c0187a;
        try {
            String[] strArrSplit = str.split(VoiceWakeuperAidl.PARAMS_SEPARATE);
            if (strArrSplit != null && strArrSplit.length > 0) {
                for (String str2 : strArrSplit) {
                    if (jSONObject.has(str2)) {
                        aVar.v.putOpt(str2, jSONObject.get(str2));
                    }
                }
            }
        } catch (Throwable th) {
            b6.e(th, "at", "co");
        }
        if (n5.m(jSONObject, "16H")) {
            aVar.G = x(jSONObject.getJSONObject("16H").optString("able"), false);
        }
        if (n5.m(jSONObject, "11K")) {
            try {
                JSONObject jSONObject2 = jSONObject.getJSONObject("11K");
                c0187a.f10667a = x(jSONObject2.getString("able"), false);
                if (jSONObject2.has("off")) {
                    c0187a.b = jSONObject2.getJSONObject("off");
                }
            } catch (Throwable th2) {
                b6.e(th2, "AuthConfigManager", "loadException");
            }
        }
        if (n5.m(jSONObject, "001")) {
            JSONObject jSONObject3 = jSONObject.getJSONObject("001");
            a.d dVar = new a.d();
            t(jSONObject3, dVar);
            aVar.x = dVar;
        }
        if (n5.m(jSONObject, "002")) {
            JSONObject jSONObject4 = jSONObject.getJSONObject("002");
            a.c cVar = new a.c();
            s(jSONObject4, cVar);
            aVar.z = cVar;
        }
        if (n5.m(jSONObject, "14S")) {
            JSONObject jSONObject5 = jSONObject.getJSONObject("14S");
            a.c cVar2 = new a.c();
            s(jSONObject5, cVar2);
            aVar.A = cVar2;
        }
        p(aVar, jSONObject);
        if (n5.m(jSONObject, "14Z")) {
            JSONObject jSONObject6 = jSONObject.getJSONObject("14Z");
            a.f fVar = new a.f();
            v(jSONObject6, fVar);
            aVar.F = fVar;
        }
        if (n5.m(jSONObject, "151")) {
            JSONObject jSONObject7 = jSONObject.getJSONObject("151");
            a.e eVar = new a.e();
            u(jSONObject7, eVar);
            aVar.y = eVar;
        }
        if (n5.m(jSONObject, "17S")) {
            C(context, jSONObject.getJSONObject("17S"));
        }
        p(aVar, jSONObject);
    }

    private static void n(Context context, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("15K");
            boolean zX = x(jSONObject2.optString("isTargetAble"), false);
            if (x(jSONObject2.optString("able"), false)) {
                i5.a().d(context, zX);
            } else {
                i5.a().f(context);
            }
        } catch (Throwable unused) {
        }
    }

    private static void o(Context context, boolean z) {
        if (context == null) {
            return;
        }
        new s6("IPV6_CONFIG_NAME").c(context, "k", z);
    }

    private static void p(a aVar, JSONObject jSONObject) {
        try {
            if (n5.m(jSONObject, "11B")) {
                aVar.f10665g = jSONObject.getJSONObject("11B");
            }
            if (n5.m(jSONObject, "11C")) {
                aVar.j = jSONObject.getJSONObject("11C");
            }
            if (n5.m(jSONObject, "11I")) {
                aVar.k = jSONObject.getJSONObject("11I");
            }
            if (n5.m(jSONObject, "11H")) {
                aVar.l = jSONObject.getJSONObject("11H");
            }
            if (n5.m(jSONObject, "11E")) {
                aVar.m = jSONObject.getJSONObject("11E");
            }
            if (n5.m(jSONObject, "11F")) {
                aVar.n = jSONObject.getJSONObject("11F");
            }
            if (n5.m(jSONObject, "13A")) {
                aVar.p = jSONObject.getJSONObject("13A");
            }
            if (n5.m(jSONObject, "13J")) {
                aVar.f10666h = jSONObject.getJSONObject("13J");
            }
            if (n5.m(jSONObject, "11G")) {
                aVar.o = jSONObject.getJSONObject("11G");
            }
            if (n5.m(jSONObject, "006")) {
                aVar.q = jSONObject.getJSONObject("006");
            }
            if (n5.m(jSONObject, "010")) {
                aVar.r = jSONObject.getJSONObject("010");
            }
            if (n5.m(jSONObject, "11Z")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("11Z");
                a.b bVar = new a.b();
                r(jSONObject2, bVar);
                aVar.B = bVar;
            }
            if (n5.m(jSONObject, "135")) {
                aVar.i = jSONObject.getJSONObject("135");
            }
            if (n5.m(jSONObject, "13S")) {
                aVar.f10664f = jSONObject.getJSONObject("13S");
            }
            if (n5.m(jSONObject, "121")) {
                JSONObject jSONObject3 = jSONObject.getJSONObject("121");
                a.b bVar2 = new a.b();
                r(jSONObject3, bVar2);
                aVar.C = bVar2;
            }
            if (n5.m(jSONObject, "122")) {
                JSONObject jSONObject4 = jSONObject.getJSONObject("122");
                a.b bVar3 = new a.b();
                r(jSONObject4, bVar3);
                aVar.D = bVar3;
            }
            if (n5.m(jSONObject, "123")) {
                JSONObject jSONObject5 = jSONObject.getJSONObject("123");
                a.b bVar4 = new a.b();
                r(jSONObject5, bVar4);
                aVar.E = bVar4;
            }
            if (n5.m(jSONObject, "011")) {
                aVar.b = jSONObject.getJSONObject("011");
            }
            if (n5.m(jSONObject, "012")) {
                aVar.c = jSONObject.getJSONObject("012");
            }
            if (n5.m(jSONObject, "013")) {
                aVar.f10662d = jSONObject.getJSONObject("013");
            }
            if (n5.m(jSONObject, "014")) {
                aVar.f10663e = jSONObject.getJSONObject("014");
            }
            if (n5.m(jSONObject, "145")) {
                aVar.s = jSONObject.getJSONObject("145");
            }
            if (n5.m(jSONObject, "14B")) {
                aVar.t = jSONObject.getJSONObject("14B");
            }
            if (n5.m(jSONObject, "14D")) {
                aVar.u = jSONObject.getJSONObject("14D");
            }
        } catch (Throwable th) {
            e6.r(th, "at", "pe");
        }
    }

    public static void q(String str, boolean z, boolean z2, boolean z3, long j) {
        if (TextUtils.isEmpty(str) || c == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("url", str);
        map.put("downLevel", String.valueOf(z2));
        map.put("ant", g5.V(c) == 0 ? "0" : "1");
        map.put("type", z ? Constants.VIA_SHARE_TYPE_INFO : Constants.VIA_TO_TYPE_QZONE);
        map.put("status", z3 ? "0" : "1");
        map.put("duration", "" + j);
        String string = new JSONObject(map).toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        try {
            u7 u7Var = new u7(c, "core", "1.0", "O002");
            u7Var.a(string);
            v7.d(u7Var, c);
        } catch (gb unused) {
        }
    }

    private static void r(JSONObject jSONObject, a.b bVar) {
        if (bVar != null) {
            try {
                String strE = e(jSONObject, "m");
                String strE2 = e(jSONObject, "u");
                String strE3 = e(jSONObject, "v");
                String strE4 = e(jSONObject, "able");
                String strE5 = e(jSONObject, "on");
                bVar.c = strE;
                bVar.b = strE2;
                bVar.f10669d = strE3;
                bVar.f10668a = x(strE4, false);
                bVar.f10670e = x(strE5, true);
            } catch (Throwable th) {
                b6.e(th, "at", "pe");
            }
        }
    }

    private static void s(JSONObject jSONObject, a.c cVar) {
        if (jSONObject != null) {
            try {
                String strE = e(jSONObject, "md5");
                String strE2 = e(jSONObject, "url");
                cVar.b = strE;
                cVar.f10671a = strE2;
            } catch (Throwable th) {
                b6.e(th, "at", "psc");
            }
        }
    }

    private static void t(JSONObject jSONObject, a.d dVar) {
        if (jSONObject != null) {
            try {
                String strE = e(jSONObject, "md5");
                String strE2 = e(jSONObject, "url");
                String strE3 = e(jSONObject, "sdkversion");
                if (!TextUtils.isEmpty(strE) && !TextUtils.isEmpty(strE2) && !TextUtils.isEmpty(strE3)) {
                    dVar.f10672a = strE2;
                    dVar.b = strE;
                    dVar.c = strE3;
                }
            } catch (Throwable th) {
                b6.e(th, "at", "psu");
            }
        }
    }

    private static void u(JSONObject jSONObject, a.e eVar) {
        if (eVar == null || jSONObject == null) {
            return;
        }
        eVar.f10673a = x(jSONObject.optString("able"), false);
    }

    private static void v(JSONObject jSONObject, a.f fVar) {
        if (fVar != null) {
            try {
                String strE = e(jSONObject, "md5");
                String strE2 = e(jSONObject, "md5info");
                String strE3 = e(jSONObject, "url");
                String strE4 = e(jSONObject, "able");
                String strE5 = e(jSONObject, "on");
                String strE6 = e(jSONObject, "mobileable");
                fVar.f10676e = strE;
                fVar.f10677f = strE2;
                fVar.f10675d = strE3;
                fVar.f10674a = x(strE4, false);
                fVar.b = x(strE5, false);
                fVar.c = x(strE6, false);
            } catch (Throwable th) {
                b6.e(th, "at", "pes");
            }
        }
    }

    public static boolean w() {
        c cVarZ;
        if (c != null) {
            A();
            if (!E()) {
                return false;
            }
            if (D()) {
                return true;
            }
        }
        return f10656d && (cVarZ = z(c, "IPV6_CONFIG_NAME")) != null && cVarZ.a() < 5;
    }

    public static boolean x(String str, boolean z) {
        try {
            if (TextUtils.isEmpty(str)) {
                return z;
            }
            String[] strArrSplit = URLDecoder.decode(str).split("/");
            return strArrSplit[strArrSplit.length - 1].charAt(4) % 2 == 1;
        } catch (Throwable unused) {
            return z;
        }
    }

    private static boolean y(InetAddress inetAddress) {
        return inetAddress.isLoopbackAddress() || inetAddress.isLinkLocalAddress() || inetAddress.isAnyLocalAddress();
    }

    private static synchronized c z(Context context, String str) {
        c cVarD = d(str);
        if (cVarD != null) {
            return cVarD;
        }
        if (context == null) {
            return null;
        }
        c cVarD2 = c.d(new s6(str).a(context, "i"));
        String strC = n5.c(System.currentTimeMillis(), "yyyyMMdd");
        if (cVarD2 == null) {
            cVarD2 = new c("IPV6_CONFIG_NAME", strC, 0);
        }
        if (!strC.equals(cVarD2.b)) {
            cVarD2.c(strC);
            cVarD2.c.set(0);
        }
        f10657e.add(cVarD2);
        return cVarD2;
    }
}
