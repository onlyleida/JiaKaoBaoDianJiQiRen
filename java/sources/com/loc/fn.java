package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.SparseArray;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.iflytek.cloud.SpeechConstant;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class fn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SparseArray<Long> f12919a = new SparseArray<>();
    public int b = -1;
    public long c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String[] f12920d = {"ol", "cl", "gl", "ha", "bs", "ds"};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12921e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f12922f = -1;
    private static List<bq> i = new ArrayList();
    private static JSONArray j = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static AMapLocation f12917g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static boolean f12918h = false;

    /* JADX INFO: renamed from: com.loc.fn$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f12923a;

        static {
            int[] iArr = new int[AMapLocationClientOption.AMapLocationMode.values().length];
            f12923a = iArr;
            try {
                iArr[AMapLocationClientOption.AMapLocationMode.Battery_Saving.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12923a[AMapLocationClientOption.AMapLocationMode.Device_Sensors.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12923a[AMapLocationClientOption.AMapLocationMode.Hight_Accuracy.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static String a(int i2) {
        if (i2 == 2011) {
            return "ContextIsNull";
        }
        if (i2 == 2031) {
            return "CreateApsReqException";
        }
        if (i2 == 2041) {
            return "ResponseResultIsNull";
        }
        if (i2 == 2081) {
            return "LocalLocException";
        }
        if (i2 == 2091) {
            return "InitException";
        }
        if (i2 == 2111) {
            return "ErrorCgiInfo";
        }
        if (i2 == 2121) {
            return "NotLocPermission";
        }
        if (i2 == 2141) {
            return "NoEnoughStatellites";
        }
        if (i2 == 2021) {
            return "OnlyMainWifi";
        }
        if (i2 == 2022) {
            return "OnlyOneWifiButNotMain";
        }
        if (i2 == 2061) {
            return "ServerRetypeError";
        }
        if (i2 == 2062) {
            return "ServerLocFail";
        }
        if (i2 == 2151) {
            return "MaybeMockNetLoc";
        }
        if (i2 == 2152) {
            return "MaybeMockGPSLoc";
        }
        switch (i2) {
            case 2051:
                return "NeedLoginNetWork\t";
            case 2052:
                return "MaybeIntercepted";
            case 2053:
                return "DecryptResponseException";
            case 2054:
                return "ParserDataException";
            default:
                switch (i2) {
                    case 2101:
                        return "BindAPSServiceException";
                    case 2102:
                        return "AuthClientScodeFail";
                    case 2103:
                        return "NotConfigAPSService";
                    default:
                        switch (i2) {
                            case 2131:
                                return "NoCgiOAndWifiInfo";
                            case 2132:
                                return "AirPlaneModeAndWifiOff";
                            case 2133:
                                return "NoCgiAndWifiOff";
                            default:
                                return "";
                        }
                }
        }
    }

    public static void a(long j2, long j3) {
        try {
            if (f12918h) {
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("gpsTime:");
            stringBuffer.append(fp.a(j2, "yyyy-MM-dd HH:mm:ss.SSS"));
            stringBuffer.append(",");
            stringBuffer.append("sysTime:");
            stringBuffer.append(fp.a(j3, "yyyy-MM-dd HH:mm:ss.SSS"));
            stringBuffer.append(",");
            long jT = fh.t();
            String strA = 0 != jT ? fp.a(jT, "yyyy-MM-dd HH:mm:ss.SSS") : "0";
            stringBuffer.append("serverTime:");
            stringBuffer.append(strA);
            a("checkgpstime", stringBuffer.toString());
            if (0 != jT && Math.abs(j2 - jT) < 31536000000L) {
                stringBuffer.append(", correctError");
                a("checkgpstimeerror", stringBuffer.toString());
            }
            stringBuffer.delete(0, stringBuffer.length());
            f12918h = true;
        } catch (Throwable unused) {
        }
    }

    public static synchronized void a(Context context) {
        if (context != null) {
            try {
                if (fh.a()) {
                    List<bq> list = i;
                    if (list != null && list.size() > 0) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.addAll(i);
                        br.b(arrayList, context);
                        i.clear();
                    }
                    f(context);
                }
            } catch (Throwable th) {
                fi.a(th, "ReportUtil", "destroy");
            }
        }
    }

    public static void a(Context context, int i2, int i3, long j2, long j3) {
        if (i2 == -1 || i3 == -1) {
            return;
        }
        try {
            a(context, "O012", i2, i3, j2, j3);
        } catch (Throwable th) {
            fi.a(th, "ReportUtil", "reportServiceAliveTime");
        }
    }

    public static void a(Context context, long j2, boolean z) {
        if (context != null) {
            try {
                if (fh.a()) {
                    a(context, "O015", z ? "domestic" : "abroad", Long.valueOf(j2).intValue());
                }
            } catch (Throwable th) {
                fi.a(th, "ReportUtil", "reportGPSLocUseTime");
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x002e A[Catch: all -> 0x00e7, TRY_LEAVE, TryCatch #1 {all -> 0x00e7, blocks: (B:4:0x0003, B:8:0x000b, B:24:0x002e, B:33:0x003e, B:35:0x0042, B:36:0x0049, B:38:0x0082, B:41:0x008f, B:42:0x00d0, B:44:0x00e2, B:39:0x0088), top: B:56:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x0034 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x0036 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0038 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:30:0x003a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x003c A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:35:0x0042 A[Catch: all -> 0x00e7, TryCatch #1 {all -> 0x00e7, blocks: (B:4:0x0003, B:8:0x000b, B:24:0x002e, B:33:0x003e, B:35:0x0042, B:36:0x0049, B:38:0x0082, B:41:0x008f, B:42:0x00d0, B:44:0x00e2, B:39:0x0088), top: B:56:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x0082 A[Catch: all -> 0x00e7, TryCatch #1 {all -> 0x00e7, blocks: (B:4:0x0003, B:8:0x000b, B:24:0x002e, B:33:0x003e, B:35:0x0042, B:36:0x0049, B:38:0x0082, B:41:0x008f, B:42:0x00d0, B:44:0x00e2, B:39:0x0088), top: B:56:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0088 A[Catch: all -> 0x00e7, TryCatch #1 {all -> 0x00e7, blocks: (B:4:0x0003, B:8:0x000b, B:24:0x002e, B:33:0x003e, B:35:0x0042, B:36:0x0049, B:38:0x0082, B:41:0x008f, B:42:0x00d0, B:44:0x00e2, B:39:0x0088), top: B:56:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x008f A[Catch: all -> 0x00e7, TryCatch #1 {all -> 0x00e7, blocks: (B:4:0x0003, B:8:0x000b, B:24:0x002e, B:33:0x003e, B:35:0x0042, B:36:0x0049, B:38:0x0082, B:41:0x008f, B:42:0x00d0, B:44:0x00e2, B:39:0x0088), top: B:56:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00e2 A[Catch: all -> 0x00e7, TRY_LEAVE, TryCatch #1 {all -> 0x00e7, blocks: (B:4:0x0003, B:8:0x000b, B:24:0x002e, B:33:0x003e, B:35:0x0042, B:36:0x0049, B:38:0x0082, B:41:0x008f, B:42:0x00d0, B:44:0x00e2, B:39:0x0088), top: B:56:0x0003 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:28:0x0038, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:31:0x003c, please report this as an issue */
    public static synchronized void a(Context context, AMapLocation aMapLocation) {
        int i2;
        int iC;
        JSONObject jSONObject;
        JSONArray jSONArrayPut;
        try {
            if (fp.a(aMapLocation)) {
                int locationType = aMapLocation.getLocationType();
                boolean z = false;
                if (locationType == 1) {
                    i2 = 0;
                } else if (locationType == 2 || locationType == 4) {
                    i2 = 1;
                } else {
                    if (locationType != 8) {
                        if (locationType != 9) {
                            i2 = 0;
                        } else {
                            i2 = 2;
                        }
                        if (z) {
                            iC = fh.c();
                            if (iC != 0) {
                                if (i2 == 0) {
                                    if (iC == 2) {
                                        return;
                                    }
                                } else if (iC == 1) {
                                    return;
                                }
                            }
                            if (j == null) {
                                j = new JSONArray();
                            }
                            jSONObject = new JSONObject();
                            jSONObject.put("lon", fp.b(aMapLocation.getLongitude()));
                            jSONObject.put("lat", fp.b(aMapLocation.getLatitude()));
                            jSONObject.put("type", i2);
                            jSONObject.put(DBHelpTool.RecordEntry.COLUMN_NAME_TIMESTAMP, fp.a());
                            if (aMapLocation.getCoordType().equalsIgnoreCase(AMapLocation.COORD_TYPE_WGS84)) {
                                jSONObject.put("coordType", 1);
                            } else {
                                jSONObject.put("coordType", 2);
                            }
                            if (i2 == 0) {
                                JSONObject jSONObject2 = new JSONObject();
                                jSONObject2.put("accuracy", fp.c(aMapLocation.getAccuracy()));
                                jSONObject2.put("altitude", fp.c(aMapLocation.getAltitude()));
                                jSONObject2.put("bearing", fp.c(aMapLocation.getBearing()));
                                jSONObject2.put(SpeechConstant.SPEED, fp.c(aMapLocation.getSpeed()));
                                jSONObject.put("extension", jSONObject2);
                            }
                            jSONArrayPut = j.put(jSONObject);
                            j = jSONArrayPut;
                            if (jSONArrayPut.length() >= fh.b()) {
                                f(context);
                            }
                        }
                    }
                    i2 = 3;
                }
                z = true;
                if (z) {
                    iC = fh.c();
                    if (iC != 0) {
                        if (i2 == 0) {
                            if (iC == 2) {
                                return;
                            }
                        } else if (iC == 1) {
                            return;
                        }
                    }
                    if (j == null) {
                        j = new JSONArray();
                    }
                    jSONObject = new JSONObject();
                    jSONObject.put("lon", fp.b(aMapLocation.getLongitude()));
                    jSONObject.put("lat", fp.b(aMapLocation.getLatitude()));
                    jSONObject.put("type", i2);
                    jSONObject.put(DBHelpTool.RecordEntry.COLUMN_NAME_TIMESTAMP, fp.a());
                    if (aMapLocation.getCoordType().equalsIgnoreCase(AMapLocation.COORD_TYPE_WGS84)) {
                        jSONObject.put("coordType", 1);
                    } else {
                        jSONObject.put("coordType", 2);
                    }
                    if (i2 == 0) {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("accuracy", fp.c(aMapLocation.getAccuracy()));
                        jSONObject3.put("altitude", fp.c(aMapLocation.getAltitude()));
                        jSONObject3.put("bearing", fp.c(aMapLocation.getBearing()));
                        jSONObject3.put(SpeechConstant.SPEED, fp.c(aMapLocation.getSpeed()));
                        jSONObject.put("extension", jSONObject3);
                    }
                    jSONArrayPut = j.put(jSONObject);
                    j = jSONArrayPut;
                    if (jSONArrayPut.length() >= fh.b()) {
                        f(context);
                    }
                }
            }
        } catch (Throwable th) {
            fi.a(th, "ReportUtil", "recordOfflineLocLog");
        }
    }

    public static void a(Context context, AMapLocation aMapLocation, eh ehVar) {
        int i2;
        if (aMapLocation == null) {
            return;
        }
        try {
            if (!"gps".equalsIgnoreCase(aMapLocation.getProvider()) && aMapLocation.getLocationType() != 1) {
                String str = a(aMapLocation) ? "abroad" : "domestic";
                String str2 = "cache";
                if (aMapLocation.getErrorCode() != 0) {
                    int errorCode = aMapLocation.getErrorCode();
                    if (errorCode == 4 || errorCode == 5 || errorCode == 6 || errorCode == 11) {
                        str2 = "net";
                    }
                    i2 = 0;
                } else {
                    int locationType = aMapLocation.getLocationType();
                    if (locationType == 5 || locationType == 6) {
                        str2 = "net";
                    }
                    i2 = 1;
                }
                a(context, "O016", str2, str, i2, aMapLocation.getErrorCode(), ehVar);
            }
        } catch (Throwable th) {
            fi.a(th, "ReportUtil", "reportBatting");
        }
    }

    private static void a(Context context, String str, int i2, int i3, long j2, long j3) {
        if (context != null) {
            try {
                if (fh.a()) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("param_int_first", i2);
                    jSONObject.put("param_int_second", i3);
                    jSONObject.put("param_long_first", j2);
                    jSONObject.put("param_long_second", j3);
                    a(context, str, jSONObject);
                }
            } catch (Throwable th) {
                fi.a(th, "ReportUtil", "applyStatisticsEx");
            }
        }
    }

    private static void a(Context context, String str, String str2, int i2) {
        if (context != null) {
            try {
                if (fh.a()) {
                    JSONObject jSONObject = new JSONObject();
                    if (!TextUtils.isEmpty(str2)) {
                        jSONObject.put("param_string_first", str2);
                    }
                    if (!TextUtils.isEmpty(null)) {
                        jSONObject.put("param_string_second", (Object) null);
                    }
                    if (i2 != Integer.MAX_VALUE) {
                        jSONObject.put("param_int_first", i2);
                    }
                    a(context, str, jSONObject);
                }
            } catch (Throwable th) {
                fi.a(th, "ReportUtil", "applyStatisticsEx");
            }
        }
    }

    private static void a(Context context, String str, String str2, String str3, int i2, int i3, eh ehVar) {
        if (context != null) {
            try {
                if (fh.a()) {
                    JSONObject jSONObject = new JSONObject();
                    if (!TextUtils.isEmpty(str2)) {
                        jSONObject.put("param_string_first", str2);
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        jSONObject.put("param_string_second", str3);
                    }
                    if (i2 != Integer.MAX_VALUE) {
                        jSONObject.put("param_int_first", i2);
                    }
                    if (i3 != Integer.MAX_VALUE) {
                        jSONObject.put("param_int_second", i3);
                    }
                    if (ehVar != null) {
                        if (!TextUtils.isEmpty(ehVar.d())) {
                            jSONObject.put("dns", ehVar.d());
                        }
                        if (!TextUtils.isEmpty(ehVar.e())) {
                            jSONObject.put(SpeechConstant.DOMAIN, ehVar.e());
                        }
                        if (!TextUtils.isEmpty(ehVar.f())) {
                            jSONObject.put("type", ehVar.f());
                        }
                        if (!TextUtils.isEmpty(ehVar.g())) {
                            jSONObject.put("reason", ehVar.g());
                        }
                        if (!TextUtils.isEmpty(ehVar.c())) {
                            jSONObject.put("ip", ehVar.c());
                        }
                        if (!TextUtils.isEmpty(ehVar.b())) {
                            jSONObject.put("stack", ehVar.b());
                        }
                        if (ehVar.h() > 0) {
                            jSONObject.put("ctime", String.valueOf(ehVar.h()));
                        }
                        if (ehVar.a() > 0) {
                            jSONObject.put("ntime", String.valueOf(ehVar.a()));
                        }
                    }
                    a(context, str, jSONObject);
                }
            } catch (Throwable th) {
                fi.a(th, "ReportUtil", "applyStatisticsEx");
            }
        }
    }

    public static synchronized void a(Context context, String str, JSONObject jSONObject) {
        if (context != null) {
            try {
                if (fh.a()) {
                    bq bqVar = new bq(context, "loc", "5.6.2", str);
                    if (jSONObject != null) {
                        bqVar.a(jSONObject.toString());
                    }
                    i.add(bqVar);
                    if (i.size() >= 30) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.addAll(i);
                        br.b(arrayList, context);
                        i.clear();
                    }
                }
            } catch (Throwable th) {
                fi.a(th, "ReportUtil", "applyStatistics");
            }
        }
    }

    public static void a(AMapLocation aMapLocation, AMapLocation aMapLocation2) {
        try {
            if (f12917g == null) {
                if (!fp.a(aMapLocation)) {
                    f12917g = aMapLocation2;
                    return;
                }
                f12917g = aMapLocation.m123clone();
            }
            if (fp.a(f12917g) && fp.a(aMapLocation2)) {
                AMapLocation aMapLocationM123clone = aMapLocation2.m123clone();
                if (f12917g.getLocationType() != 1 && f12917g.getLocationType() != 9 && !"gps".equalsIgnoreCase(f12917g.getProvider()) && f12917g.getLocationType() != 7 && aMapLocationM123clone.getLocationType() != 1 && aMapLocationM123clone.getLocationType() != 9 && !"gps".equalsIgnoreCase(aMapLocationM123clone.getProvider()) && aMapLocationM123clone.getLocationType() != 7) {
                    long jAbs = Math.abs(aMapLocationM123clone.getTime() - f12917g.getTime()) / 1000;
                    if (jAbs <= 0) {
                        jAbs = 1;
                    }
                    if (jAbs <= 1800) {
                        float fA = fp.a(f12917g, aMapLocationM123clone);
                        float f2 = fA / jAbs;
                        if (fA > 30000.0f && f2 > 1000.0f) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(f12917g.getLatitude());
                            sb.append(",");
                            sb.append(f12917g.getLongitude());
                            sb.append(",");
                            sb.append(f12917g.getAccuracy());
                            sb.append(",");
                            sb.append(f12917g.getLocationType());
                            sb.append(",");
                            if (aMapLocation.getTime() != 0) {
                                sb.append(fp.a(f12917g.getTime(), "yyyyMMdd_HH:mm:ss:SS"));
                            } else {
                                sb.append(f12917g.getTime());
                            }
                            sb.append("#");
                            sb.append(aMapLocationM123clone.getLatitude());
                            sb.append(",");
                            sb.append(aMapLocationM123clone.getLongitude());
                            sb.append(",");
                            sb.append(aMapLocationM123clone.getAccuracy());
                            sb.append(",");
                            sb.append(aMapLocationM123clone.getLocationType());
                            sb.append(",");
                            if (aMapLocationM123clone.getTime() != 0) {
                                sb.append(fp.a(aMapLocationM123clone.getTime(), "yyyyMMdd_HH:mm:ss:SS"));
                            } else {
                                sb.append(aMapLocationM123clone.getTime());
                            }
                            a("bigshiftstatistics", sb.toString());
                            sb.delete(0, sb.length());
                        }
                    }
                }
                f12917g = aMapLocationM123clone;
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(String str, int i2) {
        a(str, String.valueOf(i2), a(i2));
    }

    public static void a(String str, String str2) {
        try {
            am.b(fi.c(), str2, str);
        } catch (Throwable th) {
            fi.a(th, "ReportUtil", "reportLog");
        }
    }

    public static void a(String str, String str2, String str3) {
        try {
            am.a(fi.c(), "/mobile/binary", str3, str, str2);
        } catch (Throwable unused) {
        }
    }

    public static void a(String str, Throwable th) {
        try {
            if (th instanceof j) {
                am.a(fi.c(), str, (j) th);
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean a(AMapLocation aMapLocation) {
        if (fp.a(aMapLocation)) {
            return !fi.a(aMapLocation.getLatitude(), aMapLocation.getLongitude());
        }
        return "http://abroad.apilocate.amap.com/mobile/binary".equals(fi.c);
    }

    private static void f(Context context) {
        try {
            JSONArray jSONArray = j;
            if (jSONArray == null || jSONArray.length() <= 0) {
                return;
            }
            bp.a(new bo(context, fi.c(), j.toString()), context);
            j = null;
        } catch (Throwable th) {
            fi.a(th, "ReportUtil", "writeOfflineLocLog");
        }
    }

    public final void a(Context context, int i2) {
        try {
            int i3 = this.b;
            if (i3 == i2) {
                return;
            }
            if (i3 != -1 && i3 != i2) {
                this.f12919a.append(this.b, Long.valueOf((fp.b() - this.c) + this.f12919a.get(this.b, 0L).longValue()));
            }
            this.c = fp.b() - fo.a(context, "pref1", this.f12920d[i2], 0L);
            this.b = i2;
        } catch (Throwable th) {
            fi.a(th, "ReportUtil", "setLocationType");
        }
    }

    public final void a(Context context, AMapLocationClientOption aMapLocationClientOption) {
        try {
            int i2 = AnonymousClass1.f12923a[aMapLocationClientOption.getLocationMode().ordinal()];
            int i3 = 3;
            if (i2 == 1) {
                i3 = 4;
            } else if (i2 == 2) {
                i3 = 5;
            } else if (i2 != 3) {
                i3 = -1;
            }
            int i4 = this.f12921e;
            if (i4 == i3) {
                return;
            }
            if (i4 != -1 && i4 != i3) {
                this.f12919a.append(this.f12921e, Long.valueOf((fp.b() - this.f12922f) + this.f12919a.get(this.f12921e, 0L).longValue()));
            }
            this.f12922f = fp.b() - fo.a(context, "pref1", this.f12920d[i3], 0L);
            this.f12921e = i3;
        } catch (Throwable th) {
            fi.a(th, "ReportUtil", "setLocationMode");
        }
    }

    public final void b(Context context) {
        try {
            long jB = fp.b() - this.c;
            int i2 = this.b;
            if (i2 != -1) {
                this.f12919a.append(this.b, Long.valueOf(jB + this.f12919a.get(i2, 0L).longValue()));
            }
            long jB2 = fp.b() - this.f12922f;
            int i3 = this.f12921e;
            if (i3 != -1) {
                this.f12919a.append(this.f12921e, Long.valueOf(jB2 + this.f12919a.get(i3, 0L).longValue()));
            }
            SharedPreferences.Editor editorA = fo.a(context, "pref1");
            for (int i4 = 0; i4 < this.f12920d.length; i4++) {
                long jLongValue = this.f12919a.get(i4, 0L).longValue();
                if (jLongValue > 0 && jLongValue > fo.a(context, "pref1", this.f12920d[i4], 0L)) {
                    fo.a(editorA, this.f12920d[i4], jLongValue);
                }
            }
            fo.a(editorA);
        } catch (Throwable th) {
            fi.a(th, "ReportUtil", "saveLocationTypeAndMode");
        }
    }

    public final int c(Context context) {
        try {
            long jA = fo.a(context, "pref1", this.f12920d[2], 0L);
            long jA2 = fo.a(context, "pref1", this.f12920d[0], 0L);
            long jA3 = fo.a(context, "pref1", this.f12920d[1], 0L);
            if (jA == 0 && jA2 == 0 && jA3 == 0) {
                return -1;
            }
            long j2 = jA2 - jA;
            long j3 = jA3 - jA;
            if (jA > j2) {
                return jA > j3 ? 2 : 1;
            }
            return j2 > j3 ? 0 : 1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final int d(Context context) {
        try {
            long jA = fo.a(context, "pref1", this.f12920d[3], 0L);
            long jA2 = fo.a(context, "pref1", this.f12920d[4], 0L);
            long jA3 = fo.a(context, "pref1", this.f12920d[5], 0L);
            if (jA == 0 && jA2 == 0 && jA3 == 0) {
                return -1;
            }
            if (jA > jA2) {
                return jA > jA3 ? 3 : 5;
            }
            return jA2 > jA3 ? 4 : 5;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final void e(Context context) {
        try {
            SharedPreferences.Editor editorA = fo.a(context, "pref1");
            int i2 = 0;
            while (true) {
                String[] strArr = this.f12920d;
                if (i2 >= strArr.length) {
                    fo.a(editorA);
                    return;
                } else {
                    fo.a(editorA, strArr[i2], 0L);
                    i2++;
                }
            }
        } catch (Throwable unused) {
        }
    }
}
