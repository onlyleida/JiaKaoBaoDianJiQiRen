package com.amap.api.mapcore.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.zip.CRC32;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"NewApi"})
public final class z8 {
    protected static String N;
    protected static String O;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f11460a = "1";
    protected short b = 0;
    protected String c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f11461d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f11462e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f11463f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f11464g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f11465h = null;
    public String i = null;
    protected String j = null;
    protected String k = null;
    protected String l = null;
    protected String m = null;
    protected String n = null;
    protected String o = null;
    protected String p = null;
    protected String q = null;
    protected String r = null;
    protected String s = null;
    protected String t = null;
    protected String u = null;
    protected String v = null;
    protected String w = null;
    protected String x = null;
    protected String y = null;
    protected int z = 0;
    protected String A = null;
    protected String B = null;
    protected ArrayList<v9> C = new ArrayList<>();
    protected String D = null;
    protected String E = null;
    protected ArrayList<ScanResult> F = new ArrayList<>();
    protected String G = null;
    protected String H = null;
    protected byte[] I = null;
    private byte[] J = null;
    private int K = 0;
    protected String L = null;
    protected String M = null;

    private static int a(String str, byte[] bArr, int i) {
        try {
            if (TextUtils.isEmpty(str)) {
                bArr[i] = 0;
                return i + 1;
            }
            byte[] bytes = str.getBytes("GBK");
            int length = bytes.length;
            if (length > 127) {
                length = 127;
            }
            bArr[i] = (byte) length;
            int i2 = i + 1;
            System.arraycopy(bytes, 0, bArr, i2, length);
            return i2 + length;
        } catch (Throwable th) {
            b9.b(th, "Req", "copyContentWithByteLen");
            bArr[i] = 0;
        }
    }

