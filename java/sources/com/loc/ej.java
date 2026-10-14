package com.loc;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.wifi.WifiInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.core.view.MotionEventCompat;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.common.primitives.UnsignedBytes;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.crypto.KeyGenerator;

/* JADX INFO: loaded from: classes4.dex */
public final class ej implements ed {
    private static long k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f12788a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    dn f12789d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    bm f12790e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Handler f12792g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LocationManager f12793h;
    private a i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<ct> f12791f = new ArrayList<>();
    ew b = null;
    es c = null;
    private volatile boolean j = false;

    static class a implements LocationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ej f12795a;

        a(ej ejVar) {
            this.f12795a = ejVar;
        }

        final void a() {
            this.f12795a = null;
        }

        final void a(ej ejVar) {
            this.f12795a = ejVar;
        }

        @Override // android.location.LocationListener
        public final void onLocationChanged(Location location) {
            try {
                ej ejVar = this.f12795a;
                if (ejVar != null) {
                    ejVar.a(location);
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.location.LocationListener
        public final void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    class b extends cj {
        private int b;
        private Location c;

        b(int i) {
            this.b = 0;
            this.b = i;
        }

        b(ej ejVar, Location location) {
            this(1);
            this.c = location;
        }

        private void b() {
            try {
                if (this.c != null && ej.this.j) {
                    Bundle extras = this.c.getExtras();
                    int i = extras != null ? extras.getInt("satellites") : 0;
                    if (fp.a(this.c, i)) {
                        return;
                    }
                    ew ewVar = ej.this.b;
                    if (ewVar != null && !ewVar.r) {
                        ewVar.f();
                    }
                    ArrayList<dx> arrayListA = ej.this.b.a();
                    List<dq> listA = ej.this.c.a();
                    cr.a aVar = new cr.a();
                    dw dwVar = new dw();
                    dwVar.i = this.c.getAccuracy();
                    dwVar.f12739f = this.c.getAltitude();
                    dwVar.f12737d = this.c.getLatitude();
                    dwVar.f12741h = this.c.getBearing();
                    dwVar.f12738e = this.c.getLongitude();
                    dwVar.j = this.c.isFromMockProvider();
                    dwVar.f12736a = this.c.getProvider();
                    dwVar.f12740g = this.c.getSpeed();
                    dwVar.l = (byte) i;
                    dwVar.b = System.currentTimeMillis();
                    dwVar.c = this.c.getTime();
                    dwVar.k = this.c.getTime();
                    aVar.f12699a = dwVar;
                    aVar.b = arrayListA;
                    WifiInfo wifiInfoC = ej.this.b.c();
                    if (wifiInfoC != null) {
                        aVar.c = dx.a(wifiInfoC.getBSSID());
                    }
                    aVar.f12700d = ew.z;
                    aVar.f12702f = this.c.getTime();
                    aVar.f12703g = (byte) n.n(ej.this.f12788a);
                    aVar.f12704h = n.s(ej.this.f12788a);
                    aVar.f12701e = ej.this.b.k();
                    aVar.j = fp.a(ej.this.f12788a);
                    aVar.i = listA;
                    ct ctVarA = dn.a(aVar);
                    if (ctVarA == null) {
                        return;
                    }
                    synchronized (ej.this.f12791f) {
                        ej.this.f12791f.add(ctVarA);
                        if (ej.this.f12791f.size() >= 5) {
                            ej.this.e();
                        }
                    }
                    ej.this.d();
                }
            } catch (Throwable th) {
                fi.a(th, "cl", "coll");
            }
        }

        private void c() {
            bc bcVarA = null;
            try {
                long unused = ej.k = System.currentTimeMillis();
                if (ej.this.f12790e.f12626f.c()) {
                    bcVarA = bc.a(new File(ej.this.f12790e.f12623a), ej.this.f12790e.b);
                    ArrayList arrayList = new ArrayList();
                    byte[] bArrF = ej.f();
                    if (bArrF == null) {
                        try {
                            bcVarA.close();
                            return;
                        } catch (Throwable unused2) {
                            return;
                        }
                    }
                    List listB = ej.b(bcVarA, ej.this.f12790e, arrayList, bArrF);
                    if (listB != null && listB.size() != 0) {
                        ej.this.f12790e.f12626f.a(true);
                        if (dn.a(w.b(dn.a(ex.a(bArrF), o.b(bArrF, dn.a(), w.c()), listB)))) {
                            ej.b(bcVarA, arrayList);
                        }
                    }
                    try {
                        bcVarA.close();
                        return;
                    } catch (Throwable unused3) {
                        return;
                    }
                }
                if (bcVarA != null) {
                    try {
                        bcVarA.close();
                    } catch (Throwable unused4) {
                    }
                }
            } catch (Throwable th) {
                try {
                    am.b(th, "leg", "uts");
                } finally {
                    if (bcVarA != null) {
                        try {
                            bcVarA.close();
                        } catch (Throwable unused5) {
                        }
                    }
                }
            }
        }

        @Override // com.loc.cj
        public final void a() {
            int i = this.b;
            if (i == 1) {
                b();
            } else if (i == 2) {
                c();
            } else if (i == 3) {
                ej.this.g();
            }
        }
    }

    ej(Context context) {
        this.f12788a = null;
        this.f12788a = context;
        bm bmVar = new bm();
        this.f12790e = bmVar;
        bs.a(this.f12788a, bmVar, ak.k, 100, 1024000, "0");
        bm bmVar2 = this.f12790e;
        int i = fh.f12901g;
        boolean z = fh.f12899e;
        int i2 = fh.f12900f;
        bmVar2.f12626f = new ce(context, i, "kKey", new cc(context, z, i2, i2 * 10, "carrierLocKey"));
        this.f12790e.f12625e = new av();
    }

    private static int a(byte[] bArr) {
        return ((bArr[0] & UnsignedBytes.MAX_VALUE) << 24) | (bArr[3] & UnsignedBytes.MAX_VALUE) | ((bArr[2] & UnsignedBytes.MAX_VALUE) << 8) | ((bArr[1] & UnsignedBytes.MAX_VALUE) << 16);
    }

    private static byte[] a(int i) {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            if (keyGenerator == null) {
                return null;
            }
            keyGenerator.init(i);
            return keyGenerator.generateKey().getEncoded();
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:111:0x003b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:113:0x00dd A[EXC_TOP_SPLITTER, PHI: r5 r9 r16
      0x00dd: PHI (r5v3 int) = (r5v4 int), (r5v5 int) binds: [B:78:0x0109, B:61:0x00db] A[DONT_GENERATE, DONT_INLINE]
      0x00dd: PHI (r9v1 com.loc.bc$b) = (r9v2 com.loc.bc$b), (r9v3 com.loc.bc$b) binds: [B:78:0x0109, B:61:0x00db] A[DONT_GENERATE, DONT_INLINE]
      0x00dd: PHI (r16v3 java.lang.String[]) = (r16v4 java.lang.String[]), (r16v6 java.lang.String[]) binds: [B:78:0x0109, B:61:0x00db] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:121:0x00d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x0116 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x0104 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static List<ct> b(bc bcVar, bm bmVar, List<String> list, byte[] bArr) {
        String[] list2;
        String[] strArr;
        bc.b bVarA;
        ArrayList arrayList = new ArrayList();
        try {
            File fileB = bcVar.b();
            if (fileB == null || !fileB.exists() || (list2 = fileB.list()) == null) {
                return arrayList;
            }
            int length = list2.length;
            char c = 0;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                String str = list2[i];
                if (str.contains(".0")) {
                    InputStream inputStreamA = null;
                    try {
                        String str2 = str.split("\\.")[c];
                        try {
                            bVarA = bcVar.a(str2);
                            if (bVarA != null) {
                                try {
                                    inputStreamA = bVarA.a();
                                    if (inputStreamA == null) {
                                        if (inputStreamA != null) {
                                            try {
                                                inputStreamA.close();
                                            } catch (Throwable unused) {
                                            }
                                        }
                                        if (bVarA != null) {
                                            bVarA.close();
                                        }
                                    } else {
                                        byte[] bArr2 = new byte[2];
                                        inputStreamA.read(bArr2);
                                        int iB = fp.b(bArr2);
                                        if (iB == 0 || iB > 65535) {
                                            if (inputStreamA != null) {
                                                try {
                                                    inputStreamA.close();
                                                } catch (Throwable unused2) {
                                                }
                                            }
                                            if (bVarA == null) {
                                                break;
                                            }
                                            try {
                                                bVarA.close();
                                                break;
                                            } catch (Throwable unused3) {
                                                break;
                                            }
                                        }
                                        byte[] bArr3 = new byte[iB];
                                        inputStreamA.read(bArr3);
                                        byte[] bArr4 = new byte[2];
                                        int length2 = 0;
                                        while (inputStreamA.read(bArr4) >= 0) {
                                            try {
                                                byte[] bArr5 = new byte[fp.b(bArr4)];
                                                inputStreamA.read(bArr5);
                                                byte[] bArrA = o.a(bArr3, bArr5, w.c());
                                                length2 += bArrA.length;
                                                byte[] bArr6 = new byte[4];
                                                inputStreamA.read(bArr6);
                                                strArr = list2;
                                                try {
                                                    arrayList.add(new ct(a(bArr6), o.b(bArr, w.b(bArrA), w.c())));
                                                    list2 = strArr;
                                                } catch (Throwable unused4) {
                                                    if (inputStreamA != null) {
                                                        try {
                                                            inputStreamA.close();
                                                        } catch (Throwable unused5) {
                                                        }
                                                    }
                                                    if (bVarA != null) {
                                                        try {
                                                            bVarA.close();
                                                        } catch (Throwable unused6) {
                                                        }
                                                    }
                                                    i++;
                                                    list2 = strArr;
                                                    c = 0;
                                                }
                                            } catch (Throwable unused7) {
                                                strArr = list2;
                                            }
                                        }
                                        strArr = list2;
                                        i2 += length2;
                                        try {
                                            list.add(str2);
                                            try {
                                                if (i2 > bmVar.f12626f.b()) {
                                                    if (inputStreamA != null) {
                                                        try {
                                                            inputStreamA.close();
                                                        } catch (Throwable unused8) {
                                                        }
                                                    }
                                                    if (bVarA == null) {
                                                        break;
                                                    }
                                                    bVarA.close();
                                                    break;
                                                }
                                                if (inputStreamA != null) {
                                                    try {
                                                        inputStreamA.close();
                                                    } catch (Throwable unused9) {
                                                    }
                                                }
                                                if (bVarA != null) {
                                                    bVarA.close();
                                                }
                                            } catch (Throwable unused10) {
                                                if (inputStreamA != null) {
                                                    inputStreamA.close();
                                                }
                                                if (bVarA != null) {
                                                    bVarA.close();
                                                }
                                            }
                                        } catch (Throwable unused11) {
                                        }
                                    }
                                } catch (Throwable unused12) {
                                    strArr = list2;
                                }
                            } else if (bVarA != null) {
                                try {
                                    bVarA.close();
                                } catch (Throwable unused13) {
                                }
                            }
                        } catch (Throwable unused14) {
                            strArr = list2;
                            bVarA = null;
                            if (inputStreamA != null) {
                                inputStreamA.close();
                            }
                            if (bVarA != null) {
                                bVarA.close();
                            }
                            i++;
                            list2 = strArr;
                            c = 0;
                        }
                    } catch (Throwable unused15) {
                    }
                    i++;
                    list2 = strArr;
                    c = 0;
                }
                strArr = list2;
                i++;
                list2 = strArr;
                c = 0;
            }
            return arrayList;
        } catch (Throwable th) {
            am.b(th, "aps", "upc");
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(bc bcVar, List<String> list) {
        if (bcVar != null) {
            try {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    bcVar.c(it.next());
                }
                bcVar.close();
            } catch (Throwable th) {
                am.b(th, "aps", "dlo");
            }
        }
    }

    private static byte[] b(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    private static byte[] c(int i) {
        return new byte[]{(byte) ((i & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8), (byte) (i & 255)};
    }

    static /* synthetic */ byte[] f() {
        return a(128);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        try {
            ArrayList<ct> arrayList = this.f12791f;
            if (arrayList != null && arrayList.size() != 0) {
                ArrayList<ct> arrayList2 = new ArrayList();
                synchronized (this.f12791f) {
                    arrayList2.addAll(this.f12791f);
                    this.f12791f.clear();
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArrA = a(256);
                if (bArrA == null) {
                    return;
                }
                byteArrayOutputStream.write(c(bArrA.length));
                byteArrayOutputStream.write(bArrA);
                for (ct ctVar : arrayList2) {
                    byte[] bArrB = ctVar.b();
                    if (bArrB.length >= 10 && bArrB.length <= 65535) {
                        byte[] bArrB2 = o.b(bArrA, bArrB, w.c());
                        byteArrayOutputStream.write(c(bArrB2.length));
                        byteArrayOutputStream.write(bArrB2);
                        byteArrayOutputStream.write(b(ctVar.a()));
                    }
                }
                bn.a(Long.toString(System.currentTimeMillis()), byteArrayOutputStream.toByteArray(), this.f12790e);
            }
        } catch (Throwable th) {
            fi.a(th, "clm", "wtD");
        }
    }

    @Override // com.loc.ed
    public final ec a(eb ebVar) {
        try {
            fc fcVar = new fc();
            fcVar.a(ebVar.b);
            fcVar.b(ebVar.f12763a);
            fcVar.a(ebVar.f12764d);
            bf.a();
            bl blVarA = bf.a(fcVar);
            ec ecVar = new ec();
            ecVar.c = blVarA.f12619a;
            ecVar.b = blVarA.b;
            ecVar.f12766a = 200;
            return ecVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    final void a() {
        LocationManager locationManager;
        try {
            a aVar = this.i;
            if (aVar != null && (locationManager = this.f12793h) != null) {
                locationManager.removeUpdates(aVar);
            }
            a aVar2 = this.i;
            if (aVar2 != null) {
                aVar2.a();
            }
            if (this.j) {
                g();
                this.b.a((ej) null);
                this.c.a((ej) null);
                this.c = null;
                this.b = null;
                this.f12792g = null;
                this.j = false;
            }
        } catch (Throwable th) {
            fi.a(th, "clm", "stc");
        }
    }

    public final void a(Location location) {
        try {
            Handler handler = this.f12792g;
            if (handler != null) {
                handler.post(new b(this, location));
            }
        } catch (Throwable th) {
            am.b(th, "cl", "olcc");
        }
    }

    public final void a(es esVar, ew ewVar, Handler handler) {
        LocationManager locationManager;
        if (this.j || esVar == null || ewVar == null || handler == null) {
            return;
        }
        this.j = true;
        this.c = esVar;
        this.b = ewVar;
        ewVar.a(this);
        this.c.a(this);
        this.f12792g = handler;
        try {
            if (this.f12793h == null && handler != null) {
                this.f12793h = (LocationManager) this.f12788a.getSystemService("location");
            }
            if (this.i == null) {
                this.i = new a(this);
            }
            this.i.a(this);
            a aVar = this.i;
            if (aVar != null && (locationManager = this.f12793h) != null) {
                locationManager.requestLocationUpdates("passive", 1000L, -1.0f, aVar);
            }
            if (this.f12789d == null) {
                dn dnVar = new dn("5.6.2", k.f(this.f12788a), "S128DF1572465B890OE3F7A13167KLEI", k.c(this.f12788a), this);
                this.f12789d = dnVar;
                dnVar.a(n.v(this.f12788a)).b(n.h(this.f12788a)).c(n.a(this.f12788a)).d(n.g(this.f12788a)).e(n.y(this.f12788a)).f(n.i(this.f12788a)).g(Build.MODEL).h(Build.MANUFACTURER).i(Build.BRAND).a(Build.VERSION.SDK_INT).j(Build.VERSION.RELEASE).a(dx.a(n.k(this.f12788a))).k(n.k(this.f12788a));
                dn.b();
            }
        } catch (Throwable th) {
            fi.a(th, "col", "init");
        }
    }

    public final void b() {
        try {
            Handler handler = this.f12792g;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.loc.ej.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ew ewVar;
                        try {
                            ej ejVar = ej.this;
                            if (ejVar.f12789d == null || (ewVar = ejVar.b) == null) {
                                return;
                            }
                            dn.b(ewVar.a());
                        } catch (Throwable th) {
                            fi.a(th, "cl", "upwr");
                        }
                    }
                });
            }
        } catch (Throwable th) {
            fi.a(th, "cl", "upw");
        }
    }

    public final void c() {
        es esVar;
        try {
            if (this.f12789d == null || (esVar = this.c) == null) {
                return;
            }
            dn.a(esVar.a());
        } catch (Throwable th) {
            fi.a(th, "cl", "upc");
        }
    }

    public final void d() {
        try {
            if (System.currentTimeMillis() - k < DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) {
                return;
            }
            ci.a().b(new b(2));
        } catch (Throwable unused) {
        }
    }

    public final void e() {
        try {
            ci.a().b(new b(3));
        } catch (Throwable unused) {
        }
    }
}
