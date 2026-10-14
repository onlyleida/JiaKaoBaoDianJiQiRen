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

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f13402f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f13403g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f13404h;
    private Map<String, String> m;
    private Map<String, String> n;
    private Map<String, String> o;
    private Map<String, String> p;
    private com.mobile.auth.o.a q;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f13400d = "c78623c22e2f6513";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f13401e = UUID.randomUUID().toString();
    private String i = "";
    private String j = "";
    private com.mobile.auth.n.a k = null;
    private LoggerIdManager l = null;

    public d(Context context) {
        this.c = context.getApplicationContext();
        n();
    }

    /* JADX WARN: Unreachable blocks removed: 7, instructions: 7 */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:22:0x0020
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public static java.lang.String a(int r1) {
        /*
            switch(r1) {
                case 1: goto L15;
                case 2: goto L12;
                case 3: goto Lf;
                case 4: goto Lc;
                case 5: goto L9;
                case 6: goto L6;
                default: goto L3;
            }
        L3:
            java.lang.String r1 = "UNKNOWN"
            goto L1a
        L6:
            java.lang.String r1 = "CRASH"
            return r1
        L9:
            java.lang.String r1 = "ERROR"
            return r1
        Lc:
            java.lang.String r1 = "WARNING"
            return r1
        Lf:
            java.lang.String r1 = "INFO"
            return r1
        L12:
            java.lang.String r1 = "DEBUG"
            return r1
        L15:
            java.lang.String r1 = "VERBOSE"
            return r1
        L18:
            r1 = move-exception
            goto L1b
        L1a:
            return r1
        L1b:
            r0 = 0
            com.mobile.auth.gatewayauth.a.a(r1)     // Catch: java.lang.Throwable -> L20
            return r0
        L20:
            r1 = move-exception
            com.mobile.auth.gatewayauth.a.a(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mobile.auth.gatewayauth.manager.d.a(int):java.lang.String");
    }

    private String a(JSONObject jSONObject, String str, String str2, String str3) {
        try {
            try {
                jSONObject.put("c", new JSONObject(a(this.c, str2)));
                jSONObject.put(AuthActivity.ACTION_KEY, str);
                jSONObject.put("apiLevel", str3);
                jSONObject.put("osType", "Android");
                Map<String, String> map = this.p;
                if (map != null && !map.isEmpty()) {
                    for (String str4 : this.p.keySet()) {
                        jSONObject.put(str4, this.p.get(str4));
                    }
                }
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        } catch (JSONException e2) {
            this.q.d("AssembleMonitorInfoError!", Log.getStackTraceString(e2));
        }
        return jSONObject.toString();
    }

    private void n() {
        try {
            com.mobile.auth.o.a aVarA = com.mobile.auth.o.a.a(this.c);
            this.q = aVarA;
            aVarA.a(this);
            this.k = new com.mobile.auth.n.a(a(), this);
            this.l = new LoggerIdManager(this.c);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public com.mobile.auth.o.a a() {
        try {
            return this.q;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public String a(MonitorStruct monitorStruct) {
        try {
            return a(monitorStruct.getVendorKey(), monitorStruct.getAction(), new UStruct(monitorStruct), monitorStruct.getApiLevel(), monitorStruct.getPhoneNumber());
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public String a(String str, int i) {
        try {
            String str2 = String.format(Locale.getDefault(), "%s [%s] [%s] :%s", new SimpleDateFormat("yy-MM-dd HH:mm:ss.SSS").format(new Date()), a(i), Thread.currentThread().toString(), str);
            JSONObject jSONObject = new JSONObject();
            HashMap map = new HashMap();
            map.put(DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL, String.valueOf(i));
            map.put("createTime", String.valueOf(System.currentTimeMillis()));
            map.put(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, str2);
            map.put("uniqueId", l());
            map.put("utdid", m());
            map.put("um_aaid", this.l.getUmaaid(this.c));
            map.put("traceId", this.f13401e);
            map.put("et", this.i);
            try {
                jSONObject.put("u", new JSONObject(map));
                jSONObject.put("s", AESUtils.encrypt(new JSONObject(c()).toString(), "c78623c22e2f6513"));
            } catch (Exception e2) {
                this.q.d("AssembleLoggerInfoError!", Log.getStackTraceString(e2));
            }
            return jSONObject.toString();
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public String a(String str, String str2, UStruct uStruct, String str3) {
        try {
            return a(str, str2, uStruct, str3, "");
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public String a(String str, String str2, UStruct uStruct, String str3, String str4) {
        String strEncrypt;
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(this.i)) {
                uStruct.setEt(this.i);
            }
            try {
                JSONObject json = uStruct.toJson();
                Map<String, String> map = this.m;
                if (map != null && !map.isEmpty()) {
                    for (String str5 : this.m.keySet()) {
                        json.put(str5, this.m.get(str5));
                    }
                }
                jSONObject.put("u", json);
                if (TextUtils.isEmpty(str4)) {
                    Map<String, String> mapC = c();
                    Map<String, String> map2 = this.o;
                    if (map2 != null && !map2.isEmpty()) {
                        mapC.putAll(this.o);
                    }
                    strEncrypt = AESUtils.encrypt(new JSONObject(mapC).toString(), "c78623c22e2f6513");
                } else {
                    HashMap map3 = new HashMap();
                    map3.put("phoneNumber", str4);
                    map3.putAll(c());
                    Map<String, String> map4 = this.o;
                    if (map4 != null && !map4.isEmpty()) {
                        map3.putAll(this.o);
                    }
                    strEncrypt = AESUtils.encrypt(new JSONObject(map3).toString(), "c78623c22e2f6513");
                }
                jSONObject.put("s", strEncrypt);
            } catch (Exception e2) {
                this.q.d("BuildMonitorError!", Log.getStackTraceString(e2));
            }
            return a(jSONObject, str2, str, str3);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public Map<String, Object> a(Context context, String str) {
        String str2;
        try {
            HashMap map = new HashMap();
            map.put("createTime", Long.valueOf(System.currentTimeMillis()));
            map.put("osVersion", com.mobile.auth.gatewayauth.utils.d.b());
            map.put("deviceName", com.mobile.auth.gatewayauth.utils.d.c());
            map.put("deviceBrand", com.mobile.auth.gatewayauth.utils.d.a());
            map.put("packageName", PackageUtils.getPackageName(context));
            map.put("appVersion", PackageUtils.getVersionName(context));
            map.put(SocialOperation.GAME_SIGNATURE, PackageUtils.getSign(context));
            map.put("vendorKey", str);
            map.put("sdkVersion", BuildConfig.VERSION_NAME);
            map.put("operatorId", Integer.valueOf(com.mobile.auth.gatewayauth.utils.c.a(context)));
            map.put("networkType", com.mobile.auth.gatewayauth.utils.c.e(context));
            map.put("monitorVersion", AliLiveInfoUtils.ALIVC_CONAN_VERSION);
            map.put("utdid", m());
            map.put("um_aaid", this.l.getUmaaid(this.c));
            map.put("uniqueId", l());
            map.put("traceId", this.f13401e);
            if (Constant.VENDOR_CMCC.equals(str)) {
                str2 = BuildConfig.CMCC_SDK_VERSION;
            } else if (Constant.VENDOR_CUCC.equals(str)) {
                str2 = BuildConfig.CUCC_SDK_VERSION;
            } else {
                str2 = Constant.VENDOR_CTCC.equals(str) ? BuildConfig.CTCC_SDK_VERSION : "";
            }
            map.put("carrierSdkVersion", str2);
            Map<String, String> map2 = this.n;
            if (map2 != null && !map2.isEmpty()) {
                map.putAll(this.n);
            }
            return map;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public void a(f fVar) {
        try {
            this.k.a(fVar);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(UploadLog uploadLog) {
        try {
            try {
                String level = uploadLog.getLevel();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd-hh-mm-ss");
                try {
                    if (TextUtils.isEmpty(level)) {
                        return;
                    }
                    String[] strArrSplit = level.split(",");
                    int i = 0;
                    for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                        if ("verbose".equalsIgnoreCase(strArrSplit[i2])) {
                            i = 1;
                        } else if (com.sixents.sdk.BuildConfig.BUILD_TYPE.equalsIgnoreCase(strArrSplit[i2])) {
                            i = 2;
                        } else if ("info".equalsIgnoreCase(strArrSplit[i2])) {
                            i = 3;
                        } else if ("warn".equalsIgnoreCase(strArrSplit[i2])) {
                            i = 4;
                        } else if ("error".equalsIgnoreCase(strArrSplit[i2])) {
                            i = 5;
                        }
                        this.q.a(simpleDateFormat.parse(uploadLog.getStart_time()).getTime(), simpleDateFormat.parse(uploadLog.getEnd_time()).getTime(), i);
                    }
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            } catch (Throwable th) {
                com.mobile.auth.gatewayauth.a.a(th);
                return;
            }
            com.mobile.auth.gatewayauth.a.a(th);
            return;
        } catch (Throwable th2) {
            com.mobile.auth.gatewayauth.a.a(th2);
            return;
        }
    }

    public void a(String str) {
        try {
            this.j = str;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public PnsReporter b() {
        try {
            return this.k;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public String b(String str, String str2, UStruct uStruct, String str3) {
        String strEncrypt;
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(this.i)) {
                uStruct.setEt(this.i);
            }
            try {
                JSONObject json = uStruct.toJson();
                Map<String, String> map = this.m;
                if (map != null && !map.isEmpty()) {
                    for (String str4 : this.m.keySet()) {
                        json.put(str4, this.m.get(str4));
                    }
                }
                jSONObject.put("u", json);
                Map<String, String> map2 = this.o;
                if (map2 == null || map2.isEmpty()) {
                    strEncrypt = "";
                } else {
                    Map<? extends String, ? extends String> map3 = this.o;
                    map3.putAll(map3);
                    strEncrypt = AESUtils.encrypt(new JSONObject(this.o).toString(), "c78623c22e2f6513");
                }
                jSONObject.put("s", strEncrypt);
            } catch (Exception e2) {
                this.q.d("BuildMonitorNoSError!", Log.getStackTraceString(e2));
            }
            return a(jSONObject, str2, str, str3);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public Map<String, String> c() {
        try {
            HashMap map = new HashMap();
            map.put("innerIP", com.mobile.auth.gatewayauth.utils.c.a());
            map.put("sim1", com.mobile.auth.gatewayauth.utils.c.d(this.c));
            map.put("sim2", "");
            map.put("sceneCode", this.j);
            return map;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public synchronized String d() {
        try {
            if (TextUtils.isEmpty(this.f13402f)) {
                return g();
            }
            return this.f13402f;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public synchronized String e() {
        try {
            if (TextUtils.isEmpty(this.f13403g)) {
                return h();
            }
            return this.f13403g;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public synchronized String f() {
        try {
            if (TextUtils.isEmpty(this.f13404h)) {
                return k();
            }
            return this.f13404h;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public synchronized String g() {
        String string;
        try {
            string = UUID.randomUUID().toString();
            this.f13402f = string;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
        return string;
    }

    public synchronized String h() {
        String string;
        try {
            string = UUID.randomUUID().toString();
            this.f13403g = string;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
        return string;
    }

    public synchronized void i() {
        try {
            this.f13402f = null;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public synchronized void j() {
        try {
            this.f13403g = null;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public synchronized String k() {
        String string;
        try {
            string = UUID.randomUUID().toString();
            this.f13404h = string;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
        return string;
    }

    public String l() {
        try {
            if (f13399a == null) {
                f13399a = this.l.getUniqueId();
            }
            return f13399a;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public String m() {
        try {
            if (b == null) {
                b = this.l.getUtdid(this.c);
            }
            return b;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }
}
