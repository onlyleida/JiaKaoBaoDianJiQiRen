package com.loc;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.zip.CRC32;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"NewApi"})
public final class fg {
    protected static String I;
    protected static String K;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f12891a = "1";
    protected short b = 0;
    protected String c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f12892d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f12893e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f12894f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f12895g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f12896h = null;
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
    protected ArrayList<er> A = new ArrayList<>();
    protected ArrayList<er> B = new ArrayList<>();
    protected String C = null;
    protected String D = null;
    protected ArrayList<dx> E = new ArrayList<>();
    protected String F = null;
    protected String G = null;
    protected byte[] H = null;
    private byte[] Q = null;
    private int R = 0;
    protected String J = null;
    protected String L = null;
    protected String M = null;
    protected String N = null;
    protected int O = 0;
    private List<et> S = null;
    private List<er> T = Collections.synchronizedList(new ArrayList());
    final int P = 3;

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
            fi.a(th, "Req", "copyContentWithByteLen");
            bArr[i] = 0;
        }
    }

    private static void a(er erVar, List<er> list) {
        if (erVar == null || list == null) {
            return;
        }
        int size = list.size();
        if (size == 0) {
            list.add(erVar);
            return;
        }
        long jMin = Long.MAX_VALUE;
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        while (true) {
            if (i >= size) {
                i2 = i3;
                break;
            }
            er erVar2 = list.get(i);
            if (erVar.c() != null && erVar.c().equals(erVar2.c())) {
                int i4 = erVar.s;
                if (i4 == erVar2.s) {
                    break;
                }
                erVar2.t = erVar.t;
                erVar2.s = i4;
                break;
            }
            jMin = Math.min(jMin, erVar2.t);
            if (jMin == erVar2.t) {
                i3 = i;
            }
            i++;
        }
        if (i2 >= 0) {
            if (size < 3) {
                list.add(erVar);
            } else {
                if (erVar.t <= jMin || i2 >= size) {
                    return;
                }
                list.remove(i2);
                list.add(erVar);
            }
        }
    }

    private void a(ArrayList<er> arrayList, ArrayList<er> arrayList2) {
        if (arrayList2 != null && arrayList2.size() > 0) {
            for (er erVar : arrayList2) {
                if (erVar.r && erVar.n) {
                    a(erVar, this.T);
                    return;
                }
            }
        }
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        a(arrayList.get(0), this.T);
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000f A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:4:0x000c, B:10:0x001c, B:12:0x001f, B:14:0x0028, B:15:0x0030, B:6:0x000f, B:8:0x0014), top: B:20:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:8:0x0014 A[Catch: all -> 0x003e, LOOP:0: B:7:0x0012->B:8:0x0014, LOOP_END, TryCatch #0 {all -> 0x003e, blocks: (B:4:0x000c, B:10:0x001c, B:12:0x001f, B:14:0x0028, B:15:0x0030, B:6:0x000f, B:8:0x0014), top: B:20:0x000c }] */
    private byte[] a(String str) {
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
                fi.a(th, "Req", "getMacBa ".concat(String.valueOf(str)));
                return a("00:00:00:00:00:00");
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

    private void b() {
        String[] strArr = new String[27];
        strArr[0] = this.f12891a;
        strArr[1] = this.c;
        strArr[2] = this.f12892d;
        strArr[3] = this.f12893e;
        strArr[4] = this.f12894f;
        strArr[5] = this.f12895g;
        strArr[6] = this.f12896h;
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
        strArr[21] = this.D;
        strArr[22] = this.F;
        strArr[23] = this.G;
        strArr[24] = I;
        strArr[25] = this.M;
        strArr[26] = this.N;
        for (int i = 0; i < 27; i++) {
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
        if (!es.a(this.z)) {
            this.z = 0;
        }
        if (this.H == null) {
            this.H = new byte[0];
        }
    }

    public final void a(Context context, boolean z, boolean z2, es esVar, ew ewVar, ConnectivityManager connectivityManager, String str, eu euVar) {
        String str2;
        String str3;
        StringBuilder sb;
        NetworkInfo activeNetworkInfo;
        String strB;
        String str4;
        ArrayList<dx> arrayList;
        int length;
        int i = Build.VERSION.SDK_INT;
        String strF = k.f(context);
        int iD = fp.d();
        this.J = str;
        this.S = null;
        if (z2) {
            str2 = "api_serverSDK_130905";
            str3 = "S128DF1572465B890OE3F7A13167KLEI";
        } else {
            str2 = "UC_nlp_20131029";
            str3 = "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U";
        }
        String str5 = str3;
        String str6 = str2;
        StringBuilder sb2 = new StringBuilder();
        int iF = esVar.f();
        int iG = esVar.g();
        TelephonyManager telephonyManagerH = esVar.h();
        ArrayList<er> arrayListB = esVar.b();
        ArrayList<er> arrayListC = esVar.c();
        ArrayList<dx> arrayListE = ewVar.e();
        String str7 = "1";
        String str8 = iG == 2 ? "1" : "0";
        if (telephonyManagerH != null) {
            if (TextUtils.isEmpty(fi.f12908g)) {
                try {
                    fi.f12908g = n.v(context);
                } catch (Throwable th) {
                    fi.a(th, "Aps", "getApsReq part4");
                }
            }
            sb = sb2;
            if (TextUtils.isEmpty(fi.f12908g) && i < 29) {
                fi.f12908g = "888888888888888";
            }
            if (TextUtils.isEmpty(fi.f12909h)) {
                try {
                    fi.f12909h = n.y(context);
                } catch (SecurityException unused) {
                } catch (Throwable th2) {
                    fi.a(th2, "Aps", "getApsReq part2");
                }
            }
            if (TextUtils.isEmpty(fi.f12909h) && i < 29) {
                fi.f12909h = "888888888888888";
            }
        } else {
            sb = sb2;
            str7 = "1";
        }
        try {
            activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        } catch (Throwable th3) {
            fi.a(th3, "Aps", "getApsReq part");
            activeNetworkInfo = null;
        }
        boolean zA = ewVar.a(connectivityManager);
        if (fp.a(activeNetworkInfo) != -1) {
            strB = fp.b(telephonyManagerH);
            str4 = zA ? "2" : str7;
        } else {
            strB = "";
            str4 = strB;
        }
        if ((iF & 4) != 4 || arrayListC.isEmpty()) {
            this.B.clear();
        } else {
            this.B.clear();
            this.B.addAll(arrayListC);
        }
        this.A.clear();
        this.A.addAll(arrayListB);
        StringBuilder sb3 = new StringBuilder();
        if (ewVar.k()) {
            if (zA) {
                WifiInfo wifiInfoL = ewVar.l();
                if (ew.a(wifiInfoL)) {
                    sb3.append(wifiInfoL.getBSSID());
                    sb3.append(",");
                    int rssi = wifiInfoL.getRssi();
                    if (rssi < -128 || rssi > 127) {
                        rssi = 0;
                    }
                    sb3.append(rssi);
                    sb3.append(",");
                    String ssid = wifiInfoL.getSSID();
                    try {
                        length = wifiInfoL.getSSID().getBytes("UTF-8").length;
                    } catch (Exception unused2) {
                        length = 32;
                    }
                    if (length >= 32) {
                        ssid = "unkwn";
                    }
                    sb3.append(ssid.replace(Marker.ANY_MARKER, "."));
                }
            }
            if (arrayListE != null && (arrayList = this.E) != null) {
                arrayList.clear();
                this.E.addAll(arrayListE);
            }
        } else {
            ewVar.g();
            ArrayList<dx> arrayList2 = this.E;
            if (arrayList2 != null) {
                arrayList2.clear();
            }
        }
        this.b = (short) 0;
        if (!z) {
            this.b = (short) (2 | 0);
        }
        this.c = str6;
        this.f12892d = str5;
        this.f12894f = Build.MODEL;
        this.f12895g = "android" + Build.VERSION.RELEASE;
        this.f12896h = fp.b(context);
        this.i = str8;
        this.j = "0";
        this.k = "0";
        this.l = "0";
        this.m = "0";
        this.n = "0";
        this.o = strF;
        this.p = fi.f12908g;
        this.q = fi.f12909h;
        this.s = String.valueOf(iD);
        this.t = fp.j(context);
        this.v = "5.6.2";
        this.w = null;
        this.u = "";
        this.x = strB;
        this.y = str4;
        this.z = iF;
        this.C = esVar.k();
        this.F = ew.o();
        this.D = sb3.toString();
        this.O = (int) ((fp.b() - ewVar.p()) / 1000);
        try {
            if (TextUtils.isEmpty(I)) {
                I = n.h(context);
            }
        } catch (Throwable unused3) {
        }
        try {
            if (TextUtils.isEmpty(K)) {
                K = n.a(context);
            }
        } catch (Throwable unused4) {
        }
        try {
            if (TextUtils.isEmpty(this.M)) {
                this.M = n.i(context);
            }
        } catch (Throwable unused5) {
        }
        try {
            if (TextUtils.isEmpty(this.N)) {
                this.N = n.g(context);
            }
        } catch (Throwable unused6) {
        }
        try {
            this.S = euVar.a(this.B, this.E);
            a(this.A, this.B);
        } catch (Throwable th4) {
            th4.printStackTrace();
        }
        sb.delete(0, sb.length());
        sb3.delete(0, sb3.length());
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:102:0x02be  */
    /* JADX WARN: Code duplicated, block: B:105:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:111:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:113:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:114:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:117:0x0300  */
    /* JADX WARN: Code duplicated, block: B:120:0x0305  */
    /* JADX WARN: Code duplicated, block: B:122:0x0314  */
    /* JADX WARN: Code duplicated, block: B:124:0x031c  */
    /* JADX WARN: Code duplicated, block: B:126:0x031f  */
    /* JADX WARN: Code duplicated, block: B:68:0x0205  */
    /* JADX WARN: Code duplicated, block: B:69:0x0210  */
    /* JADX WARN: Code duplicated, block: B:71:0x0213  */
    /* JADX WARN: Code duplicated, block: B:76:0x0224  */
    /* JADX WARN: Code duplicated, block: B:77:0x0237  */
    /* JADX WARN: Code duplicated, block: B:80:0x0242  */
    /* JADX WARN: Code duplicated, block: B:83:0x0247  */
    /* JADX WARN: Code duplicated, block: B:86:0x0255  */
    /* JADX WARN: Code duplicated, block: B:88:0x025d  */
    /* JADX WARN: Code duplicated, block: B:89:0x0261  */
    /* JADX WARN: Code duplicated, block: B:91:0x026f  */
    /* JADX WARN: Code duplicated, block: B:93:0x0277  */
    /* JADX WARN: Code duplicated, block: B:94:0x0282  */
    /* JADX WARN: Code duplicated, block: B:97:0x0295  */
    /* JADX WARN: Code duplicated, block: B:98:0x02a0  */
    public final byte[] a() {
        int length;
        int length2;
        int length3;
        int i;
        long jB;
        int size;
        int i2;
        int i3;
        int i4;
        int i5;
        long jB2;
        int i6;
        byte[] bArr;
        byte b;
        int length4;
        int i7;
        byte b2;
        int length5;
        byte b3;
        int length6;
        int i8;
        int length7;
        int i9;
        int i10;
        int length8;
        int i11;
        int length9;
        int length10;
        int length11;
        int i12;
        byte[] bArr2;
        int length12;
        int length13;
        b();
        int i13 = 2;
        byte[] bArr3 = new byte[2];
        byte[] bArr4 = new byte[4];
        byte[] bArr5 = this.H;
        int i14 = 1;
        int length14 = bArr5 != null ? 4096 + bArr5.length + 1 : 4096;
        byte[] bArr6 = this.Q;
        if (bArr6 == null || length14 > this.R) {
            bArr6 = new byte[length14];
            this.Q = bArr6;
            this.R = length14;
        }
        byte[] bArr7 = bArr6;
        int i15 = 0;
        bArr7[0] = fp.g(this.f12891a);
        byte[] bArr8 = null;
        byte[] bArrA = fp.a(this.b, (byte[]) null);
        System.arraycopy(bArrA, 0, bArr7, 1, bArrA.length);
        int iA = a(this.q, bArr7, a(this.p, bArr7, a(this.f12896h, bArr7, a(this.u, bArr7, a(this.f12895g, bArr7, a(this.f12894f, bArr7, a(this.f12893e, bArr7, a(this.o, bArr7, a(this.f12892d, bArr7, a(this.c, bArr7, bArrA.length + 1))))))))));
        try {
            if (TextUtils.isEmpty(this.t)) {
                bArr7[iA] = 0;
                length = iA + 1;
            } else {
                byte[] bArrA2 = a(this.t);
                bArr7[iA] = (byte) bArrA2.length;
                int i16 = iA + 1;
                System.arraycopy(bArrA2, 0, bArr7, i16, bArrA2.length);
                length = i16 + bArrA2.length;
            }
        } catch (Throwable th) {
            fi.a(th, "Req", "buildV4Dot219");
            bArr7[iA] = 0;
        }
        int iA2 = a(this.x, bArr7, a(K, bArr7, a(I, bArr7, a(this.w, bArr7, a(this.v, bArr7, length)))));
        bArr7[iA2] = Byte.parseByte(this.y);
        int i17 = iA2 + 1;
        bArr7[i17] = Byte.parseByte(this.j);
        int i18 = i17 + 1;
        int i19 = this.z;
        int i20 = i19 & 3;
        bArr7[i18] = (byte) i19;
        int length15 = i18 + 1;
        if (i20 == 1 || i20 == 2) {
            byte[] bArrA3 = fp.a(this.A.size() > 0 ? this.A.get(0).f12832a : 0, (byte[]) null);
            System.arraycopy(bArrA3, 0, bArr7, length15, bArrA3.length);
            int length16 = length15 + bArrA3.length;
            if (i20 == 1) {
                byte[] bArrA4 = fp.a(this.A.size() > 0 ? this.A.get(0).b : 0, (byte[]) null);
                System.arraycopy(bArrA4, 0, bArr7, length16, bArrA4.length);
                int length17 = length16 + bArrA4.length;
                byte[] bArrA5 = fp.a(this.A.size() > 0 ? this.A.get(0).c : 0, (byte[]) null);
                System.arraycopy(bArrA5, 0, bArr7, length17, bArrA5.length);
                length2 = length17 + bArrA5.length;
                byte[] bArrB = fp.b(this.A.size() > 0 ? this.A.get(0).f12833d : 0, (byte[]) null);
                System.arraycopy(bArrB, 0, bArr7, length2, bArrB.length);
                length3 = bArrB.length;
            } else if (i20 != 2) {
                if (this.A.size() > 0) {
                    i = this.A.get(0).k;
                } else {
                    i = 0;
                }
                if (i <= 127 || i < -128) {
                    i = 0;
                }
                bArr7[length16] = (byte) i;
                int i21 = length16 + 1;
                if (this.A.size() > 0) {
                    jB = (fp.b() - this.A.get(0).t) / 1000;
                } else {
                    jB = 0;
                }
                if (jB > 65535) {
                    jB = 65535;
                }
                if (jB < 0) {
                    jB = 0;
                }
                byte[] bArrA6 = fp.a((int) jB, bArr3);
                System.arraycopy(bArrA6, 0, bArr7, i21, bArrA6.length);
                length15 = i21 + 2;
                if (i20 == 1) {
                    if (this.A.size() == 0) {
                        bArr7[length15] = 0;
                        length15++;
                    } else {
                        size = this.A.size();
                        bArr7[length15] = (byte) size;
                        length15++;
                        i2 = 0;
                        while (i2 < size) {
                            if (this.A.size() > 0) {
                                i3 = this.A.get(i2).c;
                            } else {
                                i3 = 0;
                            }
                            byte[] bArrA7 = fp.a(i3, bArr8);
                            System.arraycopy(bArrA7, i15, bArr7, length15, bArrA7.length);
                            int length18 = length15 + bArrA7.length;
                            if (this.A.size() > 0) {
                                i4 = this.A.get(i2).f12833d;
                            } else {
                                i4 = 0;
                            }
                            byte[] bArrB2 = fp.b(i4, bArr8);
                            System.arraycopy(bArrB2, i15, bArr7, length18, bArrB2.length);
                            int length19 = length18 + bArrB2.length;
                            if (this.A.size() > 0) {
                                i5 = this.A.get(i2).k;
                            } else {
                                i5 = 0;
                            }
                            if (i5 <= 127 || i5 < -128) {
                                i5 = 0;
                            }
                            bArr7[length19] = (byte) i5;
                            length15 = length19 + i14;
                            if (Double.valueOf(fi.f12904a).doubleValue() < 5.2d) {
                                if (this.A.size() > 0) {
                                    jB2 = (fp.b() - this.A.get(i15).t) / 1000;
                                } else {
                                    jB2 = 0;
                                }
                                if (jB2 > 65535) {
                                    jB2 = 65535;
                                }
                                if (jB2 < 0) {
                                    jB2 = 0;
                                }
                                byte[] bArrA8 = fp.a((int) jB2, bArr3);
                                System.arraycopy(bArrA8, 0, bArr7, length15, bArrA8.length);
                                length15 += bArrA8.length;
                            }
                            i2++;
                            i14 = 1;
                            i15 = 0;
                            bArr8 = null;
                        }
                    }
                } else if (i20 == 2) {
                    bArr7[length15] = 0;
                    length15++;
                }
            } else {
                byte[] bArrA9 = fp.a(this.A.size() > 0 ? this.A.get(0).f12837h : 0, (byte[]) null);
                System.arraycopy(bArrA9, 0, bArr7, length16, bArrA9.length);
                int length20 = length16 + bArrA9.length;
                byte[] bArrA10 = fp.a(this.A.size() > 0 ? this.A.get(0).i : 0, (byte[]) null);
                System.arraycopy(bArrA10, 0, bArr7, length20, bArrA10.length);
                int length21 = length20 + bArrA10.length;
                byte[] bArrA11 = fp.a(this.A.size() > 0 ? this.A.get(0).j : 0, (byte[]) null);
                System.arraycopy(bArrA11, 0, bArr7, length21, bArrA11.length);
                int length22 = length21 + bArrA11.length;
                byte[] bArrB3 = fp.b(this.A.size() > 0 ? this.A.get(0).f12836g : 0, (byte[]) null);
                System.arraycopy(bArrB3, 0, bArr7, length22, bArrB3.length);
                length2 = length22 + bArrB3.length;
                byte[] bArrB4 = fp.b(this.A.size() > 0 ? this.A.get(0).f12835f : 0, (byte[]) null);
                System.arraycopy(bArrB4, 0, bArr7, length2, bArrB4.length);
                length3 = bArrB4.length;
            }
            length16 = length2 + length3;
            if (this.A.size() > 0) {
                i = this.A.get(0).k;
            } else {
                i = 0;
            }
            if (i <= 127) {
                i = 0;
            } else {
                i = 0;
            }
            bArr7[length16] = (byte) i;
            int i22 = length16 + 1;
            if (this.A.size() > 0) {
                jB = (fp.b() - this.A.get(0).t) / 1000;
            } else {
                jB = 0;
            }
            if (jB > 65535) {
                jB = 65535;
            }
            if (jB < 0) {
                jB = 0;
            }
            byte[] bArrA12 = fp.a((int) jB, bArr3);
            System.arraycopy(bArrA12, 0, bArr7, i22, bArrA12.length);
            length15 = i22 + 2;
            if (i20 == 1) {
                if (this.A.size() == 0) {
                    bArr7[length15] = 0;
                    length15++;
                } else {
                    size = this.A.size();
                    bArr7[length15] = (byte) size;
                    length15++;
                    i2 = 0;
                    while (i2 < size) {
                        if (this.A.size() > 0) {
                            i3 = this.A.get(i2).c;
                        } else {
                            i3 = 0;
                        }
                        byte[] bArrA13 = fp.a(i3, bArr8);
                        System.arraycopy(bArrA13, i15, bArr7, length15, bArrA13.length);
                        int length110 = length15 + bArrA13.length;
                        if (this.A.size() > 0) {
                            i4 = this.A.get(i2).f12833d;
                        } else {
                            i4 = 0;
                        }
                        byte[] bArrB5 = fp.b(i4, bArr8);
                        System.arraycopy(bArrB5, i15, bArr7, length110, bArrB5.length);
                        int length111 = length110 + bArrB5.length;
                        if (this.A.size() > 0) {
                            i5 = this.A.get(i2).k;
                        } else {
                            i5 = 0;
                        }
                        if (i5 <= 127) {
                            i5 = 0;
                        } else {
                            i5 = 0;
                        }
                        bArr7[length111] = (byte) i5;
                        length15 = length111 + i14;
                        if (Double.valueOf(fi.f12904a).doubleValue() < 5.2d) {
                            if (this.A.size() > 0) {
                                jB2 = (fp.b() - this.A.get(i15).t) / 1000;
                            } else {
                                jB2 = 0;
                            }
                            if (jB2 > 65535) {
                                jB2 = 65535;
                            }
                            if (jB2 < 0) {
                                jB2 = 0;
                            }
                            byte[] bArrA14 = fp.a((int) jB2, bArr3);
                            System.arraycopy(bArrA14, 0, bArr7, length15, bArrA14.length);
                            length15 += bArrA14.length;
                        }
                        i2++;
                        i14 = 1;
                        i15 = 0;
                        bArr8 = null;
                    }
                }
            } else if (i20 == 2) {
                bArr7[length15] = 0;
                length15++;
            }
        } else {
            bArr4 = bArr4;
        }
        String str = this.C;
        if (str == null || (this.z & 8) != 8) {
            bArr7[length15] = 0;
            i6 = length15 + 1;
        } else {
            try {
                byte[] bytes = str.getBytes("GBK");
                int iMin = Math.min(bytes.length, 60);
                bArr7[length15] = (byte) iMin;
                length15++;
                System.arraycopy(bytes, 0, bArr7, length15, iMin);
                i6 = length15 + iMin;
            } catch (Exception unused) {
                bArr7[length15] = 0;
                i6 = length15 + 1;
            }
        }
        ArrayList<er> arrayList = this.B;
        int size2 = arrayList.size();
        int i23 = 5;
        int i24 = 3;
        if ((this.z & 4) != 4 || size2 <= 0) {
            bArr = bArr4;
            bArr7[i6] = 0;
            b = 1;
            length4 = i6 + 1;
        } else {
            arrayList.get(0);
            bArr7[i6] = (byte) size2;
            int i25 = 1;
            length4 = i6 + 1;
            int i26 = 0;
            while (i26 < size2) {
                er erVar = arrayList.get(i26);
                int i27 = erVar.l;
                if (i27 == i25 || i27 == i24 || i27 == 4) {
                    bArr2 = bArr4;
                    byte b4 = (byte) i27;
                    if (erVar.n) {
                        b4 = (byte) (b4 | 8);
                    }
                    bArr7[length4] = b4;
                    int i28 = length4 + 1;
                    byte[] bArrA15 = fp.a(erVar.f12832a, bArr3);
                    System.arraycopy(bArrA15, 0, bArr7, i28, bArrA15.length);
                    int length23 = i28 + bArrA15.length;
                    byte[] bArrA16 = fp.a(erVar.b, bArr3);
                    System.arraycopy(bArrA16, 0, bArr7, length23, bArrA16.length);
                    int length24 = length23 + bArrA16.length;
                    byte[] bArrA17 = fp.a(erVar.c, bArr3);
                    System.arraycopy(bArrA17, 0, bArr7, length24, bArrA17.length);
                    int length25 = length24 + bArrA17.length;
                    byte[] bArrB6 = fp.b(erVar.f12833d, bArr2);
                    System.arraycopy(bArrB6, 0, bArr7, length25, bArrB6.length);
                    length4 = length25 + bArrB6.length;
                } else if (i27 == i13) {
                    byte b5 = (byte) i27;
                    if (erVar.n) {
                        b5 = (byte) (b5 | 8);
                    }
                    bArr7[length4] = b5;
                    int i29 = length4 + 1;
                    byte[] bArrA18 = fp.a(erVar.f12832a, bArr3);
                    System.arraycopy(bArrA18, 0, bArr7, i29, bArrA18.length);
                    int length26 = i29 + bArrA18.length;
                    byte[] bArrA19 = fp.a(erVar.f12837h, bArr3);
                    System.arraycopy(bArrA19, 0, bArr7, length26, bArrA19.length);
                    int length27 = length26 + bArrA19.length;
                    byte[] bArrA20 = fp.a(erVar.i, bArr3);
                    System.arraycopy(bArrA20, 0, bArr7, length27, bArrA20.length);
                    int length28 = length27 + bArrA20.length;
                    byte[] bArrA21 = fp.a(erVar.j, bArr3);
                    System.arraycopy(bArrA21, 0, bArr7, length28, bArrA21.length);
                    int length29 = length28 + bArrA21.length;
                    byte[] bArr9 = bArr4;
                    byte[] bArrB7 = fp.b(erVar.f12836g, bArr9);
                    System.arraycopy(bArrB7, 0, bArr7, length29, bArrB7.length);
                    int length30 = length29 + bArrB7.length;
                    byte[] bArrB8 = fp.b(erVar.f12835f, bArr9);
                    System.arraycopy(bArrB8, 0, bArr7, length30, bArrB8.length);
                    length4 = length30 + bArrB8.length;
                    bArr2 = bArr9;
                } else {
                    bArr2 = bArr4;
                    if (i27 == i23) {
                        byte b6 = (byte) i27;
                        if (erVar.n) {
                            b6 = (byte) (b6 | 8);
                        }
                        bArr7[length4] = b6;
                        int i30 = length4 + 1;
                        byte[] bArrA22 = fp.a(erVar.f12832a, bArr3);
                        System.arraycopy(bArrA22, 0, bArr7, i30, bArrA22.length);
                        int length31 = i30 + bArrA22.length;
                        byte[] bArrA23 = fp.a(erVar.b, bArr3);
                        System.arraycopy(bArrA23, 0, bArr7, length31, bArrA23.length);
                        int length32 = length31 + bArrA23.length;
                        byte[] bArrA24 = fp.a(erVar.c, bArr3);
                        System.arraycopy(bArrA24, 0, bArr7, length32, bArrA24.length);
                        int length33 = length32 + bArrA24.length;
                        System.arraycopy(fp.a(erVar.f12834e), 0, bArr7, length33, 8);
                        length4 = length33 + 8;
                    }
                }
                int i31 = erVar.k;
                if (i31 > 127 || i31 < -128) {
                    i31 = 99;
                }
                bArr7[length4] = (byte) i31;
                int i32 = length4 + 1;
                byte[] bArrA25 = fp.a((short) ((fp.b() - erVar.t) / 1000), bArr3);
                System.arraycopy(bArrA25, 0, bArr7, i32, bArrA25.length);
                length4 = i32 + bArrA25.length;
                int i33 = erVar.l;
                if (i33 == 3 || i33 == 4 || i33 == 5) {
                    if (Double.valueOf(fi.f12904a).doubleValue() >= 5.0d) {
                        int i34 = erVar.o;
                        if (i34 > 32767) {
                            i34 = 32767;
                        }
                        byte[] bArrA26 = fp.a(i34 >= 0 ? i34 : 32767, bArr3);
                        System.arraycopy(bArrA26, 0, bArr7, length4, bArrA26.length);
                        length4 += bArrA26.length;
                        if (Double.valueOf(fi.f12904a).doubleValue() >= 5.3d) {
                            byte[] bArrB9 = fp.b(erVar.p, bArr2);
                            System.arraycopy(bArrB9, 0, bArr7, length4, bArrB9.length);
                            length12 = length4 + bArrB9.length;
                            byte[] bArrB10 = fp.b(erVar.q, bArr2);
                            System.arraycopy(bArrB10, 0, bArr7, length12, bArrB10.length);
                            length13 = bArrB10.length;
                            length4 = length12 + length13;
                        }
                    }
                } else if (i33 == 1 && Double.valueOf(fi.f12904a).doubleValue() >= 5.3d) {
                    int i35 = erVar.o;
                    if (i35 > 32767) {
                        i35 = 32767;
                    }
                    byte[] bArrA27 = fp.a(i35 >= 0 ? i35 : 32767, bArr3);
                    System.arraycopy(bArrA27, 0, bArr7, length4, bArrA27.length);
                    int length34 = length4 + bArrA27.length;
                    byte[] bArrB11 = fp.b(erVar.p, bArr2);
                    System.arraycopy(bArrB11, 0, bArr7, length34, bArrB11.length);
                    length12 = length34 + bArrB11.length;
                    byte[] bArrB12 = fp.b(erVar.q, bArr2);
                    System.arraycopy(bArrB12, 0, bArr7, length12, bArrB12.length);
                    length13 = bArrB12.length;
                    length4 = length12 + length13;
                }
                i26++;
                bArr4 = bArr2;
                size2 = size2;
                i13 = 2;
                i25 = 1;
                i24 = 3;
                i23 = 5;
            }
            bArr = bArr4;
            b = 1;
        }
        if (TextUtils.isEmpty(this.D) || this.D.length() == 0) {
            i7 = 1;
            b2 = 0;
            bArr7[length4] = 0;
            length5 = length4 + 1;
        } else {
            bArr7[length4] = b;
            length5 = length4 + 1;
            try {
                String[] strArrSplit = this.D.split(",");
                byte[] bArrA28 = a(strArrSplit[0]);
                System.arraycopy(bArrA28, 0, bArr7, length5, bArrA28.length);
                length5 += bArrA28.length;
                try {
                    byte[] bytes2 = strArrSplit[2].getBytes("GBK");
                    int length35 = bytes2.length;
                    if (length35 > 127) {
                        length35 = 127;
                    }
                    bArr7[length5] = (byte) length35;
                    length5++;
                    System.arraycopy(bytes2, 0, bArr7, length5, length35);
                    i12 = length5 + length35;
                } catch (Throwable th2) {
                    fi.a(th2, "Req", "buildV4Dot214");
                    bArr7[length5] = 0;
                    i12 = length5 + 1;
                }
                int i36 = Integer.parseInt(strArrSplit[1]);
                if (i36 > 127 || i36 < -128) {
                    i36 = 0;
                }
                bArr7[i12] = Byte.parseByte(String.valueOf(i36));
                length5 = i12 + 1;
                if (Double.valueOf(fi.f12904a).doubleValue() >= 5.2d) {
                    byte[] bArrA29 = fp.a(this.O, bArr3);
                    System.arraycopy(bArrA29, 0, bArr7, length5, bArrA29.length);
                    length5 += bArrA29.length;
                }
                i7 = 1;
                b2 = 0;
            } catch (Throwable th3) {
                fi.a(th3, "Req", "buildV4Dot216");
                byte[] bArrA30 = a("00:00:00:00:00:00");
                b2 = 0;
                System.arraycopy(bArrA30, 0, bArr7, length5, bArrA30.length);
                int length36 = length5 + bArrA30.length;
                bArr7[length36] = 0;
                i7 = 1;
                int i37 = length36 + 1;
                bArr7[i37] = Byte.parseByte("0");
                length5 = i37 + 1;
            }
        }
        ArrayList<dx> arrayList2 = this.E;
        int iMin2 = Math.min(arrayList2.size(), 25);
        if (iMin2 == 0) {
            bArr7[length5] = b2;
            length6 = length5 + i7;
            b3 = 0;
        } else {
            bArr7[length5] = (byte) iMin2;
            int length37 = length5 + i7;
            boolean z = fp.c() >= 17;
            long jB3 = z ? fp.b() / 1000 : 0L;
            for (int i38 = 0; i38 < iMin2; i38++) {
                dx dxVar = arrayList2.get(i38);
                byte[] bArrA31 = a(dx.a(dxVar.f12742a));
                System.arraycopy(bArrA31, 0, bArr7, length37, bArrA31.length);
                int length38 = length37 + bArrA31.length;
                try {
                    byte[] bytes3 = dxVar.b.getBytes("GBK");
                    bArr7[length38] = (byte) bytes3.length;
                    length38++;
                    System.arraycopy(bytes3, 0, bArr7, length38, bytes3.length);
                    length7 = length38 + bytes3.length;
                    i8 = 1;
                } catch (Exception unused2) {
                    bArr7[length38] = 0;
                    i8 = 1;
                    length7 = length38 + 1;
                }
                int i39 = dxVar.c;
                if (i39 > 127 || i39 < -128) {
                    i39 = 0;
                }
                bArr7[length7] = Byte.parseByte(String.valueOf(i39));
                int i40 = length7 + i8;
                if (!z || (i9 = (int) (jB3 - (dxVar.f12745f / 1000))) < 0) {
                    i9 = 0;
                }
                if (i9 > 65535) {
                    i9 = ExifInterface.COLOR_SPACE_UNCALIBRATED;
                }
                byte[] bArrA32 = fp.a(i9, bArr3);
                System.arraycopy(bArrA32, 0, bArr7, i40, bArrA32.length);
                int length39 = i40 + bArrA32.length;
                byte[] bArrA33 = fp.a(dxVar.f12743d, bArr3);
                System.arraycopy(bArrA33, 0, bArr7, length39, bArrA33.length);
                length37 = length39 + bArrA33.length;
            }
            b3 = 0;
            byte[] bArrA34 = fp.a(Integer.parseInt(this.F), bArr3);
            System.arraycopy(bArrA34, 0, bArr7, length37, bArrA34.length);
            length6 = length37 + bArrA34.length;
        }
        bArr7[length6] = b3;
        int i41 = length6 + 1;
        try {
            byte[] bytes4 = this.G.getBytes("GBK");
            if (bytes4.length > 127) {
                bytes4 = null;
            }
            if (bytes4 == null) {
                bArr7[i41] = 0;
                i10 = 1;
                length8 = i41 + i10;
            } else {
                bArr7[i41] = (byte) bytes4.length;
                int i42 = i41 + 1;
                System.arraycopy(bytes4, 0, bArr7, i42, bytes4.length);
                length8 = i42 + bytes4.length;
            }
        } catch (Throwable unused3) {
            bArr7[i41] = 0;
            i10 = 1;
        }
        byte[] bArrA35 = {0, 0};
        try {
            boolean zIsEmpty = TextUtils.isEmpty(this.J);
            if (!zIsEmpty) {
                bArrA35 = fp.a(this.J.length(), bArr3);
            }
            System.arraycopy(bArrA35, 0, bArr7, length8, 2);
            length9 = length8 + 2;
            if (!zIsEmpty) {
                try {
                    byte[] bytes5 = this.J.getBytes("GBK");
                    System.arraycopy(bytes5, 0, bArr7, length9, bytes5.length);
                    length9 += bytes5.length;
                } catch (Throwable unused4) {
                }
            }
            i11 = 2;
        } catch (Throwable unused5) {
            i11 = 2;
            length9 = length8 + 2;
        }
        try {
            System.arraycopy(fp.a(0, bArr3), 0, bArr7, length9, i11);
        } catch (Throwable unused6) {
        }
        int i43 = length9 + i11;
        byte[] bArr10 = new byte[i11];
        // fill-array-data instruction
        bArr10[0] = 0;
        bArr10[1] = 0;
        try {
            System.arraycopy(bArr10, 0, bArr7, i43, i11);
        } catch (Throwable unused7) {
        }
        int i44 = i43 + i11;
        byte[] bArr11 = this.H;
        int length40 = bArr11 != null ? bArr11.length : 0;
        byte[] bArrA36 = fp.a(length40, (byte[]) null);
        System.arraycopy(bArrA36, 0, bArr7, i44, bArrA36.length);
        int length41 = i44 + bArrA36.length;
        if (length40 > 0) {
            byte[] bArr12 = this.H;
            System.arraycopy(bArr12, 0, bArr7, length41, bArr12.length);
            length41 += this.H.length;
        }
        if (Double.valueOf(fi.f12904a).doubleValue() >= 5.0d) {
            List<er> list = this.T;
            int size3 = list != null ? list.size() : 0;
            bArr7[length41] = (byte) size3;
            int i45 = length41 + 1;
            byte[] bArr13 = new byte[i45];
            System.arraycopy(bArr7, 0, bArr13, 0, i45);
            if (size3 > 0) {
                try {
                    int length42 = i45;
                    for (er erVar2 : this.T) {
                        int i46 = erVar2.l;
                        if (i46 == 1 || i46 == 3 || i46 == 4) {
                            byte b7 = (byte) i46;
                            if (erVar2.n) {
                                b7 = (byte) (b7 | 8);
                            }
                            bArr7[length42] = b7;
                            int i47 = length42 + 1;
                            byte[] bArrA37 = fp.a(erVar2.c, bArr3);
                            System.arraycopy(bArrA37, 0, bArr7, i47, bArrA37.length);
                            length10 = i47 + bArrA37.length;
                            byte[] bArrB13 = fp.b(erVar2.f12833d, bArr);
                            System.arraycopy(bArrB13, 0, bArr7, length10, bArrB13.length);
                            length11 = bArrB13.length;
                        } else {
                            if (i46 == 2) {
                                byte b8 = (byte) i46;
                                if (erVar2.n) {
                                    b8 = (byte) (b8 | 8);
                                }
                                bArr7[length42] = b8;
                                int i48 = length42 + 1;
                                byte[] bArrA38 = fp.a(erVar2.f12837h, bArr3);
                                System.arraycopy(bArrA38, 0, bArr7, i48, bArrA38.length);
                                int length43 = i48 + bArrA38.length;
                                byte[] bArrA39 = fp.a(erVar2.i, bArr3);
                                System.arraycopy(bArrA39, 0, bArr7, length43, bArrA39.length);
                                length10 = length43 + bArrA39.length;
                                byte[] bArrA40 = fp.a(erVar2.j, bArr3);
                                System.arraycopy(bArrA40, 0, bArr7, length10, bArrA40.length);
                                length11 = bArrA40.length;
                            } else if (i46 == 5) {
                                byte b9 = (byte) i46;
                                if (erVar2.n) {
                                    b9 = (byte) (b9 | 8);
                                }
                                bArr7[length42] = b9;
                                int i49 = length42 + 1;
                                byte[] bArrA41 = fp.a(erVar2.c, bArr3);
                                System.arraycopy(bArrA41, 0, bArr7, i49, bArrA41.length);
                                int length44 = i49 + bArrA41.length;
                                System.arraycopy(fp.a(erVar2.f12834e), 0, bArr7, length44, 8);
                                length42 = length44 + 8;
                            }
                            byte[] bArrA42 = fp.a((short) ((fp.b() - erVar2.t) / 1000), bArr3);
                            System.arraycopy(bArrA42, 0, bArr7, length42, bArrA42.length);
                            length42 += bArrA42.length;
                        }
                        length42 = length10 + length11;
                        byte[] bArrA43 = fp.a((short) ((fp.b() - erVar2.t) / 1000), bArr3);
                        System.arraycopy(bArrA43, 0, bArr7, length42, bArrA43.length);
                        length42 += bArrA43.length;
                    }
                    i45 = length42;
                } catch (Throwable unused8) {
                    System.arraycopy(bArr13, 0, bArr7, 0, i45);
                    bArr7[i45 - 1] = 0;
                }
            }
            length41 = a(this.M, bArr7, i45);
        }
        if (Double.valueOf(fi.f12904a).doubleValue() >= 5.2d) {
            List<et> list2 = this.S;
            int size4 = list2 == null ? 0 : list2.size();
            bArr7[length41] = (byte) size4;
            length41++;
            if (size4 > 0) {
                for (et etVar : this.S) {
                    int iCurrentTimeMillis = ((int) (System.currentTimeMillis() - etVar.f12847d)) / 1000;
                    if (iCurrentTimeMillis > 65535) {
                        iCurrentTimeMillis = ExifInterface.COLOR_SPACE_UNCALIBRATED;
                    }
                    System.arraycopy(fp.a(iCurrentTimeMillis, bArr3), 0, bArr7, length41, 2);
                    int i50 = length41 + 2;
                    System.arraycopy(fp.b((int) Math.round(etVar.c * 1.0E7d), bArr), 0, bArr7, i50, 4);
                    int i51 = i50 + 4;
                    System.arraycopy(fp.b((int) Math.round(etVar.b * 1.0E7d), bArr), 0, bArr7, i51, 4);
                    int i52 = i51 + 4;
                    float f2 = etVar.f12848e;
                    if (f2 > 65535.0f) {
                        f2 = 65535.0f;
                    }
                    System.arraycopy(fp.a((int) f2, bArr3), 0, bArr7, i52, 2);
                    int i53 = i52 + 2;
                    System.arraycopy(fp.a((short) ((etVar.f12851h | (etVar.f12846a << 13) | (etVar.f12850g << 6)) & ExifInterface.COLOR_SPACE_UNCALIBRATED), bArr3), 0, bArr7, i53, 2);
                    length41 = i53 + 2;
                }
            }
        }
        if (Double.valueOf(fi.f12904a).doubleValue() >= 5.3d) {
            length41 = a(this.N, bArr7, length41);
        }
        byte[] bArr14 = new byte[length41];
        System.arraycopy(bArr7, 0, bArr14, 0, length41);
        CRC32 crc32 = new CRC32();
        crc32.update(bArr14);
        byte[] bArrA44 = fp.a(crc32.getValue());
        byte[] bArr15 = new byte[length41 + 8];
        System.arraycopy(bArr14, 0, bArr15, 0, length41);
        System.arraycopy(bArrA44, 0, bArr15, length41, 8);
        return bArr15;
    }
}
