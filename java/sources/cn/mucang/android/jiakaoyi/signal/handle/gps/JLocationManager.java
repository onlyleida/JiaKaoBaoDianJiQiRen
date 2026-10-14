package cn.mucang.android.jiakaoyi.signal.handle.gps;

import android.content.Context;
import android.content.Intent;
import android.location.Location;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.p002e.o;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.signal.gps.GpsAnalysis;
import cn.mucang.android.jiakaoyi.signal.handle.gps.debug.DebugGpsService;
import cn.mucang.android.jiakaoyi.signal.handle.gps.processor.FilterCalibrationProcessor;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.handle.gps.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\nJ\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u000e\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\rJ\u000e\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0017J\u000e\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\fj\b\u0012\u0004\u0012\u00020\r`\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/handle/gps/JLocationManager;", "", "()V", "gnssStatusObserver", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;", "hasObdGps", "", "internalGps", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/InternalGps;", "latestLocation", "Landroid/location/Location;", "listenerList", "Ljava/util/HashSet;", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/DefaultLocationListener;", "Lkotlin/collections/HashSet;", "addListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "getGnssSignal", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$GnssSignal;", "getLatestLocation", "onLocationChanged", "now", "Lcn/mucang/android/jiakaoyi/signal/center/model/LocationModel;", "removeListener", TtmlNode.START, "context", "Landroid/content/Context;", "stop", "updateDebugLocation", "location", "updateOBDLocation", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class JLocationManager {
    private static InternalGps b;
    private static boolean c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JLocationManager f5733a = new JLocationManager();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final HashSet<DefaultLocationListener> f5734d = new HashSet<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final GnssStatusObserver f5735e = new GnssStatusObserver();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Location f5736f = new Location("gps");

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.handle.gps.j$a */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/signal/handle/gps/JLocationManager$start$1", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/DefaultLocationListener;", "onLocationChanged", "", "location", "Landroid/location/Location;", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements DefaultLocationListener {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.handle.gps.DefaultLocationListener
        public void onLocationChanged(Location location) {
            r.e(location, "location");
            if (!JLocationManager.c && k.c(location)) {
                cn.mucang.android.jiakaoyi.signal.center.model.b bVar = new cn.mucang.android.jiakaoyi.signal.center.model.b();
                bVar.f5281g.set(location);
                bVar.f5282h = 9;
                bVar.i = JLocationManager.f5735e.d().f5702a;
                JLocationManager.f5733a.h(bVar);
            }
        }
    }

    private JLocationManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(final cn.mucang.android.jiakaoyi.signal.center.model.b bVar) {
        f5736f.set(bVar.f5281g);
        o.f3441a.set(bVar.f5281g);
        for (final DefaultLocationListener defaultLocationListener : f5734d) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.handle.gps.b
                @Override // java.lang.Runnable
                public final void run() {
                    JLocationManager.i(defaultLocationListener, bVar);
                }
            });
        }
        cn.mucang.android.jiakaoyi.signal.c.d.u(new cn.mucang.android.jiakaoyi.signal.c.d.a() { // from class: cn.mucang.android.jiakaoyi.signal.handle.gps.a
            @Override // cn.mucang.android.jiakaoyi.signal.c.d.a
            public final boolean a(cn.mucang.android.jiakaoyi.signal.center.model.d dVar) {
                return JLocationManager.j(bVar, dVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(DefaultLocationListener it, cn.mucang.android.jiakaoyi.signal.center.model.b now) {
        r.e(it, "$it");
        r.e(now, "$now");
        Location location = now.f5281g;
        r.d(location, "now.location");
        it.onLocationChanged(location);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean j(cn.mucang.android.jiakaoyi.signal.center.model.b now, cn.mucang.android.jiakaoyi.signal.center.model.d dVar) {
        r.e(now, "$now");
        cn.mucang.android.jiakaoyi.signal.center.model.b.a(dVar.getCurrentPosition(), now);
        dVar.d().M = (byte) 3;
        return true;
    }

    public final void d(DefaultLocationListener listener) {
        r.e(listener, "listener");
        f5734d.add(listener);
    }

    public final Location e() {
        return new Location(f5736f);
    }

    public final void k(DefaultLocationListener listener) {
        r.e(listener, "listener");
        f5734d.remove(listener);
    }

    public final void l(Context context) {
        r.e(context, "context");
        m(context);
        if (n.a()) {
            context.startService(new Intent(context, (Class<?>) DebugGpsService.class));
        } else {
            if (b == null) {
                b = new InternalGps(context, new a(), new FilterCalibrationProcessor());
            }
            try {
                InternalGps internalGps = b;
                if (internalGps != null) {
                    internalGps.a();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        f5735e.h();
    }

    public final void m(Context context) {
        r.e(context, "context");
        InternalGps internalGps = b;
        if (internalGps != null) {
            internalGps.b();
        }
        b = null;
        f5734d.clear();
        f5735e.i();
        context.stopService(new Intent(context, (Class<?>) DebugGpsService.class));
    }

    public final void n(cn.mucang.android.jiakaoyi.signal.center.model.b location) {
        r.e(location, "location");
        if (n.a()) {
            h(location);
        }
    }

    public final void o(cn.mucang.android.jiakaoyi.signal.center.model.b location) {
        r.e(location, "location");
        InternalGps internalGps = b;
        if (internalGps != null) {
            if (internalGps != null) {
                internalGps.b();
            }
            b = null;
            f5735e.i();
        }
        c = true;
        h(location);
        GpsAnalysis.f().h();
    }
}
