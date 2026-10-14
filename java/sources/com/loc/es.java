package com.loc;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityNr;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoNr;
import android.telephony.CellInfoWcdma;
import android.telephony.CellLocation;
import android.telephony.CellSignalStrengthNr;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.webview.MenuOptions;
import com.serenegiant.media.Recorder;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"NewApi"})
public final class es {
    TelephonyManager b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    SignalStrength f12839d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f12843h;
    private eq m;

    @SuppressLint({"NewApi"})
    private TelephonyManager.CellInfoCallback q;
    private ej s;
    private boolean i = false;
    private boolean j = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList<er> f12838a = new ArrayList<>();
    private String k = null;
    private ArrayList<er> l = new ArrayList<>();
    private long n = 0;
    PhoneStateListener c = null;
    private boolean o = false;
    private Object p = new Object();
    private boolean r = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f12840e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    StringBuilder f12841f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    String f12842g = null;

    @SuppressLint({"NewApi"})
    class a extends TelephonyManager.CellInfoCallback {
        a() {
        }

        @Override // android.telephony.TelephonyManager.CellInfoCallback
        public final void onCellInfo(List<CellInfo> list) {
            try {
                if (fp.b() - es.this.n < 500) {
                    return;
                }
                es.b(es.this);
                es.this.a(es.this.s());
                es.this.a(list);
                es.this.n = fp.b();
            } catch (SecurityException e2) {
                es.this.f12842g = e2.getMessage();
            } catch (Throwable th) {
                fi.a(th, "Cgi", "cellInfo");
            }
        }
    }

    class b extends PhoneStateListener {
        b() {
        }

