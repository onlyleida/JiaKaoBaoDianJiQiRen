package com.loc;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.amap.api.fence.GeoFence;
import com.amap.api.fence.GeoFenceListener;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationListener;
import com.amap.api.location.DPoint;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.MyLocationStyle;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechEvent;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"NewApi"})
public final class a {
    private static boolean A = false;
    Context b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    fn f12471a = null;
    PendingIntent c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f12472d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    GeoFenceListener f12473e = null;
    private Object z = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    volatile int f12474f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ArrayList<GeoFence> f12475g = new ArrayList<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    c f12476h = null;
    Object i = new Object();
    Object j = new Object();
    HandlerC0245a k = null;
    b l = null;
    volatile boolean m = false;
    volatile boolean n = false;
    volatile boolean o = false;
    com.loc.b p = null;
    com.loc.c q = null;
    AMapLocationClient r = null;
    volatile AMapLocation s = null;
    long t = 0;
    AMapLocationClientOption u = null;
    int v = 0;
    AMapLocationListener w = new AMapLocationListener() { // from class: com.loc.a.1
        @Override // com.amap.api.location.AMapLocationListener
        public final void onLocationChanged(AMapLocation aMapLocation) {
            boolean z;
            int errorCode;
            try {
                if (!a.this.y && a.this.o) {
                    a.this.s = aMapLocation;
                    if (aMapLocation != null) {
                        errorCode = aMapLocation.getErrorCode();
                        if (aMapLocation.getErrorCode() == 0) {
                            a.this.t = fp.b();
                            a.this.a(5, (Bundle) null, 0L);
                            z = true;
                        } else {
                            a.a("定位失败", aMapLocation.getErrorCode(), aMapLocation.getErrorInfo(), "locationDetail:" + aMapLocation.getLocationDetail());
                            z = false;
                        }
                    } else {
                        z = false;
                        errorCode = 8;
                    }
                    if (z) {
                        a aVar = a.this;
                        aVar.v = 0;
                        aVar.a(6, (Bundle) null, 0L);
                        return;
                    }
                    Bundle bundle = new Bundle();
                    if (!a.this.m) {
                        a.this.b(7);
                        bundle.putLong("interval", SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                        a.this.a(8, bundle, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                    }
                    a aVar2 = a.this;
                    int i = aVar2.v + 1;
                    aVar2.v = i;
                    if (i >= 3) {
                        bundle.putInt(GeoFence.BUNDLE_KEY_LOCERRORCODE, errorCode);
                        a.this.a(1002, bundle);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    };
    final int x = 3;
    volatile boolean y = false;

    /* JADX INFO: renamed from: com.loc.a$a, reason: collision with other inner class name */
    class HandlerC0245a extends Handler {
        public HandlerC0245a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            try {
                switch (message.what) {
                    case 0:
                        a.this.b(message.getData());
                        break;
                    case 1:
                        a.this.c(message.getData());
                        break;
                    case 2:
                        a.this.e(message.getData());
                        break;
                    case 3:
                        a.this.d(message.getData());
                        break;
                    case 4:
                        a.this.f(message.getData());
                        break;
                    case 5:
                        a.this.e();
                        break;
                    case 6:
                        a aVar = a.this;
                        aVar.a(aVar.s);
                        break;
                    case 7:
                        a.this.d();
                        break;
                    case 8:
                        a.this.j(message.getData());
                        break;
                    case 9:
                        a.this.a(message.getData());
                        break;
                    case 10:
                        a.this.c();
                        break;
                    case 11:
                        a.this.h(message.getData());
                        break;
                    case 12:
                        a.this.g(message.getData());
                        break;
                    case 13:
                        a.this.g();
                        break;
                    default:
                        break;
                }
            } catch (Throwable unused) {
            }
        }
    }

    static class b extends HandlerThread {
        public b(String str) {
            super(str);
        }

        @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                super.run();
            } catch (Throwable unused) {
            }
        }
    }

    class c extends Handler {
        public c() {
        }

        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            try {
                Bundle data = message.getData();
                switch (message.what) {
                    case 1000:
                        a.this.i(data);
                        return;
                    case 1001:
                        try {
                            a.this.b((GeoFence) data.getParcelable("geoFence"));
                            return;
                        } catch (Throwable th) {
                            th.printStackTrace();
                            return;
                        }
                    case 1002:
                        try {
                            a.this.c(data.getInt(GeoFence.BUNDLE_KEY_LOCERRORCODE));
                            return;
                        } catch (Throwable th2) {
                            th2.printStackTrace();
                            return;
                        }
                    default:
                        return;
                }
            } catch (Throwable unused) {
            }
        }
    }

    public a(Context context) {
        this.b = null;
        try {
            this.b = context.getApplicationContext();
            j();
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManger", "<init>");
        }
    }

    private static float a(AMapLocation aMapLocation, List<GeoFence> list) {
        float fMin = Float.MAX_VALUE;
        if (aMapLocation != null && aMapLocation.getErrorCode() == 0 && list != null && !list.isEmpty()) {
            DPoint dPoint = new DPoint(aMapLocation.getLatitude(), aMapLocation.getLongitude());
            for (GeoFence geoFence : list) {
                if (geoFence.isAble()) {
                    float fA = fp.a(dPoint, geoFence.getCenter());
                    if (fA > geoFence.getMinDis2Center() && fA < geoFence.getMaxDis2Center()) {
                        return BitmapDescriptorFactory.HUE_RED;
                    }
                    if (fA > geoFence.getMaxDis2Center()) {
                        fMin = Math.min(fMin, fA - geoFence.getMaxDis2Center());
                    }
                    if (fA < geoFence.getMinDis2Center()) {
                        fMin = Math.min(fMin, geoFence.getMinDis2Center() - fA);
                    }
                }
            }
        }
        return fMin;
    }

    static float a(DPoint dPoint, List<DPoint> list) {
        float fMin = Float.MAX_VALUE;
        if (dPoint != null && list != null && !list.isEmpty()) {
            Iterator<DPoint> it = list.iterator();
            while (it.hasNext()) {
                fMin = Math.min(fMin, fp.a(dPoint, it.next()));
            }
        }
        return fMin;
    }

    private int a(List<GeoFence> list) {
        try {
            if (this.f12475g == null) {
                this.f12475g = new ArrayList<>();
            }
            Iterator<GeoFence> it = list.iterator();
            while (it.hasNext()) {
                c(it.next());
            }
            return 0;
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "addGeoFenceList");
            a("添加围栏失败", 8, th.getMessage(), new String[0]);
            return 8;
        }
    }

    private static Bundle a(GeoFence geoFence, String str, String str2, int i, int i2) {
        Bundle bundle = new Bundle();
        if (str == null) {
            str = "";
        }
        bundle.putString(GeoFence.BUNDLE_KEY_FENCEID, str);
        bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str2);
        bundle.putInt(GeoFence.BUNDLE_KEY_FENCESTATUS, i);
        bundle.putInt(GeoFence.BUNDLE_KEY_LOCERRORCODE, i2);
        bundle.putParcelable(GeoFence.BUNDLE_KEY_FENCE, geoFence);
        return bundle;
    }

