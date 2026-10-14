package com.loc;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.DPoint;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.iflytek.cloud.SpeechConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class g {
    static AMapLocation j = null;
    static long k = 0;
    static Object l = new Object();
    static long q = 0;
    static boolean t = false;
    static boolean u = false;
    public static volatile AMapLocation y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Handler f12935a;
    LocationManager b;
    AMapLocationClientOption c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    em f12938f;
    private Context z;
    private long A = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f12936d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f12937e = false;
    private int B = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f12939g = 240;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f12940h = 80;
    AMapLocation i = null;
    long m = 0;
    float n = BitmapDescriptorFactory.HUE_RED;
    Object o = new Object();
    Object p = new Object();
    AMapLocationClientOption.GeoLanguage r = AMapLocationClientOption.GeoLanguage.DEFAULT;
    boolean s = true;
    long v = 0;
    int w = 0;
    LocationListener x = null;
    private int C = 0;
    private GpsStatus D = null;
    private GpsStatus.Listener E = new GpsStatus.Listener() { // from class: com.loc.g.1
        @Override // android.location.GpsStatus.Listener
        public final void onGpsStatusChanged(int i) {
            Iterable<GpsSatellite> satellites;
            try {
                g gVar = g.this;
                LocationManager locationManager = gVar.b;
                if (locationManager == null) {
                    return;
                }
                gVar.D = locationManager.getGpsStatus(gVar.D);
                int i2 = 0;
                if (i == 2) {
                    g.this.C = 0;
                    return;
                }
                if (i != 4) {
                    return;
                }
                try {
                    if (g.this.D != null && (satellites = g.this.D.getSatellites()) != null) {
                        Iterator<GpsSatellite> it = satellites.iterator();
                        int maxSatellites = g.this.D.getMaxSatellites();
                        while (it.hasNext() && i2 < maxSatellites) {
                            if (it.next().usedInFix()) {
                                i2++;
                            }
                        }
                    }
                } catch (Throwable th) {
                    fi.a(th, "GpsLocation", "GPS_EVENT_SATELLITE_STATUS");
                }
                g.this.C = i2;
            } catch (Throwable th2) {
                fi.a(th2, "GpsLocation", "onGpsStatusChanged");
            }
        }
    };
    private String F = null;
    private boolean G = false;
    private int H = 0;
    private boolean I = false;

    static class a implements LocationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private g f12942a;

        a(g gVar) {
            this.f12942a = gVar;
        }

        final void a() {
            this.f12942a = null;
        }

        @Override // android.location.LocationListener
        public final void onLocationChanged(Location location) {
            try {
                g gVar = this.f12942a;
                if (gVar != null) {
                    gVar.a(location);
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.location.LocationListener
        public final void onProviderDisabled(String str) {
            try {
                g gVar = this.f12942a;
                if (gVar != null) {
                    gVar.a(str);
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.location.LocationListener
        public final void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onStatusChanged(String str, int i, Bundle bundle) {
            try {
                g gVar = this.f12942a;
                if (gVar != null) {
                    gVar.a(i);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public g(Context context, Handler handler) {
        this.f12938f = null;
        this.z = context;
        this.f12935a = handler;
        try {
            this.b = (LocationManager) context.getSystemService("location");
        } catch (Throwable th) {
            fi.a(th, "GpsLocation", "<init>");
        }
        this.f12938f = new em();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        if (i == 0) {
            try {
                this.f12936d = 0L;
                this.C = 0;
            } catch (Throwable unused) {
            }
        }
    }

    private void a(int i, int i2, String str, long j2) {
        try {
            if (this.f12935a == null || this.c.getLocationMode() != AMapLocationClientOption.AMapLocationMode.Device_Sensors) {
                return;
            }
            Message messageObtain = Message.obtain();
            AMapLocation aMapLocation = new AMapLocation("");
            aMapLocation.setProvider("gps");
            aMapLocation.setErrorCode(i2);
            aMapLocation.setLocationDetail(str);
            aMapLocation.setLocationType(1);
            messageObtain.obj = aMapLocation;
            messageObtain.what = i;
            this.f12935a.sendMessageDelayed(messageObtain, j2);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Location location) {
        Handler handler = this.f12935a;
        if (handler != null) {
            handler.removeMessages(8);
        }
        if (location == null) {
            return;
        }
        try {
            AMapLocation aMapLocation = new AMapLocation(location);
            if (fp.a(aMapLocation)) {
                aMapLocation.setProvider("gps");
                aMapLocation.setLocationType(1);
                if (!this.f12937e && fp.a(aMapLocation)) {
                    fn.a(this.z, fp.b() - this.A, fi.a(aMapLocation.getLatitude(), aMapLocation.getLongitude()));
                    this.f12937e = true;
                }
                if (fp.a(location, this.C)) {
                    aMapLocation.setMock(true);
                    aMapLocation.setTrustedLevel(4);
                    if (!this.c.isMockEnable()) {
                        int i = this.w;
                        if (i <= 3) {
                            this.w = i + 1;
                            return;
                        }
                        fn.a((String) null, 2152);
                        aMapLocation.setErrorCode(15);
                        aMapLocation.setLocationDetail("GpsLocation has been mocked!#1501");
                        aMapLocation.setLatitude(0.0d);
                        aMapLocation.setLongitude(0.0d);
                        aMapLocation.setAltitude(0.0d);
                        aMapLocation.setSpeed(BitmapDescriptorFactory.HUE_RED);
                        aMapLocation.setAccuracy(BitmapDescriptorFactory.HUE_RED);
                        aMapLocation.setBearing(BitmapDescriptorFactory.HUE_RED);
                        aMapLocation.setExtras(null);
                        c(aMapLocation);
                        return;
                    }
                } else {
                    this.w = 0;
                }
                aMapLocation.setSatellites(this.C);
                e(aMapLocation);
                f(aMapLocation);
                h(aMapLocation);
                AMapLocation aMapLocationG = g(aMapLocation);
                a(aMapLocationG);
                b(aMapLocationG);
                synchronized (this.o) {
                    a(aMapLocationG, y);
                }
                try {
                    if (fp.a(aMapLocationG)) {
                        if (this.i != null) {
                            this.m = location.getTime() - this.i.getTime();
                            this.n = fp.a(this.i, aMapLocationG);
                        }
                        synchronized (this.p) {
                            this.i = aMapLocationG.m123clone();
                        }
                        this.F = null;
                        this.G = false;
                        this.H = 0;
                    }
                } catch (Throwable th) {
                    fi.a(th, "GpsLocation", "onLocationChangedLast");
                }
                c(aMapLocationG);
            }
        } catch (Throwable th2) {
            fi.a(th2, "GpsLocation", "onLocationChanged");
        }
    }

    private void a(AMapLocation aMapLocation) {
        if (fp.a(aMapLocation)) {
            this.f12936d = fp.b();
            synchronized (l) {
                k = fp.b();
                j = aMapLocation.m123clone();
            }
            this.B++;
        }
    }

    private void a(AMapLocation aMapLocation, AMapLocation aMapLocation2) {
        if (aMapLocation2 == null || !this.c.isNeedAddress() || fp.a(aMapLocation, aMapLocation2) >= this.f12939g) {
            return;
        }
        fi.a(aMapLocation, aMapLocation2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        try {
            if ("gps".equalsIgnoreCase(str)) {
                this.f12936d = 0L;
                this.C = 0;
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean a(LocationManager locationManager) {
        try {
            if (t) {
                return u;
            }
            List<String> allProviders = locationManager.getAllProviders();
            if (allProviders == null || allProviders.size() <= 0) {
                u = false;
            } else {
                u = allProviders.contains("gps");
            }
            t = true;
            return u;
        } catch (Throwable unused) {
            return u;
        }
    }

    private void b(AMapLocation aMapLocation) {
        if (fp.a(aMapLocation) && this.f12935a != null) {
            long jB = fp.b();
            if (this.c.getInterval() <= 8000 || jB - this.v > this.c.getInterval() - 8000) {
                Bundle bundle = new Bundle();
                bundle.putDouble("lat", aMapLocation.getLatitude());
                bundle.putDouble("lon", aMapLocation.getLongitude());
                bundle.putFloat("radius", aMapLocation.getAccuracy());
                bundle.putLong("time", aMapLocation.getTime());
                Message messageObtain = Message.obtain();
                messageObtain.setData(bundle);
                messageObtain.what = 5;
                synchronized (this.o) {
                    if (y == null || fp.a(aMapLocation, y) > this.f12940h) {
                        Handler handler = this.f12935a;
                        handler.sendMessage(messageObtain);
                    }
                }
            }
        }
    }

    private boolean b(String str) {
        try {
            ArrayList<String> arrayListB = fp.b(str);
            ArrayList<String> arrayListB2 = fp.b(this.F);
            if (arrayListB.size() < 8 || arrayListB2.size() < 8) {
                return false;
            }
            return fp.a(this.F, str);
        } catch (Throwable unused) {
            return false;
        }
    }

    private void c(AMapLocation aMapLocation) {
        if (aMapLocation.getErrorCode() != 15 || AMapLocationClientOption.AMapLocationMode.Device_Sensors.equals(this.c.getLocationMode())) {
            if (this.c.getLocationMode().equals(AMapLocationClientOption.AMapLocationMode.Device_Sensors) && this.c.getDeviceModeDistanceFilter() > BitmapDescriptorFactory.HUE_RED) {
                d(aMapLocation);
            } else if (fp.b() - this.v >= this.c.getInterval() - 200) {
                this.v = fp.b();
                d(aMapLocation);
            }
        }
    }

    private void d(AMapLocation aMapLocation) {
        if (this.f12935a != null) {
            Message messageObtain = Message.obtain();
            messageObtain.obj = aMapLocation;
            messageObtain.what = 2;
            this.f12935a.sendMessage(messageObtain);
        }
    }

    private void e(AMapLocation aMapLocation) {
        try {
            if (!fi.a(aMapLocation.getLatitude(), aMapLocation.getLongitude()) || !this.c.isOffset()) {
                aMapLocation.setOffset(false);
                aMapLocation.setCoordType(AMapLocation.COORD_TYPE_WGS84);
                return;
            }
            DPoint dPointA = fk.a(this.z, new DPoint(aMapLocation.getLatitude(), aMapLocation.getLongitude()));
            aMapLocation.setLatitude(dPointA.getLatitude());
            aMapLocation.setLongitude(dPointA.getLongitude());
            aMapLocation.setOffset(this.c.isOffset());
            aMapLocation.setCoordType(AMapLocation.COORD_TYPE_GCJ02);
        } catch (Throwable unused) {
            aMapLocation.setOffset(false);
            aMapLocation.setCoordType(AMapLocation.COORD_TYPE_WGS84);
        }
    }

    private void f(AMapLocation aMapLocation) {
        try {
            int i = this.C;
            if (i >= 4) {
                aMapLocation.setGpsAccuracyStatus(1);
            } else if (i == 0) {
                aMapLocation.setGpsAccuracyStatus(-1);
            } else {
                aMapLocation.setGpsAccuracyStatus(0);
            }
        } catch (Throwable unused) {
        }
    }

    private AMapLocation g(AMapLocation aMapLocation) {
        if (!fp.a(aMapLocation) || this.B < 3) {
            return aMapLocation;
        }
        if (aMapLocation.getAccuracy() < BitmapDescriptorFactory.HUE_RED || aMapLocation.getAccuracy() == Float.MAX_VALUE) {
            aMapLocation.setAccuracy(BitmapDescriptorFactory.HUE_RED);
        }
        if (aMapLocation.getSpeed() < BitmapDescriptorFactory.HUE_RED || aMapLocation.getSpeed() == Float.MAX_VALUE) {
            aMapLocation.setSpeed(BitmapDescriptorFactory.HUE_RED);
        }
        return this.f12938f.a(aMapLocation);
    }

    private void g() {
        LocationManager locationManager;
        String str;
        long interval;
        float deviceModeDistanceFilter;
        LocationListener locationListener;
        if (this.b == null) {
            return;
        }
        try {
            h();
            this.s = true;
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper == null) {
                looperMyLooper = this.z.getMainLooper();
            }
            Looper looper = looperMyLooper;
            this.A = fp.b();
            if (!a(this.b)) {
                a(8, 14, "no gps provider#1402", 0L);
                return;
            }
            try {
                if (fp.a() - q >= 259200000) {
                    this.b.sendExtraCommand("gps", "force_xtra_injection", null);
                    q = fp.a();
                    SharedPreferences.Editor editorA = fo.a(this.z, "pref");
                    fo.a(editorA, "lagt", q);
                    fo.a(editorA);
                }
            } catch (Throwable unused) {
            }
            if (this.x == null) {
                this.x = new a(this);
            }
            if (!this.c.getLocationMode().equals(AMapLocationClientOption.AMapLocationMode.Device_Sensors) || this.c.getDeviceModeDistanceFilter() <= BitmapDescriptorFactory.HUE_RED) {
                locationManager = this.b;
                str = "gps";
                interval = 900;
                deviceModeDistanceFilter = BitmapDescriptorFactory.HUE_RED;
                locationListener = this.x;
            } else {
                locationManager = this.b;
                str = "gps";
                interval = this.c.getInterval();
                deviceModeDistanceFilter = this.c.getDeviceModeDistanceFilter();
                locationListener = this.x;
            }
            locationManager.requestLocationUpdates(str, interval, deviceModeDistanceFilter, locationListener, looper);
            this.b.addGpsStatusListener(this.E);
            a(8, 14, "no enough satellites#1401", this.c.getHttpTimeOut());
        } catch (SecurityException e2) {
            this.s = false;
            fn.a((String) null, 2121);
            a(2, 12, e2.getMessage() + "#1201", 0L);
        } catch (Throwable th) {
            fi.a(th, "GpsLocation", "requestLocationUpdates part2");
        }
    }

    private void h() {
        if (fp.b() - k > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS || !fp.a(j)) {
            return;
        }
        if (this.c.isMockEnable() || !j.isMock()) {
            this.f12936d = fp.b();
            c(j);
        }
    }

    private static void h(AMapLocation aMapLocation) {
        if (fp.a(aMapLocation) && fh.r()) {
            long time = aMapLocation.getTime();
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jA = fj.a(time, jCurrentTimeMillis, fh.s());
            if (jA != time) {
                aMapLocation.setTime(jA);
                fn.a(time, jCurrentTimeMillis);
            }
        }
    }

    private static boolean i() {
        try {
            return ((Boolean) fl.a(w.c("KY29tLmFtYXAuYXBpLm5hdmkuQU1hcE5hdmk="), w.c("UaXNOYXZpU3RhcnRlZA=="), (Object[]) null, (Class<?>[]) null)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    private AMapLocation j() {
        float f2;
        float f3;
        try {
            if (fp.a(this.i) && fh.j() && i()) {
                JSONObject jSONObject = new JSONObject((String) fl.a(w.c("KY29tLmFtYXAuYXBpLm5hdmkuQU1hcE5hdmk="), w.c("UZ2V0TmF2aUxvY2F0aW9u"), (Object[]) null, (Class<?>[]) null));
                long jOptLong = jSONObject.optLong("time");
                if (!this.I) {
                    this.I = true;
                    fn.a("useNaviLoc", "use NaviLoc");
                }
                if (fp.a() - jOptLong <= 5500) {
                    double dOptDouble = jSONObject.optDouble("lat", 0.0d);
                    double dOptDouble2 = jSONObject.optDouble("lng", 0.0d);
                    float f4 = BitmapDescriptorFactory.HUE_RED;
                    try {
                        f2 = Float.parseFloat(jSONObject.optString("accuracy", "0"));
                    } catch (NumberFormatException unused) {
                        f2 = BitmapDescriptorFactory.HUE_RED;
                    }
                    double dOptDouble3 = jSONObject.optDouble("altitude", 0.0d);
                    try {
                        f3 = Float.parseFloat(jSONObject.optString("bearing", "0"));
                    } catch (NumberFormatException unused2) {
                        f3 = BitmapDescriptorFactory.HUE_RED;
                    }
                    try {
                        f4 = (Float.parseFloat(jSONObject.optString(SpeechConstant.SPEED, "0")) * 10.0f) / 36.0f;
                    } catch (NumberFormatException unused3) {
                    }
                    AMapLocation aMapLocation = new AMapLocation("lbs");
                    aMapLocation.setLocationType(9);
                    aMapLocation.setLatitude(dOptDouble);
                    aMapLocation.setLongitude(dOptDouble2);
                    aMapLocation.setAccuracy(f2);
                    aMapLocation.setAltitude(dOptDouble3);
                    aMapLocation.setBearing(f3);
                    aMapLocation.setSpeed(f4);
                    aMapLocation.setTime(jOptLong);
                    aMapLocation.setCoordType(AMapLocation.COORD_TYPE_GCJ02);
                    if (fp.a(aMapLocation, this.i) <= 300.0f) {
                        synchronized (this.p) {
                            this.i.setLongitude(dOptDouble2);
                            this.i.setLatitude(dOptDouble);
                            this.i.setAccuracy(f2);
                            this.i.setBearing(f3);
                            this.i.setSpeed(f4);
                            this.i.setTime(jOptLong);
                            this.i.setCoordType(AMapLocation.COORD_TYPE_GCJ02);
                        }
                        return aMapLocation;
                    }
                }
            }
        } catch (Throwable unused4) {
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0098  */
    public final AMapLocation a(AMapLocation aMapLocation, String str) {
        long j2;
        if (this.i == null) {
            return aMapLocation;
        }
        if ((!this.c.isMockEnable() && this.i.isMock()) || !fp.a(this.i)) {
            return aMapLocation;
        }
        AMapLocation aMapLocationJ = j();
        if (aMapLocationJ != null && fp.a(aMapLocationJ)) {
            aMapLocationJ.setTrustedLevel(2);
            return aMapLocationJ;
        }
        float speed = this.i.getSpeed();
        if (speed == BitmapDescriptorFactory.HUE_RED) {
            long j3 = this.m;
            if (j3 > 0 && j3 < 8) {
                float f2 = this.n;
                if (f2 > BitmapDescriptorFactory.HUE_RED) {
                    speed = f2 / j3;
                }
            }
        }
        if (aMapLocation == null || !fp.a(aMapLocation)) {
            j2 = 30000;
        } else if (aMapLocation.getAccuracy() < 200.0f) {
            int i = this.H + 1;
            this.H = i;
            if (this.F == null && i >= 2) {
                this.G = true;
            }
            j2 = speed > 5.0f ? 10000L : 15000L;
        } else {
            if (!TextUtils.isEmpty(this.F)) {
                this.G = false;
                this.H = 0;
            }
            if (speed > 5.0f) {
                j2 = SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US;
            } else {
                j2 = 30000;
            }
        }
        long jB = fp.b() - this.f12936d;
        if (jB > 30000) {
            return aMapLocation;
        }
        if (jB < j2) {
            if (this.F == null && this.H >= 2) {
                this.F = str;
            }
            AMapLocation aMapLocationM123clone = this.i.m123clone();
            aMapLocationM123clone.setTrustedLevel(2);
            return aMapLocationM123clone;
        }
        if (this.G && b(str)) {
            AMapLocation aMapLocationM123clone2 = this.i.m123clone();
            aMapLocationM123clone2.setTrustedLevel(3);
            return aMapLocationM123clone2;
        }
        this.F = null;
        this.H = 0;
        synchronized (this.p) {
            this.i = null;
        }
        this.m = 0L;
        this.n = BitmapDescriptorFactory.HUE_RED;
        return aMapLocation;
    }

    public final void a() {
        LocationManager locationManager = this.b;
        if (locationManager == null) {
            return;
        }
        try {
            LocationListener locationListener = this.x;
            if (locationListener != null) {
                locationManager.removeUpdates(locationListener);
                ((a) this.x).a();
                this.x = null;
            }
        } catch (Throwable unused) {
        }
        try {
            GpsStatus.Listener listener = this.E;
            if (listener != null) {
                this.b.removeGpsStatusListener(listener);
            }
        } catch (Throwable unused2) {
        }
        try {
            Handler handler = this.f12935a;
            if (handler != null) {
                handler.removeMessages(8);
            }
        } catch (Throwable unused3) {
        }
        this.C = 0;
        this.A = 0L;
        this.v = 0L;
        this.f12936d = 0L;
        this.B = 0;
        this.w = 0;
        this.f12938f.a();
        this.i = null;
        this.m = 0L;
        this.n = BitmapDescriptorFactory.HUE_RED;
        this.F = null;
        this.I = false;
    }

    public final void a(Bundle bundle) {
        if (bundle != null) {
            try {
                bundle.setClassLoader(AMapLocation.class.getClassLoader());
                this.f12939g = bundle.getInt("I_MAX_GEO_DIS");
                this.f12940h = bundle.getInt("I_MIN_GEO_DIS");
                AMapLocation aMapLocation = (AMapLocation) bundle.getParcelable("loc");
                if (TextUtils.isEmpty(aMapLocation.getAdCode())) {
                    return;
                }
                synchronized (this.o) {
                    try {
                        y = aMapLocation;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                fi.a(th2, "GpsLocation", "setLastGeoLocation");
            }
        }
    }

    public final void a(AMapLocationClientOption aMapLocationClientOption) {
        this.c = aMapLocationClientOption;
        if (aMapLocationClientOption == null) {
            this.c = new AMapLocationClientOption();
        }
        try {
            q = fo.a(this.z, "pref", "lagt", q);
        } catch (Throwable unused) {
        }
        g();
    }

    public final void b(AMapLocationClientOption aMapLocationClientOption) {
        Handler handler;
        if (aMapLocationClientOption == null) {
            aMapLocationClientOption = new AMapLocationClientOption();
        }
        this.c = aMapLocationClientOption;
        if (aMapLocationClientOption.getLocationMode() != AMapLocationClientOption.AMapLocationMode.Device_Sensors && (handler = this.f12935a) != null) {
            handler.removeMessages(8);
        }
        if (this.r != this.c.getGeoLanguage()) {
            synchronized (this.o) {
                y = null;
            }
        }
        this.r = this.c.getGeoLanguage();
    }

    public final boolean b() {
        return fp.b() - this.f12936d <= 2800;
    }

    public final void c() {
        this.w = 0;
    }

    @SuppressLint({"NewApi"})
    public final int d() {
        LocationManager locationManager = this.b;
        if (locationManager == null || !a(locationManager)) {
            return 1;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            int i = Settings.Secure.getInt(this.z.getContentResolver(), "location_mode", 0);
            if (i == 0) {
                return 2;
            }
            if (i == 2) {
                return 3;
            }
        } else if (!this.b.isProviderEnabled("gps")) {
            return 2;
        }
        return !this.s ? 4 : 0;
    }

    public final int e() {
        return this.C;
    }

    public final boolean f() {
        AMapLocationClientOption aMapLocationClientOption = this.c;
        return (aMapLocationClientOption == null || aMapLocationClientOption.isOnceLocation() || fp.b() - this.f12936d <= DefaultDrmSessionManager.DEFAULT_SESSION_KEEPALIVE_MS) ? false : true;
    }
}
