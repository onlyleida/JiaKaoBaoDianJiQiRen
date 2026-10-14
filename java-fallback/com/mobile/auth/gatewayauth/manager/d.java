package com.mobile.auth.gatewayauth.manager;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.alivc.live.pusher.logreport.core.AliLiveInfoUtils;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.gatewayauth.PnsReporter;
import com.mobile.auth.gatewayauth.model.MonitorStruct;
import com.mobile.auth.gatewayauth.model.UStruct;
import com.mobile.auth.gatewayauth.model.UploadLog;
import com.mobile.auth.gatewayauth.utils.AESUtils;
import com.mobile.auth.gatewayauth.utils.security.PackageUtils;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import com.nirvana.tools.logger.storage.LoggerIdManager;
import com.tencent.open.SocialOperation;
import com.tencent.tauth.AuthActivity;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f13399a;
    public static String b;
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f13400d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f13401e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f13402f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f13403g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f13404h;
    private String i;
    private String j;
    private com.mobile.auth.n.a k;
    private LoggerIdManager l;
    private Map<String, String> m;
    private Map<String, String> n;
    private Map<String, String> o;
    private Map<String, String> p;
    private com.mobile.auth.o.a q;

    public d(Context r2) {
        this.f13400d = "c78623c22e2f6513";
        this.f13401e = UUID.randomUUID().toString();
        this.i = "";
        this.j = "";
        this.k = null;
        this.l = null;
        this.c = r2.getApplicationContext();
        n();
    }

    /* JADX WARN: Unreachable blocks removed: 7, instructions: 7 */
    public static String a(int r1) {
        switch(r1) {
            case 1: goto L14;
            case 2: goto L12;
            case 3: goto L10;
            case 4: goto L8;
            case 5: goto L6;
            case 6: goto L4;
            default: goto L18;
        };
    L4:
        return "CRASH";
    L6:
        return "ERROR";
    L8:
        return "WARNING";
    L10:
        return "INFO";
    L12:
        return "DEBUG";
    L14:
        return "VERBOSE";
    L18:
        return "UNKNOWN";
    }

    private String a(JSONObject r4, String r5, String r6, String r7) {
        r4.put("c", new JSONObject(a(this.c, r6)));     // Catch: Throwable -> L11 JSONException -> L13
        r4.put(AuthActivity.ACTION_KEY, r5);     // Catch: Throwable -> L11 JSONException -> L13
        r4.put("apiLevel", r7);     // Catch: Throwable -> L11 JSONException -> L13
        r4.put("osType", "Android");     // Catch: Throwable -> L11 JSONException -> L13
        Map<String, String> r8 = this.p;     // Catch: Throwable -> L11 JSONException -> L13
        if (r8 != null) goto L5;
    L15:
        return r4.toString();
    L5:
        if (r8.isEmpty() == true) goto L15;
        Iterator<String> r9 = this.p.keySet().iterator();     // Catch: Throwable -> L11 JSONException -> L13
    L8:
        if (r9.hasNext() == false) goto L15;
        String r10 = r9.next();     // Catch: Throwable -> L11 JSONException -> L13
        r4.put(r10, this.p.get(r10));     // Catch: Throwable -> L11 JSONException -> L13
    L11:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L20
        return null;
    L20:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    L13:
        e = move-exception;
        this.q.d(new String[]{"AssembleMonitorInfoError!", Log.getStackTraceString(e)});     // Catch: Throwable -> L11
        goto L15
    }

    private void n() {
        com.mobile.auth.o.a r0 = com.mobile.auth.o.a.a(this.c);     // Catch: Throwable -> L4
        this.q = r0;     // Catch: Throwable -> L4
        r0.a(this);     // Catch: Throwable -> L4
        this.k = new com.mobile.auth.n.a(a(), this);     // Catch: Throwable -> L4
        this.l = new LoggerIdManager(this.c);     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
    }

    public com.mobile.auth.o.a a() {
        return this.q;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    public String a(MonitorStruct r7) {
        return a(r7.getVendorKey(), r7.getAction(), new UStruct(r7), r7.getApiLevel(), r7.getPhoneNumber());
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    public String a(String r8, int r9) {
        String r10 = String.format(Locale.getDefault(), "%s [%s] [%s] :%s", new Object[]{new SimpleDateFormat("yy-MM-dd HH:mm:ss.SSS").format(new Date()), a(r9), Thread.currentThread().toString(), r8});     // Catch: Throwable -> L9
        JSONObject r0 = new JSONObject();     // Catch: Throwable -> L9
        HashMap r1 = new HashMap();     // Catch: Throwable -> L9
        r1.put(DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL, String.valueOf(r9));     // Catch: Throwable -> L9
        r1.put("createTime", String.valueOf(System.currentTimeMillis()));     // Catch: Throwable -> L9
        r1.put(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, r10);     // Catch: Throwable -> L9
        r1.put("uniqueId", l());     // Catch: Throwable -> L9
        r1.put("utdid", m());     // Catch: Throwable -> L9
        r1.put("um_aaid", this.l.getUmaaid(this.c));     // Catch: Throwable -> L9
        r1.put("traceId", this.f13401e);     // Catch: Throwable -> L9
        r1.put("et", this.i);     // Catch: Throwable -> L9
        r0.put("u", new JSONObject(r1));     // Catch: Exception -> L5 Throwable -> L9
        r0.put("s", AESUtils.encrypt(new JSONObject(c()).toString(), "c78623c22e2f6513"));     // Catch: Exception -> L5 Throwable -> L9
    L7:
        return r0.toString();
    L5:
        e = move-exception;
        this.q.d(new String[]{"AssembleLoggerInfoError!", Log.getStackTraceString(e)});     // Catch: Throwable -> L9
    L9:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L13
        return null;
    L13:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    public String a(String r7, String r8, UStruct r9, String r10) {
        return a(r7, r8, r9, r10, "");
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    public String a(String r5, String r6, UStruct r7, String r8, String r9) {
        JSONObject r0 = new JSONObject();     // Catch: Throwable -> L34
        if (TextUtils.isEmpty(this.i) == true) goto L45;
        r7.setEt(this.i);     // Catch: Throwable -> L34
    L45:
        JSONObject r10 = r7.toJson();     // Catch: Exception -> L30 Throwable -> L34
        Map<String, String> r1 = this.m;     // Catch: Exception -> L30 Throwable -> L34
        if (r1 != null) goto L8;
    L13:
        r0.put("u", r10);     // Catch: Exception -> L30 Throwable -> L34
        if (TextUtils.isEmpty(r9) == false) goto L23;
        Map<String, String> r11 = c();     // Catch: Exception -> L30 Throwable -> L34
        Map<String, String> r12 = this.o;     // Catch: Exception -> L30 Throwable -> L34
        if (r12 != null) goto L19;
    L21:
        String r13 = AESUtils.encrypt(new JSONObject(r11).toString(), "c78623c22e2f6513");     // Catch: Exception -> L30 Throwable -> L34
    L22:
        r0.put("s", r13);     // Catch: Exception -> L30 Throwable -> L34
    L32:
        return a(r0, r6, r5, r8);
    L19:
        if (r12.isEmpty() == true) goto L21;
        r11.putAll(this.o);     // Catch: Exception -> L30 Throwable -> L34
        goto L21
    L23:
        HashMap r14 = new HashMap();     // Catch: Exception -> L30 Throwable -> L34
        r14.put("phoneNumber", r9);     // Catch: Exception -> L30 Throwable -> L34
        r14.putAll(c());     // Catch: Exception -> L30 Throwable -> L34
        Map<String, String> r15 = this.o;     // Catch: Exception -> L30 Throwable -> L34
        if (r15 != null) goto L26;
    L28:
        r13 = AESUtils.encrypt(new JSONObject(r14).toString(), "c78623c22e2f6513");     // Catch: Exception -> L30 Throwable -> L34
        goto L22
    L26:
        if (r15.isEmpty() == true) goto L28;
        r14.putAll(this.o);     // Catch: Exception -> L30 Throwable -> L34
        goto L28
    L8:
        if (r1.isEmpty() == true) goto L13;
        Iterator<String> r2 = this.m.keySet().iterator();     // Catch: Exception -> L30 Throwable -> L34
    L11:
        if (r2.hasNext() == false) goto L13;
        String r3 = r2.next();     // Catch: Exception -> L30 Throwable -> L34
        r10.put(r3, this.m.get(r3));     // Catch: Exception -> L30 Throwable -> L34
    L30:
        e = move-exception;
        this.q.d(new String[]{"BuildMonitorError!", Log.getStackTraceString(e)});     // Catch: Throwable -> L34
    L34:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L38
        return null;
    L38:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    public Map<String, Object> a(Context r5, String r6) {
        HashMap r0 = new HashMap();     // Catch: Throwable -> L20
        r0.put("createTime", Long.valueOf(System.currentTimeMillis()));     // Catch: Throwable -> L20
        r0.put("osVersion", com.mobile.auth.gatewayauth.utils.d.b());     // Catch: Throwable -> L20
        r0.put("deviceName", com.mobile.auth.gatewayauth.utils.d.c());     // Catch: Throwable -> L20
        r0.put("deviceBrand", com.mobile.auth.gatewayauth.utils.d.a());     // Catch: Throwable -> L20
        r0.put("packageName", PackageUtils.getPackageName(r5));     // Catch: Throwable -> L20
        r0.put("appVersion", PackageUtils.getVersionName(r5));     // Catch: Throwable -> L20
        r0.put(SocialOperation.GAME_SIGNATURE, PackageUtils.getSign(r5));     // Catch: Throwable -> L20
        r0.put("vendorKey", r6);     // Catch: Throwable -> L20
        r0.put("sdkVersion", BuildConfig.VERSION_NAME);     // Catch: Throwable -> L20
        r0.put("operatorId", Integer.valueOf(com.mobile.auth.gatewayauth.utils.c.a(r5)));     // Catch: Throwable -> L20
        r0.put("networkType", com.mobile.auth.gatewayauth.utils.c.e(r5));     // Catch: Throwable -> L20
        r0.put("monitorVersion", AliLiveInfoUtils.ALIVC_CONAN_VERSION);     // Catch: Throwable -> L20
        r0.put("utdid", m());     // Catch: Throwable -> L20
        r0.put("um_aaid", this.l.getUmaaid(this.c));     // Catch: Throwable -> L20
        r0.put("uniqueId", l());     // Catch: Throwable -> L20
        r0.put("traceId", this.f13401e);     // Catch: Throwable -> L20
        if (Constant.VENDOR_CMCC.equals(r6) == false) goto L8;
        String r7 = BuildConfig.CMCC_SDK_VERSION;
    L6:
        r0.put("carrierSdkVersion", r7);     // Catch: Throwable -> L20
        Map<String, String> r8 = this.n;     // Catch: Throwable -> L20
        if (r8 != null) goto L17;
    L19:
        return r0;
    L17:
        if (r8.isEmpty() == true) goto L19;
        r0.putAll(this.n);     // Catch: Throwable -> L20
        goto L19
    L8:
        if (Constant.VENDOR_CUCC.equals(r6) == false) goto L11;
        r7 = BuildConfig.CUCC_SDK_VERSION;
        goto L6
    L11:
        if (Constant.VENDOR_CTCC.equals(r6) == false) goto L13;
        r7 = BuildConfig.CTCC_SDK_VERSION;
        goto L6
    L13:
        r7 = "";
    L20:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L24
        return null;
    L24:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    public void a(f r2) {
        this.k.a(r2);     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
    }

    public void a(UploadLog r11) {
        String r0 = r11.getLevel();     // Catch: Throwable -> L28
        SimpleDateFormat r1 = new SimpleDateFormat("yyyy-MM-dd-hh-mm-ss");     // Catch: Throwable -> L28
    L25:
        e = move-exception;
        e.printStackTrace();     // Catch: Throwable -> L28
        return;
    L4:
        if (TextUtils.isEmpty(r0) == true) goto L41;
        String[] r2 = r0.split(",");     // Catch: Exception -> L25 Throwable -> L28
        int r3 = 0;
        int r4 = 0;
    L6:
        if (r3 >= r2.length) goto L44;
        if ("verbose".equalsIgnoreCase(r2[r3]) == false) goto L12;
        r4 = 1;
    L23:
        this.q.a(r1.parse(r11.getStart_time()).getTime(), r1.parse(r11.getEnd_time()).getTime(), r4);     // Catch: Exception -> L25 Throwable -> L28
        r3 = r3 + 1;
        goto L6
    L12:
        if (com.sixents.sdk.BuildConfig.BUILD_TYPE.equalsIgnoreCase(r2[r3]) == false) goto L15;
        r4 = 2;
        goto L23
    L15:
        if ("info".equalsIgnoreCase(r2[r3]) == false) goto L18;
        r4 = 3;
        goto L23
    L18:
        if ("warn".equalsIgnoreCase(r2[r3]) == false) goto L21;
        r4 = 4;
        goto L23
    L21:
        if ("error".equalsIgnoreCase(r2[r3]) == false) goto L23;
        r4 = 5;
        goto L23
    L44:
        return;
    L41:
        return;
    L28:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L31
        return;
    L31:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
    }

    public void a(String r1) {
        this.j = r1;     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
    }

    public PnsReporter b() {
        return this.k;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    public String b(String r6, String r7, UStruct r8, String r9) {
        JSONObject r0 = new JSONObject();     // Catch: Throwable -> L26
        if (TextUtils.isEmpty(this.i) == true) goto L33;
        r8.setEt(this.i);     // Catch: Throwable -> L26
    L33:
        JSONObject r10 = r8.toJson();     // Catch: Exception -> L22 Throwable -> L26
        Map<String, String> r1 = this.m;     // Catch: Exception -> L22 Throwable -> L26
        if (r1 != null) goto L8;
    L13:
        r0.put("u", r10);     // Catch: Exception -> L22 Throwable -> L26
        Map<String, String> r11 = this.o;     // Catch: Exception -> L22 Throwable -> L26
        if (r11 != null) goto L17;
    L20:
        String r12 = "";
    L19:
        r0.put("s", r12);     // Catch: Exception -> L22 Throwable -> L26
    L24:
        return a(r0, r7, r6, r9);
    L17:
        if (r11.isEmpty() == true) goto L20;
        Map<? extends String, ? extends String> r13 = this.o;     // Catch: Exception -> L22 Throwable -> L26
        r13.putAll(r13);     // Catch: Exception -> L22 Throwable -> L26
        r12 = AESUtils.encrypt(new JSONObject(this.o).toString(), "c78623c22e2f6513");     // Catch: Exception -> L22 Throwable -> L26
        goto L19
    L8:
        if (r1.isEmpty() == true) goto L13;
        Iterator<String> r2 = this.m.keySet().iterator();     // Catch: Exception -> L22 Throwable -> L26
    L11:
        if (r2.hasNext() == false) goto L13;
        String r3 = r2.next();     // Catch: Exception -> L22 Throwable -> L26
        r10.put(r3, this.m.get(r3));     // Catch: Exception -> L22 Throwable -> L26
    L22:
        e = move-exception;
        this.q.d(new String[]{"BuildMonitorNoSError!", Log.getStackTraceString(e)});     // Catch: Throwable -> L26
    L26:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L30
        return null;
    L30:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    public Map<String, String> c() {
        HashMap r0 = new HashMap();     // Catch: Throwable -> L4
        r0.put("innerIP", com.mobile.auth.gatewayauth.utils.c.a());     // Catch: Throwable -> L4
        r0.put("sim1", com.mobile.auth.gatewayauth.utils.c.d(this.c));     // Catch: Throwable -> L4
        r0.put("sim2", "");     // Catch: Throwable -> L4
        r0.put("sceneCode", this.j);     // Catch: Throwable -> L4
        return r0;
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    public synchronized String d() {
        monitor-enter(this);
    L11:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L16
        return null;
    L16:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L20
        return null;
    L20:
        th = move-exception;
        throw th;
    L4:
        if (TextUtils.isEmpty(this.f13402f) == false) goto L8;
        String r0 = g();     // Catch: Throwable -> L11
        monitor-exit(this);
        return r0;
    L8:
        String r1 = this.f13402f;     // Catch: Throwable -> L11
        monitor-exit(this);
        return r1;
    }

    public synchronized String e() {
        monitor-enter(this);
    L11:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L16
        return null;
    L16:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L20
        return null;
    L20:
        th = move-exception;
        throw th;
    L4:
        if (TextUtils.isEmpty(this.f13403g) == false) goto L8;
        String r0 = h();     // Catch: Throwable -> L11
        monitor-exit(this);
        return r0;
    L8:
        String r1 = this.f13403g;     // Catch: Throwable -> L11
        monitor-exit(this);
        return r1;
    }

    public synchronized String f() {
        monitor-enter(this);
    L11:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L16
        return null;
    L16:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L20
        return null;
    L20:
        th = move-exception;
        throw th;
    L4:
        if (TextUtils.isEmpty(this.f13404h) == false) goto L8;
        String r0 = k();     // Catch: Throwable -> L11
        monitor-exit(this);
        return r0;
    L8:
        String r1 = this.f13404h;     // Catch: Throwable -> L11
        monitor-exit(this);
        return r1;
    }

    public synchronized String g() {
        monitor-enter(this);
        String r0 = UUID.randomUUID().toString();     // Catch: Throwable -> L6
        this.f13402f = r0;     // Catch: Throwable -> L6
        monitor-exit(this);
        return r0;
    L6:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L11
        return null;
    L11:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L15
        return null;
    L15:
        th = move-exception;
        throw th;
    }

    public synchronized String h() {
        monitor-enter(this);
        String r0 = UUID.randomUUID().toString();     // Catch: Throwable -> L6
        this.f13403g = r0;     // Catch: Throwable -> L6
        monitor-exit(this);
        return r0;
    L6:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L11
        return null;
    L11:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L15
        return null;
    L15:
        th = move-exception;
        throw th;
    }

    public synchronized void i() {
        monitor-enter(this);
        this.f13402f = null;     // Catch: Throwable -> L6
    L11:
        monitor-exit(this);
        return;
    L6:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L9
    L9:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L13
    L13:
        th = move-exception;
        throw th;
    }

    public synchronized void j() {
        monitor-enter(this);
        this.f13403g = null;     // Catch: Throwable -> L6
    L11:
        monitor-exit(this);
        return;
    L6:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L9
    L9:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L13
    L13:
        th = move-exception;
        throw th;
    }

    public synchronized String k() {
        monitor-enter(this);
        String r0 = UUID.randomUUID().toString();     // Catch: Throwable -> L6
        this.f13404h = r0;     // Catch: Throwable -> L6
        monitor-exit(this);
        return r0;
    L6:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L11
        return null;
    L11:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L15
        return null;
    L15:
        th = move-exception;
        throw th;
    }

    public String l() {
    L7:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L11
        return null;
    L11:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    L3:
        if (f13399a != null) goto L5;
        f13399a = this.l.getUniqueId();     // Catch: Throwable -> L7
    L5:
        return f13399a;
    }

    public String m() {
    L7:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L11
        return null;
    L11:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    L3:
        if (b != null) goto L5;
        b = this.l.getUtdid(this.c);     // Catch: Throwable -> L7
    L5:
        return b;
    }
}
