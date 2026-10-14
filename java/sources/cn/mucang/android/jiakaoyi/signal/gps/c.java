package cn.mucang.android.jiakaoyi.signal.gps;

import android.location.Location;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.p002e.o;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static float f5669a = 100000.0f;
    private static float b = 100000.0f;
    private static float c = 100000.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static double f5671e = 0.0d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static double f5672f = 0.0d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5673g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f5674h = false;
    private static Gear n;
    private static volatile boolean o;
    private static final cn.mucang.android.jiakaoyi.signal.c.f.a p;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final cn.mucang.android.jiakaoyi.signal.communicate.utils.c f5670d = new cn.mucang.android.jiakaoyi.signal.communicate.utils.c();
    private static final r0<Boolean> i = r0.d("gps_station_is_self", Boolean.TRUE);
    private static double j = 0.0d;
    private static double k = 0.0d;
    private static double l = -1.0d;
    private static int m = 0;

    static {
        CarModel.Direction direction = CarModel.Direction.None;
        n = Gear.Invalid;
        o = false;
        p = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.signal.gps.a
            @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
            public final void onSignalChanged(e eVar) {
                c.g(eVar);
            }
        };
    }

    private static void a(Location location, float f2, float f3) {
        location.setSpeed(f2);
        float fN = n(f3);
        float f4 = f5669a;
        if (f4 != 100000.0f && f2 < 0.3d && Math.abs(d.c(fN - f4)) > 50.0f) {
            location.setBearing(f5669a);
        } else {
            location.setBearing(fN);
            f5669a = fN;
        }
    }

    private static void b(InputStream inputStream, long j2, ComName comName) throws ComException, IOException {
        while (inputStream.available() <= 0) {
            if (SystemClock.elapsedRealtime() - j2 >= 4000) {
                f.f("gps超过4秒没输入，重连");
                throw new ComException(comName, ComState.ErrorCom, "GPS长时间没数据输入");
            }
            SystemClock.sleep(1L);
        }
    }

    private static double c(String str) {
        if (n0.e(str)) {
            return 0.0d;
        }
        String[] strArrSplit = str.split("\\.");
        int length = strArrSplit[0].length() - 2;
        return ((double) Integer.parseInt(strArrSplit[0].substring(0, length))) + (Double.parseDouble(strArrSplit[0].substring(length) + "." + strArrSplit[1]) / 60.0d);
    }

    private static float d(float f2) {
        if (f2 <= 1.0f) {
            return 29.0f;
        }
        if (f2 > 20.0f) {
            return 15.0f;
        }
        return 29.0f - (((f2 - 1.0f) * 14.0f) / 19.0f);
    }

    public static double e() {
        return j;
    }

    static /* synthetic */ void g(e eVar) {
        CarModel.Direction direction = eVar.d().F;
        n = eVar.d().m;
    }

    private static float h(String str, float f2) {
        return (str == null || str.isEmpty() || str.trim().isEmpty()) ? f2 : Float.parseFloat(str);
    }

    private static int i(String str, int i2) {
        if (str != null && !str.isEmpty() && !str.trim().isEmpty()) {
            try {
                return Integer.parseInt(str);
            } catch (Throwable unused) {
            }
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:141:0x0363  */
    /* JADX WARN: Code duplicated, block: B:156:0x03b8 A[Catch: all -> 0x0404, TryCatch #1 {all -> 0x0404, blocks: (B:137:0x0300, B:139:0x033f, B:140:0x035f, B:143:0x0367, B:147:0x0380, B:149:0x0389, B:151:0x038f, B:153:0x0396, B:155:0x03a1, B:156:0x03b8, B:157:0x03bc, B:158:0x03d2), top: B:183:0x027f }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0169  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r1v15, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.lang.String] */
    public static cn.mucang.android.jiakaoyi.signal.center.model.b j(BufferedReader bufferedReader, InputStream inputStream, ComName comName) throws ComException, IOException {
        String str;
        boolean z;
        int i2;
        boolean z2;
        double d2;
        int i3;
        String str2 = " : ";
        char c2 = 1;
        if (!o) {
            o = true;
            cn.mucang.android.jiakaoyi.signal.c.d.m.b(p);
        }
        o(bufferedReader, inputStream, comName);
        cn.mucang.android.jiakaoyi.signal.center.model.b bVar = new cn.mucang.android.jiakaoyi.signal.center.model.b();
        int i4 = 0;
        String str3 = "";
        String str4 = str3;
        String str5 = str4;
        int i5 = 0;
        loop0: while (true) {
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            while (true) {
                b(inputStream, SystemClock.elapsedRealtime(), comName);
                String line = bufferedReader.readLine();
                if (n0.e(line)) {
                    i5++;
                    if (i5 % 5 == 0) {
                        f.i("流动站输出数据为空");
                    }
                    if (i5 > 20) {
                        f.i("流动站输出数据长时间为空，重启gps网口");
                        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.gps.b
                            @Override // java.lang.Runnable
                            public final void run() {
                                m.h().O(ComName.GpsNet);
                            }
                        });
                        i5 = 0;
                    }
                } else {
                    if (line.startsWith("$GPGGA")) {
                        LiveBus.d(cn.mucang.android.jiakaoyi.signal.handle.gps.d.class).l(new cn.mucang.android.jiakaoyi.signal.handle.gps.d(line));
                        i6++;
                        str3 = line;
                    } else if (line.startsWith("$GPRMC")) {
                        i7++;
                        str4 = line;
                    } else if (line.startsWith("#HEADINGA")) {
                        i8++;
                        str5 = line;
                    }
                    if (str3.length() > 0 && str4.length() > 0 && str5.length() > 0) {
                        try {
                            break loop0;
                        } catch (Exception e2) {
                            f.i("解析GPGGA包异常 : " + str3 + str2 + e2);
                            c = 100000.0f;
                            m = 0;
                            return null;
                        }
                    }
                    str = str2;
                    if (i7 + i6 + i8 > 10) {
                        break;
                    }
                    str2 = str;
                    c2 = 1;
                    i4 = 0;
                }
            }
            f.i("gps数据解析异常 : gpgga Count = " + i6 + " , gprmc Count = " + i7 + " , heading count = " + i8);
            f.i("gga = " + str3 + "\nrmc = " + str4 + "\nheading = " + str5);
            str2 = str;
            c2 = 1;
            i4 = 0;
        }
        k(str3, bVar);
        String[] strArrSplit = str4.split(",");
        try {
            float fH = h(strArrSplit[7], BitmapDescriptorFactory.HUE_RED) * 0.5144444f;
            float fH2 = h(strArrSplit[c2], BitmapDescriptorFactory.HUE_RED);
            ?? r16 = 1080452710;
            float fA = f5670d.a(fH * 3.6f, fH2) / 3.6f;
            float fH3 = (int) h(strArrSplit[8], BitmapDescriptorFactory.HUE_RED);
            try {
                String[] strArrSplit2 = str5.split(VoiceWakeuperAidl.PARAMS_SEPARATE)[c2].split(",");
                String lowerCase = n0.g(strArrSplit2[c2]) ? strArrSplit2[c2].toLowerCase() : null;
                boolean z3 = lowerCase != null && lowerCase.startsWith("ins");
                if (lowerCase != null && lowerCase.endsWith("float") && !z3) {
                    bVar.b = 5;
                } else if ((lowerCase == null || !(lowerCase.endsWith("int") || lowerCase.endsWith("fixed"))) && !z3) {
                    bVar.b = i4;
                } else {
                    bVar.b = 4;
                }
                GpsAnalysis.f().m(bVar.b);
                float fH4 = h(strArrSplit2[2], BitmapDescriptorFactory.HUE_RED);
                float fH5 = h(strArrSplit2[3], BitmapDescriptorFactory.HUE_RED);
                float fH6 = h(strArrSplit2[4], BitmapDescriptorFactory.HUE_RED);
                bVar.f5278d = fH4;
                bVar.f5279e = fH6;
                bVar.f5277a = n(fH5);
                if (strArrSplit2.length > 12) {
                    int i9 = i(strArrSplit2[9], i4);
                    o.b.set(i9);
                    int i10 = i(strArrSplit2[11], i4);
                    o.c.set(i10);
                    if (i9 < 38 || i10 < 38) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
                boolean z4 = AppUtils.e() || AppUtils.j();
                if (z || ((((i3 = bVar.f5282h) != 4 || bVar.b != 4) && !z4) || i3 != 4)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(z ? "(搜星数少)" : "");
                    sb.append(bVar.b != 4 ? "(定向解不固定)" : "");
                    sb.append("gps数据不正常:\n");
                    sb.append(str5);
                    sb.append("\n");
                    sb.append(str3);
                    sb.append("\n");
                    sb.append(str4);
                    f.i(sb.toString());
                }
                int i11 = bVar.f5282h;
                try {
                    if (i11 == 4 && bVar.b != 4) {
                        i2 = i11;
                        if (fH4 > 1.0E-10d && !z4) {
                            k = fH2;
                            f.i("last: baseDistance=" + f5671e + ",bearing=" + f5669a + ",bearingDiff=" + j + ",calHeading=" + b + ",bearing=" + fH3 + ",heading=" + bVar.f5277a);
                            double d3 = f5671e;
                            if (d3 > 0.0d) {
                                bVar.f5278d = (float) d3;
                            } else {
                                bVar.f5278d = 0.79f;
                            }
                            double d4 = j;
                            if (d4 == 0.0d) {
                                f.i("没有定向解2");
                            } else if (fA > 0.1d) {
                                float fN = n(((float) (d4 + ((double) (n == Gear.GearBack ? 180 : 0)))) + fH3);
                                b = fN;
                                bVar.f5277a = fN;
                            } else if (Math.abs(b - 100000.0f) > 0.1d) {
                                bVar.f5277a = b;
                            } else {
                                f.i("没有定向解1");
                            }
                            c = 100000.0f;
                            m = 0;
                        }
                        float f2 = bVar.j;
                        d2 = l;
                        if (d2 > 0.0d && ((double) f2) - d2 > 3.0d) {
                            f5669a = 100000.0f;
                        }
                        a(bVar.f5281g, fA, fH3);
                        l = f2;
                        GpsAnalysis.f().n(bVar.f5278d);
                        return bVar;
                    }
                    i2 = i11;
                    if (bVar.b == 4 && i2 == 4) {
                        if (z4 || ((double) fH2) - k >= 10.0d) {
                            z2 = false;
                        } else {
                            f.i("航向角正常前10秒:\n" + str5 + "\n" + str3 + "\n" + str4);
                            z2 = true;
                        }
                        if (fA > 0.1d && !z4) {
                            float fN2 = n(((float) (j + ((double) (n == Gear.GearBack ? 180 : 0)))) + fH3);
                            float fAbs = Math.abs(d.c(fN2 - bVar.f5277a));
                            float fD = d(3.6f * fA);
                            if (fAbs > fD && Math.abs(d.c((fN2 - bVar.f5277a) + 180.0f)) > fD) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("航向角和bearing相差过大:heading=");
                                sb2.append(bVar.f5277a);
                                sb2.append(",bearing=");
                                sb2.append(fH3);
                                sb2.append(",calHead=");
                                sb2.append(fN2);
                                sb2.append(",diff=");
                                sb2.append(fAbs);
                                sb2.append(",threshold=");
                                sb2.append(fD);
                                sb2.append(",坡道=");
                                AtomicBoolean atomicBoolean = cn.mucang.android.jiakaoyi.signal.h.a.f5675a;
                                sb2.append(atomicBoolean.get());
                                f.i(sb2.toString());
                                if (!z2) {
                                    f.i("航向角不正常:\n" + str5 + "\n" + str3 + "\n" + str4);
                                }
                                atomicBoolean.get();
                            }
                        }
                        if (!z4) {
                            float fAbs2 = Math.abs(d.c(bVar.f5277a - c));
                            if (m <= 100 || fAbs2 <= 35.0f) {
                                c = bVar.f5277a;
                            } else {
                                float f3 = c;
                                if (f3 != 100000.0f) {
                                    double d5 = l;
                                    if (d5 > 0.0d) {
                                        float f4 = bVar.j;
                                        if (f4 <= BitmapDescriptorFactory.HUE_RED || ((double) f4) - d5 >= 0.3d) {
                                            c = bVar.f5277a;
                                        } else {
                                            bVar.f5277a = f3;
                                            f.i("航向角突变:" + fAbs2);
                                        }
                                    } else {
                                        c = bVar.f5277a;
                                    }
                                } else {
                                    c = bVar.f5277a;
                                }
                            }
                        }
                        double d6 = f5672f + ((double) fH4);
                        f5672f = d6;
                        int i12 = f5673g + 1;
                        f5673g = i12;
                        f5671e = d6 / ((double) i12);
                        m++;
                    } else {
                        m = 0;
                        c = 100000.0f;
                    }
                    float f5 = bVar.j;
                    d2 = l;
                    if (d2 > 0.0d) {
                        f5669a = 100000.0f;
                    }
                    a(bVar.f5281g, fA, fH3);
                    l = f5;
                    GpsAnalysis.f().n(bVar.f5278d);
                    return bVar;
                } catch (Throwable th) {
                    th = th;
                    f.i("解析Heading包异常 : " + str5 + r16 + th);
                    c = 100000.0f;
                    m = 0;
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                r16 = str2;
            }
        } catch (Exception e3) {
            f.i("解析GPRMC包异常 : " + str4 + str2 + e3);
            c = 100000.0f;
            m = 0;
            return null;
        }
    }

    private static void k(String str, cn.mucang.android.jiakaoyi.signal.center.model.b bVar) {
        String[] strArrSplit = str.split(",");
        bVar.j = h(strArrSplit[1], BitmapDescriptorFactory.HUE_RED);
        double dC = c(strArrSplit[2]);
        if (TextUtils.equals(strArrSplit[3], "N")) {
            bVar.f5281g.setLatitude(dC);
        } else {
            bVar.f5281g.setLatitude(-dC);
        }
        double dC2 = c(strArrSplit[4]);
        if (TextUtils.equals(strArrSplit[5], ExifInterface.LONGITUDE_EAST)) {
            bVar.f5281g.setLongitude(dC2);
        } else {
            bVar.f5281g.setLongitude(-dC2);
        }
        bVar.f5282h = Integer.parseInt(strArrSplit[6]);
        bVar.i = Integer.parseInt(strArrSplit[7]);
        bVar.f5281g.setAltitude(Double.parseDouble(strArrSplit[9]));
        GpsAnalysis.f().o(bVar.f5282h);
        GpsAnalysis.f().p(bVar.i);
        if (dC == 0.0d || dC2 == 0.0d) {
            GpsAnalysis.f().d();
        }
    }

    public static void l(double d2) {
        f.i("天线角和车身角的夹角:" + d2);
        j = d2;
    }

    public static void m(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("设置为是否云基站:");
        sb.append(!z);
        f.i(sb.toString());
        i.j(Boolean.valueOf(z));
    }

    private static float n(float f2) {
        while (f2 < BitmapDescriptorFactory.HUE_RED) {
            f2 += 360.0f;
        }
        while (f2 >= 360.0f) {
            f2 -= 360.0f;
        }
        return f2;
    }

    private static void o(BufferedReader bufferedReader, InputStream inputStream, ComName comName) throws ComException, IOException {
        if (!f5674h) {
            f.i("开始对齐gps帧");
        }
        String str = null;
        String str2 = null;
        while (!f5674h) {
            b(inputStream, SystemClock.elapsedRealtime(), comName);
            String line = bufferedReader.readLine();
            if (!n0.e(line)) {
                f.i(line);
                if (line.startsWith("$GPGGA")) {
                    if (str != null) {
                        String[] strArrSplit = line.split(",");
                        String[] strArrSplit2 = str.split(",");
                        if (n0.g(strArrSplit[1]) && TextUtils.equals(strArrSplit[1], strArrSplit2[1])) {
                            f5674h = true;
                            f.i("对齐gps帧:" + strArrSplit[1]);
                            return;
                        }
                        str = null;
                    }
                    str2 = line;
                } else if (line.startsWith("$GPRMC")) {
                    if (str2 != null) {
                        String[] strArrSplit3 = str2.split(",");
                        String[] strArrSplit4 = line.split(",");
                        if (n0.g(strArrSplit3[1]) && TextUtils.equals(strArrSplit3[1], strArrSplit4[1])) {
                            f5674h = true;
                            f.i("对齐gps帧:" + strArrSplit3[1]);
                            return;
                        }
                        str2 = null;
                    }
                    str = line;
                } else {
                    continue;
                }
            }
        }
    }
}