        @Override // android.telephony.PhoneStateListener
        public final void onCellInfoChanged(List<CellInfo> list) {
            try {
                if (es.this.s != null) {
                    es.this.s.c();
                }
                if (fp.b() - es.this.n < 500) {
                    return;
                }
                es.this.a(es.this.s());
                es.this.a(list);
                es.this.n = fp.b();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // android.telephony.PhoneStateListener
        public final void onCellLocationChanged(CellLocation cellLocation) {
            if (fp.b() - es.this.n < 500) {
                return;
            }
            try {
                es.this.a(cellLocation);
                es.this.a(es.this.t());
                es.this.n = fp.b();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // android.telephony.PhoneStateListener
        public final void onDataConnectionStateChanged(int i) {
            super.onDataConnectionStateChanged(i);
        }

        @Override // android.telephony.PhoneStateListener
        public final void onServiceStateChanged(ServiceState serviceState) {
            try {
                int state = serviceState.getState();
                if (state == 0) {
                    es.this.a(false, false);
                } else {
                    if (state != 1) {
                        return;
                    }
                    es.this.i();
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.telephony.PhoneStateListener
        public final void onSignalStrengthChanged(int i) {
            super.onSignalStrengthChanged(i);
        }

        @Override // android.telephony.PhoneStateListener
        public final void onSignalStrengthsChanged(SignalStrength signalStrength) {
            if (signalStrength == null) {
                return;
            }
            es esVar = es.this;
            esVar.f12839d = signalStrength;
            try {
                if (esVar.s != null) {
                    es.this.s.c();
                }
            } catch (Throwable unused) {
            }
        }
    }

    public es(Context context, Handler handler) {
        this.b = null;
        this.m = null;
        this.f12843h = context;
        if (this.b == null) {
            this.b = (TelephonyManager) fp.a(context, "phone");
        }
        n();
        eq eqVar = new eq(context, "cellAge", handler);
        this.m = eqVar;
        eqVar.a();
    }

    private static er a(int i, boolean z, int i2, int i3, int i4, int i5, int i6) {
        er erVar = new er(i, z);
        erVar.f12832a = i2;
        erVar.b = i3;
        erVar.c = i4;
        erVar.f12833d = i5;
        erVar.k = i6;
        return erVar;
    }

    private er a(CellInfoCdma cellInfoCdma, boolean z) {
        int i;
        int i2;
        int i3;
        if (cellInfoCdma != null && cellInfoCdma.getCellIdentity() != null) {
            CellIdentityCdma cellIdentity = cellInfoCdma.getCellIdentity();
            if (cellIdentity.getSystemId() > 0 && cellIdentity.getNetworkId() >= 0 && cellIdentity.getBasestationId() >= 0) {
                CellIdentityCdma cellIdentity2 = cellInfoCdma.getCellIdentity();
                String[] strArrA = fp.a(this.b);
                try {
                    i = Integer.parseInt(strArrA[0]);
                    try {
                        i3 = Integer.parseInt(strArrA[1]);
                        i2 = i;
                    } catch (Throwable unused) {
                        i2 = i;
                        i3 = 0;
                    }
                } catch (Throwable unused2) {
                    i = 0;
                }
                er erVarA = a(2, z, i2, i3, 0, 0, cellInfoCdma.getCellSignalStrength().getCdmaDbm());
                erVarA.f12837h = cellIdentity2.getSystemId();
                erVarA.i = cellIdentity2.getNetworkId();
                erVarA.j = cellIdentity2.getBasestationId();
                erVarA.f12835f = cellIdentity2.getLatitude();
                erVarA.f12836g = cellIdentity2.getLongitude();
                erVarA.s = cellInfoCdma.getCellSignalStrength().getCdmaDbm();
                return erVarA;
            }
        }
        return null;
    }

    @SuppressLint({"NewApi"})
    private static er a(CellInfoGsm cellInfoGsm, boolean z) {
        if (cellInfoGsm == null || cellInfoGsm.getCellIdentity() == null) {
            return null;
        }
        CellIdentityGsm cellIdentity = cellInfoGsm.getCellIdentity();
        er erVarA = a(1, z, cellIdentity.getMcc(), cellIdentity.getMnc(), cellIdentity.getLac(), cellIdentity.getCid(), cellInfoGsm.getCellSignalStrength().getDbm());
        erVarA.o = cellInfoGsm.getCellIdentity().getBsic();
        erVarA.p = cellInfoGsm.getCellIdentity().getArfcn();
        erVarA.q = cellInfoGsm.getCellSignalStrength().getTimingAdvance();
        erVarA.s = cellInfoGsm.getCellSignalStrength().getDbm();
        return erVarA;
    }

    private static er a(CellInfoLte cellInfoLte, boolean z) {
        if (cellInfoLte == null || cellInfoLte.getCellIdentity() == null) {
            return null;
        }
        CellIdentityLte cellIdentity = cellInfoLte.getCellIdentity();
        er erVarA = a(3, z, cellIdentity.getMcc(), cellIdentity.getMnc(), cellIdentity.getTac(), cellIdentity.getCi(), cellInfoLte.getCellSignalStrength().getDbm());
        erVarA.o = cellIdentity.getPci();
        if (Build.VERSION.SDK_INT >= 24) {
            erVarA.p = cellIdentity.getEarfcn();
        }
        erVarA.q = cellInfoLte.getCellSignalStrength().getTimingAdvance();
        erVarA.s = cellInfoLte.getCellSignalStrength().getDbm();
        return erVarA;
    }

    private static er a(CellInfoNr cellInfoNr, boolean z) {
        int i;
        int i2;
        int i3;
        if (cellInfoNr == null || cellInfoNr.getCellIdentity() == null) {
            return null;
        }
        CellIdentityNr cellIdentityNr = (CellIdentityNr) cellInfoNr.getCellIdentity();
        int tac = cellIdentityNr.getTac();
        if (tac == Integer.MAX_VALUE && "HUAWEI".equals(Build.MANUFACTURER)) {
            try {
                tac = fl.b(cellIdentityNr, "getHwTac", new Object[0]);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        long nci = cellIdentityNr.getNci();
        try {
            i = Integer.parseInt(cellIdentityNr.getMccString());
            try {
                i2 = i;
                i3 = Integer.parseInt(cellIdentityNr.getMncString());
            } catch (Throwable th2) {
                th = th2;
                th.printStackTrace();
                i2 = i;
                i3 = 0;
            }
        } catch (Throwable th3) {
            th = th3;
            i = 0;
        }
        er erVarA = a(5, z, i2, i3, cellIdentityNr.getTac(), 0, ((CellSignalStrengthNr) cellInfoNr.getCellSignalStrength()).getSsRsrp());
        erVarA.f12834e = nci;
        if (tac > 16777215) {
            erVarA.c = ExifInterface.COLOR_SPACE_UNCALIBRATED;
        } else if (tac > 65535) {
            erVarA.c = ExifInterface.COLOR_SPACE_UNCALIBRATED;
            erVarA.q = tac;
        } else {
            erVarA.c = tac;
        }
        erVarA.o = cellIdentityNr.getPci();
        erVarA.p = cellIdentityNr.getNrarfcn();
        erVarA.s = cellInfoNr.getCellSignalStrength().getDbm();
        return erVarA;
    }

    private static er a(CellInfoWcdma cellInfoWcdma, boolean z) {
        if (cellInfoWcdma == null || cellInfoWcdma.getCellIdentity() == null) {
            return null;
        }
        CellIdentityWcdma cellIdentity = cellInfoWcdma.getCellIdentity();
        er erVarA = a(4, z, cellIdentity.getMcc(), cellIdentity.getMnc(), cellIdentity.getLac(), cellIdentity.getCid(), cellInfoWcdma.getCellSignalStrength().getDbm());
        erVarA.o = cellIdentity.getPsc();
        erVarA.p = cellInfoWcdma.getCellIdentity().getUarfcn();
        erVarA.s = cellInfoWcdma.getCellSignalStrength().getDbm();
        return erVarA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(CellLocation cellLocation) {
        String[] strArrA = fp.a(this.b);
        this.f12838a.clear();
        if (cellLocation instanceof GsmCellLocation) {
            GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
            er erVar = new er(1, true);
            erVar.f12832a = fp.e(strArrA[0]);
            erVar.b = fp.e(strArrA[1]);
            erVar.c = gsmCellLocation.getLac();
            erVar.f12833d = gsmCellLocation.getCid();
            SignalStrength signalStrength = this.f12839d;
            if (signalStrength != null) {
                int gsmSignalStrength = signalStrength.getGsmSignalStrength();
                erVar.s = gsmSignalStrength == 99 ? Integer.MAX_VALUE : b(gsmSignalStrength);
            }
            erVar.r = false;
            this.m.a(erVar);
            this.f12838a.add(erVar);
            return;
        }
        if (cellLocation instanceof CdmaCellLocation) {
            CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
            er erVar2 = new er(2, true);
            erVar2.f12832a = Integer.parseInt(strArrA[0]);
            erVar2.b = Integer.parseInt(strArrA[1]);
            erVar2.f12835f = cdmaCellLocation.getBaseStationLatitude();
            erVar2.f12836g = cdmaCellLocation.getBaseStationLongitude();
            erVar2.f12837h = cdmaCellLocation.getSystemId();
            erVar2.i = cdmaCellLocation.getNetworkId();
            erVar2.j = cdmaCellLocation.getBaseStationId();
            SignalStrength signalStrength2 = this.f12839d;
            if (signalStrength2 != null) {
                erVar2.s = signalStrength2.getCdmaDbm();
            }
            erVar2.r = false;
            this.m.a(erVar2);
            this.f12838a.add(erVar2);
        }
    }

    public static boolean a(int i) {
        return i > 0 && i <= 15;
    }

    private static int b(int i) {
        return (i * 2) - 113;
    }

    @SuppressLint({"NewApi"})
    private void b(boolean z, boolean z2) {
        if (!this.f12840e && this.b != null && Build.VERSION.SDK_INT >= 29 && this.f12843h.getApplicationInfo().targetSdkVersion >= 29) {
            if (this.q == null) {
                this.q = new a();
            }
            this.b.requestCellInfoUpdate(ci.a().b(), this.q);
            if (z2 || z) {
                for (int i = 0; !this.r && i < 20; i++) {
                    try {
                        Thread.sleep(5L);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        this.j = false;
        TelephonyManager telephonyManager = this.b;
        if (telephonyManager != null) {
            String networkOperator = telephonyManager.getNetworkOperator();
            this.k = networkOperator;
            if (!TextUtils.isEmpty(networkOperator)) {
                this.j = true;
            }
        }
        this.n = fp.b();
    }

    static /* synthetic */ boolean b(es esVar) {
        esVar.r = true;
        return true;
    }

    private void n() {
        if (this.b == null) {
            return;
        }
        o();
    }

    private void o() {
        b bVar = new b();
        this.c = bVar;
        int i = Build.VERSION.SDK_INT >= 17 ? Constants.ERR_ADM_NO_PLAYOUT_DEVICE : 336;
        if (bVar != null) {
            try {
                this.b.listen(bVar, i);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private int p() {
        er erVarD = d();
        if (erVarD != null) {
            return erVarD.l;
        }
        return 0;
    }

    private CellLocation q() {
        TelephonyManager telephonyManager = this.b;
        if (telephonyManager != null) {
            try {
                CellLocation cellLocation = telephonyManager.getCellLocation();
                this.f12842g = null;
                return cellLocation;
            } catch (SecurityException e2) {
                this.f12842g = e2.getMessage();
            } catch (Throwable th) {
                this.f12842g = null;
                fi.a(th, "CgiManager", "getCellLocation");
            }
        }
        return null;
    }

    private boolean r() {
        return !this.f12840e && fp.b() - this.n >= Recorder.CHECK_INTERVAL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CellLocation s() {
        if (this.b == null) {
            return null;
        }
        return q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public List<CellInfo> t() {
        TelephonyManager telephonyManager;
        List<CellInfo> allCellInfo;
        try {
            if (fp.c() < 18 || (telephonyManager = this.b) == null) {
                return null;
            }
            try {
                allCellInfo = telephonyManager.getAllCellInfo();
                try {
                    this.f12842g = null;
                } catch (SecurityException e2) {
                    e = e2;
                    this.f12842g = e.getMessage();
                }
            } catch (SecurityException e3) {
                e = e3;
                allCellInfo = null;
            }
            return allCellInfo;
        } catch (Throwable th) {
            fi.a(th, "Cgi", "getNewCells");
            return null;
        }
    }

    public final List<dq> a() {
        Object obj;
        Object obj2;
        int i = Build.VERSION.SDK_INT;
        ArrayList arrayList = new ArrayList();
        List<CellInfo> allCellInfo = this.b.getAllCellInfo();
        if (i >= 17 && allCellInfo != null) {
            for (CellInfo cellInfo : allCellInfo) {
                if (cellInfo instanceof CellInfoCdma) {
                    CellInfoCdma cellInfoCdma = (CellInfoCdma) cellInfo;
                    CellIdentityCdma cellIdentity = cellInfoCdma.getCellIdentity();
                    dr drVar = new dr(cellInfo.isRegistered(), true);
                    drVar.m = cellIdentity.getLatitude();
                    drVar.n = cellIdentity.getLongitude();
                    drVar.j = cellIdentity.getSystemId();
                    drVar.k = cellIdentity.getNetworkId();
                    drVar.l = cellIdentity.getBasestationId();
                    drVar.f12731d = cellInfoCdma.getCellSignalStrength().getAsuLevel();
                    drVar.c = cellInfoCdma.getCellSignalStrength().getCdmaDbm();
                    obj = drVar;
                } else {
                    if (cellInfo instanceof CellInfoGsm) {
                        CellInfoGsm cellInfoGsm = (CellInfoGsm) cellInfo;
                        CellIdentityGsm cellIdentity2 = cellInfoGsm.getCellIdentity();
                        ds dsVar = new ds(cellInfo.isRegistered(), true);
                        dsVar.f12730a = String.valueOf(cellIdentity2.getMcc());
                        dsVar.b = String.valueOf(cellIdentity2.getMnc());
                        dsVar.j = cellIdentity2.getLac();
                        dsVar.k = cellIdentity2.getCid();
                        dsVar.c = cellInfoGsm.getCellSignalStrength().getDbm();
                        dsVar.f12731d = cellInfoGsm.getCellSignalStrength().getAsuLevel();
                        obj2 = dsVar;
                        if (i >= 24) {
                            dsVar.m = cellIdentity2.getArfcn();
                            dsVar.n = cellIdentity2.getBsic();
                            obj2 = dsVar;
                        }
                    } else if (cellInfo instanceof CellInfoLte) {
                        CellInfoLte cellInfoLte = (CellInfoLte) cellInfo;
                        CellIdentityLte cellIdentity3 = cellInfoLte.getCellIdentity();
                        dt dtVar = new dt(cellInfo.isRegistered());
                        dtVar.f12730a = String.valueOf(cellIdentity3.getMcc());
                        dtVar.b = String.valueOf(cellIdentity3.getMnc());
                        dtVar.l = cellIdentity3.getPci();
                        dtVar.f12731d = cellInfoLte.getCellSignalStrength().getAsuLevel();
                        dtVar.k = cellIdentity3.getCi();
                        dtVar.j = cellIdentity3.getTac();
                        dtVar.n = cellInfoLte.getCellSignalStrength().getTimingAdvance();
                        dtVar.c = cellInfoLte.getCellSignalStrength().getDbm();
                        obj = dtVar;
                        if (i >= 24) {
                            dtVar.m = cellIdentity3.getEarfcn();
                            obj = dtVar;
                        }
                    } else if (i >= 18 && (cellInfo instanceof CellInfoWcdma)) {
                        CellInfoWcdma cellInfoWcdma = (CellInfoWcdma) cellInfo;
                        CellIdentityWcdma cellIdentity4 = cellInfoWcdma.getCellIdentity();
                        du duVar = new du(cellInfo.isRegistered(), true);
                        duVar.f12730a = String.valueOf(cellIdentity4.getMcc());
                        duVar.b = String.valueOf(cellIdentity4.getMnc());
                        duVar.j = cellIdentity4.getLac();
                        duVar.k = cellIdentity4.getCid();
                        duVar.l = cellIdentity4.getPsc();
                        duVar.f12731d = cellInfoWcdma.getCellSignalStrength().getAsuLevel();
                        duVar.c = cellInfoWcdma.getCellSignalStrength().getDbm();
                        obj2 = duVar;
                        if (i >= 24) {
                            duVar.m = cellIdentity4.getUarfcn();
                            obj2 = duVar;
                        }
                    }
                    arrayList.add(obj2);
                }
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final void a(ej ejVar) {
        this.s = ejVar;
    }

    final synchronized void a(List<CellInfo> list) {
        ArrayList<er> arrayList = this.l;
        if (arrayList != null) {
            arrayList.clear();
        }
        if (list != null && list.size() > 0) {
            for (int i = 0; i < list.size(); i++) {
                CellInfo cellInfo = list.get(i);
                if (cellInfo != null) {
                    er erVarA = null;
                    boolean zIsRegistered = cellInfo.isRegistered();
                    if (cellInfo instanceof CellInfoCdma) {
                        erVarA = a((CellInfoCdma) cellInfo, zIsRegistered);
                    } else if (cellInfo instanceof CellInfoGsm) {
                        erVarA = a((CellInfoGsm) cellInfo, zIsRegistered);
                    } else if (cellInfo instanceof CellInfoWcdma) {
                        erVarA = a((CellInfoWcdma) cellInfo, zIsRegistered);
                    } else if (cellInfo instanceof CellInfoLte) {
                        erVarA = a((CellInfoLte) cellInfo, zIsRegistered);
                    } else if (Build.VERSION.SDK_INT >= 29 && (cellInfo instanceof CellInfoNr)) {
                        erVarA = a((CellInfoNr) cellInfo, zIsRegistered);
                    }
                    if (erVarA != null) {
                        this.m.a(erVarA);
                        erVarA.m = (short) Math.min(65535L, this.m.e(erVarA));
                        erVarA.r = true;
                        this.l.add(erVarA);
                    }
                }
            }
            this.i = false;
            ArrayList<er> arrayList2 = this.l;
            if (arrayList2 != null && arrayList2.size() > 0) {
                this.i = true;
            }
        }
    }

    public final void a(boolean z) {
        PhoneStateListener phoneStateListener;
        this.m.a(z);
        this.n = 0L;
        synchronized (this.p) {
            this.o = true;
        }
        TelephonyManager telephonyManager = this.b;
        if (telephonyManager != null && (phoneStateListener = this.c) != null) {
            try {
                telephonyManager.listen(phoneStateListener, 0);
            } catch (Throwable th) {
                fi.a(th, "CgiManager", "destroy");
            }
        }
        this.c = null;
        this.f12839d = null;
        this.b = null;
    }

    public final void a(boolean z, boolean z2) {
        try {
            this.f12840e = fp.a(this.f12843h);
            if (r()) {
                b(z, z2);
                a(s());
                a(t());
            }
            if (this.f12840e) {
                i();
            }
        } catch (SecurityException e2) {
            this.f12842g = e2.getMessage();
        } catch (Throwable th) {
            fi.a(th, "CgiManager", MenuOptions.REFRESH);
        }
    }

    public final synchronized ArrayList<er> b() {
        ArrayList<er> arrayList;
        arrayList = new ArrayList<>();
        ArrayList<er> arrayList2 = this.f12838a;
        if (arrayList2 != null) {
            Iterator<er> it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().clone());
            }
        }
        return arrayList;
    }

    public final synchronized ArrayList<er> c() {
        ArrayList<er> arrayList;
        arrayList = new ArrayList<>();
        ArrayList<er> arrayList2 = this.l;
        if (arrayList2 != null) {
            Iterator<er> it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().clone());
            }
        }
        return arrayList;
    }

    public final synchronized er d() {
        if (this.f12840e) {
            return null;
        }
        ArrayList<er> arrayList = this.f12838a;
        if (arrayList.size() <= 0) {
            return null;
        }
        return arrayList.get(0).clone();
    }

    public final synchronized er e() {
        if (this.f12840e) {
            return null;
        }
        ArrayList<er> arrayList = this.l;
        if (arrayList.size() <= 0) {
            return null;
        }
        for (er erVar : arrayList) {
            if (erVar.n) {
                return erVar.clone();
            }
        }
        return arrayList.get(0).clone();
    }

    public final int f() {
        return p() | (this.i ? 4 : 0) | (this.j ? 8 : 0);
    }

    public final int g() {
        return p() & 3;
    }

    public final TelephonyManager h() {
        return this.b;
    }

    final synchronized void i() {
        this.f12842g = null;
        this.f12838a.clear();
        this.l.clear();
        this.i = false;
        this.j = false;
    }

    public final String j() {
        return this.f12842g;
    }

    public final String k() {
        return this.k;
    }

    public final synchronized String l() {
        if (this.f12840e) {
            i();
        }
        StringBuilder sb = this.f12841f;
        if (sb == null) {
            this.f12841f = new StringBuilder();
        } else {
            sb.delete(0, sb.length());
        }
        if (g() == 1) {
            for (int i = 1; i < this.f12838a.size(); i++) {
                StringBuilder sb2 = this.f12841f;
                sb2.append("#");
                sb2.append(this.f12838a.get(i).b);
                StringBuilder sb3 = this.f12841f;
                sb3.append("|");
                sb3.append(this.f12838a.get(i).c);
                StringBuilder sb4 = this.f12841f;
                sb4.append("|");
                sb4.append(this.f12838a.get(i).f12833d);
            }
        }
        for (int i2 = 1; i2 < this.l.size(); i2++) {
            er erVar = this.l.get(i2);
            int i3 = erVar.l;
            if (i3 == 1 || i3 == 3 || i3 == 4 || i3 == 5) {
                StringBuilder sb5 = this.f12841f;
                sb5.append("#");
                sb5.append(erVar.l);
                StringBuilder sb6 = this.f12841f;
                sb6.append("|");
                sb6.append(erVar.f12832a);
                StringBuilder sb7 = this.f12841f;
                sb7.append("|");
                sb7.append(erVar.b);
                StringBuilder sb8 = this.f12841f;
                sb8.append("|");
                sb8.append(erVar.c);
                StringBuilder sb9 = this.f12841f;
                sb9.append("|");
                sb9.append(erVar.a());
            } else if (i3 == 2) {
                StringBuilder sb10 = this.f12841f;
                sb10.append("#");
                sb10.append(erVar.l);
                StringBuilder sb11 = this.f12841f;
                sb11.append("|");
                sb11.append(erVar.f12832a);
                StringBuilder sb12 = this.f12841f;
                sb12.append("|");
                sb12.append(erVar.f12837h);
                StringBuilder sb13 = this.f12841f;
                sb13.append("|");
                sb13.append(erVar.i);
                StringBuilder sb14 = this.f12841f;
                sb14.append("|");
                sb14.append(erVar.j);
            }
        }
        if (this.f12841f.length() > 0) {
            this.f12841f.deleteCharAt(0);
        }
        return this.f12841f.toString();
    }

    public final boolean m() {
        try {
            TelephonyManager telephonyManager = this.b;
            if (telephonyManager != null && (!TextUtils.isEmpty(telephonyManager.getSimOperator()) || !TextUtils.isEmpty(this.b.getSimCountryIso()))) {
                return true;
            }
        } catch (Throwable unused) {
        }
        try {
            int iA = fp.a(fp.c(this.f12843h));
            return iA == 0 || iA == 4 || iA == 2 || iA == 5 || iA == 3;
        } catch (Throwable unused2) {
            return false;
        }
    }
}
