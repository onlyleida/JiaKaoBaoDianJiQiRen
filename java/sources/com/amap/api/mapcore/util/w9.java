package com.amap.api.mapcore.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import cn.mucang.android.core.webview.MenuOptions;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"NewApi"})
public final class w9 {
    private static boolean v = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f11317a;
    int b = 0;
    ArrayList<v9> c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f11318d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<v9> f11319e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f11320f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TelephonyManager f11321g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private t9 f11322h;
    private Object i;
    long j;
    CellLocation k;
    private int l;
    private long m;
    boolean n;
    PhoneStateListener o;

    @SuppressLint({"NewApi"})
    private TelephonyManager.CellInfoCallback p;
    private boolean q;
    boolean r;
    private s9 s;
    private boolean t;
    private Object u;

    final class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (w9.this.u) {
                if (!w9.this.t) {
                    w9.this.N();
                }
            }
        }
    }

    @SuppressLint({"NewApi"})
    class b extends TelephonyManager.CellInfoCallback {
        b() {
        }

        @Override // android.telephony.TelephonyManager.CellInfoCallback
        public final void onCellInfo(List<CellInfo> list) {
            w9.D(w9.this);
            CellLocation cellLocationD = w9.this.d(list);
            if (cellLocationD != null) {
                w9 w9Var = w9.this;
                w9Var.k = cellLocationD;
                w9Var.n = true;
                w9Var.T();
                w9.this.m = g9.p();
            }
        }
    }

    class c extends PhoneStateListener {
        c() {
        }

        @Override // android.telephony.PhoneStateListener
        public final void onCellInfoChanged(List<CellInfo> list) {
            try {
                if (w9.this.s == null) {
                    return;
                }
                w9.this.s.a();
                throw null;
            } catch (Throwable unused) {
            }
        }

        @Override // android.telephony.PhoneStateListener
        public final void onCellLocationChanged(CellLocation cellLocation) {
            try {
                if (w9.this.r(cellLocation)) {
                    w9 w9Var = w9.this;
                    w9Var.k = cellLocation;
                    w9Var.n = true;
                    w9Var.T();
                    w9.this.m = g9.p();
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.telephony.PhoneStateListener
        public final void onServiceStateChanged(ServiceState serviceState) {
            try {
                int state = serviceState.getState();
                if (state == 0) {
                    w9.this.s();
                } else {
                    if (state != 1) {
                        return;
                    }
                    w9.this.K();
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.telephony.PhoneStateListener
        public final void onSignalStrengthChanged(int i) {
            int iD = -113;
            try {
                int i2 = w9.this.b;
                if (i2 == 1 || i2 == 2) {
                    iD = g9.d(i);
                }
                w9.this.t(iD);
            } catch (Throwable unused) {
            }
        }

        @Override // android.telephony.PhoneStateListener
        public final void onSignalStrengthsChanged(SignalStrength signalStrength) {
            if (signalStrength == null) {
                return;
            }
            int iD = -113;
            try {
                int i = w9.this.b;
                if (i == 1) {
                    iD = g9.d(signalStrength.getGsmSignalStrength());
                } else if (i == 2) {
                    iD = signalStrength.getCdmaDbm();
                }
                w9.this.t(iD);
                if (w9.this.s == null) {
                    return;
                }
                w9.this.s.a();
                throw null;
            } catch (Throwable unused) {
            }
        }
    }

    public w9(Context context) {
        new ArrayList();
        this.f11318d = null;
        this.f11319e = new ArrayList<>();
        this.f11320f = -113;
        this.f11321g = null;
        this.f11322h = null;
        this.j = 0L;
        this.l = 0;
        this.m = 0L;
        this.o = null;
        this.r = false;
        this.t = false;
        this.u = new Object();
        this.f11317a = context;
        if (this.f11321g == null) {
            this.f11321g = (TelephonyManager) g9.g(context, "phone");
        }
        M();
        this.f11322h = new t9();
    }

    private static boolean A(int i) {
        return (i == -1 || i == 0 || i > 65535) ? false : true;
    }

    private static boolean C(int i) {
        return (i == -1 || i == 0 || i == 65535 || i >= 268435455) ? false : true;
    }

    static /* synthetic */ boolean D(w9 w9Var) {
        w9Var.q = true;
        return true;
    }

    private void M() {
        Object objG;
        TelephonyManager telephonyManager = this.f11321g;
        if (telephonyManager == null) {
            return;
        }
        try {
            this.b = x(telephonyManager.getCellLocation());
        } catch (SecurityException e2) {
            e2.getMessage();
        } catch (Throwable th) {
            b9.b(th, "CgiManager", "CgiManager");
            this.b = 0;
        }
        try {
            int iY = Y();
            this.l = iY;
            if (iY != 1) {
                objG = g9.g(iY != 2 ? this.f11317a : this.f11317a, "phone2");
            } else {
                objG = g9.g(this.f11317a, "phone_msim");
            }
            this.i = objG;
        } catch (Throwable unused) {
        }
        e6.s().submit(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        int iG;
        this.o = new c();
        try {
            iG = e9.g("android.telephony.PhoneStateListener", "LISTEN_SIGNAL_STRENGTHS");
        } catch (Throwable unused) {
            iG = 0;
        }
        if (iG == 0) {
            try {
                this.f11321g.listen(this.o, 16);
            } catch (Throwable unused2) {
            }
        } else {
            try {
                this.f11321g.listen(this.o, iG | 16);
            } catch (Throwable unused3) {
            }
        }
    }

    private CellLocation O() {
        TelephonyManager telephonyManager = this.f11321g;
        if (telephonyManager == null) {
            return null;
        }
        try {
            CellLocation cellLocation = telephonyManager.getCellLocation();
            if (!v(cellLocation)) {
                return null;
            }
            this.k = cellLocation;
            return cellLocation;
        } catch (SecurityException e2) {
            e2.getMessage();
            return null;
        } catch (Throwable th) {
            b9.b(th, "CgiManager", "getCellLocation");
            return null;
        }
    }

    private boolean P() {
        return !this.r && g9.p() - this.j >= 10000;
    }

    private void Q() {
        K();
    }

    private synchronized void R() {
        int iG = G();
        if (iG != 1) {
            if (iG == 2 && this.c.isEmpty()) {
                this.b = 0;
            }
        } else if (this.c.isEmpty()) {
            this.b = 0;
        }
    }

    @SuppressLint({"NewApi"})
    private synchronized void S() {
        if (!this.r && this.f11321g != null) {
            if (Build.VERSION.SDK_INT >= 29 && this.f11317a.getApplicationInfo().targetSdkVersion >= 29) {
                if (this.p == null) {
                    this.p = new b();
                }
                this.f11321g.requestCellInfoUpdate(e6.s(), this.p);
            }
            CellLocation cellLocationU = U();
            if (!v(cellLocationU)) {
                cellLocationU = V();
            }
            if (v(cellLocationU)) {
                this.k = cellLocationU;
                this.m = g9.p();
            } else if (g9.p() - this.m > DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) {
                this.k = null;
                this.c.clear();
                this.f11319e.clear();
            }
        }
        if (v(this.k)) {
            T();
        }
        try {
            if (g9.x() >= 18) {
                X();
            }
        } catch (Throwable unused) {
        }
        TelephonyManager telephonyManager = this.f11321g;
        if (telephonyManager != null) {
            String networkOperator = telephonyManager.getNetworkOperator();
            this.f11318d = networkOperator;
            if (!TextUtils.isEmpty(networkOperator)) {
                this.b |= 8;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void T() {
        String[] strArrN = g9.n(this.f11321g);
        int iX = x(this.k);
        if (iX == 1) {
            n(this.k, strArrN, false);
        } else {
            if (iX == 2) {
                u(this.k, strArrN);
            }
        }
    }

    @SuppressLint({"NewApi"})
    private CellLocation U() {
        TelephonyManager telephonyManager = this.f11321g;
        CellLocation cellLocationD = null;
        if (telephonyManager == null) {
            return null;
        }
        if (g9.x() >= 18) {
            try {
                cellLocationD = d(telephonyManager.getAllCellInfo());
            } catch (SecurityException e2) {
                e2.getMessage();
            }
        }
        if (cellLocationD != null) {
            return cellLocationD;
        }
        CellLocation cellLocationO = O();
        if (v(cellLocationO)) {
            return cellLocationO;
        }
        CellLocation cellLocationC = c(telephonyManager, "getCellLocationExt", 1);
        return cellLocationC != null ? cellLocationC : c(telephonyManager, "getCellLocationGemini", 1);
    }

    private CellLocation V() {
        if (!v) {
            v = true;
        }
        Object obj = this.i;
        CellLocation cellLocationC = null;
        if (obj == null) {
            return null;
        }
        try {
            Class<?> clsW = W();
            if (clsW.isInstance(obj)) {
                Object objCast = clsW.cast(obj);
                CellLocation cellLocationC2 = c(objCast, "getCellLocation", new Object[0]);
                if (cellLocationC2 != null) {
                    return cellLocationC2;
                }
                CellLocation cellLocationC3 = c(objCast, "getCellLocation", 1);
                if (cellLocationC3 != null) {
                    return cellLocationC3;
                }
                CellLocation cellLocationC4 = c(objCast, "getCellLocationGemini", 1);
                if (cellLocationC4 != null) {
                    return cellLocationC4;
                }
                cellLocationC = c(objCast, "getAllCellInfo", 1);
                if (cellLocationC != null) {
                    return cellLocationC;
                }
            }
        } catch (Throwable th) {
            b9.b(th, "CgiManager", "getSim2Cgi");
        }
        return cellLocationC;
    }

    private Class<?> W() {
        String str;
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        int i = this.l;
        if (i == 0) {
            str = "android.telephony.TelephonyManager";
        } else if (i != 1) {
            str = i != 2 ? null : "android.telephony.TelephonyManager2";
        } else {
            str = "android.telephony.MSimTelephonyManager";
        }
        try {
            return systemClassLoader.loadClass(str);
        } catch (Throwable th) {
            b9.b(th, "CgiManager", "getSim2TmClass");
            return null;
        }
    }

    @SuppressLint({"NewApi"})
    private void X() {
        int size;
        TelephonyManager telephonyManager = this.f11321g;
        if (telephonyManager == null) {
            return;
        }
        List<CellInfo> allCellInfo = null;
        ArrayList<v9> arrayList = this.f11319e;
        t9 t9Var = this.f11322h;
        try {
            allCellInfo = telephonyManager.getAllCellInfo();
        } catch (SecurityException e2) {
            e2.getMessage();
        }
        if (allCellInfo != null && (size = allCellInfo.size()) != 0) {
            if (arrayList != null) {
                arrayList.clear();
            }
            for (int i = 0; i < size; i++) {
                CellInfo cellInfo = allCellInfo.get(i);
                if (cellInfo != null) {
                    try {
                        v9 v9VarF = f(cellInfo);
                        if (v9VarF != null) {
                            v9VarF.l = (short) Math.min(65535L, t9Var.b(v9VarF));
                            arrayList.add(v9VarF);
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        this.b |= 4;
        t9Var.d(arrayList);
    }

    private int Y() {
        try {
            Class.forName("android.telephony.MSimTelephonyManager");
            this.l = 1;
        } catch (Throwable unused) {
        }
        if (this.l == 0) {
            try {
                Class.forName("android.telephony.TelephonyManager2");
                this.l = 2;
            } catch (Throwable unused2) {
            }
        }
        return this.l;
    }

    private CellLocation c(Object obj, String str, Object... objArr) {
        if (obj == null) {
            return null;
        }
        try {
            Object objC = e9.c(obj, str, objArr);
            CellLocation cellLocation = objC != null ? (CellLocation) objC : null;
            if (v(cellLocation)) {
                return cellLocation;
            }
            return null;
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.telephony.CellLocation] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9, types: [android.telephony.cdma.CdmaCellLocation] */
    @SuppressLint({"NewApi"})
    public synchronized CellLocation d(List<CellInfo> list) {
        ?? cdmaCellLocation;
        GsmCellLocation gsmCellLocation;
        GsmCellLocation gsmCellLocation2 = null;
         = 0;
        gsmCellLocation2 = null;
        gsmCellLocation2 = null;
        ?? r0 = 0;
        if (list != null) {
            if (!list.isEmpty()) {
                v9 v9VarF = null;
                for (int i = 0; i < list.size(); i++) {
                    CellInfo cellInfo = list.get(i);
                    if (cellInfo != null) {
                        try {
                            v9VarF = f(cellInfo);
                            if (v9VarF != null) {
                                break;
                            }
                        } catch (Throwable unused) {
                            continue;
                        }
                    }
                }
                if (v9VarF != null) {
                    try {
                        if (v9VarF.k == 2) {
                            cdmaCellLocation = new CdmaCellLocation();
                            try {
                                cdmaCellLocation.setCellLocationData(v9VarF.i, v9VarF.f11289e, v9VarF.f11290f, v9VarF.f11291g, v9VarF.f11292h);
                                cdmaCellLocation = cdmaCellLocation;
                            } catch (Throwable unused2) {
                            }
                        } else {
                            gsmCellLocation = new GsmCellLocation();
                            try {
                                gsmCellLocation.setLacAndCid(v9VarF.c, v9VarF.f11288d);
                            } catch (Throwable unused3) {
                                gsmCellLocation2 = gsmCellLocation;
                                cdmaCellLocation = 0;
                                GsmCellLocation gsmCellLocation3 = gsmCellLocation2;
                                r0 = cdmaCellLocation;
                                gsmCellLocation = gsmCellLocation3;
                            }
                        }
                    } catch (Throwable unused4) {
                        cdmaCellLocation = gsmCellLocation2;
                    }
                    GsmCellLocation gsmCellLocation4 = gsmCellLocation2;
                    r0 = cdmaCellLocation;
                    gsmCellLocation = gsmCellLocation4;
                } else {
                    gsmCellLocation = null;
                }
                return r0 == 0 ? gsmCellLocation : r0;
            }
        }
        return null;
    }

    private static v9 e(int i, boolean z, int i2, int i3, int i4, int i5, int i6) {
        v9 v9Var = new v9(i, z);
        v9Var.f11287a = i2;
        v9Var.b = i3;
        v9Var.c = i4;
        v9Var.f11288d = i5;
        v9Var.j = i6;
        return v9Var;
    }

    private v9 f(CellInfo cellInfo) {
        boolean zIsRegistered = cellInfo.isRegistered();
        if (cellInfo instanceof CellInfoCdma) {
            return g((CellInfoCdma) cellInfo, zIsRegistered);
        }
        if (cellInfo instanceof CellInfoGsm) {
            return h((CellInfoGsm) cellInfo, zIsRegistered);
        }
        if (cellInfo instanceof CellInfoWcdma) {
            return j((CellInfoWcdma) cellInfo, zIsRegistered);
        }
        if (cellInfo instanceof CellInfoLte) {
            return i((CellInfoLte) cellInfo, zIsRegistered);
        }
        return null;
    }

    private v9 g(CellInfoCdma cellInfoCdma, boolean z) {
        int i;
        int i2;
        int i3;
        if (cellInfoCdma != null && cellInfoCdma.getCellIdentity() != null) {
            CellIdentityCdma cellIdentity = cellInfoCdma.getCellIdentity();
            if (cellIdentity.getSystemId() > 0 && cellIdentity.getNetworkId() >= 0 && cellIdentity.getBasestationId() >= 0) {
                CellIdentityCdma cellIdentity2 = cellInfoCdma.getCellIdentity();
                String[] strArrN = g9.n(this.f11321g);
                try {
                    i = Integer.parseInt(strArrN[0]);
                    try {
                        i3 = Integer.parseInt(strArrN[1]);
                        i2 = i;
                    } catch (Throwable unused) {
                        i2 = i;
                        i3 = 0;
                    }
                } catch (Throwable unused2) {
                    i = 0;
                }
                v9 v9VarE = e(2, z, i2, i3, 0, 0, cellInfoCdma.getCellSignalStrength().getCdmaDbm());
                v9VarE.f11291g = cellIdentity2.getSystemId();
                v9VarE.f11292h = cellIdentity2.getNetworkId();
                v9VarE.i = cellIdentity2.getBasestationId();
                v9VarE.f11289e = cellIdentity2.getLatitude();
                v9VarE.f11290f = cellIdentity2.getLongitude();
                return v9VarE;
            }
        }
        return null;
    }

    @SuppressLint({"NewApi"})
    private static v9 h(CellInfoGsm cellInfoGsm, boolean z) {
        if (cellInfoGsm != null && cellInfoGsm.getCellIdentity() != null) {
            CellIdentityGsm cellIdentity = cellInfoGsm.getCellIdentity();
            if (A(cellIdentity.getLac()) && C(cellIdentity.getCid())) {
                return e(1, z, cellIdentity.getMcc(), cellIdentity.getMnc(), cellIdentity.getLac(), cellIdentity.getCid(), cellInfoGsm.getCellSignalStrength().getDbm());
            }
        }
        return null;
    }

    private static v9 i(CellInfoLte cellInfoLte, boolean z) {
        if (cellInfoLte != null && cellInfoLte.getCellIdentity() != null) {
            CellIdentityLte cellIdentity = cellInfoLte.getCellIdentity();
            if (A(cellIdentity.getTac()) && C(cellIdentity.getCi())) {
                v9 v9VarE = e(3, z, cellIdentity.getMcc(), cellIdentity.getMnc(), cellIdentity.getTac(), cellIdentity.getCi(), cellInfoLte.getCellSignalStrength().getDbm());
                v9VarE.o = cellIdentity.getPci();
                return v9VarE;
            }
        }
        return null;
    }

    private static v9 j(CellInfoWcdma cellInfoWcdma, boolean z) {
        if (cellInfoWcdma != null && cellInfoWcdma.getCellIdentity() != null) {
            CellIdentityWcdma cellIdentity = cellInfoWcdma.getCellIdentity();
            if (A(cellIdentity.getLac()) && C(cellIdentity.getCid())) {
                v9 v9VarE = e(4, z, cellIdentity.getMcc(), cellIdentity.getMnc(), cellIdentity.getLac(), cellIdentity.getCid(), cellInfoWcdma.getCellSignalStrength().getDbm());
                v9VarE.o = cellIdentity.getPsc();
                return v9VarE;
            }
        }
        return null;
    }

    private v9 k(CellLocation cellLocation, String[] strArr) {
        GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
        v9 v9Var = new v9(1, true);
        v9Var.f11287a = g9.B(strArr[0]);
        v9Var.b = g9.B(strArr[1]);
        v9Var.c = gsmCellLocation.getLac();
        v9Var.f11288d = gsmCellLocation.getCid();
        v9Var.j = this.f11320f;
        return v9Var;
    }

    private static v9 l(NeighboringCellInfo neighboringCellInfo, String[] strArr) {
        try {
            v9 v9Var = new v9(1, false);
            v9Var.f11287a = Integer.parseInt(strArr[0]);
            v9Var.b = Integer.parseInt(strArr[1]);
            v9Var.c = e9.f(neighboringCellInfo, "getLac", new Object[0]);
            v9Var.f11288d = neighboringCellInfo.getCid();
            v9Var.j = g9.d(neighboringCellInfo.getRssi());
            return v9Var;
        } catch (Throwable th) {
            b9.b(th, "CgiManager", "getGsm");
            return null;
        }
    }

    private synchronized void n(CellLocation cellLocation, String[] strArr, boolean z) {
        v9 v9VarL;
        if (cellLocation != null) {
            if (this.f11321g != null) {
                this.c.clear();
                if (v(cellLocation)) {
                    this.b = 1;
                    this.c.add(k(cellLocation, strArr));
                    if (Build.VERSION.SDK_INT <= 28) {
                        List<NeighboringCellInfo> list = (List) e9.c(this.f11321g, "getNeighboringCellInfo", new Object[0]);
                        if (list != null && !list.isEmpty()) {
                            for (NeighboringCellInfo neighboringCellInfo : list) {
                                if (neighboringCellInfo != null && q(neighboringCellInfo.getLac(), neighboringCellInfo.getCid()) && (v9VarL = l(neighboringCellInfo, strArr)) != null && !this.c.contains(v9VarL)) {
                                    this.c.add(v9VarL);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static boolean p(int i) {
        return i > 0 && i <= 15;
    }

    private static boolean q(int i, int i2) {
        return (i == -1 || i == 0 || i > 65535 || i2 == -1 || i2 == 0 || i2 == 65535 || i2 >= 268435455) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void t(int i) {
        ArrayList<v9> arrayList;
        try {
            if (i == -113) {
                this.f11320f = -113;
                return;
            }
            this.f11320f = i;
            int i2 = this.b;
            if ((i2 == 1 || i2 == 2) && (arrayList = this.c) != null && !arrayList.isEmpty()) {
                try {
                    this.c.get(0).j = this.f11320f;
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void u(CellLocation cellLocation, String[] strArr) {
        boolean z;
        if (cellLocation == null) {
            return;
        }
        this.c.clear();
        try {
            boolean z2 = true;
            if (this.i != null) {
                try {
                    Field declaredField = cellLocation.getClass().getDeclaredField("mGsmCellLoc");
                    if (!declaredField.isAccessible()) {
                        declaredField.setAccessible(true);
                    }
                    GsmCellLocation gsmCellLocation = (GsmCellLocation) declaredField.get(cellLocation);
                    if (gsmCellLocation == null || !v(gsmCellLocation)) {
                        z = false;
                    } else {
                        n(gsmCellLocation, strArr, false);
                        z = true;
                    }
                } catch (Throwable unused) {
                }
                if (z) {
                    return;
                }
            }
            if (v(cellLocation)) {
                this.b = 2;
                v9 v9Var = new v9(2, true);
                v9Var.f11287a = Integer.parseInt(strArr[0]);
                v9Var.b = Integer.parseInt(strArr[1]);
                v9Var.f11291g = e9.f(cellLocation, "getSystemId", new Object[0]);
                v9Var.f11292h = e9.f(cellLocation, "getNetworkId", new Object[0]);
                v9Var.i = e9.f(cellLocation, "getBaseStationId", new Object[0]);
                v9Var.j = this.f11320f;
                v9Var.f11289e = e9.f(cellLocation, "getBaseStationLatitude", new Object[0]);
                int iF = e9.f(cellLocation, "getBaseStationLongitude", new Object[0]);
                v9Var.f11290f = iF;
                int i = v9Var.f11289e;
                if (i != iF || i <= 0) {
                    z2 = false;
                }
                if (i < 0 || iF < 0 || i == Integer.MAX_VALUE || iF == Integer.MAX_VALUE || z2) {
                    v9Var.f11289e = 0;
                    v9Var.f11290f = 0;
                }
                if (this.c.contains(v9Var)) {
                    return;
                }
                this.c.add(v9Var);
            }
        } catch (Throwable th) {
            b9.b(th, "CgiManager", "hdlCdmaLocChange");
        }
    }

    private boolean v(CellLocation cellLocation) {
        boolean zR = r(cellLocation);
        if (!zR) {
            this.b = 0;
        }
        return zR;
    }

    private int x(CellLocation cellLocation) {
        if (this.r || cellLocation == null) {
            return 0;
        }
        if (cellLocation instanceof GsmCellLocation) {
            return 1;
        }
        try {
            Class.forName("android.telephony.cdma.CdmaCellLocation");
            return 2;
        } catch (Throwable th) {
            b9.b(th, "Utils", "getCellLocT");
            return 0;
        }
    }

    public final ArrayList<v9> B() {
        return this.f11319e;
    }

    public final int E() {
        return this.b;
    }

    public final int G() {
        return this.b & 3;
    }

    public final TelephonyManager I() {
        return this.f11321g;
    }

    public final void J() {
        PhoneStateListener phoneStateListener;
        this.f11322h.c();
        this.m = 0L;
        synchronized (this.u) {
            this.t = true;
        }
        TelephonyManager telephonyManager = this.f11321g;
        if (telephonyManager != null && (phoneStateListener = this.o) != null) {
            try {
                telephonyManager.listen(phoneStateListener, 0);
            } catch (Throwable th) {
                b9.b(th, "CgiManager", "destroy");
            }
        }
        this.o = null;
        this.f11320f = -113;
        this.f11321g = null;
        this.i = null;
    }

    final synchronized void K() {
        this.k = null;
        this.b = 0;
        this.c.clear();
        this.f11319e.clear();
    }

    public final String L() {
        return this.f11318d;
    }

    final boolean r(CellLocation cellLocation) {
        String str;
        boolean z = false;
        if (cellLocation == null) {
            return false;
        }
        int iX = x(cellLocation);
        if (iX == 1) {
            try {
                GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                return q(gsmCellLocation.getLac(), gsmCellLocation.getCid());
            } catch (Throwable th) {
                th = th;
                str = "cgiUseful Cgi.I_GSM_T";
            }
        } else {
            if (iX != 2) {
                return true;
            }
            try {
                if (e9.f(cellLocation, "getSystemId", new Object[0]) > 0 && e9.f(cellLocation, "getNetworkId", new Object[0]) >= 0 && e9.f(cellLocation, "getBaseStationId", new Object[0]) >= 0) {
                    z = true;
                }
                return z;
            } catch (Throwable th2) {
                th = th2;
                str = "cgiUseful Cgi.I_CDMA_T";
            }
        }
        b9.b(th, "CgiManager", str);
        return true;
    }

    public final synchronized void s() {
        try {
            try {
                this.r = g9.h(this.f11317a);
                if (P() || this.c.isEmpty()) {
                    S();
                    this.j = g9.p();
                }
                if (this.r) {
                    Q();
                } else {
                    R();
                }
            } catch (Throwable th) {
                throw th;
            }
        } catch (SecurityException e2) {
            e2.getMessage();
        } catch (Throwable th2) {
            b9.b(th2, "CgiManager", MenuOptions.REFRESH);
        }
    }

    public final synchronized ArrayList<v9> y() {
        return this.c;
    }
}
