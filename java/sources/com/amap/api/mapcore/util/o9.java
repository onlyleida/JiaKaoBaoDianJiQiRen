package com.amap.api.mapcore.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.autonavi.amap.mapcore.Inner_3dMap_location;
import com.autonavi.amap.mapcore.Inner_3dMap_locationOption;
import com.mobile.auth.BuildConfig;
import com.tencent.connect.common.Constants;

/* JADX INFO: loaded from: classes5.dex */
public final class o9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f11050a;
    private v8 b;
    private w9 c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private x8 f11052e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ConnectivityManager f11053f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private z8 f11054g;
    private Inner_3dMap_locationOption j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f11051d = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f11055h = false;
    private StringBuilder i = new StringBuilder();
    String k = null;
    private kj l = null;
    long m = 0;

    private class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(o9 o9Var, byte b) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (context == null || intent == null) {
                return;
            }
            try {
                String action = intent.getAction();
                if (TextUtils.isEmpty(action)) {
                    return;
                }
                if (action.equals("android.net.wifi.SCAN_RESULTS")) {
                    if (o9.this.b != null) {
                        o9.this.b.h();
                    }
                } else {
                    if (!action.equals("android.net.wifi.WIFI_STATE_CHANGED") || o9.this.b == null) {
                        return;
                    }
                    o9.this.b.j();
                }
            } catch (Throwable th) {
                b9.b(th, "MapNetLocation", "onReceive");
            }
        }
    }

    public o9(Context context) {
        this.f11050a = null;
        this.b = null;
        this.c = null;
        this.f11052e = null;
        this.f11053f = null;
        this.f11054g = null;
        this.j = null;
        try {
            Context applicationContext = context.getApplicationContext();
            this.f11050a = applicationContext;
            g9.r(applicationContext);
            d(this.f11050a);
            this.j = new Inner_3dMap_locationOption();
            if (this.b == null) {
                v8 v8Var = new v8(this.f11050a, (WifiManager) g9.g(this.f11050a, "wifi"));
                this.b = v8Var;
                v8Var.b(this.f11055h);
            }
            if (this.c == null) {
                this.c = new w9(this.f11050a);
            }
            if (this.f11052e == null) {
                d5.h(this.f11050a);
                this.f11052e = x8.b(this.f11050a);
            }
            if (this.f11053f == null) {
                this.f11053f = (ConnectivityManager) g9.g(this.f11050a, "connectivity");
            }
            this.f11054g = new z8();
            h();
        } catch (Throwable th) {
            b9.b(th, "MapNetLocation", "<init>");
        }
    }

    private static kj b(kj kjVar) {
        return j9.a().b(kjVar);
    }

    private void d(Context context) {
        try {
            if (context.checkCallingOrSelfPermission(n5.t("EYW5kcm9pZC5wZXJtaXNzaW9uLldSSVRFX1NFQ1VSRV9TRVRUSU5HUw==")) == 0) {
                this.f11055h = true;
            }
        } catch (Throwable unused) {
        }
    }

    private boolean f(long j) {
        if (g9.p() - j < 800) {
            if ((q9.b(this.l) ? g9.f() - this.l.getTime() : 0L) <= 10000) {
                return true;
            }
        }
        return false;
    }

    private void h() {
        try {
            byte b = 0;
            if (this.f11051d == null) {
                this.f11051d = new a(this, b);
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
            intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
            this.f11050a.registerReceiver(this.f11051d, intentFilter);
            this.b.g(false);
            this.c.s();
        } catch (Throwable th) {
            b9.b(th, "MapNetLocation", "initBroadcastListener");
        }
    }

    private kj i() throws Exception {
        StringBuilder sb;
        String str;
        String str2 = "";
        kj kjVar = new kj("");
        v8 v8Var = this.b;
        if (v8Var != null && v8Var.o()) {
            kjVar.setErrorCode(15);
            return kjVar;
        }
        try {
            if (this.f11054g == null) {
                this.f11054g = new z8();
            }
            this.f11054g.c(this.f11050a, this.j.isNeedAddress(), this.j.isOffset(), this.c, this.b, this.f11053f, this.k);
            p9 p9Var = new p9();
            byte[] bArr = null;
            try {
                try {
                    m7 m7VarA = this.f11052e.a(this.f11052e.c(this.f11050a, this.f11054g.d(), b9.a(), b9.d()));
                    if (m7VarA != null) {
                        bArr = m7VarA.f11008a;
                        str2 = m7VarA.c;
                    }
                    if (bArr == null || bArr.length == 0) {
                        kjVar.setErrorCode(4);
                        this.i.append("please check the network");
                        if (!TextUtils.isEmpty(str2)) {
                            this.i.append(" #csid:" + str2);
                        }
                        kjVar.setLocationDetail(this.i.toString());
                        return kjVar;
                    }
                    String str3 = new String(bArr, "UTF-8");
                    if (str3.contains("\"status\":\"0\"")) {
                        return p9Var.a(str3, this.f11050a, m7VarA);
                    }
                    if (str3.contains("</body></html>")) {
                        kjVar.setErrorCode(5);
                        v8 v8Var2 = this.b;
                        if (v8Var2 == null || !v8Var2.d(this.f11053f)) {
                            sb = this.i;
                            str = "request may be intercepted";
                        } else {
                            sb = this.i;
                            str = "make sure you are logged in to the network";
                        }
                        sb.append(str);
                        if (!TextUtils.isEmpty(str2)) {
                            this.i.append(" #csid:" + str2);
                        }
                        kjVar.setLocationDetail(this.i.toString());
                        return kjVar;
                    }
                    byte[] bArrA = w8.a(bArr);
                    if (bArrA == null) {
                        kjVar.setErrorCode(5);
                        this.i.append("decrypt response data error");
                        if (!TextUtils.isEmpty(str2)) {
                            this.i.append(" #csid:" + str2);
                        }
                        kjVar.setLocationDetail(this.i.toString());
                        return kjVar;
                    }
                    kj kjVarB = p9Var.b(bArrA);
                    this.k = kjVarB.b();
                    if (kjVarB.getErrorCode() != 0) {
                        if (!TextUtils.isEmpty(str2)) {
                            kjVarB.setLocationDetail(kjVarB.getLocationDetail() + " #csid:" + str2);
                        }
                        return kjVarB;
                    }
                    if (!q9.b(kjVarB)) {
                        String strD = kjVarB.d();
                        kjVarB.setErrorCode(6);
                        StringBuilder sb2 = this.i;
                        StringBuilder sb3 = new StringBuilder("location faile retype:");
                        sb3.append(kjVarB.h());
                        sb3.append(" rdesc:");
                        if (strD == null) {
                            strD = BuildConfig.COMMON_MODULE_COMMIT_ID;
                        }
                        sb3.append(strD);
                        sb2.append(sb3.toString());
                        if (!TextUtils.isEmpty(str2)) {
                            this.i.append(" #csid:" + str2);
                        }
                        kjVarB.setLocationDetail(this.i.toString());
                        return kjVarB;
                    }
                    kjVarB.j();
                    if (kjVarB.getErrorCode() == 0 && kjVarB.getLocationType() == 0) {
                        if ("-5".equals(kjVarB.h()) || "1".equals(kjVarB.h()) || "2".equals(kjVarB.h()) || Constants.VIA_REPORT_TYPE_MAKE_FRIEND.equals(kjVarB.h()) || Constants.VIA_REPORT_TYPE_CHAT_AIO.equals(kjVarB.h()) || "-1".equals(kjVarB.h())) {
                            kjVarB.setLocationType(5);
                        } else {
                            kjVarB.setLocationType(6);
                        }
                        this.i.append(kjVarB.h());
                        if (!TextUtils.isEmpty(str2)) {
                            this.i.append(" #csid:" + str2);
                        }
                        kjVarB.setLocationDetail(this.i.toString());
                    }
                    return kjVarB;
                } catch (Throwable th) {
                    b9.b(th, "MapNetLocation", "getApsLoc req");
                    kjVar.setErrorCode(4);
                    this.i.append("please check the network");
                    kjVar.setLocationDetail(this.i.toString());
                    return kjVar;
                }
            } catch (Throwable th2) {
                b9.b(th2, "MapNetLocation", "getApsLoc buildV4Dot2");
                kjVar.setErrorCode(3);
                this.i.append("buildV4Dot2 error " + th2.getMessage());
                kjVar.setLocationDetail(this.i.toString());
                return kjVar;
            }
        } catch (Throwable th3) {
            b9.b(th3, "MapNetLocation", "getApsLoc");
            this.i.append("get parames error:" + th3.getMessage());
            kjVar.setErrorCode(3);
            kjVar.setLocationDetail(this.i.toString());
            return kjVar;
        }
    }

    public final Inner_3dMap_location c() {
        if (this.i.length() > 0) {
            StringBuilder sb = this.i;
            sb.delete(0, sb.length());
        }
        if (f(this.m) && q9.b(this.l)) {
            return this.l;
        }
        this.m = g9.p();
        if (this.f11050a == null) {
            this.i.append("context is null");
            Inner_3dMap_location inner_3dMap_location = new Inner_3dMap_location("");
            inner_3dMap_location.setErrorCode(1);
            inner_3dMap_location.setLocationDetail(this.i.toString());
            return inner_3dMap_location;
        }
        try {
            this.c.s();
        } catch (Throwable th) {
            b9.b(th, "MapNetLocation", "getLocation getCgiListParam");
        }
        try {
            this.b.g(true);
        } catch (Throwable th2) {
            b9.b(th2, "MapNetLocation", "getLocation getScanResultsParam");
        }
        try {
            kj kjVarI = i();
            this.l = kjVarI;
            this.l = b(kjVarI);
        } catch (Throwable th3) {
            b9.b(th3, "MapNetLocation", "getLocation getScanResultsParam");
        }
        return this.l;
    }

    public final void e(Inner_3dMap_locationOption inner_3dMap_locationOption) {
        this.j = inner_3dMap_locationOption;
        if (inner_3dMap_locationOption == null) {
            this.j = new Inner_3dMap_locationOption();
        }
        try {
            v8 v8Var = this.b;
            this.j.isWifiActiveScan();
            v8Var.i(this.j.isWifiScan());
        } catch (Throwable unused) {
        }
        try {
            this.f11052e.d(this.j.getHttpTimeOut(), this.j.getLocationProtocol().equals(Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationProtocol.HTTPS));
        } catch (Throwable unused2) {
        }
    }

    public final void g() {
        a aVar;
        this.f11055h = false;
        this.k = null;
        try {
            Context context = this.f11050a;
            if (context != null && (aVar = this.f11051d) != null) {
                context.unregisterReceiver(aVar);
            }
            w9 w9Var = this.c;
            if (w9Var != null) {
                w9Var.J();
            }
            v8 v8Var = this.b;
            if (v8Var != null) {
                v8Var.p();
            }
            this.f11051d = null;
        } catch (Throwable unused) {
            this.f11051d = null;
        }
    }
}