    private GeoFence a(Bundle bundle, boolean z) {
        GeoFence geoFence = new GeoFence();
        ArrayList arrayList = new ArrayList();
        DPoint dPoint = new DPoint();
        if (z) {
            geoFence.setType(1);
            arrayList = bundle.getParcelableArrayList("pointList");
            if (arrayList != null) {
                dPoint = b(arrayList);
            }
            geoFence.setMaxDis2Center(b(dPoint, arrayList));
            geoFence.setMinDis2Center(a(dPoint, arrayList));
        } else {
            geoFence.setType(0);
            dPoint = (DPoint) bundle.getParcelable("centerPoint");
            if (dPoint != null) {
                arrayList.add(dPoint);
            }
            float f2 = bundle.getFloat("fenceRadius", 1000.0f);
            float f3 = f2 > BitmapDescriptorFactory.HUE_RED ? f2 : 1000.0f;
            geoFence.setRadius(f3);
            geoFence.setMinDis2Center(f3);
            geoFence.setMaxDis2Center(f3);
        }
        geoFence.setActivatesAction(this.f12474f);
        geoFence.setCustomId(bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(arrayList);
        geoFence.setPointList(arrayList2);
        geoFence.setCenter(dPoint);
        geoFence.setPendingIntentAction(this.f12472d);
        geoFence.setExpiration(-1L);
        geoFence.setPendingIntent(this.c);
        StringBuilder sb = new StringBuilder();
        sb.append(com.loc.c.a());
        geoFence.setFenceId(sb.toString());
        fn fnVar = this.f12471a;
        if (fnVar != null) {
            fnVar.a(this.b, 2);
        }
        return geoFence;
    }

    static void a(String str, int i, String str2, String... strArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("===========================================\n");
        stringBuffer.append("              " + str + "                ");
        stringBuffer.append("\n");
        stringBuffer.append("-------------------------------------------\n");
        stringBuffer.append("errorCode:".concat(String.valueOf(i)));
        stringBuffer.append("\n");
        stringBuffer.append("错误信息:".concat(String.valueOf(str2)));
        stringBuffer.append("\n");
        if (strArr.length > 0) {
            for (String str3 : strArr) {
                stringBuffer.append(str3);
                stringBuffer.append("\n");
            }
        }
        stringBuffer.append("===========================================\n");
        Log.i("fenceErrLog", stringBuffer.toString());
    }

    private static boolean a(int i, String str, String str2, DPoint dPoint) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (i != 1) {
            if (i == 2) {
                if (dPoint == null) {
                    return false;
                }
                if (dPoint.getLatitude() > 90.0d || dPoint.getLatitude() < -90.0d || dPoint.getLongitude() > 180.0d || dPoint.getLongitude() < -180.0d) {
                    a("添加围栏失败", 0, "经纬度错误，传入的纬度：" + dPoint.getLatitude() + "传入的经度:" + dPoint.getLongitude(), new String[0]);
                    return false;
                }
            }
        } else if (TextUtils.isEmpty(str2)) {
            return false;
        }
        return true;
    }

