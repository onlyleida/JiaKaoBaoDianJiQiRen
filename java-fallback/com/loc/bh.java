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
    public static volatile ConcurrentHashMap<String, c> f12565a;
    public static volatile List<String> b;
    private static volatile ConcurrentHashMap<String, b> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Random f12566d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static ConcurrentHashMap<String, String> f12567e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static List<bq> f12568f;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f12569a;
        int b;
        double c;

        private a() {
        }

        /* synthetic */ a(byte r1) {
            this();
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        bl f12570a;
        long b;

        private b() {
        }

        /* synthetic */ b(byte r1) {
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

        /* synthetic */ c(byte r1) {
            this();
        }

        public final boolean equals(Object r5) {
            if (this != r5) goto L6;
            return true;
        L6:
            if (r5 != null) goto L8;
        L15:
            return false;
        L8:
            if (c.class != r5.getClass()) goto L15;
            c r6 = (c) r5;
            if (this.f12571a.equals(r6.f12571a) == false) goto L15;
            if (this.b.equals(r6.b) == false) goto L15;
            return true;
        }

        public final int hashCode() {
            Map<String, List<a>> r0 = this.f12571a;
            int r1 = 0;
            if (r0 == null) goto L5;
            int r2 = r0.hashCode();
        L6:
            Map<String, String> r3 = this.b;
            if (r3 == null) goto L10;
            r1 = r3.hashCode();
        L10:
            return r2 + r1;
        L5:
            r2 = 0;
            goto L6
        }
    }

    static {
        f12565a = new ConcurrentHashMap(8);
        b = Collections.synchronizedList(new ArrayList(8));
        c = new ConcurrentHashMap(8);
        f12566d = new Random();
        f12567e = new ConcurrentHashMap(8);
        f12568f = Collections.synchronizedList(new ArrayList(16));
    }

    public static synchronized String a(String r4, String r5) throws j {
        monitor-enter(bh.class);
        System.currentTimeMillis();     // Catch: Throwable -> L49 j -> L53
        if (TextUtils.isEmpty(r5) == false) goto L7;
    L47:
        monitor-exit(bh.class);
        return r4;
    L7:
        if (TextUtils.isEmpty(r4) == true) goto L47;
        Context r1 = l.c;     // Catch: Throwable -> L49 j -> L53
    L23:
        th = move-exception;
        aj.a(th, "hlUtil", "llhl");     // Catch: Throwable -> L49 j -> L53
    L26:
        if (f12565a != null) goto L28;
    L45:
        monitor-exit(bh.class);
        return r4;
    L28:
        if (f12565a.size() <= 0) goto L45;
        if (f12565a.containsKey(r5) == true) goto L34;
        monitor-exit(bh.class);
        return r4;
    L34:
        c r2 = f12565a.get(r5);     // Catch: Throwable -> L49 j -> L53
        if (r2 != null) goto L39;
        monitor-exit(bh.class);
        return r4;
    L39:
        if (a(r4, r2, r5) == true) goto L44;
        String r6 = b(r4, r2, r5);     // Catch: Throwable -> L49 j -> L53
        monitor-exit(bh.class);
        return r6;
    L44:
        throw new j("服务QPS超限");     // Catch: Throwable -> L49 j -> L53
    L11:
        if (b != null) goto L13;
        b = Collections.synchronizedList(new ArrayList(8));     // Catch: Throwable -> L23
    L13:
        if (r1 == null) goto L26;
        if (b.contains(r5) == true) goto L26;
        b.add(r5);     // Catch: Throwable -> L23
        String r3 = au.a(r1, "Yb3Blbl9odHRwX2NvbnRyb2w", r5);     // Catch: Throwable -> L23
        if (TextUtils.isEmpty(r3) == true) goto L26;
        a(r5, new JSONObject(r3));     // Catch: Throwable -> L23
    L55:
        th = move-exception;
        throw th;     // Catch: Throwable -> L57
    L57:
        th = move-exception;
        throw th;
    L53:
        e = move-exception;
        throw e;     // Catch: Throwable -> L55
    L49:
        th = move-exception;
        aj.a(th, "hlUtil", "pcr");     // Catch: Throwable -> L55
        return r4;
    }

    public static void a() {
        Context r0 = l.c;     // Catch: Throwable -> L7
        if (r0 != null) goto L5;
        return;
    L5:
        br.a(b(), r0);     // Catch: Throwable -> L7
        return;
    }

    private static void a(c r12, JSONObject r13) {
        JSONArray r14 = r13.optJSONArray("block");     // Catch: Throwable -> L32
        if (r14 != null) goto L6;
        return;
    L6:
        HashMap r1 = new HashMap(8);     // Catch: Throwable -> L32
        byte r2 = 0;
        int r3 = 0;
    L8:
        if (r3 >= r14.length()) goto L30;
        JSONObject r4 = r14.optJSONObject(r3);     // Catch: Throwable -> L32
        if (r4 == null) goto L29;
        String r5 = r4.optString("api");     // Catch: Throwable -> L32
        if (TextUtils.isEmpty(r5) == true) goto L29;
        if (r5.startsWith("/") == true) goto L17;
        r5 = "/".concat(String.valueOf(r5));     // Catch: Throwable -> L32
    L17:
        if (r5.endsWith("/") == false) goto L19;
        r5 = r5.substring(0, r5.length() - 1);     // Catch: Throwable -> L32
    L19:
        JSONArray r6 = r4.optJSONArray("periods");     // Catch: Throwable -> L32
        if (r14 == null) goto L29;
        ArrayList r7 = new ArrayList();     // Catch: Throwable -> L32
        int r8 = 0;
    L23:
        if (r8 >= r6.length()) goto L28;
        JSONObject r9 = r6.optJSONObject(r8);     // Catch: Throwable -> L32
        if (r9 == null) goto L27;
        a r10 = new a(r2);     // Catch: Throwable -> L32
        r10.f12569a = r9.optString("begin");     // Catch: Throwable -> L32
        r10.b = r9.optInt("duration");     // Catch: Throwable -> L32
        r10.c = r9.optDouble("percent");     // Catch: Throwable -> L32
        r7.add(r10);     // Catch: Throwable -> L32
    L27:
        r8 = r8 + 1;     // Catch: Throwable -> L32
        goto L23
    L28:
        r1.put(r5, r7);     // Catch: Throwable -> L32
    L29:
        r3 = r3 + 1;     // Catch: Throwable -> L32
        goto L8
    L30:
        r12.f12571a = r1;     // Catch: Throwable -> L32
        return;
    L32:
        th = move-exception;
        aj.a(th, "hlUtil", "pbr");
    }

    public static synchronized void a(v r4, JSONObject r5) {
        monitor-enter(bh.class);
        if (r4 != null) goto L30;
        monitor-exit(bh.class);
        return;
    L30:
        String r6 = r4.a();     // Catch: Throwable -> L21
        if (TextUtils.isEmpty(r6) == false) goto L11;
        monitor-exit(bh.class);
        return;
    L11:
        if (r5 != null) goto L14;
        a(r6);     // Catch: Throwable -> L21
    L14:
        if (l.a(r5.optString("able", null), false) == true) goto L18;
        a(r6);     // Catch: Throwable -> L21
        monitor-exit(bh.class);
        return;
    L18:
        au.a(l.c, "Yb3Blbl9odHRwX2NvbnRyb2w", r6, r5.toString());     // Catch: Throwable -> L21
        a(r6, r5);     // Catch: Throwable -> L21
        monitor-exit(bh.class);
        return;
    L21:
        th = move-exception;
        aj.a(th, "hlUtil", "par");     // Catch: Throwable -> L25
        return;
    L25:
        th = move-exception;
        throw th;
    }

    private static synchronized void a(String r3) {
        monitor-enter(bh.class);
    L10:
        th = move-exception;
        aj.a(th, "hlUtil", "rc");     // Catch: Throwable -> L14
        return;
    L14:
        th = move-exception;
        throw th;
    L5:
        if (f12565a.containsKey(r3) == false) goto L7;
        f12565a.remove(r3);     // Catch: Throwable -> L10
    L7:
        SharedPreferences.Editor r1 = au.a(l.c, "Yb3Blbl9odHRwX2NvbnRyb2w");     // Catch: Throwable -> L10
        au.a(r1, r3);     // Catch: Throwable -> L10
        au.a(r1);     // Catch: Throwable -> L10
        monitor-exit(bh.class);
    }

    private static void a(String r2, c r3) {
    L7:
        th = move-exception;
        aj.a(th, "hlUtil", "ucr");
        return;
    L3:
        if (f12565a != null) goto L5;
        f12565a = new ConcurrentHashMap(8);     // Catch: Throwable -> L7
    L5:
        f12565a.put(r2, r3);     // Catch: Throwable -> L7
    }

    private static void a(String r5, String r6, String r7) {
        Context r0 = l.c;     // Catch: Throwable -> L27
        if (r0 != null) goto L5;
        return;
    L5:
        if (TextUtils.isEmpty(r5) == false) goto L8;
        return;
    L8:
        if (f12567e != null) goto L10;
        f12567e = new ConcurrentHashMap(8);     // Catch: Throwable -> L27
    L10:
        ConcurrentHashMap<String, String> r1 = f12567e;     // Catch: Throwable -> L27
        monitor-enter(r1);     // Catch: Throwable -> L27
    L23:
        th = move-exception;
        throw th;     // Catch: Throwable -> L27
    L13:
        if (f12567e.containsKey(r6) == false) goto L16;
        monitor-exit(r1);     // Catch: Throwable -> L23
        return;
    L16:
        f12567e.put(r6, r7);     // Catch: Throwable -> L23
        monitor-exit(r1);     // Catch: Throwable -> L23
        JSONObject r2 = new JSONObject();     // Catch: Throwable -> L27
        r2.put(DBHelpTool.RecordEntry.COLUMN_NAME_TIMESTAMP, System.currentTimeMillis());     // Catch: Throwable -> L27
        r2.put("type", af.j);     // Catch: Throwable -> L27
        r2.put(Constant.PROTOCOL_WEBVIEW_NAME, r5);     // Catch: Throwable -> L27
        r2.put("version", af.a(r5));     // Catch: Throwable -> L27
        r2.put("hostname", r6 + "#" + r7);     // Catch: Throwable -> L27
        String r8 = r2.toString();     // Catch: Throwable -> L27
        if (TextUtils.isEmpty(r8) == false) goto L21;
        return;
    L21:
        bq r9 = new bq(r0, "core", AliLiveInfoUtils.ALIVC_CONAN_VERSION, "O005");     // Catch: Throwable -> L27
        r9.a(r8);     // Catch: Throwable -> L27
        br.a(r9, r0);     // Catch: Throwable -> L27
        return;
    }

    private static void a(String r2, JSONObject r3) {
        c r0 = new c(0);     // Catch: Throwable -> L10
        a(r0, r3);     // Catch: Throwable -> L10
        b(r0, r3);     // Catch: Throwable -> L10
        if (r0.b == null) goto L5;
    L8:
        a(r2, r0);     // Catch: Throwable -> L10
        return;
    L5:
        if (r0.f12571a != null) goto L8;
        a(r2);     // Catch: Throwable -> L10
        return;
    }

    public static void a(URL r11, bl r12) {
        if (c != null) goto L6;
        c = new ConcurrentHashMap(8);     // Catch: Throwable -> L29
    L6:
        Map<String, List<String>> r1 = r12.b;     // Catch: Throwable -> L29
        if (r1 != null) goto L9;
        return;
    L9:
        if (r1.containsKey("nb") == false) goto L32;
        List<String> r0 = r12.b.get("nb");     // Catch: Throwable -> L29
        if (r0 != null) goto L13;
        return;
    L13:
        if (r0.size() <= 0) goto L34;
        byte r2 = 0;
        String[] r3 = r0.get(0).split("#");     // Catch: Throwable -> L29
        if (r3.length >= 2) goto L18;
        return;
    L18:
        int r4 = Integer.parseInt(r3[0]);     // Catch: Throwable -> L29
        long r5 = Integer.parseInt(r3[1]);     // Catch: Throwable -> L29
        b r6 = new b(r2);     // Catch: Throwable -> L29
        r6.f12570a = r12;     // Catch: Throwable -> L29
        if (r5 > 0) goto L21;
        r5 = 30;
    L21:
        r6.b = SystemClock.elapsedRealtime() + (r5 * 1000);     // Catch: Throwable -> L29
        if (r4 != 1) goto L25;
        c.put("app", r6);     // Catch: Throwable -> L29
        return;
    L25:
        if (r4 != 2) goto L35;
        if (r11 == null) goto L36;
        c.put(r11.getPath(), r6);     // Catch: Throwable -> L29
        return;
    L36:
        return;
    L35:
        return;
    L34:
        return;
    L32:
        return;
    }

    public static void a(boolean r5, String r6) {
        Context r0 = l.c;     // Catch: Throwable -> L15
        if (r0 != null) goto L5;
        return;
    L5:
        if (TextUtils.isEmpty(r6) == true) goto L19;
        JSONObject r1 = new JSONObject();     // Catch: Throwable -> L15
        r1.put(DBHelpTool.RecordEntry.COLUMN_NAME_TIMESTAMP, Long.valueOf(System.currentTimeMillis()));     // Catch: Throwable -> L15
        if (r5 == false) goto L12;
        Integer r7 = af.f12493g;     // Catch: Throwable -> L15
    L11:
        r1.put("type", r7);     // Catch: Throwable -> L15
        r1.put(Constant.PROTOCOL_WEBVIEW_NAME, r6);     // Catch: Throwable -> L15
        r1.put("version", af.a(r6));     // Catch: Throwable -> L15
        String r8 = r1.toString();     // Catch: Throwable -> L15
        bq r9 = new bq(r0, "core", AliLiveInfoUtils.ALIVC_CONAN_VERSION, "O005");     // Catch: Throwable -> L15
        r9.a(r8);     // Catch: Throwable -> L15
        br.a(r9, r0);     // Catch: Throwable -> L15
        return;
    L12:
        r7 = af.f12492f;     // Catch: Throwable -> L15
        goto L11
    L19:
        return;
    }

    private static void a(boolean r5, String r6, String r7, int r8) {
        Context r0 = l.c;     // Catch: Throwable -> L31
        if (r0 != null) goto L5;
        return;
    L5:
        if (TextUtils.isEmpty(r6) == false) goto L7;
        return;
    L7:
        if (TextUtils.isEmpty(r7) == true) goto L37;
        JSONObject r1 = new JSONObject();     // Catch: Throwable -> L31
        r1.put(DBHelpTool.RecordEntry.COLUMN_NAME_TIMESTAMP, System.currentTimeMillis());     // Catch: Throwable -> L31
        String r2 = af.a(r6);     // Catch: Throwable -> L31
        if (r5 == false) goto L13;
        String r9 = "type";
        Integer r3 = af.i;     // Catch: Throwable -> L31
    L12:
        r1.put(r9, r3);     // Catch: Throwable -> L31
        r1.put(Constant.PROTOCOL_WEBVIEW_NAME, r6);     // Catch: Throwable -> L31
        r1.put("version", r2);     // Catch: Throwable -> L31
        r1.put("uri", Uri.parse(r7).getPath());     // Catch: Throwable -> L31
        r1.put("blockLevel", r8);     // Catch: Throwable -> L31
        String r10 = r1.toString();     // Catch: Throwable -> L31
        if (TextUtils.isEmpty(r10) == false) goto L17;
        return;
    L17:
        bq r11 = new bq(r0, "core", AliLiveInfoUtils.ALIVC_CONAN_VERSION, "O005");     // Catch: Throwable -> L31
        r11.a(r10);     // Catch: Throwable -> L31
        if (f12568f != null) goto L20;
        f12568f = Collections.synchronizedList(new ArrayList(16));     // Catch: Throwable -> L31
    L20:
        List<bq> r12 = f12568f;     // Catch: Throwable -> L31
        monitor-enter(r12);     // Catch: Throwable -> L31
        f12568f.add(r11);     // Catch: Throwable -> L27
        if (f12568f.size() < 15) goto L25;
        a();     // Catch: Throwable -> L27
    L25:
        monitor-exit(r12);     // Catch: Throwable -> L27
        return;
    L27:
        th = move-exception;
        throw th;     // Catch: Throwable -> L31
        goto L38
    L13:
        r9 = "type";
        r3 = af.f12494h;     // Catch: Throwable -> L31
        goto L12
    L37:
        return;
    }

    private static boolean a(a r9) {
        if (r9 != null) goto L6;
        return false;
    L6:
        if (r9.c != 1.0d) goto L8;
        return false;
    L8:
        long r1 = System.currentTimeMillis();
        if (TextUtils.isEmpty(r9.f12569a) == false) goto L11;
    L25:
        return false;
    L11:
        if (r9.b <= 0) goto L25;
        long r3 = r1 - w.a(r9.f12569a, "HH:mm:ss").getTimeInMillis();
        if (r3 <= 0) goto L25;
        if (r3 >= (r9.b * 1000)) goto L25;
        if (r9.c != 0.0d) goto L20;
        return true;
    L20:
        if (f12566d != null) goto L22;
        f12566d = new Random();
    L22:
        f12566d.setSeed(((long) UUID.randomUUID().hashCode()) + r1);
        if (f12566d.nextDouble() <= r9.c) goto L25;
        return true;
    }

    private static boolean a(String r4, c r5, String r6) {
        Map<String, List<a>> r7 = r5.f12571a;     // Catch: Throwable -> L24
        if (r7 != null) goto L6;
    L23:
        return false;
    L6:
        if (r7.size() <= 0) goto L23;
        if (r7.containsKey(Marker.ANY_MARKER) == false) goto L17;
        Iterator<Map.Entry<String, List<a>>> r8 = r7.entrySet().iterator();     // Catch: Throwable -> L24
    L12:
        if (r8.hasNext() == false) goto L26;
        if (a(r8.next().getValue()) == false) goto L12;
        a(false, r6, r4, 1);     // Catch: Throwable -> L24
        return true;
    L26:
        return false;
    L17:
        String r1 = Uri.parse(r4).getPath();     // Catch: Throwable -> L24
        if (r7.containsKey(r1) == false) goto L26;
        if (a(r7.get(r1)) == false) goto L26;
        a(false, r6, r4, 2);     // Catch: Throwable -> L24
        return true;
    L24:
        th = move-exception;
        aj.a(th, "hlUtil", "inb");
        goto L26
    }

    private static boolean a(List<a> r2) {
        if (r2 != null) goto L5;
    L14:
        return false;
    L5:
        if (r2.size() <= 0) goto L14;
        Iterator<a> r3 = r2.iterator();
    L9:
        if (r3.hasNext() == false) goto L14;
        if (a(r3.next()) == false) goto L9;
        return true;
    }

    public static bl b(String r10, String r11) {
        String r0 = "app";
        if (c != null) goto L7;
        return null;
    L7:
        if (c.containsKey("app") == false) goto L17;
        b r2 = c.get("app");     // Catch: Throwable -> L31
        if (SystemClock.elapsedRealtime() > r2.b) goto L15;
        bl r1 = r2.f12570a;     // Catch: Throwable -> L31
        if (r1 == null) goto L13;
        r1.f12621e = false;     // Catch: Throwable -> L31
    L13:
        a(true, r11, r10, 1);     // Catch: Throwable -> L31
        return r1;
    L15:
        c.remove(r0);     // Catch: Throwable -> L31
        goto L30
    L17:
        if (TextUtils.isEmpty(r10) == false) goto L19;
        return null;
    L19:
        Uri r3 = Uri.parse(r10);     // Catch: Throwable -> L31
        if (r3 == null) goto L30;
        r0 = r3.getPath();     // Catch: Throwable -> L31
        if (c.containsKey(r0) == false) goto L30;
        b r4 = c.get(r0);     // Catch: Throwable -> L31
        if (SystemClock.elapsedRealtime() > r4.b) goto L15;
        bl r5 = r4.f12570a;     // Catch: Throwable -> L31
        if (r5 == null) goto L28;
        r5.f12621e = false;     // Catch: Throwable -> L31
    L28:
        a(true, r11, r10, 2);     // Catch: Throwable -> L31
        return r5;
    L30:
        return null;
    }

    private static String b(String r3, c r4, String r5) {
        Map<String, String> r6 = r4.b;     // Catch: Throwable -> L12
        if (r6 != null) goto L5;
    L11:
        return r3;
    L5:
        if (r6.size() <= 0) goto L11;
        Uri r0 = Uri.parse(r3);     // Catch: Throwable -> L12
        String r1 = r0.getAuthority();     // Catch: Throwable -> L12
        if (r6.containsKey(r1) == false) goto L17;
        String r7 = r6.get(r1);     // Catch: Throwable -> L12
        r3 = r0.buildUpon().authority(r7).toString();     // Catch: Throwable -> L12
        a(r5, r1, r7);     // Catch: Throwable -> L12
        return r3;
    L17:
        return r3;
    L12:
        th = move-exception;
        aj.a(th, "hlUtil", "pdr");
        return r3;
    }

    public static List<bq> b() {
        ArrayList r0 = null;
        List<bq> r1 = f12568f;     // Catch: Throwable -> L22
        monitor-enter(r1);     // Catch: Throwable -> L22
        List<bq> r2 = f12568f;     // Catch: Throwable -> L14
        if (r2 != null) goto L8;
    L12:
        monitor-exit(r1);     // Catch: Throwable -> L14
        return r0;
    L8:
        if (r2.size() <= 0) goto L12;
        ArrayList r3 = new ArrayList();     // Catch: Throwable -> L14
        r3.addAll(f12568f);     // Catch: Throwable -> L19
        f12568f.clear();     // Catch: Throwable -> L19
        r0 = r3;
        goto L12
    L31:
        Throwable th = th;
    L16:
        monitor-exit(r1);     // Catch: Throwable -> L19
        throw th;     // Catch: Throwable -> L18
    L21:
        return r3;
    L19:
        th = th;
    L14:
        th = move-exception;
        r3 = r0;
        th = th;
    L34:
        return null;
    }

    private static void b(c r6, JSONObject r7) {
        JSONObject r8 = r7.optJSONObject("domainMap");     // Catch: Throwable -> L13
        if (r8 != null) goto L5;
        return;
    L5:
        JSONArray r0 = r8.names();     // Catch: Throwable -> L13
        if (r0 != null) goto L8;
        return;
    L8:
        HashMap r1 = new HashMap(8);     // Catch: Throwable -> L13
        int r2 = r0.length();     // Catch: Throwable -> L13
        int r3 = 0;
    L9:
        if (r3 >= r2) goto L11;
        String r4 = r0.optString(r3);     // Catch: Throwable -> L13
        r1.put(r4, r8.optString(r4));     // Catch: Throwable -> L13
        r3 = r3 + 1;     // Catch: Throwable -> L13
        goto L9
    L11:
        r6.b = r1;     // Catch: Throwable -> L13
        return;
    L13:
        th = move-exception;
        aj.a(th, "hlUtil", "pdr");
    }
}
