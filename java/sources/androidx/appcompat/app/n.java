package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
class n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static n f142d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f143a;
    private final LocationManager b;
    private final a c = new a();

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f144a;
        long b;
        long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f145d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        long f146e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        long f147f;

        a() {
        }
    }

    n(Context context, LocationManager locationManager) {
        this.f143a = context;
        this.b = locationManager;
    }

    static n a(Context context) {
        if (f142d == null) {
            Context applicationContext = context.getApplicationContext();
            f142d = new n(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f142d;
    }

    @SuppressLint({"MissingPermission"})
    private Location b() {
        Location locationC = androidx.core.a.d.c(this.f143a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? c("network") : null;
        Location locationC2 = androidx.core.a.d.c(this.f143a, "android.permission.ACCESS_FINE_LOCATION") == 0 ? c("gps") : null;
        if (locationC2 == null || locationC == null) {
            return locationC2 != null ? locationC2 : locationC;
        }
        return locationC2.getTime() > locationC.getTime() ? locationC2 : locationC;
    }

    private Location c(String str) {
        try {
            if (this.b.isProviderEnabled(str)) {
                return this.b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e2) {
            Log.d("TwilightManager", "Failed to get last known location", e2);
            return null;
        }
    }

    private boolean e() {
        return this.c.f147f > System.currentTimeMillis();
    }

    private void f(Location location) {
        long j;
        long j2;
        a aVar = this.c;
        long jCurrentTimeMillis = System.currentTimeMillis();
        m mVarB = m.b();
        mVarB.a(jCurrentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j3 = mVarB.f141a;
        mVarB.a(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = mVarB.c == 1;
        long j4 = mVarB.b;
        long j5 = mVarB.f141a;
        boolean z2 = z;
        mVarB.a(86400000 + jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        long j6 = mVarB.b;
        if (j4 == -1 || j5 == -1) {
            j = 43200000 + jCurrentTimeMillis;
        } else {
            if (jCurrentTimeMillis > j5) {
                j2 = 0 + j6;
            } else {
                j2 = jCurrentTimeMillis > j4 ? 0 + j5 : 0 + j4;
            }
            j = j2 + DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS;
        }
        aVar.f144a = z2;
        aVar.b = j3;
        aVar.c = j4;
        aVar.f145d = j5;
        aVar.f146e = j6;
        aVar.f147f = j;
    }

    boolean d() {
        a aVar = this.c;
        if (e()) {
            return aVar.f144a;
        }
        Location locationB = b();
        if (locationB != null) {
            f(locationB);
            return aVar.f144a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }
}