    private static boolean a(GeoFence geoFence, int i) {
        boolean z = false;
        if ((i & 1) == 1) {
            try {
                if (geoFence.getStatus() == 1) {
                    z = true;
                }
            } catch (Throwable th) {
                fi.a(th, "Utils", "remindStatus");
                return z;
            }
        }
        if ((i & 2) == 2 && geoFence.getStatus() == 2) {
            z = true;
        }
        return ((i & 4) == 4 && geoFence.getStatus() == 3) ? true : z;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x004a A[Catch: all -> 0x005b, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x005b, blocks: (B:3:0x0002, B:6:0x000a, B:8:0x0010, B:10:0x001a, B:18:0x0029, B:27:0x004a), top: B:38:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0059  */
    private static boolean a(AMapLocation aMapLocation, GeoFence geoFence) {
        boolean z = true;
        boolean z2 = false;
        try {
            if (!fp.a(aMapLocation) || geoFence == null || geoFence.getPointList() == null || geoFence.getPointList().isEmpty()) {
                z = false;
            } else {
                int type = geoFence.getType();
                if (type != 0) {
                    if (type != 1) {
                        if (type != 2) {
                            if (type != 3) {
                            }
                        } else if (!a(aMapLocation, geoFence.getCenter(), geoFence.getRadius())) {
                        }
                        z = false;
                    }
                    Iterator<List<DPoint>> it = geoFence.getPointList().iterator();
                    while (it.hasNext()) {
                        try {
                            if (b(aMapLocation, it.next())) {
                                z2 = true;
                            }
                        } catch (Throwable th) {
                            th = th;
                            z = z2;
                            fi.a(th, "Utils", "isInGeoFence");
                        }
                    }
                    z = z2;
                } else if (!a(aMapLocation, geoFence.getCenter(), geoFence.getRadius())) {
                    z = false;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            z = false;
        }
        return z;
    }

    private static boolean a(AMapLocation aMapLocation, DPoint dPoint, float f2) {
        return fp.a(new double[]{dPoint.getLatitude(), dPoint.getLongitude(), aMapLocation.getLatitude(), aMapLocation.getLongitude()}) <= f2;
    }

    static float b(DPoint dPoint, List<DPoint> list) {
        float fMax = Float.MIN_VALUE;
        if (dPoint != null && list != null && !list.isEmpty()) {
            Iterator<DPoint> it = list.iterator();
            while (it.hasNext()) {
                fMax = Math.max(fMax, fp.a(dPoint, it.next()));
            }
        }
        return fMax;
    }

    private static DPoint b(List<DPoint> list) {
        DPoint dPoint = new DPoint();
        if (list == null) {
            return dPoint;
        }
        try {
            double latitude = 0.0d;
            double longitude = 0.0d;
            for (DPoint dPoint2 : list) {
                latitude += dPoint2.getLatitude();
                longitude += dPoint2.getLongitude();
            }
            return new DPoint(fp.b(latitude / ((double) list.size())), fp.b(longitude / ((double) list.size())));
        } catch (Throwable th) {
            fi.a(th, "GeoFenceUtil", "getPolygonCenter");
            return dPoint;
        }
    }

    private void b(int i, Bundle bundle) {
        String str;
        int iD;
        String str2;
        int i2;
        String str3;
        String str4;
        String strA;
        Bundle bundle2 = new Bundle();
        try {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            if (bundle == null || bundle.isEmpty()) {
                str2 = MyLocationStyle.ERROR_CODE;
                i2 = 1;
            } else {
                List<GeoFence> arrayList2 = new ArrayList<>();
                String string = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                String string2 = bundle.getString("keyWords");
                String string3 = bundle.getString("city");
                String string4 = bundle.getString("poiType");
                DPoint dPoint = (DPoint) bundle.getParcelable("centerPoint");
                int i3 = bundle.getInt("searchSize", 10);
                float f2 = bundle.getFloat("aroundRadius", 3000.0f);
                if (a(i, string2, string4, dPoint)) {
                    Bundle bundle3 = new Bundle();
                    bundle3.putString(GeoFence.BUNDLE_KEY_CUSTOMID, string);
                    bundle3.putString("pendingIntentAction", this.f12472d);
                    str3 = GeoFence.BUNDLE_KEY_CUSTOMID;
                    str4 = MyLocationStyle.ERROR_CODE;
                    try {
                        bundle3.putLong("expiration", -1L);
                        bundle3.putInt("activatesAction", this.f12474f);
                        if (i == 1) {
                            bundle3.putFloat("fenceRadius", 1000.0f);
                            strA = this.p.a(this.b, "http://restsdk.amap.com/v3/place/text?", string2, string4, string3, String.valueOf(i3));
                        } else if (i != 2) {
                            strA = i != 3 ? null : this.p.a(this.b, "http://restsdk.amap.com/v3/config/district?", string2);
                        } else {
                            double dB = fp.b(dPoint.getLatitude());
                            double dB2 = fp.b(dPoint.getLongitude());
                            int iIntValue = Float.valueOf(f2).intValue();
                            bundle3.putFloat("fenceRadius", 200.0f);
                            strA = this.p.a(this.b, "http://restsdk.amap.com/v3/place/around?", string2, string4, String.valueOf(i3), String.valueOf(dB), String.valueOf(dB2), String.valueOf(iIntValue));
                        }
                        if (strA != null) {
                            int iA = 1 == i ? com.loc.c.a(strA, arrayList2, bundle3) : 0;
                            if (2 == i) {
                                iA = com.loc.c.b(strA, arrayList2, bundle3);
                            }
                            if (3 == i) {
                                iA = this.q.c(strA, arrayList2, bundle3);
                            }
                            if (iA != 10000) {
                                iD = d(iA);
                            } else if (arrayList2.isEmpty()) {
                                iD = 16;
                            } else {
                                iD = a(arrayList2);
                                if (iD == 0) {
                                    try {
                                        arrayList.addAll(arrayList2);
                                    } catch (Throwable th) {
                                        th = th;
                                        str = str4;
                                        try {
                                            fi.a(th, "GeoFenceManager", "doAddGeoFenceNearby");
                                            bundle2.putInt(str, 8);
                                            int i4 = 1000;
                                            return;
                                        } finally {
                                            bundle2.putInt(str, iD);
                                            a(1000, bundle2);
                                        }
                                    }
                                }
                            }
                        } else {
                            iD = 4;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        str = str4;
                        iD = 0;
                        fi.a(th, "GeoFenceManager", "doAddGeoFenceNearby");
                        bundle2.putInt(str, 8);
                        int i5 = 1000;
                        return;
                    }
                } else {
                    str3 = GeoFence.BUNDLE_KEY_CUSTOMID;
                    str4 = MyLocationStyle.ERROR_CODE;
                    iD = 1;
                }
                bundle2.putString(str3, string);
                bundle2.putParcelableArrayList("resultList", arrayList);
                i2 = iD;
                str2 = str4;
            }
            bundle2.putInt(str2, i2);
            a(1000, bundle2);
        } catch (Throwable th3) {
            th = th3;
            str = MyLocationStyle.ERROR_CODE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004e  */
    private static boolean b(AMapLocation aMapLocation, GeoFence geoFence) {
        boolean z = true;
        try {
            if (a(aMapLocation, geoFence)) {
                if (geoFence.getEnterTime() == -1) {
                    if (geoFence.getStatus() != 1) {
                        geoFence.setEnterTime(fp.b());
                        geoFence.setStatus(1);
                    } else {
                        z = false;
                    }
                } else if (geoFence.getStatus() == 3 || fp.b() - geoFence.getEnterTime() <= 600000) {
                    z = false;
                } else {
                    geoFence.setStatus(3);
                }
            } else if (geoFence.getStatus() != 2) {
                try {
                    geoFence.setStatus(2);
                    geoFence.setEnterTime(-1L);
                } catch (Throwable th) {
                    th = th;
                    fi.a(th, "Utils", "isFenceStatusChanged");
                }
            } else {
                z = false;
            }
        } catch (Throwable th2) {
            th = th2;
            z = false;
        }
        return z;
    }

    private static boolean b(AMapLocation aMapLocation, List<DPoint> list) {
        if (list.size() < 3) {
            return false;
        }
        return fi.a(new DPoint(aMapLocation.getLatitude(), aMapLocation.getLongitude()), list);
    }

    private int c(GeoFence geoFence) {
        try {
            if (this.f12475g == null) {
                this.f12475g = new ArrayList<>();
            }
            if (this.f12475g.contains(geoFence)) {
                return 17;
            }
            this.f12475g.add(geoFence);
            return 0;
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "addGeoFence2List");
            a("添加围栏失败", 8, th.getMessage(), new String[0]);
            return 8;
        }
    }

    private static int d(int i) {
        if (i != 1 && i != 7 && i != 4 && i != 5 && i != 16 && i != 17) {
            switch (i) {
                case 10000:
                    i = 0;
                    break;
                case 10001:
                case 10002:
                case SpeechEvent.EVENT_IST_CACHE_LEFT /* 10007 */:
                case SpeechEvent.EVENT_IST_RESULT_TIME /* 10008 */:
                case SpeechEvent.EVENT_IST_SYNC_ID /* 10009 */:
                case SpeechEvent.EVENT_VOLUME /* 10012 */:
                case SpeechEvent.EVENT_VAD_EOS /* 10013 */:
                    i = 7;
                    break;
                case 10003:
                case 10004:
                case Videoio.CAP_PROP_GIGA_FRAME_SENS_WIDTH /* 10005 */:
                case 10006:
                case SpeechEvent.EVENT_SESSION_BEGIN /* 10010 */:
                case SpeechEvent.EVENT_SESSION_END /* 10011 */:
                case 10014:
                case 10015:
                case 10016:
                case 10017:
                    i = 4;
                    break;
                default:
                    switch (i) {
                        case Constant.DEFAULT_SECURITY_VERIFY_TIMEOUT /* 20000 */:
                        case 20001:
                        case ErrorCode.ERROR_NETWORK_TIMEOUT /* 20002 */:
                            i = 1;
                            break;
                        case ErrorCode.ERROR_NET_EXCEPTION /* 20003 */:
                        default:
                            i = 8;
                            break;
                    }
                    break;
            }
        }
        if (i != 0) {
            a("添加围栏失败", i, "searchErrCode is ".concat(String.valueOf(i)), new String[0]);
        }
        return i;
    }

    private void d(GeoFence geoFence) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("geoFence", geoFence);
        a(1001, bundle);
    }

    private void j() {
        if (!this.o) {
            this.o = true;
        }
        if (this.n) {
            return;
        }
        try {
            this.f12476h = Looper.myLooper() == null ? new c(this.b.getMainLooper()) : new c();
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManger", "init 1");
        }
        try {
            b bVar = new b("fenceActionThread");
            this.l = bVar;
            bVar.setPriority(5);
            this.l.start();
            this.k = new HandlerC0245a(this.l.getLooper());
        } catch (Throwable th2) {
            fi.a(th2, "GeoFenceManger", "init 2");
        }
        try {
            this.p = new com.loc.b(this.b);
            this.q = new com.loc.c();
            this.u = new AMapLocationClientOption();
            this.r = new AMapLocationClient(this.b);
            this.u.setLocationCacheEnable(true);
            this.u.setNeedAddress(false);
            this.r.setLocationListener(this.w);
            if (this.f12471a == null) {
                this.f12471a = new fn();
            }
        } catch (Throwable th3) {
            fi.a(th3, "GeoFenceManger", "initBase");
        }
        this.n = true;
        try {
            String str = this.f12472d;
            if (str != null && this.c == null) {
                a(str);
            }
        } catch (Throwable th4) {
            fi.a(th4, "GeoFenceManger", "init 4");
        }
        if (A) {
            return;
        }
        A = true;
        fn.a(this.b, "O020", (JSONObject) null);
    }

    private boolean k() {
        ArrayList<GeoFence> arrayList = this.f12475g;
        if (arrayList == null || arrayList.isEmpty()) {
            return true;
        }
        Iterator<GeoFence> it = this.f12475g.iterator();
        while (it.hasNext()) {
            if (it.next().isAble()) {
                return false;
            }
        }
        return true;
    }

    private void l() {
        try {
            synchronized (this.j) {
                c cVar = this.f12476h;
                if (cVar != null) {
                    cVar.removeCallbacksAndMessages(null);
                }
                this.f12476h = null;
            }
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "destroyResultHandler");
        }
    }

    private void m() {
        try {
            synchronized (this.i) {
                HandlerC0245a handlerC0245a = this.k;
                if (handlerC0245a != null) {
                    handlerC0245a.removeCallbacksAndMessages(null);
                }
                this.k = null;
            }
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "destroyActionHandler");
        }
    }

    private void n() {
        if (this.y || this.k == null) {
            return;
        }
        if (p()) {
            a(6, (Bundle) null, 0L);
            a(5, (Bundle) null, 0L);
        } else {
            b(7);
            a(7, (Bundle) null, 0L);
        }
    }

    private void o() {
        try {
            if (this.m) {
                b(8);
            }
            AMapLocationClient aMapLocationClient = this.r;
            if (aMapLocationClient != null) {
                aMapLocationClient.stopLocation();
            }
            this.m = false;
        } catch (Throwable unused) {
        }
    }

    private boolean p() {
        return this.s != null && fp.a(this.s) && fp.b() - this.t < 10000;
    }

    public final PendingIntent a(String str) {
        synchronized (this.z) {
            try {
                Intent intent = new Intent(str);
                intent.setPackage(k.c(this.b));
                this.c = PendingIntent.getBroadcast(this.b, 0, intent, 0);
                this.f12472d = str;
                ArrayList<GeoFence> arrayList = this.f12475g;
                if (arrayList != null && !arrayList.isEmpty()) {
                    for (GeoFence geoFence : this.f12475g) {
                        geoFence.setPendingIntent(this.c);
                        geoFence.setPendingIntentAction(this.f12472d);
                    }
                }
            } catch (Throwable th) {
                fi.a(th, "GeoFenceManager", "createPendingIntent");
            }
        }
        return this.c;
    }

    public final void a() {
        try {
            this.o = false;
            a(10, (Bundle) null, 0L);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "removeGeoFence");
        }
    }

    public final void a(int i) {
        try {
            j();
            if (i > 7 || i <= 0) {
                i = 1;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("activatesAction", i);
            a(9, bundle, 0L);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "setActivateAction");
        }
    }

    final void a(int i, Bundle bundle) {
        try {
            synchronized (this.j) {
                c cVar = this.f12476h;
                if (cVar != null) {
                    Message messageObtainMessage = cVar.obtainMessage();
                    messageObtainMessage.what = i;
                    messageObtainMessage.setData(bundle);
                    this.f12476h.sendMessage(messageObtainMessage);
                }
            }
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "sendResultHandlerMessage");
        }
    }

    final void a(int i, Bundle bundle, long j) {
        try {
            synchronized (this.i) {
                HandlerC0245a handlerC0245a = this.k;
                if (handlerC0245a != null) {
                    Message messageObtainMessage = handlerC0245a.obtainMessage();
                    messageObtainMessage.what = i;
                    messageObtainMessage.setData(bundle);
                    this.k.sendMessageDelayed(messageObtainMessage, j);
                }
            }
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "sendActionHandlerMessage");
        }
    }

