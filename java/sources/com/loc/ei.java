package com.loc;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.autonavi.base.amap.mapcore.tools.GLMapStaticValue;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"NewApi"})
public final class ei {
    static int C = -1;
    public static String[] F = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};
    public static String G = "android.permission.ACCESS_BACKGROUND_LOCATION";
    private static boolean M = false;
    private static volatile boolean S = false;
    boolean H;
    private Handler P;
    private eu Q;
    private String R;
    private ej T;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f12780a = null;
    ConnectivityManager b = null;
    ew c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    es f12781d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ey f12782e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ff f12783f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ArrayList<dx> f12784g = new ArrayList<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    a f12785h = null;
    AMapLocationClientOption i = new AMapLocationClientOption();
    en j = null;
    long k = 0;
    private int K = 0;
    fg l = null;
    boolean m = false;
    private String L = null;
    fd n = null;
    StringBuilder o = new StringBuilder();
    boolean p = true;
    boolean q = true;
    AMapLocationClientOption.GeoLanguage r = AMapLocationClientOption.GeoLanguage.DEFAULT;
    boolean s = true;
    boolean t = false;
    WifiInfo u = null;
    boolean v = true;
    private String N = null;
    StringBuilder w = null;
    boolean x = false;
    public boolean y = false;
    int z = 12;
    private boolean O = true;
    ep A = null;
    boolean B = false;
    em D = null;
    String E = null;
    IntentFilter I = null;
    LocationManager J = null;

    /* JADX INFO: renamed from: com.loc.ei$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f12786a;

        static {
            int[] iArr = new int[AMapLocationClientOption.GeoLanguage.values().length];
            f12786a = iArr;
            try {
                iArr[AMapLocationClientOption.GeoLanguage.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12786a[AMapLocationClientOption.GeoLanguage.ZH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12786a[AMapLocationClientOption.GeoLanguage.EN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            ew ewVar;
            ew ewVar2;
            if (context == null || intent == null) {
                return;
            }
            try {
                String action = intent.getAction();
                if (TextUtils.isEmpty(action)) {
                    return;
                }
                if (!action.equals("android.net.wifi.SCAN_RESULTS")) {
                    if (!action.equals("android.net.wifi.WIFI_STATE_CHANGED") || (ewVar = ei.this.c) == null) {
                        return;
                    }
                    ewVar.j();
                    return;
                }
                ew ewVar3 = ei.this.c;
                if (ewVar3 != null) {
                    ewVar3.i();
                }
                try {
                    if (intent.getExtras() == null || !intent.getExtras().getBoolean("resultsUpdated", true) || (ewVar2 = ei.this.c) == null) {
                        return;
                    }
                    ewVar2.h();
                } catch (Throwable unused) {
                }
            } catch (Throwable th) {
                fi.a(th, "Aps", "onReceive");
            }
        }
    }

    public ei(boolean z) {
        this.H = false;
        this.H = z;
    }

    private static en a(int i, String str) {
        en enVar = new en("");
        enVar.setErrorCode(i);
        enVar.setLocationDetail(str);
        if (i == 15) {
            fn.a((String) null, 2151);
        }
        return enVar;
    }

    private en a(en enVar, bl blVar, eh ehVar) {
        if (blVar != null) {
            try {
                byte[] bArr = blVar.f12619a;
                if (bArr != null && bArr.length != 0) {
                    ff ffVar = new ff();
                    String str = new String(blVar.f12619a, "UTF-8");
                    if (str.contains("\"status\":\"0\"")) {
                        en enVarA = ffVar.a(str, this.f12780a, blVar, ehVar);
                        enVarA.h(this.w.toString());
                        return enVarA;
                    }
                    if (!str.contains("</body></html>")) {
                        return null;
                    }
                    enVar.setErrorCode(5);
                    ew ewVar = this.c;
                    if (ewVar == null || !ewVar.a(this.b)) {
                        ehVar.f("#0502");
                        this.o.append("请求可能被劫持了#0502");
                        fn.a((String) null, 2052);
                    } else {
                        ehVar.f("#0501");
                        this.o.append("您连接的是一个需要登录的网络，请确认已经登入网络#0501");
                        fn.a((String) null, 2051);
                    }
                    enVar.setLocationDetail(this.o.toString());
                    return enVar;
                }
            } catch (Throwable th) {
                enVar.setErrorCode(4);
                fi.a(th, "Aps", "checkResponseEntity");
                ehVar.f("#0403");
                this.o.append("check response exception ex is" + th.getMessage() + "#0403");
                enVar.setLocationDetail(this.o.toString());
                return enVar;
            }
        }
        enVar.setErrorCode(4);
        this.o.append("网络异常,请求异常#0403");
        ehVar.f("#0403");
        enVar.h(this.w.toString());
        enVar.setLocationDetail(this.o.toString());
        if (blVar != null) {
            fn.a(blVar.f12620d, 2041);
        }
        return enVar;
    }

    private StringBuilder a(StringBuilder sb) {
        if (sb == null) {
            sb = new StringBuilder(700);
        } else {
            sb.delete(0, sb.length());
        }
        sb.append(this.f12781d.l());
        sb.append(this.c.n());
        return sb;
    }

    private boolean a(long j) {
        if (!this.O) {
            this.O = true;
            return false;
        }
        if (fp.b() - j < 800) {
            if ((fp.a(this.j) ? fp.a() - this.j.getTime() : 0L) <= 10000) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"NewApi"})
    private en b(boolean z, eh ehVar) {
        StringBuilder sb;
        StringBuilder sb2;
        String str;
        String str2;
        try {
            if (TextUtils.isEmpty(this.R)) {
                this.R = w.b(n.a(this.f12780a) + "," + n.h(this.f12780a));
            }
            StringBuilder sb3 = this.o;
            sb3.append("#id:");
            sb3.append(this.R);
        } catch (Throwable unused) {
        }
        en enVar = new en("");
        try {
            byte[] bArrL = l();
            long jB = fp.b();
            this.k = jB;
            ehVar.a(jB);
            try {
                fi.c(this.f12780a);
                fe feVarA = this.n.a(this.f12780a, bArrL, fi.a(), fi.b(), z);
                feVarA.b();
                String strC = feVarA.c();
                l.a(this.f12780a);
                boolean z2 = !TextUtils.isEmpty(strC) && strC.contains("dualstack");
                int i = fb.f12876a;
                if (l.a() && l.c() && z2) {
                    i = fb.b;
                }
                String strA = l.b() ? null : fb.a(this.f12780a).a(feVarA, i);
                ehVar.a(i == fb.b ? "v6" : "v4");
                bl blVarA = this.n.a(feVarA);
                long jB2 = fp.b();
                if (!TextUtils.isEmpty(strA)) {
                    if (blVarA.f12622f) {
                        fb.a(this.f12780a).a(false, i);
                        fb.a(this.f12780a).a(i);
                    } else {
                        fb.a(this.f12780a).a(true, i);
                    }
                }
                if (blVarA == null || TextUtils.isEmpty(strA)) {
                    ehVar.d("SUCCESS");
                } else if (blVarA.f12622f) {
                    ehVar.b(strA);
                    ehVar.c("FAIL");
                    ehVar.d("SUCCESS");
                } else {
                    ehVar.b(strA);
                    ehVar.c("SUCCESS");
                }
                ej ejVar = this.T;
                if (ejVar != null) {
                    ejVar.d();
                }
                ehVar.b(jB2);
                if (blVarA != null) {
                    if (!TextUtils.isEmpty(blVarA.c)) {
                        this.o.append("#csid:" + blVarA.c);
                    }
                    str2 = blVarA.f12620d;
                    enVar.h(this.w.toString());
                } else {
                    str2 = "";
                }
                en enVarA = a(enVar, blVarA, ehVar);
                if (enVarA != null) {
                    return enVarA;
                }
                byte[] bArrB = ex.b(blVarA.f12619a);
                if (bArrB == null) {
                    enVar.setErrorCode(5);
                    ehVar.f("#0503");
                    this.o.append("解密数据失败#0503");
                    enVar.setLocationDetail(this.o.toString());
                    fn.a(str2, 2053);
                    return enVar;
                }
                en enVarA2 = this.f12783f.a(enVar, bArrB, ehVar);
                if (fp.a(enVarA2)) {
                    c(enVarA2);
                    enVarA2.setOffset(this.q);
                    enVarA2.a(this.p);
                    enVarA2.f(String.valueOf(this.r));
                    enVarA2.e("new");
                    enVarA2.setLocationDetail(this.o.toString());
                    this.E = enVarA2.a();
                    return enVarA2;
                }
                String strB = enVarA2.b();
                this.L = strB;
                fn.a(str2, !TextUtils.isEmpty(strB) ? 2062 : 2061);
                enVarA2.setErrorCode(6);
                ehVar.f("#0601");
                StringBuilder sb4 = this.o;
                StringBuilder sb5 = new StringBuilder("location faile retype:");
                sb5.append(enVarA2.d());
                sb5.append(" rdesc:");
                sb5.append(TextUtils.isEmpty(this.L) ? "" : this.L);
                sb5.append("#0601");
                sb4.append(sb5.toString());
                enVarA2.h(this.w.toString());
                enVarA2.setLocationDetail(this.o.toString());
                return enVarA2;
            } catch (Throwable th) {
                fp.b();
                ehVar.d("FAIL");
                fb.a(this.f12780a).a(false, fb.f12876a);
                fi.a(th, "Aps", "getApsLoc req");
                fn.a("/mobile/binary", th);
                if (fp.d(this.f12780a)) {
                    if (th instanceof j) {
                        j jVar = th;
                        if (jVar.a().contains("网络异常状态码")) {
                            ehVar.f("#0404");
                            StringBuilder sb6 = this.o;
                            sb6.append("网络异常，状态码错误#0404");
                            sb6.append(jVar.f());
                        } else if (jVar.f() == 23 || Math.abs((fp.b() - this.k) - this.i.getHttpTimeOut()) < 500) {
                            ehVar.f("#0402");
                            sb2 = this.o;
                            str = "网络异常，连接超时#0402";
                        } else {
                            sb = new StringBuilder("#0403,");
                        }
                        en enVarA3 = a(4, this.o.toString());
                        enVarA3.h(this.w.toString());
                        return enVarA3;
                    }
                    sb = new StringBuilder("#0403,");
                    sb.append(th.getMessage());
                    ehVar.f(sb.toString());
                    this.o.append("网络异常,请求异常#0403");
                    en enVarA4 = a(4, this.o.toString());
                    enVarA4.h(this.w.toString());
                    return enVarA4;
                }
                ehVar.f("#0401");
                sb2 = this.o;
                str = "网络异常，未连接到网络，请连接网络#0401";
                sb2.append(str);
                en enVarA5 = a(4, this.o.toString());
                enVarA5.h(this.w.toString());
                return enVarA5;
            }
        } catch (Throwable th2) {
            ehVar.f("#0301");
            this.o.append("get parames error:" + th2.getMessage() + "#0301");
            fn.a((String) null, 2031);
            en enVarA6 = a(3, this.o.toString());
            enVarA6.h(this.w.toString());
            return enVarA6;
        }
    }

    private void b(Context context) {
        try {
            if (context.checkCallingOrSelfPermission(w.c("EYW5kcm9pZC5wZXJtaXNzaW9uLldSSVRFX1NFQ1VSRV9TRVRUSU5HUw==")) == 0) {
                this.m = true;
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:72:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:86:0x022d A[PHI: r1
      0x022d: PHI (r1v17 java.lang.StringBuilder) = 
      (r1v16 java.lang.StringBuilder)
      (r1v16 java.lang.StringBuilder)
      (r1v18 java.lang.StringBuilder)
      (r1v18 java.lang.StringBuilder)
     binds: [B:89:0x0262, B:91:0x0266, B:83:0x0227, B:85:0x022b] A[DONT_GENERATE, DONT_INLINE]] */
    private String c(eh ehVar) {
        StringBuilder sb;
        String str;
        StringBuilder sb2;
        String str2;
        StringBuilder sb3;
        StringBuilder sb4;
        String str3;
        int iG = this.f12781d.g();
        er erVarD = this.f12781d.d();
        er erVarE = this.f12781d.e();
        ArrayList<dx> arrayList = this.f12784g;
        boolean z = arrayList == null || arrayList.isEmpty();
        String string = "";
        if (erVarD == null && erVarE == null && z) {
            if (this.b == null) {
                this.b = (ConnectivityManager) fp.a(this.f12780a, "connectivity");
            }
            if (fp.a(this.f12780a) && !this.c.k()) {
                this.z = 18;
                this.o.append("飞行模式下关闭了WIFI开关，请关闭飞行模式或者打开WIFI开关#1801");
                fn.a((String) null, 2132);
                ehVar.f("#1801");
                return "";
            }
            if (fp.c() >= 28) {
                if (this.J == null) {
                    this.J = (LocationManager) this.f12780a.getApplicationContext().getSystemService("location");
                }
                if (!((Boolean) fl.a(this.J, "isLocationEnabled", new Object[0])).booleanValue()) {
                    this.z = 12;
                    this.o.append("定位服务没有开启，请在设置中打开定位服务开关#1206");
                    ehVar.f("#1206");
                    fn.a((String) null, 2121);
                    return "";
                }
            }
            if (!fp.f(this.f12780a)) {
                this.z = 12;
                this.o.append("定位权限被禁用,请授予应用定位权限#1201");
                ehVar.f("#1201");
                fn.a((String) null, 2121);
                return "";
            }
            if (fp.c() >= 24 && fp.c() < 28 && Settings.Secure.getInt(this.f12780a.getContentResolver(), "location_mode", 0) == 0) {
                this.z = 12;
                ehVar.f("#1206");
                this.o.append("定位服务没有开启，请在设置中打开定位服务开关#1206");
                fn.a((String) null, 2121);
                return "";
            }
            String strJ = this.f12781d.j();
            String strD = this.c.d();
            if (this.c.a(this.b) && strD != null) {
                this.z = 12;
                ehVar.f("#1202");
                this.o.append("获取基站与获取WIFI的权限都被禁用，请在安全软件中打开应用的定位权限#1202");
                fn.a((String) null, 2121);
                return "";
            }
            if (strJ != null) {
                this.z = 12;
                if (this.c.k()) {
                    ehVar.f("#1205");
                    sb4 = this.o;
                    str3 = "获取的WIFI列表为空，并且获取基站权限被禁用，请在安全软件中打开应用的定位权限#1205";
                } else {
                    ehVar.f("#1204");
                    sb4 = this.o;
                    str3 = "WIFI开关关闭，并且获取基站权限被禁用，请在安全软件中打开应用的定位权限或者打开WIFI开关#1204";
                }
                sb4.append(str3);
                fn.a((String) null, 2121);
                return "";
            }
            if (!this.c.k() && !this.f12781d.m()) {
                this.z = 19;
                ehVar.f("#1901");
                this.o.append("没有检查到SIM卡，并且WIFI开关关闭，请打开WIFI开关或者插入SIM卡#1901");
                fn.a((String) null, 2133);
                return "";
            }
            if (this.c.k()) {
                str2 = "#1302";
                ehVar.f("#1302");
                if (this.c.c() != null) {
                    this.o.append("获取到的基站和WIFI信息均为空，请检查是否授予APP定位权限");
                    if (!fp.g(this.f12780a)) {
                        this.o.append("或后台运行没有后台定位权限");
                    }
                } else {
                    this.o.append("获取到的基站和WIFI信息均为空，请移动到有WIFI的区域，若确定当前区域有WIFI，请检查是否授予APP定位权限");
                    if (!fp.g(this.f12780a)) {
                        this.o.append("或后台运行没有后台定位权限");
                    }
                }
                sb3 = this.o;
            } else {
                ehVar.f("#1301");
                sb3 = this.o;
                str2 = "获取到的基站为空，并且关闭了WIFI开关，请您打开WIFI开关再发起定位#1301";
            }
            sb3.append(str2);
            this.z = 13;
            fn.a((String) null, 2131);
            return "";
        }
        WifiInfo wifiInfoL = this.c.l();
        this.u = wifiInfoL;
        this.v = ew.a(wifiInfoL);
        String str4 = "cgi";
        if (iG == 0) {
            boolean z2 = !this.f12784g.isEmpty() || this.v;
            boolean z3 = erVarE != null;
            if (!z3) {
                if (this.v && this.f12784g.isEmpty()) {
                    this.z = 2;
                    ehVar.f("#0201");
                    this.o.append("当前基站为伪基站，并且WIFI权限被禁用，请在安全软件中打开应用的定位权限#0201");
                    fn.a((String) null, 2021);
                    return "";
                }
                if (this.f12784g.size() == 1) {
                    this.z = 2;
                    if (!this.v) {
                        ehVar.f("#0202");
                        this.o.append("当前基站为伪基站，并且搜到的WIFI数量不足，请移动到WIFI比较丰富的区域#0202");
                        fn.a((String) null, GLMapStaticValue.MAP_PARAMETERNAME_CLEAR_INDOORBUILDING_LAST);
                        return "";
                    }
                    if (this.f12784g.get(0).f12747h) {
                        ehVar.f("#0202");
                        this.o.append("当前基站为伪基站，并且搜到的WIFI数量不足，请移动到WIFI比较丰富的区域#0202");
                        fn.a((String) null, 2021);
                        return "";
                    }
                }
            }
            String str5 = String.format(Locale.US, "#%s#", "network");
            if (z3) {
                sb2 = new StringBuilder();
                sb2.append(erVarE.b());
                str4 = (!this.f12784g.isEmpty() || this.v) ? "cgiwifi" : "cgi";
                sb2.append("network");
                sb2.append("#");
                sb2.append(str4);
                string = sb2.toString();
            } else if (z2) {
                sb2 = new StringBuilder();
                sb2.append(str5);
                sb2.append("wifi");
                string = sb2.toString();
            } else {
                this.z = 2;
                if (this.c.k()) {
                    ehVar.f("#0204");
                    sb = this.o;
                    str = "当前基站为伪基站,并且没有搜索到WIFI，请移动到WIFI比较丰富的区域#0204";
                } else {
                    ehVar.f("#0203");
                    sb = this.o;
                    str = "当前基站为伪基站,并且关闭了WIFI开关，请在设置中打开WIFI开关#0203";
                }
                sb.append(str);
                fn.a((String) null, GLMapStaticValue.MAP_PARAMETERNAME_CLEAR_INDOORBUILDING_LAST);
            }
        } else if (iG != 1) {
            if (iG != 2) {
                this.z = 11;
                fn.a((String) null, 2111);
                ehVar.f("#1101");
                this.o.append("get cgi failure#1101");
            } else if (erVarD != null) {
                sb2 = new StringBuilder();
                sb2.append(erVarD.f12832a);
                sb2.append("#");
                sb2.append(erVarD.b);
                sb2.append("#");
                sb2.append(erVarD.f12837h);
                sb2.append("#");
                sb2.append(erVarD.i);
                sb2.append("#");
                sb2.append(erVarD.j);
                sb2.append("#");
                sb2.append("network");
                sb2.append("#");
                if (!this.f12784g.isEmpty() || this.v) {
                    str4 = "cgiwifi";
                }
                sb2.append(str4);
                string = sb2.toString();
            }
        } else if (erVarD != null) {
            sb2 = new StringBuilder();
            sb2.append(erVarD.f12832a);
            sb2.append("#");
            sb2.append(erVarD.b);
            sb2.append("#");
            sb2.append(erVarD.c);
            sb2.append("#");
            sb2.append(erVarD.f12833d);
            sb2.append("#");
            sb2.append("network");
            sb2.append("#");
            if (!this.f12784g.isEmpty() || this.v) {
                str4 = "cgiwifi";
            }
            sb2.append(str4);
            string = sb2.toString();
        }
        if (TextUtils.isEmpty(string)) {
            return string;
        }
        if (!string.startsWith("#")) {
            string = "#" + string;
        }
        return fp.e() + string;
    }

    private static void c(en enVar) {
        if (enVar.getErrorCode() == 0 && enVar.getLocationType() == 0) {
            if ("-5".equals(enVar.d()) || "1".equals(enVar.d()) || "2".equals(enVar.d()) || Constants.VIA_REPORT_TYPE_MAKE_FRIEND.equals(enVar.d()) || Constants.VIA_REPORT_TYPE_CHAT_AIO.equals(enVar.d()) || "-1".equals(enVar.d())) {
                enVar.setLocationType(5);
            } else {
                enVar.setLocationType(6);
            }
        }
    }

    private void d(en enVar) {
        if (enVar != null) {
            this.j = enVar;
        }
    }

    private void h() {
        if (this.n != null) {
            try {
                if (this.i == null) {
                    this.i = new AMapLocationClientOption();
                }
                this.n.a(this.i.getHttpTimeOut(), this.i.getLocationProtocol().equals(AMapLocationClientOption.AMapLocationProtocol.HTTPS), i());
            } catch (Throwable unused) {
            }
        }
    }

    private int i() {
        int i;
        if (this.i.getGeoLanguage() != null && (i = AnonymousClass1.f12786a[this.i.getGeoLanguage().ordinal()]) != 1) {
            if (i == 2) {
                return 1;
            }
            if (i == 3) {
                return 2;
            }
        }
        return 0;
    }

    private void j() {
        boolean zIsNeedAddress;
        boolean z;
        boolean zIsOffset;
        boolean zIsLocationCacheEnable;
        AMapLocationClientOption.GeoLanguage geoLanguage = AMapLocationClientOption.GeoLanguage.DEFAULT;
        boolean z2 = true;
        try {
            geoLanguage = this.i.getGeoLanguage();
            zIsNeedAddress = this.i.isNeedAddress();
            try {
                zIsOffset = this.i.isOffset();
                try {
                    zIsLocationCacheEnable = this.i.isLocationCacheEnable();
                    try {
                        this.t = this.i.isOnceLocationLatest();
                        this.B = this.i.isSensorEnable();
                        if (zIsOffset != this.q || zIsNeedAddress != this.p || zIsLocationCacheEnable != this.s || geoLanguage != this.r) {
                            q();
                        }
                    } catch (Throwable unused) {
                        z = zIsLocationCacheEnable;
                        z2 = zIsOffset;
                        boolean z3 = z;
                        zIsOffset = z2;
                        zIsLocationCacheEnable = z3;
                    }
                } catch (Throwable unused2) {
                    z2 = zIsOffset;
                    z = true;
                    boolean z4 = z;
                    zIsOffset = z2;
                    zIsLocationCacheEnable = z4;
                    this.q = zIsOffset;
                    this.p = zIsNeedAddress;
                    this.s = zIsLocationCacheEnable;
                    this.r = geoLanguage;
                }
            } catch (Throwable unused3) {
            }
        } catch (Throwable unused4) {
            zIsNeedAddress = true;
        }
        this.q = zIsOffset;
        this.p = zIsNeedAddress;
        this.s = zIsLocationCacheEnable;
        this.r = geoLanguage;
    }

    private void k() {
        try {
            if (this.f12785h == null) {
                this.f12785h = new a();
            }
            if (this.I == null) {
                IntentFilter intentFilter = new IntentFilter();
                this.I = intentFilter;
                intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
                this.I.addAction("android.net.wifi.SCAN_RESULTS");
            }
            this.f12780a.registerReceiver(this.f12785h, this.I);
        } catch (Throwable th) {
            fi.a(th, "Aps", "initBroadcastListener");
        }
    }

    private byte[] l() throws Throwable {
        if (this.l == null) {
            this.l = new fg();
        }
        if (this.i == null) {
            this.i = new AMapLocationClientOption();
        }
        this.l.a(this.f12780a, this.i.isNeedAddress(), this.i.isOffset(), this.f12781d, this.c, this.b, this.E, this.Q);
        return this.l.a();
    }

    private boolean m() {
        return this.k == 0 || fp.b() - this.k > SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US;
    }

    private void n() {
        ew ewVar = this.c;
        if (ewVar == null) {
            return;
        }
        ewVar.a(this.m);
    }

    private boolean o() {
        ArrayList<dx> arrayListE = this.c.e();
        this.f12784g = arrayListE;
        return arrayListE == null || arrayListE.size() <= 0;
    }

    private void p() {
        if (this.N != null) {
            this.N = null;
        }
        StringBuilder sb = this.w;
        if (sb != null) {
            sb.delete(0, sb.length());
        }
    }

    private void q() {
        try {
            ey eyVar = this.f12782e;
            if (eyVar != null) {
                eyVar.a();
            }
            d(null);
            this.O = false;
            em emVar = this.D;
            if (emVar != null) {
                emVar.a();
            }
        } catch (Throwable th) {
            fi.a(th, "Aps", "cleanCache");
        }
    }

    public final en a(double d2, double d3) {
        try {
            String strA = this.n.a(this.f12780a, d2, d3);
            if (!strA.contains("\"status\":\"1\"")) {
                return null;
            }
            en enVarA = this.f12783f.a(strA);
            enVarA.setLatitude(d2);
            enVarA.setLongitude(d3);
            return enVarA;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0164 A[Catch: all -> 0x0181, TryCatch #0 {all -> 0x0181, blocks: (B:60:0x0154, B:63:0x015a, B:65:0x0164, B:68:0x016e, B:71:0x0178, B:72:0x017d), top: B:86:0x0154 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0168  */
    /* JADX WARN: Code duplicated, block: B:68:0x016e A[Catch: all -> 0x0181, TryCatch #0 {all -> 0x0181, blocks: (B:60:0x0154, B:63:0x015a, B:65:0x0164, B:68:0x016e, B:71:0x0178, B:72:0x017d), top: B:86:0x0154 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0172  */
    /* JADX WARN: Code duplicated, block: B:71:0x0178 A[Catch: all -> 0x0181, TryCatch #0 {all -> 0x0181, blocks: (B:60:0x0154, B:63:0x015a, B:65:0x0164, B:68:0x016e, B:71:0x0178, B:72:0x017d), top: B:86:0x0154 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x017d A[Catch: all -> 0x0181, TRY_LEAVE, TryCatch #0 {all -> 0x0181, blocks: (B:60:0x0154, B:63:0x015a, B:65:0x0164, B:68:0x016e, B:71:0x0178, B:72:0x017d), top: B:86:0x0154 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x019d  */
    /* JADX WARN: Code duplicated, block: B:82:0x01bd  */
    public final en a(eh ehVar) throws Throwable {
        float fE;
        ep epVar;
        long jB;
        c();
        ehVar.e("conitue");
        if (this.f12780a == null) {
            ehVar.f("#0101");
            this.o.append("context is null#0101");
            return a(1, this.o.toString());
        }
        int i = this.K + 1;
        this.K = i;
        if (i == 1) {
            n();
        }
        if (a(this.k) && fp.a(this.j)) {
            if (this.s && fh.a(this.j.getTime())) {
                this.j.setLocationType(2);
            }
            return this.j;
        }
        ep epVar2 = this.A;
        if (epVar2 != null) {
            if (this.B) {
                epVar2.a();
            } else {
                epVar2.b();
            }
        }
        try {
            this.c.b(this.i.isOnceLocationLatest() || !this.i.isOnceLocation());
            this.f12784g = this.c.e();
        } catch (Throwable th) {
            fi.a(th, "Aps", "getLocation getScanResultsParam");
        }
        try {
            this.f12781d.a(false, o());
        } catch (Throwable th2) {
            fi.a(th2, "Aps", "getLocation getCgiListParam");
        }
        String strC = c(ehVar);
        this.N = strC;
        if (TextUtils.isEmpty(strC)) {
            return a(this.z, this.o.toString());
        }
        this.w = a(this.w);
        if (this.c.m()) {
            en enVarA = a(15, "networkLocation has been mocked!#1502");
            ehVar.f("#1502");
            enVarA.setMock(true);
            enVarA.setTrustedLevel(4);
            return enVarA;
        }
        en enVarA2 = this.f12782e.a(this.f12781d, m(), this.j, this.c, this.w, this.N, this.f12780a, false);
        try {
            if (!fp.a(enVarA2)) {
                enVarA2 = b(true, ehVar);
                if (fp.a(enVarA2)) {
                    enVarA2.e("new");
                    this.f12782e.a(this.w.toString());
                    this.f12782e.a(this.f12781d.d());
                } else {
                    en enVarA3 = this.f12782e.a(this.f12781d, false, this.j, this.c, this.w, this.N, this.f12780a, true);
                    if (fp.a(enVarA3)) {
                        ehVar.f("#0001");
                        enVarA3.setTrustedLevel(2);
                        d(enVarA3);
                        enVarA2 = enVarA3;
                    }
                }
                if (this.c != null && enVarA2 != null) {
                    jB = ew.b();
                    if (jB <= 15) {
                        enVarA2.setTrustedLevel(1);
                    } else if (jB <= 120) {
                        enVarA2.setTrustedLevel(2);
                    } else if (jB <= 600) {
                        enVarA2.setTrustedLevel(3);
                    } else {
                        enVarA2.setTrustedLevel(4);
                    }
                }
                this.f12782e.a(this.N, this.w, enVarA2, this.f12780a, true);
                fp.a(enVarA2);
                StringBuilder sb = this.w;
                sb.delete(0, sb.length());
                if (enVarA2 != null) {
                    if (this.B || (epVar = this.A) == null) {
                        enVarA2.setAltitude(0.0d);
                        fE = BitmapDescriptorFactory.HUE_RED;
                        enVarA2.setBearing(BitmapDescriptorFactory.HUE_RED);
                    } else {
                        enVarA2.setAltitude(epVar.c());
                        enVarA2.setBearing(this.A.d());
                        fE = (float) this.A.e();
                    }
                    enVarA2.setSpeed(fE);
                }
                d(enVarA2);
                return this.j;
            }
            enVarA2.setTrustedLevel(2);
            if (this.c != null) {
                jB = ew.b();
                if (jB <= 15) {
                    enVarA2.setTrustedLevel(1);
                } else if (jB <= 120) {
                    enVarA2.setTrustedLevel(2);
                } else if (jB <= 600) {
                    enVarA2.setTrustedLevel(3);
                } else {
                    enVarA2.setTrustedLevel(4);
                }
            }
        } catch (Throwable unused) {
        }
        d(enVarA2);
        this.f12782e.a(this.N, this.w, enVarA2, this.f12780a, true);
        fp.a(enVarA2);
        StringBuilder sb2 = this.w;
        sb2.delete(0, sb2.length());
        if (enVarA2 != null) {
            if (this.B) {
                enVarA2.setAltitude(0.0d);
                fE = BitmapDescriptorFactory.HUE_RED;
                enVarA2.setBearing(BitmapDescriptorFactory.HUE_RED);
            } else {
                enVarA2.setAltitude(0.0d);
                fE = BitmapDescriptorFactory.HUE_RED;
                enVarA2.setBearing(BitmapDescriptorFactory.HUE_RED);
            }
            enVarA2.setSpeed(fE);
        }
        d(enVarA2);
        return this.j;
    }

    public final en a(en enVar) {
        this.D.a(this.s);
        return this.D.a(enVar);
    }

    public final en a(boolean z) {
        int i;
        String string;
        if (this.c.m()) {
            i = 15;
            string = "networkLocation has been mocked!#1502";
        } else {
            if (!TextUtils.isEmpty(this.N)) {
                en enVarA = this.f12782e.a(this.f12780a, this.N, this.w, true, z);
                if (fp.a(enVarA)) {
                    d(enVarA);
                }
                return enVarA;
            }
            i = this.z;
            string = this.o.toString();
        }
        return a(i, string);
    }

    public final en a(boolean z, eh ehVar) {
        ehVar.e(z ? "statics" : "first");
        if (this.f12780a == null) {
            ehVar.f("#0101");
            this.o.append("context is null#0101");
            fn.a((String) null, GLMapStaticValue.MAP_PARAMETERNAME_SATELLITE);
            return a(1, this.o.toString());
        }
        if (this.c.m()) {
            ehVar.f("#1502");
            return a(15, "networkLocation has been mocked!#1502");
        }
        a();
        if (TextUtils.isEmpty(this.N)) {
            return a(this.z, this.o.toString());
        }
        en enVarB = b(z, ehVar);
        if (fp.a(enVarB) && !S) {
            this.f12782e.a(this.w.toString());
            this.f12782e.a(this.f12781d.d());
            d(enVarB);
        }
        S = true;
        return enVarB;
    }

    public final void a() {
        this.n = fd.a(this.f12780a);
        h();
        if (this.b == null) {
            this.b = (ConnectivityManager) fp.a(this.f12780a, "connectivity");
        }
        if (this.l == null) {
            this.l = new fg();
        }
    }

    public final void a(Context context) {
        try {
            if (this.f12780a != null) {
                return;
            }
            this.D = new em();
            Context applicationContext = context.getApplicationContext();
            this.f12780a = applicationContext;
            fp.b(applicationContext);
            if (this.c == null) {
                this.c = new ew(this.f12780a, (WifiManager) fp.a(this.f12780a, "wifi"), this.P);
            }
            if (this.f12781d == null) {
                this.f12781d = new es(this.f12780a, this.P);
            }
            this.Q = new eu(context, this.P);
            if (this.f12782e == null) {
                this.f12782e = new ey();
            }
            if (this.f12783f == null) {
                this.f12783f = new ff();
            }
        } catch (Throwable th) {
            th.printStackTrace();
            fi.a(th, "Aps", "initBase");
        }
    }

    public final void a(Handler handler) {
        this.P = handler;
    }

    public final void a(AMapLocation aMapLocation) {
        if (aMapLocation.getErrorCode() != 0) {
            return;
        }
        et etVar = new et();
        etVar.f12846a = aMapLocation.getLocationType();
        etVar.f12847d = aMapLocation.getTime();
        etVar.f12848e = (int) aMapLocation.getAccuracy();
        etVar.b = aMapLocation.getLatitude();
        etVar.c = aMapLocation.getLongitude();
        if (aMapLocation.getLocationType() == 1) {
            this.Q.a(etVar);
        }
    }

    public final void a(AMapLocationClientOption aMapLocationClientOption) {
        this.i = aMapLocationClientOption;
        if (aMapLocationClientOption == null) {
            this.i = new AMapLocationClientOption();
        }
        ew ewVar = this.c;
        if (ewVar != null) {
            this.i.isWifiActiveScan();
            ewVar.a(this.i.isWifiScan(), this.i.isMockEnable(), AMapLocationClientOption.isOpenAlwaysScanWifi(), aMapLocationClientOption.getScanWifiInterval());
        }
        h();
        ey eyVar = this.f12782e;
        if (eyVar != null) {
            eyVar.a(this.i);
        }
        ff ffVar = this.f12783f;
        if (ffVar != null) {
            ffVar.a(this.i);
        }
        j();
    }

    public final void a(en enVar, int i) {
        if (enVar != null && enVar.getErrorCode() == 0) {
            et etVar = new et();
            etVar.f12847d = enVar.getTime();
            etVar.f12848e = (int) enVar.getAccuracy();
            etVar.b = enVar.getLatitude();
            etVar.c = enVar.getLongitude();
            etVar.f12846a = i;
            etVar.f12850g = Integer.parseInt(enVar.d());
            etVar.f12851h = enVar.l();
            this.Q.b(etVar);
        }
    }

    public final void b() {
        if (this.A == null) {
            this.A = new ep(this.f12780a);
        }
        k();
        this.c.b(false);
        this.f12784g = this.c.e();
        this.f12781d.a(false, o());
        this.f12782e.a(this.f12780a);
        b(this.f12780a);
        this.y = true;
    }

    public final void b(eh ehVar) {
        try {
            if (this.x) {
                return;
            }
            p();
            if (this.t) {
                k();
            }
            this.c.b(this.t);
            this.f12784g = this.c.e();
            this.f12781d.a(true, o());
            String strC = c(ehVar);
            this.N = strC;
            if (!TextUtils.isEmpty(strC)) {
                this.w = a(this.w);
            }
        } catch (Throwable th) {
            fi.a(th, "Aps", "initFirstLocateParam");
        }
        this.x = true;
    }

    public final void b(en enVar) {
        if (fp.a(enVar)) {
            this.f12782e.a(this.N, this.w, enVar, this.f12780a, true);
        }
    }

    public final void c() {
        if (this.o.length() > 0) {
            StringBuilder sb = this.o;
            sb.delete(0, sb.length());
        }
    }

    @SuppressLint({"NewApi"})
    public final void d() {
        a aVar;
        this.E = null;
        this.x = false;
        this.y = false;
        ey eyVar = this.f12782e;
        if (eyVar != null) {
            eyVar.b(this.f12780a);
        }
        em emVar = this.D;
        if (emVar != null) {
            emVar.a();
        }
        if (this.f12783f != null) {
            this.f12783f = null;
        }
        eu euVar = this.Q;
        if (euVar != null) {
            euVar.a(this.H);
        }
        try {
            Context context = this.f12780a;
            if (context != null && (aVar = this.f12785h) != null) {
                context.unregisterReceiver(aVar);
            }
        } catch (Throwable th) {
            try {
                fi.a(th, "Aps", "destroy");
            } catch (Throwable th2) {
                this.f12785h = null;
                throw th2;
            }
        }
        this.f12785h = null;
        es esVar = this.f12781d;
        if (esVar != null) {
            esVar.a(this.H);
        }
        ew ewVar = this.c;
        if (ewVar != null) {
            ewVar.c(this.H);
        }
        ArrayList<dx> arrayList = this.f12784g;
        if (arrayList != null) {
            arrayList.clear();
        }
        ep epVar = this.A;
        if (epVar != null) {
            epVar.f();
        }
        this.j = null;
        this.f12780a = null;
        this.w = null;
        this.J = null;
    }

    public final void e() {
        ej ejVar = this.T;
        if (ejVar != null) {
            ejVar.d();
        }
    }

    public final void f() {
        try {
            if (this.f12780a == null) {
                return;
            }
            if (this.T == null) {
                this.T = new ej(this.f12780a);
            }
            this.T.a(this.f12781d, this.c, this.P);
        } catch (Throwable th) {
            am.b(th, "as", "stc");
        }
    }

    public final void g() {
        ej ejVar = this.T;
        if (ejVar != null) {
            ejVar.a();
        }
    }
}
