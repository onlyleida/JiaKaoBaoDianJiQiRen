package cn.mucang.android.jiakaoyi.signal.handle.gps;

import android.annotation.SuppressLint;
import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.LocationManager;
import android.os.Build;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class GnssStatusObserver {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f5696f = "GnssStatusObserver";
    private android.location.GnssStatus.Callback c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private GpsStatus.Listener f5698d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f5699e;
    private Set<c> b = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LocationManager f5697a = (LocationManager) MucangConfig.getContext().getSystemService("location");

    public enum GnssStatus {
        HIGHEST,
        MIDDLE,
        LOWEST,
        NONE
    }

    class a extends android.location.GnssStatus.Callback {
        a() {
        }

        @Override // android.location.GnssStatus.Callback
        public void onSatelliteStatusChanged(android.location.GnssStatus gnssStatus) {
            super.onSatelliteStatusChanged(gnssStatus);
            GnssStatusObserver gnssStatusObserver = GnssStatusObserver.this;
            gnssStatusObserver.g(gnssStatusObserver.f(gnssStatus));
        }
    }

    class b implements GpsStatus.Listener {
        b() {
        }

        @Override // android.location.GpsStatus.Listener
        public void onGpsStatusChanged(int i) {
            if (i == 4) {
                GnssStatusObserver gnssStatusObserver = GnssStatusObserver.this;
                gnssStatusObserver.g(gnssStatusObserver.e());
            }
        }
    }

    public interface c {
        void a(d dVar);
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5702a;

        public d(int i, GnssStatus gnssStatus) {
            this.f5702a = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public int e() {
        GpsStatus gpsStatus = this.f5697a.getGpsStatus(null);
        int maxSatellites = gpsStatus.getMaxSatellites();
        Iterator<GpsSatellite> it = gpsStatus.getSatellites().iterator();
        int i = 0;
        if (it != null) {
            while (it.hasNext() && i <= maxSatellites) {
                if (it.next().usedInFix()) {
                    i++;
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int f(android.location.GnssStatus gnssStatus) {
        int satelliteCount = gnssStatus.getSatelliteCount();
        int i = 0;
        for (int i2 = 0; i2 < satelliteCount; i2++) {
            try {
                if (gnssStatus.usedInFix(i2)) {
                    i++;
                }
            } catch (Exception e2) {
                t.d(f5696f, e2.getMessage());
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(int i) {
        GnssStatus gnssStatus = GnssStatus.NONE;
        if (i > 0 && i <= 3) {
            gnssStatus = GnssStatus.LOWEST;
        } else if (i > 3 && i <= 7) {
            gnssStatus = GnssStatus.MIDDLE;
        } else if (i > 7) {
            gnssStatus = GnssStatus.HIGHEST;
        }
        this.f5699e = new d(i, gnssStatus);
        Iterator<c> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().a(this.f5699e);
        }
    }

    public d d() {
        if (this.f5699e == null) {
            this.f5699e = new d(0, GnssStatus.NONE);
        }
        return this.f5699e;
    }

    @SuppressLint({"MissingPermission"})
    public void h() {
        if (Build.VERSION.SDK_INT >= 24) {
            if (this.c == null) {
                this.c = new a();
            }
            this.f5697a.registerGnssStatusCallback(this.c);
        } else {
            b bVar = new b();
            this.f5698d = bVar;
            this.f5697a.addGpsStatusListener(bVar);
        }
    }

    public void i() {
        if (Build.VERSION.SDK_INT >= 24) {
            android.location.GnssStatus.Callback callback = this.c;
            if (callback != null) {
                this.f5697a.unregisterGnssStatusCallback(callback);
                return;
            }
            return;
        }
        GpsStatus.Listener listener = this.f5698d;
        if (listener != null) {
            this.f5697a.removeGpsStatusListener(listener);
        }
    }
}