    final void a(Bundle bundle) {
        int i = 1;
        if (bundle != null) {
            try {
                i = bundle.getInt("activatesAction", 1);
            } catch (Throwable th) {
                fi.a(th, "GeoFenceManager", "doSetActivatesAction");
                return;
            }
        }
        if (this.f12474f != i) {
            ArrayList<GeoFence> arrayList = this.f12475g;
            if (arrayList != null && !arrayList.isEmpty()) {
                for (GeoFence geoFence : this.f12475g) {
                    geoFence.setStatus(0);
                    geoFence.setEnterTime(-1L);
                }
            }
            n();
        }
        this.f12474f = i;
    }

    public final void a(GeoFenceListener geoFenceListener) {
        try {
            this.f12473e = geoFenceListener;
        } catch (Throwable unused) {
        }
    }

    final void a(AMapLocation aMapLocation) {
        ArrayList<GeoFence> arrayList;
        try {
            if (this.y || (arrayList = this.f12475g) == null || arrayList.isEmpty() || aMapLocation == null || aMapLocation.getErrorCode() != 0) {
                return;
            }
            for (GeoFence geoFence : this.f12475g) {
                if (geoFence.isAble() && b(aMapLocation, geoFence) && a(geoFence, this.f12474f)) {
                    geoFence.setCurrentLocation(aMapLocation);
                    d(geoFence);
                }
            }
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "doCheckFence");
        }
    }

    public final void a(DPoint dPoint, float f2, String str) {
        try {
            j();
            Bundle bundle = new Bundle();
            bundle.putParcelable("centerPoint", dPoint);
            bundle.putFloat("fenceRadius", f2);
            bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
            a(0, bundle, 0L);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "addRoundGeoFence");
        }
    }

    public final void a(String str, String str2) {
        try {
            j();
            Bundle bundle = new Bundle();
            bundle.putString("keyWords", str);
            bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str2);
            a(4, bundle, 0L);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "addDistricetGeoFence");
        }
    }

    public final void a(String str, String str2, DPoint dPoint, float f2, int i, String str3) {
        try {
            j();
            if (f2 <= BitmapDescriptorFactory.HUE_RED || f2 > 50000.0f) {
                f2 = 3000.0f;
            }
            if (i <= 0) {
                i = 10;
            }
            if (i > 25) {
                i = 25;
            }
            Bundle bundle = new Bundle();
            bundle.putString("keyWords", str);
            bundle.putString("poiType", str2);
            bundle.putParcelable("centerPoint", dPoint);
            bundle.putFloat("aroundRadius", f2);
            bundle.putInt("searchSize", i);
            bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str3);
            a(3, bundle, 0L);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "addNearbyGeoFence");
        }
    }

    public final void a(String str, String str2, String str3, int i, String str4) {
        try {
            j();
            if (i <= 0) {
                i = 10;
            }
            if (i > 25) {
                i = 25;
            }
            Bundle bundle = new Bundle();
            bundle.putString("keyWords", str);
            bundle.putString("poiType", str2);
            bundle.putString("city", str3);
            bundle.putInt("searchSize", i);
            bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str4);
            a(2, bundle, 0L);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "addKeywordGeoFence");
        }
    }

    public final void a(String str, boolean z) {
        try {
            j();
            Bundle bundle = new Bundle();
            bundle.putString("fid", str);
            bundle.putBoolean("ab", z);
            a(12, bundle, 0L);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "setGeoFenceAble");
        }
    }

    public final void a(List<DPoint> list, String str) {
        try {
            j();
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList("pointList", new ArrayList<>(list));
            bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
            a(1, bundle, 0L);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "addPolygonGeoFence");
        }
    }

    public final boolean a(GeoFence geoFence) {
        try {
            ArrayList<GeoFence> arrayList = this.f12475g;
            if (arrayList != null && !arrayList.isEmpty()) {
                if (!this.f12475g.contains(geoFence)) {
                    return false;
                }
                if (this.f12475g.size() == 1) {
                    this.o = false;
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable("fc", geoFence);
                a(11, bundle, 0L);
                return true;
            }
            this.o = false;
            a(10, (Bundle) null, 0L);
            return true;
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "removeGeoFence(GeoFence)");
            return false;
        }
    }

    public final List<GeoFence> b() {
        try {
            if (this.f12475g == null) {
                this.f12475g = new ArrayList<>();
            }
            return (ArrayList) this.f12475g.clone();
        } catch (Throwable unused) {
            return new ArrayList();
        }
    }

    final void b(int i) {
        try {
            synchronized (this.i) {
                HandlerC0245a handlerC0245a = this.k;
                if (handlerC0245a != null) {
                    handlerC0245a.removeMessages(i);
                }
            }
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "removeActionHandlerMessage");
        }
    }

    final void b(Bundle bundle) {
        String string;
        try {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            String str = "";
            int iC = 1;
            if (bundle == null || bundle.isEmpty()) {
                string = str;
            } else {
                DPoint dPoint = (DPoint) bundle.getParcelable("centerPoint");
                string = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                if (dPoint == null) {
                    str = string;
                    string = str;
                } else if (dPoint.getLatitude() > 90.0d || dPoint.getLatitude() < -90.0d || dPoint.getLongitude() > 180.0d || dPoint.getLongitude() < -180.0d) {
                    a("添加围栏失败", 1, "经纬度错误，传入的纬度：" + dPoint.getLatitude() + "传入的经度:" + dPoint.getLongitude(), new String[0]);
                } else {
                    GeoFence geoFenceA = a(bundle, false);
                    iC = c(geoFenceA);
                    if (iC == 0) {
                        arrayList.add(geoFenceA);
                    }
                }
            }
            Bundle bundle2 = new Bundle();
            bundle2.putInt(MyLocationStyle.ERROR_CODE, iC);
            bundle2.putParcelableArrayList("resultList", arrayList);
            bundle2.putString(GeoFence.BUNDLE_KEY_CUSTOMID, string);
            a(1000, bundle2);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "doAddGeoFenceRound");
        }
    }

    final void b(GeoFence geoFence) {
        PendingIntent pendingIntent;
        Context context;
        try {
            synchronized (this.z) {
                if (this.b != null) {
                    if (this.c == null && geoFence.getPendingIntent() == null) {
                        return;
                    }
                    Intent intent = new Intent();
                    intent.putExtras(a(geoFence, geoFence.getFenceId(), geoFence.getCustomId(), geoFence.getStatus(), 0));
                    String str = this.f12472d;
                    if (str != null) {
                        intent.setAction(str);
                    }
                    intent.setPackage(k.c(this.b));
                    if (geoFence.getPendingIntent() != null) {
                        pendingIntent = geoFence.getPendingIntent();
                        context = this.b;
                    } else {
                        pendingIntent = this.c;
                        context = this.b;
                    }
                    pendingIntent.send(context, 0, intent);
                }
            }
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "resultTriggerGeoFence");
        }
    }

    final void c() {
        try {
            if (!this.n) {
                return;
            }
            ArrayList<GeoFence> arrayList = this.f12475g;
            if (arrayList != null) {
                arrayList.clear();
                this.f12475g = null;
            }
            if (this.o) {
                return;
            }
            m();
            AMapLocationClient aMapLocationClient = this.r;
            if (aMapLocationClient != null) {
                aMapLocationClient.stopLocation();
                this.r.onDestroy();
            }
            this.r = null;
            b bVar = this.l;
            if (bVar != null) {
                if (Build.VERSION.SDK_INT >= 18) {
                    bVar.quitSafely();
                } else {
                    bVar.quit();
                }
            }
            this.l = null;
            this.p = null;
            synchronized (this.z) {
                PendingIntent pendingIntent = this.c;
                if (pendingIntent != null) {
                    pendingIntent.cancel();
                }
                this.c = null;
            }
            l();
            fn fnVar = this.f12471a;
            if (fnVar != null) {
                fnVar.b(this.b);
            }
        } catch (Throwable unused) {
        }
        this.m = false;
        this.n = false;
    }

    final void c(int i) {
        try {
            if (this.b != null) {
                synchronized (this.z) {
                    if (this.c == null) {
                        return;
                    }
                    Intent intent = new Intent();
                    intent.putExtras(a((GeoFence) null, (String) null, (String) null, 4, i));
                    this.c.send(this.b, 0, intent);
                }
            }
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "resultRemindLocationError");
        }
    }

    final void c(Bundle bundle) {
        GeoFence geoFenceA;
        try {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            String str = "";
            int iC = 1;
            if (bundle != null && !bundle.isEmpty()) {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList("pointList");
                String string = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                if (parcelableArrayList != null && parcelableArrayList.size() > 2 && (iC = c((geoFenceA = a(bundle, true)))) == 0) {
                    arrayList.add(geoFenceA);
                }
                str = string;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
            bundle2.putInt(MyLocationStyle.ERROR_CODE, iC);
            bundle2.putParcelableArrayList("resultList", arrayList);
            a(1000, bundle2);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "doAddGeoFencePolygon");
        }
    }

    final void d() {
        try {
            if (this.r != null) {
                o();
                this.u.setOnceLocation(true);
                this.r.setLocationOption(this.u);
                this.r.startLocation();
            }
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "doStartOnceLocation");
        }
    }

    final void d(Bundle bundle) {
        b(2, bundle);
    }

    final void e() {
        try {
            if (!this.y && fp.a(this.s)) {
                float fA = a(this.s, this.f12475g);
                if (fA == Float.MAX_VALUE) {
                    return;
                }
                if (fA < 1000.0f) {
                    b(7);
                    Bundle bundle = new Bundle();
                    bundle.putLong("interval", SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                    a(8, bundle, 500L);
                    return;
                }
                if (fA < 5000.0f) {
                    o();
                    b(7);
                    a(7, (Bundle) null, 10000L);
                } else {
                    o();
                    b(7);
                    a(7, (Bundle) null, (long) (((fA - 4000.0f) / 100.0f) * 1000.0f));
                }
            }
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "doCheckLocationPolicy");
        }
    }

    final void e(Bundle bundle) {
        b(1, bundle);
    }

    public final void f() {
        try {
            j();
            this.y = true;
            a(13, (Bundle) null, 0L);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "pauseGeoFence");
        }
    }

    final void f(Bundle bundle) {
        b(3, bundle);
    }

    final void g() {
        try {
            b(7);
            b(8);
            AMapLocationClient aMapLocationClient = this.r;
            if (aMapLocationClient != null) {
                aMapLocationClient.stopLocation();
            }
            this.m = false;
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "doPauseGeoFence");
        }
    }

    final void g(Bundle bundle) {
        if (bundle != null) {
            try {
                if (bundle.isEmpty()) {
                    return;
                }
                String string = bundle.getString("fid");
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                boolean z = bundle.getBoolean("ab", true);
                ArrayList<GeoFence> arrayList = this.f12475g;
                if (arrayList != null && !arrayList.isEmpty()) {
                    for (GeoFence geoFence : this.f12475g) {
                        if (geoFence.getFenceId().equals(string)) {
                            geoFence.setAble(z);
                            break;
                        }
                    }
                }
                if (z) {
                    n();
                } else if (k()) {
                    g();
                }
            } catch (Throwable th) {
                fi.a(th, "GeoFenceManager", "doSetGeoFenceAble");
            }
        }
    }

    public final void h() {
        try {
            j();
            if (this.y) {
                this.y = false;
                n();
            }
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "resumeGeoFence");
        }
    }

    final void h(Bundle bundle) {
        try {
            if (this.f12475g != null) {
                GeoFence geoFence = (GeoFence) bundle.getParcelable("fc");
                if (this.f12475g.contains(geoFence)) {
                    this.f12475g.remove(geoFence);
                }
                if (this.f12475g.size() <= 0) {
                    c();
                } else {
                    n();
                }
            }
        } catch (Throwable unused) {
        }
    }

    final void i(Bundle bundle) {
        if (bundle != null) {
            try {
                if (bundle.isEmpty()) {
                    return;
                }
                int i = bundle.getInt(MyLocationStyle.ERROR_CODE);
                ArrayList parcelableArrayList = bundle.getParcelableArrayList("resultList");
                if (parcelableArrayList == null) {
                    parcelableArrayList = new ArrayList();
                }
                String string = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                if (string == null) {
                    string = "";
                }
                GeoFenceListener geoFenceListener = this.f12473e;
                if (geoFenceListener != null) {
                    geoFenceListener.onGeoFenceCreateFinished((ArrayList) parcelableArrayList.clone(), i, string);
                }
                if (i == 0) {
                    n();
                }
            } catch (Throwable th) {
                fi.a(th, "GeoFenceManager", "resultAddGeoFenceFinished");
            }
        }
    }

    public final boolean i() {
        return this.y;
    }

    final void j(Bundle bundle) {
        try {
            if (this.r != null) {
                long j = SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
                if (bundle != null && !bundle.isEmpty()) {
                    j = bundle.getLong("interval", SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                }
                this.u.setOnceLocation(false);
                this.u.setInterval(j);
                this.r.setLocationOption(this.u);
                if (this.m) {
                    return;
                }
                this.r.stopLocation();
                this.r.startLocation();
                this.m = true;
            }
        } catch (Throwable th) {
            fi.a(th, "GeoFenceManager", "doStartContinueLocation");
        }
    }
}
