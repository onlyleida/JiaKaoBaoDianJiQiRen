package cn.mucang.android.jiakaoyi.signal.d.k;

import android.location.Location;
import android.os.SystemClock;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.b0;
import cn.mucang.android.jiakaoyi.signal.handle.gps.k;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final c f5571e = new c();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile float f5572f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile float f5573g;
    private volatile a c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile float f5574a = BitmapDescriptorFactory.HUE_RED;
    private volatile Location b = new Location("gps");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<cn.mucang.android.jiakaoyi.framework.h.b<Float>> f5575d = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    static class a extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        volatile boolean f5576a = true;
        volatile float b = BitmapDescriptorFactory.HUE_RED;
        volatile float c = -1.0f;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        volatile float f5577d;

        a() {
        }

        public long a(long j, long j2) {
            float f2 = c.f5571e.f5574a;
            if (f2 <= BitmapDescriptorFactory.HUE_RED || c.f5573g <= 1.0f) {
                return 300L;
            }
            double d2 = f2;
            long j3 = (long) (3600.0d / d2);
            c.f5572f += ((float) ((((j - j2) * 0.001d) * d2) / 3.6d)) * 0.8f;
            if (((int) c.f5572f) == ((int) this.f5577d)) {
                return j3;
            }
            final float f3 = this.b + c.f5572f;
            if (!c.f5571e.f5575d.isEmpty()) {
                u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.d.k.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.h(f3);
                    }
                });
            }
            this.f5577d = c.f5572f;
            return j3;
        }

        public long b(long j, long j2) {
            float f2 = c.f5571e.f5574a;
            if (f2 <= BitmapDescriptorFactory.HUE_RED) {
                return 300L;
            }
            double d2 = f2;
            long j3 = (long) (3600.0d / d2);
            this.b += (float) ((((j - j2) * 0.001d) * d2) / 3.6d);
            if (((int) this.b) == ((int) this.c)) {
                return j3;
            }
            final float f3 = this.b;
            if (!c.f5571e.f5575d.isEmpty()) {
                u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.d.k.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.h(f3);
                    }
                });
            }
            this.c = this.b;
            return j3;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            while (this.f5576a) {
                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                SystemClock.sleep(Math.min(300L, Math.max(30L, b0.a().b() ? a(jElapsedRealtime2, jElapsedRealtime) : b(jElapsedRealtime2, jElapsedRealtime))));
                jElapsedRealtime = jElapsedRealtime2;
            }
        }
    }

    private c() {
        n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h(float f2) {
        c cVar = f5571e;
        synchronized (cVar.f5575d) {
            Iterator<cn.mucang.android.jiakaoyi.framework.h.b<Float>> it = cVar.f5575d.iterator();
            while (it.hasNext()) {
                it.next().callback(Float.valueOf(f2));
            }
        }
    }

    public static synchronized float i(float f2) {
        c cVar = f5571e;
        cVar.f5574a = f2;
        if (cVar.c == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        return cVar.c.b;
    }

    public static synchronized float j(Location location) {
        c cVar = f5571e;
        if (k(cVar.b) && k(location) && (location.getLatitude() != cVar.b.getLatitude() || location.getLongitude() != cVar.b.getLongitude())) {
            f5573g = k.a(cVar.b.getLongitude(), cVar.b.getLatitude(), location.getLongitude(), location.getLatitude());
            cVar.c.b += f5573g;
            f5572f = BitmapDescriptorFactory.HUE_RED;
        }
        cVar.b.set(location);
        if (cVar.c == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        return cVar.c.b;
    }

    private static boolean k(Location location) {
        return location != null && location.getLatitude() > 1.0E-7d && location.getLongitude() > 1.0E-7d;
    }

    public static void l(cn.mucang.android.jiakaoyi.framework.h.b<Float> bVar) {
        c cVar = f5571e;
        synchronized (cVar.f5575d) {
            if (cVar.f5575d.contains(bVar)) {
                return;
            }
            cVar.f5575d.add(bVar);
        }
    }

    public static synchronized void m() {
    }

    private void n() {
        if (this.c != null && this.c.f5576a && this.c.isAlive()) {
            return;
        }
        this.c = new a();
        this.c.start();
    }

    public static void o(cn.mucang.android.jiakaoyi.framework.h.b<Float> bVar) {
        c cVar = f5571e;
        synchronized (cVar.f5575d) {
            cVar.f5575d.remove(bVar);
        }
    }
}
