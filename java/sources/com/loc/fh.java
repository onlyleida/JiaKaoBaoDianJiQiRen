package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.upstream.cache.CacheDataSink;
import com.nirvana.tools.crash.CustomLogInfoBuilder;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class fh {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static volatile boolean f12902h = false;
    private static boolean i = true;
    private static int j = 1000;
    private static int k = 200;
    private static boolean l = false;
    private static int m = 20;
    private static int n = 0;
    private static volatile int o = 0;
    private static boolean p = true;
    private static boolean q = false;
    private static int r = -1;
    private static long s;
    private static ArrayList<String> t = new ArrayList<>();
    private static ArrayList<String> u = new ArrayList<>();
    private static volatile boolean v = false;
    private static boolean w = true;
    private static long x = DefaultDrmSessionManager.DEFAULT_SESSION_KEEPALIVE_MS;
    private static boolean y = false;
    private static double z = 0.618d;
    private static boolean A = true;
    private static int B = 80;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static long f12897a = 3600000;
    private static boolean C = false;
    private static boolean D = true;
    private static boolean E = false;
    public static volatile long b = 0;
    static boolean c = true;
    private static boolean F = true;
    private static long G = -1;
    private static boolean H = true;
    private static int I = 1;
    private static boolean J = false;
    private static int K = 5;
    private static boolean L = false;
    private static String M = "CMjAzLjEwNy4xLjEvMTU0MDgxL2Q";
    private static long N = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f12898d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f12899e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f12900f = CacheDataSink.DEFAULT_BUFFER_SIZE;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f12901g = 10800000;

    public static void a(final Context context) {
        if (f12902h) {
            return;
        }
        f12902h = true;
        l.a(context, fi.c(), fi.d(), new l.a() { // from class: com.loc.fh.1
            @Override // com.loc.l.a
            public final void a(l.b bVar) {
                fh.a(context, bVar);
            }
        });
    }

    private static void a(Context context, JSONObject jSONObject, SharedPreferences.Editor editor) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("13S");
            if (jSONObjectOptJSONObject != null) {
                try {
                    long jOptInt = jSONObjectOptJSONObject.optInt("at", 123) * 60 * 1000;
                    f12897a = jOptInt;
                    fo.a(editor, "13S_at", jOptInt);
                } catch (Throwable th) {
                    fi.a(th, "AuthUtil", "requestSdkAuthInterval");
                }
                d(jSONObjectOptJSONObject, editor);
                try {
                    boolean zA = l.a(jSONObjectOptJSONObject.optString("nla"), true);
                    D = zA;
                    fo.a(editor, "13S_nla", zA);
                } catch (Throwable unused) {
                }
                try {
                    boolean zA2 = l.a(jSONObjectOptJSONObject.optString("asw"), true);
                    F = zA2;
                    fo.a(editor, "asw", zA2);
                } catch (Throwable unused2) {
                }
                try {
                    JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("mlpl");
                    if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0 || context == null) {
                        E = false;
                        fo.a(editor, "13S_mlpl");
                    } else {
                        fo.a(editor, "13S_mlpl", w.b(jSONArrayOptJSONArray.toString()));
                        E = a(context, jSONArrayOptJSONArray);
                    }
                } catch (Throwable unused3) {
                }
            }
        } catch (Throwable th2) {
            fi.a(th2, "AuthUtil", "loadConfigAbleStatus");
        }
    }

    private static void a(l.b bVar, SharedPreferences.Editor editor) {
        try {
            l.b.a aVar = bVar.f12981g;
            if (aVar != null) {
                boolean z2 = aVar.f12983a;
                i = z2;
                fo.a(editor, CustomLogInfoBuilder.LOG_TYPE, z2);
                JSONObject jSONObject = aVar.c;
                if (jSONObject != null) {
                    j = jSONObject.optInt("fn", j);
                    int iOptInt = jSONObject.optInt("mpn", k);
                    k = iOptInt;
                    if (iOptInt > 500) {
                        k = 500;
                    }
                    if (k < 30) {
                        k = 30;
                    }
                    l = l.a(jSONObject.optString("igu"), false);
                    m = jSONObject.optInt("ms", m);
                    o = jSONObject.optInt("rot", 0);
                    n = jSONObject.optInt("pms", 0);
                }
                bp.a(j, l, m, n);
                br.a(l, n);
                fo.a(editor, "fn", j);
                fo.a(editor, "mpn", k);
                fo.a(editor, "igu", l);
                fo.a(editor, "ms", m);
                fo.a(editor, "rot", o);
                fo.a(editor, "pms", n);
            }
        } catch (Throwable th) {
            fi.a(th, "AuthUtil", "loadConfigDataUploadException");
        }
    }

    private static void a(JSONObject jSONObject, SharedPreferences.Editor editor) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("11G");
            if (jSONObjectOptJSONObject != null) {
                boolean zA = l.a(jSONObjectOptJSONObject.optString("able"), true);
                w = zA;
                if (zA) {
                    x = jSONObjectOptJSONObject.optInt("c", 300) * 1000;
                }
                y = l.a(jSONObjectOptJSONObject.optString("fa"), false);
                z = Math.min(1.0d, Math.max(0.2d, jSONObjectOptJSONObject.optDouble("ms", 0.618d)));
                fo.a(editor, "ca", w);
                fo.a(editor, "ct", x);
                fo.a(editor, "11G_fa", y);
                fo.a(editor, "11G_ms", String.valueOf(z));
            }
        } catch (Throwable th) {
            fi.a(th, "AuthUtil", "loadConfigDataCacheAble");
        }
    }

    public static boolean a() {
        return i;
    }

    public static boolean a(long j2) {
        if (!w) {
            return false;
        }
        long jA = fp.a() - j2;
        long j3 = x;
        return j3 < 0 || jA < j3;
    }

    static boolean a(Context context, l.b bVar) {
        SharedPreferences.Editor editorA;
        try {
            editorA = fo.a(context, "pref");
            try {
                a(bVar, editorA);
                c(context);
                JSONObject jSONObject = bVar.f12980f;
                if (jSONObject == null) {
                    if (editorA != null) {
                        try {
                            fo.a(editorA);
                        } catch (Throwable unused) {
                        }
                    }
                    return true;
                }
                a(context, jSONObject, editorA);
                a(jSONObject, editorA);
                c(jSONObject, editorA);
                e(jSONObject, editorA);
                g(jSONObject, editorA);
                f(jSONObject, editorA);
                h(jSONObject, editorA);
                b(jSONObject, editorA);
                if (editorA != null) {
                    try {
                        fo.a(editorA);
                    } catch (Throwable unused2) {
                    }
                }
                return true;
            } catch (Throwable unused3) {
                if (editorA == null) {
                    return false;
                }
                try {
                    fo.a(editorA);
                    return false;
                } catch (Throwable unused4) {
                    return false;
                }
            }
        } catch (Throwable unused5) {
            editorA = null;
        }
    }

    private static boolean a(Context context, JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() > 0 && context != null) {
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        if (fp.b(context, jSONArray.getString(i2))) {
                            return true;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static int b() {
        return k;
    }

    public static void b(Context context) {
        if (v) {
            return;
        }
        v = true;
        try {
            i = fo.a(context, "pref", CustomLogInfoBuilder.LOG_TYPE, i);
            c(context);
        } catch (Throwable th) {
            fi.a(th, "AuthUtil", "loadLastAbleState p1");
        }
        try {
            j = fo.a(context, "pref", "fn", j);
            k = fo.a(context, "pref", "mpn", k);
            l = fo.a(context, "pref", "igu", l);
            m = fo.a(context, "pref", "ms", m);
            o = fo.a(context, "pref", "rot", 0);
            int iA = fo.a(context, "pref", "pms", 0);
            n = iA;
            bp.a(j, l, m, iA);
            br.a(l, n);
        } catch (Throwable th2) {
            fi.a(th2, "AuthUtil", "loadLastAbleState p2");
        }
        try {
            w = fo.a(context, "pref", "ca", w);
            x = fo.a(context, "pref", "ct", x);
            y = fo.a(context, "pref", "11G_fa", y);
            double dDoubleValue = Double.valueOf(fo.a(context, "pref", "11G_ms", String.valueOf(z))).doubleValue();
            z = dDoubleValue;
            z = Math.max(0.2d, dDoubleValue);
        } catch (Throwable th3) {
            fi.a(th3, "AuthUtil", "loadLastAbleState p3");
        }
        try {
            c = fo.a(context, "pref", "fr", c);
        } catch (Throwable th4) {
            fi.a(th4, "AuthUtil", "loadLastAbleState p4");
        }
        try {
            F = fo.a(context, "pref", "asw", F);
        } catch (Throwable th5) {
            fi.a(th5, "AuthUtil", "loadLastAbleState p5");
        }
        try {
            G = fo.a(context, "pref", "awsi", G);
        } catch (Throwable th6) {
            fi.a(th6, "AuthUtil", "loadLastAbleState p6");
        }
        try {
            H = fo.a(context, "pref", "15ua", H);
            I = fo.a(context, "pref", "15un", I);
            N = fo.a(context, "pref", "15ust", N);
        } catch (Throwable th7) {
            fi.a(th7, "AuthUtil", "loadLastAbleState p7");
        }
        try {
            J = fo.a(context, "pref", "ok9", J);
            K = fo.a(context, "pref", "ok10", K);
            M = fo.a(context, "pref", "ok11", M);
        } catch (Throwable th8) {
            fi.a(th8, "AuthUtil", "loadLastAbleState p8");
        }
        try {
            f12898d = fo.a(context, "pref", "17ya", false);
            f12899e = fo.a(context, "pref", "17ym", false);
            f12901g = fo.a(context, "pref", "17yi", 2) * 60 * 60 * 1000;
            f12900f = fo.a(context, "pref", "17yx", 100) * 1024;
        } catch (Throwable th9) {
            fi.a(th9, "AuthUtil", "loadLastAbleState p9");
        }
        try {
            b = fp.b();
            f12897a = fo.a(context, "pref", "13S_at", f12897a);
            D = fo.a(context, "pref", "13S_nla", D);
            A = fo.a(context, "pref", "13J_able", A);
            B = fo.a(context, "pref", "13J_c", B);
        } catch (Throwable th10) {
            fi.a(th10, "AuthUtil", "loadLastAbleState p10");
        }
        l.b(context);
        try {
            String strA = fo.a(context, "pref", "13S_mlpl", (String) null);
            if (!TextUtils.isEmpty(strA)) {
                E = a(context, new JSONArray(w.c(strA)));
            }
        } catch (Throwable th11) {
            fi.a(th11, "AuthUtil", "loadLastAbleState p11");
        }
        try {
            boolean zA = fo.a(context, "pref", "197a", false);
            String strA2 = fo.a(context, "pref", "197dv", "");
            String strA3 = fo.a(context, "pref", "197tv", "");
            if (zA && fi.f12904a.equals(strA2)) {
                for (String str : fi.b) {
                    if (str.equals(strA3)) {
                        fi.f12904a = strA3;
                    }
                }
            }
        } catch (Throwable th12) {
            fi.a(th12, "AuthUtil", "loadLastAbleState p12");
        }
    }

    private static void b(JSONObject jSONObject, SharedPreferences.Editor editor) {
        if (jSONObject == null) {
            return;
        }
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("197");
            if (jSONObject2 != null) {
                boolean zA = l.a(jSONObject2.optString("able"), false);
                fo.a(editor, "197a", zA);
                if (zA) {
                    fo.a(editor, "197dv", jSONObject2.optString("sv", ""));
                    fo.a(editor, "197tv", jSONObject2.optString("tv", ""));
                } else {
                    fo.a(editor, "197dv", "");
                    fo.a(editor, "197tv", "");
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static int c() {
        if (o < 0) {
            o = 0;
        }
        return o;
    }

    public static void c(Context context) {
        try {
            v vVarC = fi.c();
            vVarC.a(i);
            am.a(context, vVarC);
        } catch (Throwable unused) {
        }
    }

    private static void c(JSONObject jSONObject, SharedPreferences.Editor editor) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("13J");
            if (jSONObjectOptJSONObject != null) {
                boolean zA = l.a(jSONObjectOptJSONObject.optString("able"), true);
                A = zA;
                if (zA) {
                    B = jSONObjectOptJSONObject.optInt("c", B);
                }
                fo.a(editor, "13J_able", A);
                fo.a(editor, "13J_c", B);
            }
        } catch (Throwable th) {
            fi.a(th, "AuthUtil", "loadConfigDataGpsGeoAble");
        }
    }

    public static long d() {
        return x;
    }

    private static void d(JSONObject jSONObject, SharedPreferences.Editor editor) {
        if (jSONObject == null) {
            return;
        }
        try {
            boolean zA = l.a(jSONObject.optString("re"), true);
            c = zA;
            fo.a(editor, "fr", zA);
        } catch (Throwable th) {
            fi.a(th, "AuthUtil", "checkReLocationAble");
        }
    }

    private static void e(JSONObject jSONObject, SharedPreferences.Editor editor) {
        JSONArray jSONArrayOptJSONArray;
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("15O");
            if (jSONObjectOptJSONObject != null) {
                if (l.a(jSONObjectOptJSONObject.optString("able"), false) && ((jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("fl")) == null || jSONArrayOptJSONArray.length() <= 0 || jSONArrayOptJSONArray.toString().contains(Build.MANUFACTURER))) {
                    G = jSONObjectOptJSONObject.optInt("iv", 30) * 1000;
                } else {
                    G = -1L;
                }
                fo.a(editor, "awsi", G);
            }
        } catch (Throwable unused) {
        }
    }

    public static boolean e() {
        return w;
    }

    private static void f(JSONObject jSONObject, SharedPreferences.Editor editor) {
        if (jSONObject == null) {
            return;
        }
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("17Y");
            if (jSONObject2 != null) {
                boolean zA = l.a(jSONObject2.optString("able"), false);
                f12898d = zA;
                fo.a(editor, "17ya", zA);
                boolean zA2 = l.a(jSONObject2.optString("mup"), false);
                f12899e = zA2;
                fo.a(editor, "17ym", zA2);
                int iOptInt = jSONObject2.optInt("max", 20);
                if (iOptInt > 0) {
                    fo.a(editor, "17yx", iOptInt);
                    f12900f = iOptInt * 1024;
                }
                int iOptInt2 = jSONObject2.optInt("inv", 3);
                if (iOptInt2 > 0) {
                    fo.a(editor, "17yi", iOptInt2);
                    f12901g = iOptInt2 * 60 * 60 * 1000;
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static boolean f() {
        return y;
    }

    public static double g() {
        return z;
    }

    private static void g(JSONObject jSONObject, SharedPreferences.Editor editor) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("15U");
            if (jSONObjectOptJSONObject != null) {
                boolean zA = l.a(jSONObjectOptJSONObject.optString("able"), true);
                int iOptInt = jSONObjectOptJSONObject.optInt("yn", I);
                N = jSONObjectOptJSONObject.optLong("sysTime", N);
                fo.a(editor, "15ua", zA);
                fo.a(editor, "15un", iOptInt);
                fo.a(editor, "15ust", N);
            }
        } catch (Throwable unused) {
        }
    }

    private static void h(JSONObject jSONObject, SharedPreferences.Editor editor) {
        int i2;
        if (jSONObject == null) {
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("17J");
            if (jSONObjectOptJSONObject != null) {
                boolean zA = l.a(jSONObjectOptJSONObject.optString("able"), false);
                J = zA;
                fo.a(editor, "ok9", zA);
                if (zA) {
                    String strOptString = jSONObjectOptJSONObject.optString("auth");
                    String strOptString2 = jSONObjectOptJSONObject.optString("ht");
                    M = strOptString2;
                    fo.a(editor, "ok11", strOptString2);
                    l.a(strOptString, false);
                    L = l.a(jSONObjectOptJSONObject.optString("nr"), false);
                    String strOptString3 = jSONObjectOptJSONObject.optString("tm");
                    if (TextUtils.isEmpty(strOptString3) || (i2 = Integer.parseInt(strOptString3)) <= 0 || i2 >= 20) {
                        return;
                    }
                    K = i2;
                    fo.a(editor, "ok10", i2);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static boolean h() {
        return A;
    }

    public static int i() {
        return B;
    }

    public static boolean j() {
        return D;
    }

    public static boolean k() {
        return E;
    }

    public static boolean l() {
        return c;
    }

    public static boolean m() {
        return F;
    }

    public static long n() {
        return G;
    }

    public static boolean o() {
        return L;
    }

    public static boolean p() {
        return J;
    }

    public static String q() {
        return w.c(M);
    }

    public static boolean r() {
        return H && I > 0;
    }

    public static int s() {
        return I;
    }

    public static long t() {
        return N;
    }
}