    private String b(String str, int i) {
        String[] strArrSplit = this.B.split("\\*")[i].split(",");
        if ("lac".equals(str)) {
            return strArrSplit[0];
        }
        if ("cellid".equals(str)) {
            return strArrSplit[1];
        }
        if ("signal".equals(str)) {
            return strArrSplit[2];
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000f A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:4:0x000c, B:10:0x001c, B:12:0x001f, B:14:0x0028, B:15:0x0030, B:6:0x000f, B:8:0x0014), top: B:20:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:8:0x0014 A[Catch: all -> 0x003e, LOOP:0: B:7:0x0012->B:8:0x0014, LOOP_END, TryCatch #0 {all -> 0x003e, blocks: (B:4:0x000c, B:10:0x001c, B:12:0x001f, B:14:0x0028, B:15:0x0030, B:6:0x000f, B:8:0x0014), top: B:20:0x000c }] */
    private byte[] e(String str) {
        int i;
        String[] strArrSplit = str.split(":");
        byte[] bArr = new byte[6];
        if (strArrSplit != null) {
            try {
                if (strArrSplit.length != 6) {
                    strArrSplit = new String[6];
                    for (i = 0; i < 6; i++) {
                        strArrSplit[i] = "0";
                    }
                }
            } catch (Throwable th) {
                b9.b(th, "Req", "getMacBa " + str);
                return e("00:00:00:00:00:00");
            }
        } else {
            strArrSplit = new String[6];
            while (i < 6) {
                strArrSplit[i] = "0";
            }
        }
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            if (strArrSplit[i2].length() > 2) {
                strArrSplit[i2] = strArrSplit[i2].substring(0, 2);
            }
            bArr[i2] = (byte) Integer.parseInt(strArrSplit[i2], 16);
        }
        return bArr;
    }

    private String f(String str) {
        if (!this.A.contains(str + ">")) {
            return "0";
        }
        return this.A.substring(this.A.indexOf(str + ">") + str.length() + 1, this.A.indexOf("</" + str));
    }

    private void g() {
        String[] strArr = new String[28];
        strArr[0] = this.f11460a;
        strArr[1] = this.c;
        strArr[2] = this.f11461d;
        strArr[3] = this.f11462e;
        strArr[4] = this.f11463f;
        strArr[5] = this.f11464g;
        strArr[6] = this.f11465h;
        strArr[7] = this.i;
        strArr[8] = this.l;
        strArr[9] = this.m;
        strArr[10] = this.n;
        strArr[11] = this.o;
        strArr[12] = this.p;
        strArr[13] = this.q;
        strArr[14] = this.r;
        strArr[15] = this.s;
        strArr[16] = this.t;
        strArr[17] = this.u;
        strArr[18] = this.v;
        strArr[19] = this.w;
        strArr[20] = this.x;
        strArr[21] = this.A;
        strArr[22] = this.B;
        strArr[23] = this.E;
        strArr[24] = this.G;
        strArr[25] = this.H;
        strArr[26] = N;
        strArr[27] = this.M;
        for (int i = 0; i < 28; i++) {
            if (TextUtils.isEmpty(strArr[i])) {
                strArr[i] = "";
            }
        }
        if (TextUtils.isEmpty(this.j) || (!"0".equals(this.j) && !"2".equals(this.j))) {
            this.j = "0";
        }
        if (TextUtils.isEmpty(this.k) || (!"0".equals(this.k) && !"1".equals(this.k))) {
            this.k = "0";
        }
        if (TextUtils.isEmpty(this.y) || (!"1".equals(this.y) && !"2".equals(this.y))) {
            this.y = "0";
        }
        if (!w9.p(this.z)) {
            this.z = 0;
        }
        if (this.I == null) {
            this.I = new byte[0];
        }
    }

    public final void c(Context context, boolean z, boolean z2, w9 w9Var, v8 v8Var, ConnectivityManager connectivityManager, String str) {
        String str2;
        String str3;
        String str4;
        NetworkInfo activeNetworkInfo;
        String strS;
        String str5;
        String str6;
        String string;
        ArrayList<ScanResult> arrayList;
        int length;
        int i = Build.VERSION.SDK_INT;
        String strJ = c5.j(context);
        int iA = g9.A();
        this.L = str;
        if (z2) {
            str2 = "api_serverSDK_130905";
            str3 = "S128DF1572465B890OE3F7A13167KLEI";
        } else {
            str2 = "UC_nlp_20131029";
            str3 = "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U";
        }
        String str7 = str3;
        String str8 = str2;
        StringBuilder sb = new StringBuilder();
        int iE = w9Var.E();
        int iG = w9Var.G();
        TelephonyManager telephonyManagerI = w9Var.I();
        ArrayList<v9> arrayListY = w9Var.y();
        ArrayList<v9> arrayListB = w9Var.B();
        ArrayList<ScanResult> arrayListA = v8Var.a();
        String str9 = iG == 2 ? "1" : "0";
        if (telephonyManagerI != null) {
            if (TextUtils.isEmpty(b9.f10516d)) {
                try {
                    b9.f10516d = g5.a0(context);
                } catch (Throwable th) {
                    b9.b(th, "Aps", "getApsReq part4");
                }
            }
            str4 = strJ;
            if (TextUtils.isEmpty(b9.f10516d) && i < 29) {
                b9.f10516d = "888888888888888";
            }
            if (TextUtils.isEmpty(b9.f10517e)) {
                try {
                    b9.f10517e = g5.c0(context);
                } catch (SecurityException unused) {
                } catch (Throwable th2) {
                    b9.b(th2, "Aps", "getApsReq part2");
                }
            }
            if (TextUtils.isEmpty(b9.f10517e) && i < 29) {
                b9.f10517e = "888888888888888";
            }
        } else {
            str4 = strJ;
            iA = iA;
        }
        try {
            activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        } catch (Throwable th3) {
            b9.b(th3, "Aps", "getApsReq part");
            activeNetworkInfo = null;
        }
        boolean zD = v8Var.d(connectivityManager);
        if (g9.e(activeNetworkInfo) != -1) {
            strS = g9.s(telephonyManagerI);
            str5 = zD ? "2" : "1";
        } else {
            strS = "";
            str5 = strS;
        }
        String str10 = str5;
        String str11 = strS;
        if (arrayListY.isEmpty()) {
            arrayListA = arrayListA;
            str6 = "";
            string = str6;
        } else {
            StringBuilder sb2 = new StringBuilder();
            str6 = "";
            if (iG == 1) {
                v9 v9Var = arrayListY.get(0);
                sb2.delete(0, sb2.length());
                sb2.append("<mcc>");
                sb2.append(v9Var.f11287a);
                sb2.append("</mcc>");
                sb2.append("<mnc>");
                sb2.append(v9Var.b);
                sb2.append("</mnc>");
                sb2.append("<lac>");
                sb2.append(v9Var.c);
                sb2.append("</lac>");
                sb2.append("<cellid>");
                sb2.append(v9Var.f11288d);
                sb2.append("</cellid>");
                sb2.append("<signal>");
                sb2.append(v9Var.j);
                sb2.append("</signal>");
                string = sb2.toString();
                for (int i2 = 1; i2 < arrayListY.size(); i2++) {
                    v9 v9Var2 = arrayListY.get(i2);
                    sb.append(v9Var2.c);
                    sb.append(",");
                    sb.append(v9Var2.f11288d);
                    sb.append(",");
                    sb.append(v9Var2.j);
                    if (i2 < arrayListY.size() - 1) {
                        sb.append(Marker.ANY_MARKER);
                    }
                }
            } else if (iG != 2) {
                string = str6;
            } else {
                v9 v9Var3 = arrayListY.get(0);
                sb2.delete(0, sb2.length());
                sb2.append("<mcc>");
                sb2.append(v9Var3.f11287a);
                sb2.append("</mcc>");
                sb2.append("<sid>");
                sb2.append(v9Var3.f11291g);
                sb2.append("</sid>");
                sb2.append("<nid>");
                sb2.append(v9Var3.f11292h);
                sb2.append("</nid>");
                sb2.append("<bid>");
                sb2.append(v9Var3.i);
                sb2.append("</bid>");
                if (v9Var3.f11290f > 0 && v9Var3.f11289e > 0) {
                    sb2.append("<lon>");
                    sb2.append(v9Var3.f11290f);
                    sb2.append("</lon>");
                    sb2.append("<lat>");
                    sb2.append(v9Var3.f11289e);
                    sb2.append("</lat>");
                }
                sb2.append("<signal>");
                sb2.append(v9Var3.j);
                sb2.append("</signal>");
                string = sb2.toString();
            }
            sb2.delete(0, sb2.length());
        }
        if ((iE & 4) != 4 || arrayListB.isEmpty()) {
            this.C.clear();
        } else {
            this.C.clear();
            this.C.addAll(arrayListB);
        }
        StringBuilder sb3 = new StringBuilder();
        if (v8Var.m()) {
            if (zD) {
                WifiInfo wifiInfoN = v8Var.n();
                if (v8.e(wifiInfoN)) {
                    sb3.append(wifiInfoN.getBSSID());
                    sb3.append(",");
                    int rssi = wifiInfoN.getRssi();
                    if (rssi < -128 || rssi > 127) {
                        rssi = 0;
                    }
                    sb3.append(rssi);
                    sb3.append(",");
                    String ssid = wifiInfoN.getSSID();
                    try {
                        length = wifiInfoN.getSSID().getBytes("UTF-8").length;
                    } catch (Exception unused2) {
                        length = 32;
                    }
                    if (length >= 32) {
                        ssid = "unkwn";
                    }
                    sb3.append(ssid.replace(Marker.ANY_MARKER, "."));
                }
            }
            if (arrayListA != null && (arrayList = this.F) != null) {
                arrayList.clear();
                this.F.addAll(arrayListA);
            }
        } else {
            v8Var.f();
            ArrayList<ScanResult> arrayList2 = this.F;
            if (arrayList2 != null) {
                arrayList2.clear();
            }
        }
        this.b = (short) 0;
        if (!z) {
            this.b = (short) (2 | 0);
        }
        this.c = str8;
        this.f11461d = str7;
        this.f11463f = Build.MODEL;
        this.f11464g = "android" + Build.VERSION.RELEASE;
        this.f11465h = g9.r(context);
        this.i = str9;
        this.j = "0";
        this.k = "0";
        this.l = "0";
        this.m = "0";
        this.n = "0";
        this.o = str4;
        this.p = b9.f10516d;
        this.q = b9.f10517e;
        this.s = String.valueOf(iA);
        this.t = g9.C(context);
        this.v = "4.9.0";
        this.w = null;
        this.u = str6;
        this.x = str11;
        this.y = str10;
        this.z = iE;
        this.A = string;
        this.B = sb.toString();
        this.D = w9Var.L();
        this.G = v8.q();
        this.E = sb3.toString();
        try {
            if (TextUtils.isEmpty(N)) {
                N = g5.M(context);
            }
        } catch (Throwable unused3) {
        }
        try {
            if (TextUtils.isEmpty(O)) {
                O = g5.B(context);
            }
        } catch (Throwable unused4) {
        }
        try {
            if (TextUtils.isEmpty(this.M)) {
                this.M = g5.N(context);
            }
        } catch (Throwable unused5) {
        }
        sb.delete(0, sb.length());
        sb3.delete(0, sb3.length());
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0317  */
    /* JADX WARN: Code duplicated, block: B:103:0x031c  */
    /* JADX WARN: Code duplicated, block: B:105:0x0328 A[PHI: r0
      0x0328: PHI (r0v109 int) = (r0v108 int), (r0v117 int) binds: [B:66:0x023d, B:91:0x0305] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:30:0x0180  */
    /* JADX WARN: Code duplicated, block: B:35:0x0194  */
    /* JADX WARN: Code duplicated, block: B:37:0x019c  */
    /* JADX WARN: Code duplicated, block: B:38:0x019f  */
    /* JADX WARN: Code duplicated, block: B:40:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:42:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:47:0x01e5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:86:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:92:0x0307  */
    public final byte[] d() {
        int length;
        int length2;
        int length3;
        int i;
        int length4;
        int i2;
        int i3;
        int i4;
        int length5;
        int i5;
        byte b;
        int length6;
        int i6;
        int length7;
        int i7;
        int i8;
        int length8;
        int i9;
        int length9;
        byte[] bArr;
        int length10;
        int length11;
        int length12;
        int i10;
        int i11;
        int i12;
        g();
        byte[] bArr2 = new byte[2];
        byte[] bArr3 = new byte[4];
        byte[] bArr4 = this.I;
        int length13 = bArr4 != null ? 4096 + bArr4.length + 1 : 4096;
        byte[] bArr5 = this.J;
        if (bArr5 == null || length13 > this.K) {
            bArr5 = new byte[length13];
            this.J = bArr5;
            this.K = length13;
        }
        byte[] bArr6 = bArr5;
        byte b2 = 0;
        bArr6[0] = g9.D(this.f11460a);
        byte[] bArrK = g9.k(this.b, null);
        System.arraycopy(bArrK, 0, bArr6, 1, bArrK.length);
        int iA = a(this.q, bArr6, a(this.p, bArr6, a(this.f11465h, bArr6, a(this.u, bArr6, a(this.f11464g, bArr6, a(this.f11463f, bArr6, a(this.f11462e, bArr6, a(this.o, bArr6, a(this.f11461d, bArr6, a(this.c, bArr6, bArrK.length + 1))))))))));
        try {
            if (TextUtils.isEmpty(this.t)) {
                bArr6[iA] = 0;
                length = iA + 1;
            } else {
                byte[] bArrE = e(this.t);
                bArr6[iA] = (byte) bArrE.length;
                int i13 = iA + 1;
                System.arraycopy(bArrE, 0, bArr6, i13, bArrE.length);
                length = i13 + bArrE.length;
            }
        } catch (Throwable th) {
            b9.b(th, "Req", "buildV4Dot219");
            bArr6[iA] = 0;
        }
        int iA2 = a(this.x, bArr6, a(O, bArr6, a(N, bArr6, a(this.w, bArr6, a(this.v, bArr6, length)))));
        bArr6[iA2] = Byte.parseByte(this.y);
        int i14 = iA2 + 1;
        bArr6[i14] = Byte.parseByte(this.j);
        int i15 = i14 + 1;
        int i16 = this.z;
        int i17 = i16 & 3;
        bArr6[i15] = (byte) i16;
        int i18 = i15 + 1;
        if (i17 == 1 || i17 == 2) {
            byte[] bArrV = g9.v(f("mcc"));
            System.arraycopy(bArrV, 0, bArr6, i18, bArrV.length);
            int length14 = i18 + bArrV.length;
            if (i17 == 1) {
                byte[] bArrV2 = g9.v(f("mnc"));
                System.arraycopy(bArrV2, 0, bArr6, length14, bArrV2.length);
                int length15 = length14 + bArrV2.length;
                byte[] bArrV3 = g9.v(f("lac"));
                System.arraycopy(bArrV3, 0, bArr6, length15, bArrV3.length);
                length2 = length15 + bArrV3.length;
                byte[] bArrZ = g9.z(f("cellid"));
                System.arraycopy(bArrZ, 0, bArr6, length2, bArrZ.length);
                length3 = bArrZ.length;
            } else if (i17 == 2) {
                byte[] bArrV4 = g9.v(f("sid"));
                System.arraycopy(bArrV4, 0, bArr6, length14, bArrV4.length);
                int length16 = length14 + bArrV4.length;
                byte[] bArrV5 = g9.v(f("nid"));
                System.arraycopy(bArrV5, 0, bArr6, length16, bArrV5.length);
                int length17 = length16 + bArrV5.length;
                byte[] bArrV6 = g9.v(f("bid"));
                System.arraycopy(bArrV6, 0, bArr6, length17, bArrV6.length);
                int length18 = length17 + bArrV6.length;
                byte[] bArrZ2 = g9.z(f("lon"));
                System.arraycopy(bArrZ2, 0, bArr6, length18, bArrZ2.length);
                length2 = length18 + bArrZ2.length;
                byte[] bArrZ3 = g9.z(f("lat"));
                System.arraycopy(bArrZ3, 0, bArr6, length2, bArrZ3.length);
                length3 = bArrZ3.length;
            } else {
                i = Integer.parseInt(f("signal"));
                if (i <= 127 || i < -128) {
                    i = 0;
                }
                bArr6[length14] = (byte) i;
                int i19 = length14 + 1;
                byte[] bArrK2 = g9.k(0, bArr2);
                System.arraycopy(bArrK2, 0, bArr6, i19, bArrK2.length);
                i18 = i19 + 2;
                if (i17 == 1) {
                    if (TextUtils.isEmpty(this.B)) {
                        bArr6[i18] = 0;
                        i18++;
                    } else {
                        length4 = this.B.split("\\*").length;
                        bArr6[i18] = (byte) length4;
                        i18++;
                        for (i2 = 0; i2 < length4; i2++) {
                            byte[] bArrV7 = g9.v(b("lac", i2));
                            System.arraycopy(bArrV7, 0, bArr6, i18, bArrV7.length);
                            int length19 = i18 + bArrV7.length;
                            byte[] bArrZ4 = g9.z(b("cellid", i2));
                            System.arraycopy(bArrZ4, 0, bArr6, length19, bArrZ4.length);
                            int length20 = length19 + bArrZ4.length;
                            i3 = Integer.parseInt(b("signal", i2));
                            if (i3 <= 127 || i3 < -128) {
                                i3 = 0;
                            }
                            bArr6[length20] = (byte) i3;
                            i18 = length20 + 1;
                        }
                    }
                } else if (i17 == 2) {
                    bArr6[i18] = 0;
                    i18++;
                }
            }
            length14 = length2 + length3;
            i = Integer.parseInt(f("signal"));
            if (i <= 127) {
                i = 0;
            } else {
                i = 0;
            }
            bArr6[length14] = (byte) i;
            int i110 = length14 + 1;
            byte[] bArrK3 = g9.k(0, bArr2);
            System.arraycopy(bArrK3, 0, bArr6, i110, bArrK3.length);
            i18 = i110 + 2;
            if (i17 == 1) {
                if (TextUtils.isEmpty(this.B)) {
                    bArr6[i18] = 0;
                    i18++;
                } else {
                    length4 = this.B.split("\\*").length;
                    bArr6[i18] = (byte) length4;
                    i18++;
                    while (i2 < length4) {
                        byte[] bArrV8 = g9.v(b("lac", i2));
                        System.arraycopy(bArrV8, 0, bArr6, i18, bArrV8.length);
                        int length110 = i18 + bArrV8.length;
                        byte[] bArrZ5 = g9.z(b("cellid", i2));
                        System.arraycopy(bArrZ5, 0, bArr6, length110, bArrZ5.length);
                        int length21 = length110 + bArrZ5.length;
                        i3 = Integer.parseInt(b("signal", i2));
                        if (i3 <= 127) {
                            i3 = 0;
                        }
                        bArr6[length21] = (byte) i3;
                        i18 = length21 + 1;
                    }
                }
            } else if (i17 == 2) {
                bArr6[i18] = 0;
                i18++;
            }
        }
        String str = this.D;
        if (str == null || (this.z & 8) != 8) {
            bArr6[i18] = 0;
            i4 = i18 + 1;
        } else {
            try {
                byte[] bytes = str.getBytes("GBK");
                int iMin = Math.min(bytes.length, 60);
                bArr6[i18] = (byte) iMin;
                i18++;
                System.arraycopy(bytes, 0, bArr6, i18, iMin);
                i4 = i18 + iMin;
            } catch (Exception unused) {
                bArr6[i18] = 0;
                i4 = i18 + 1;
            }
        }
        ArrayList<v9> arrayList = this.C;
        int size = arrayList.size();
        if ((this.z & 4) != 4 || size <= 0) {
            bArr6[i4] = 0;
            length5 = i4 + 1;
        } else {
            if (!arrayList.get(0).p) {
                size--;
            }
            bArr6[i4] = (byte) size;
            length5 = i4 + 1;
            for (int i20 = 0; i20 < size; i20++) {
                v9 v9Var = arrayList.get(i20);
                if (v9Var.p) {
                    int i21 = v9Var.k;
                    if (i21 == 1 || i21 == 3 || i21 == 4) {
                        byte b3 = (byte) i21;
                        if (v9Var.n) {
                            b3 = (byte) (b3 | 8);
                        }
                        bArr6[length5] = b3;
                        int i22 = length5 + 1;
                        byte[] bArrK4 = g9.k(v9Var.f11287a, bArr2);
                        System.arraycopy(bArrK4, 0, bArr6, i22, bArrK4.length);
                        int length22 = i22 + bArrK4.length;
                        byte[] bArrK5 = g9.k(v9Var.b, bArr2);
                        System.arraycopy(bArrK5, 0, bArr6, length22, bArrK5.length);
                        int length23 = length22 + bArrK5.length;
                        byte[] bArrK6 = g9.k(v9Var.c, bArr2);
                        System.arraycopy(bArrK6, 0, bArr6, length23, bArrK6.length);
                        length11 = length23 + bArrK6.length;
                        byte[] bArrU = g9.u(v9Var.f11288d, bArr3);
                        System.arraycopy(bArrU, 0, bArr6, length11, bArrU.length);
                        length12 = bArrU.length;
                    } else if (i21 == 2) {
                        byte b4 = (byte) i21;
                        if (v9Var.n) {
                            b4 = (byte) (b4 | 8);
                        }
                        bArr6[length5] = b4;
                        int i23 = length5 + 1;
                        byte[] bArrK7 = g9.k(v9Var.f11287a, bArr2);
                        System.arraycopy(bArrK7, 0, bArr6, i23, bArrK7.length);
                        int length24 = i23 + bArrK7.length;
                        byte[] bArrK8 = g9.k(v9Var.f11291g, bArr2);
                        System.arraycopy(bArrK8, 0, bArr6, length24, bArrK8.length);
                        int length25 = length24 + bArrK8.length;
                        byte[] bArrK9 = g9.k(v9Var.f11292h, bArr2);
                        System.arraycopy(bArrK9, 0, bArr6, length25, bArrK9.length);
                        int length26 = length25 + bArrK9.length;
                        byte[] bArrK10 = g9.k(v9Var.i, bArr2);
                        System.arraycopy(bArrK10, 0, bArr6, length26, bArrK10.length);
                        int length27 = length26 + bArrK10.length;
                        byte[] bArrU2 = g9.u(v9Var.f11290f, bArr3);
                        System.arraycopy(bArrU2, 0, bArr6, length27, bArrU2.length);
                        length11 = length27 + bArrU2.length;
                        byte[] bArrU3 = g9.u(v9Var.f11289e, bArr3);
                        System.arraycopy(bArrU3, 0, bArr6, length11, bArrU3.length);
                        length12 = bArrU3.length;
                    } else {
                        i10 = v9Var.j;
                        if (i10 <= 127 || i10 < -128) {
                            i10 = 99;
                        }
                        bArr6[length5] = (byte) i10;
                        int i24 = length5 + 1;
                        byte[] bArrK11 = g9.k(v9Var.l, bArr2);
                        System.arraycopy(bArrK11, 0, bArr6, i24, bArrK11.length);
                        length5 = i24 + bArrK11.length;
                        if (Double.valueOf("5.1").doubleValue() >= 5.0d) {
                            i11 = v9Var.k;
                            if (i11 != 3 || i11 == 4) {
                                i12 = v9Var.o;
                                if (i12 > 32767) {
                                    i12 = 32767;
                                }
                                byte[] bArrK12 = g9.k(i12 >= 0 ? i12 : 32767, bArr2);
                                System.arraycopy(bArrK12, 0, bArr6, length5, bArrK12.length);
                                length5 += bArrK12.length;
                            }
                        }
                    }
                    length5 = length11 + length12;
                    i10 = v9Var.j;
                    if (i10 <= 127) {
                        i10 = 99;
                    } else {
                        i10 = 99;
                    }
                    bArr6[length5] = (byte) i10;
                    int i25 = length5 + 1;
                    byte[] bArrK13 = g9.k(v9Var.l, bArr2);
                    System.arraycopy(bArrK13, 0, bArr6, i25, bArrK13.length);
                    length5 = i25 + bArrK13.length;
                    if (Double.valueOf("5.1").doubleValue() >= 5.0d) {
                        i11 = v9Var.k;
                        if (i11 != 3) {
                        }
                        i12 = v9Var.o;
                        if (i12 > 32767) {
                            i12 = 32767;
                        }
                        byte[] bArrK14 = g9.k(i12 >= 0 ? i12 : 32767, bArr2);
                        System.arraycopy(bArrK14, 0, bArr6, length5, bArrK14.length);
                        length5 += bArrK14.length;
                    }
                }
            }
        }
        if (this.E.length() == 0) {
            bArr6[length5] = 0;
            i5 = length5 + 1;
        } else {
            bArr6[length5] = 1;
            int length28 = length5 + 1;
            try {
                String[] strArrSplit = this.E.split(",");
                byte[] bArrE2 = e(strArrSplit[0]);
                System.arraycopy(bArrE2, 0, bArr6, length28, bArrE2.length);
                length28 += bArrE2.length;
                try {
                    byte[] bytes2 = strArrSplit[2].getBytes("GBK");
                    int length29 = bytes2.length;
                    if (length29 > 127) {
                        length29 = 127;
                    }
                    bArr6[length28] = (byte) length29;
                    length28++;
                    System.arraycopy(bytes2, 0, bArr6, length28, length29);
                    length28 += length29;
                } catch (Throwable th2) {
                    b9.b(th2, "Req", "buildV4Dot214");
                    bArr6[length28] = 0;
                    length28++;
                }
                int i26 = Integer.parseInt(strArrSplit[1]);
                if (i26 > 127 || i26 < -128) {
                    i26 = 0;
                }
                bArr6[length28] = Byte.parseByte(String.valueOf(i26));
            } catch (Throwable th3) {
                b9.b(th3, "Req", "buildV4Dot216");
                byte[] bArrE3 = e("00:00:00:00:00:00");
                System.arraycopy(bArrE3, 0, bArr6, length28, bArrE3.length);
                int length30 = length28 + bArrE3.length;
                bArr6[length30] = 0;
                length28 = length30 + 1;
                bArr6[length28] = Byte.parseByte("0");
            }
            i5 = length28 + 1;
        }
        ArrayList<ScanResult> arrayList2 = this.F;
        int iMin2 = Math.min(arrayList2.size(), 25);
        if (iMin2 == 0) {
            bArr6[i5] = 0;
            length6 = i5 + 1;
            b = 0;
        } else {
            bArr6[i5] = (byte) iMin2;
            int length31 = i5 + 1;
            boolean z = g9.x() >= 17;
            long jP = z ? g9.p() / 1000 : 0L;
            int i27 = 0;
            while (i27 < iMin2) {
                ScanResult scanResult = arrayList2.get(i27);
                byte[] bArrE4 = e(scanResult.BSSID);
                System.arraycopy(bArrE4, b2, bArr6, length31, bArrE4.length);
                int length32 = length31 + bArrE4.length;
                try {
                    byte[] bytes3 = scanResult.SSID.getBytes("GBK");
                    bArr6[length32] = (byte) bytes3.length;
                    length32++;
                    System.arraycopy(bytes3, b2, bArr6, length32, bytes3.length);
                    length7 = length32 + bytes3.length;
                    i6 = 1;
                } catch (Exception unused2) {
                    bArr6[length32] = b2;
                    i6 = 1;
                    length7 = length32 + 1;
                }
                int i28 = scanResult.level;
                if (i28 > 127 || i28 < -128) {
                    i28 = 0;
                }
                bArr6[length7] = Byte.parseByte(String.valueOf(i28));
                int i29 = length7 + i6;
                long j = jP;
                if (!z || (i7 = (int) (j - ((scanResult.timestamp / 1000000) + 1))) < 0) {
                    i7 = 0;
                }
                if (i7 > 65535) {
                    i7 = ExifInterface.COLOR_SPACE_UNCALIBRATED;
                }
                byte[] bArrK15 = g9.k(i7, bArr2);
                System.arraycopy(bArrK15, 0, bArr6, i29, bArrK15.length);
                int length33 = i29 + bArrK15.length;
                byte[] bArrK16 = g9.k(scanResult.frequency, bArr2);
                System.arraycopy(bArrK16, 0, bArr6, length33, bArrK16.length);
                length31 = length33 + bArrK16.length;
                i27++;
                jP = j;
                b2 = 0;
            }
            b = 0;
            byte[] bArrK17 = g9.k(Integer.parseInt(this.G), bArr2);
            System.arraycopy(bArrK17, 0, bArr6, length31, bArrK17.length);
            length6 = length31 + bArrK17.length;
        }
        bArr6[length6] = b;
        int i30 = length6 + 1;
        try {
            byte[] bytes4 = this.H.getBytes("GBK");
            if (bytes4.length > 127) {
                bytes4 = null;
            }
            if (bytes4 == null) {
                bArr6[i30] = 0;
                i8 = 1;
                length8 = i30 + i8;
            } else {
                bArr6[i30] = (byte) bytes4.length;
                int i31 = i30 + 1;
                System.arraycopy(bytes4, 0, bArr6, i31, bytes4.length);
                length8 = i31 + bytes4.length;
            }
        } catch (Throwable unused3) {
            bArr6[i30] = 0;
            i8 = 1;
        }
        byte[] bArrK18 = {0, 0};
        try {
            boolean zIsEmpty = TextUtils.isEmpty(this.L);
            if (!zIsEmpty) {
                bArrK18 = g9.k(this.L.length(), bArr2);
            }
            System.arraycopy(bArrK18, 0, bArr6, length8, 2);
            length9 = length8 + 2;
            if (!zIsEmpty) {
                try {
                    byte[] bytes5 = this.L.getBytes("GBK");
                    System.arraycopy(bytes5, 0, bArr6, length9, bytes5.length);
                    length9 += bytes5.length;
                } catch (Throwable unused4) {
                }
            }
            i9 = 2;
        } catch (Throwable unused5) {
            i9 = 2;
            length9 = length8 + 2;
        }
        try {
            System.arraycopy(g9.k(0, bArr2), 0, bArr6, length9, i9);
        } catch (Throwable unused6) {
        }
        int i32 = length9 + i9;
        byte[] bArr7 = new byte[i9];
        // fill-array-data instruction
        bArr7[0] = 0;
        bArr7[1] = 0;
        try {
            System.arraycopy(bArr7, 0, bArr6, i32, i9);
        } catch (Throwable unused7) {
        }
        int i33 = i32 + i9;
        byte[] bArr8 = this.I;
        if (bArr8 != null) {
            length10 = bArr8.length;
            bArr = null;
        } else {
            bArr = null;
            length10 = 0;
        }
        byte[] bArrK19 = g9.k(length10, bArr);
        System.arraycopy(bArrK19, 0, bArr6, i33, bArrK19.length);
        int length34 = i33 + bArrK19.length;
        if (length10 > 0) {
            byte[] bArr9 = this.I;
            System.arraycopy(bArr9, 0, bArr6, length34, bArr9.length);
            length34 += this.I.length;
        }
        if (Double.valueOf("5.1").doubleValue() >= 5.0d) {
            bArr6[length34] = 0;
            length34 = a(this.M, bArr6, length34 + 1);
        }
        byte[] bArr10 = new byte[length34];
        System.arraycopy(bArr6, 0, bArr10, 0, length34);
        CRC32 crc32 = new CRC32();
        crc32.update(bArr10);
        byte[] bArrL = g9.l(crc32.getValue());
        byte[] bArr11 = new byte[length34 + 8];
        System.arraycopy(bArr10, 0, bArr11, 0, length34);
        System.arraycopy(bArrL, 0, bArr11, length34, 8);
        return bArr11;
    }
}
